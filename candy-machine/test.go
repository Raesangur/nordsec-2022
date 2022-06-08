package main

import (
    "fmt"
	_ "net/http/pprof"
		"bytes"
		"errors"
		"crypto/aes"
		"crypto/cipher"
)

func GetKey() []byte {
	return []byte("patate")
	}

// Twice the encryption, twice the protection !
func DecodeStep1(key string) ([]byte, error) {
	aeskey := GetKey();

	res, err := AESDecrypt([]byte(key), aeskey) 
	
	if err != nil {
		return nil, err
	}	
	
	fmt.Print("step1: " + string(res) + "\n")	
	return res, nil
}

func DecodeStep2(key []byte) (string, error) {
	aeskey := GetKey();

	res, err := AESDecrypt(key, aeskey) 
	
	if err != nil {
		return "", err
	}

	return string(res), nil
}

func main() {
	fmt.Print("bruh\n")
	key := "Bon matin"
	step1, _ := DecodeStep1(key)
	step2, _ := DecodeStep2(step1)

	fmt.Print("key:" + string(step2))
}

func AESDecrypt(crypt []byte, key []byte) ([]byte, error) {
	block, _ := aes.NewCipher(key)
	content, err := decryptCBC(key, []byte(crypt))

	if err != nil {
		return nil, err
	}

	return pkcs7Unpad(content, block.BlockSize())
}


func decryptCBC(key, ciphertext []byte) (plaintext []byte, err error) {
    var block cipher.Block

    if block, err = aes.NewCipher(key); err != nil {
        return
    }

    if len(ciphertext) < aes.BlockSize {
        return nil, errors.New("invalid blocksize")
    }

	if len(ciphertext) % aes.BlockSize != 0 {
        return nil, errors.New("invalid blocksize")
    }

    iv := ciphertext[:aes.BlockSize]
    ciphertext = ciphertext[aes.BlockSize:]

    cbc := cipher.NewCBCDecrypter(block, iv)
    cbc.CryptBlocks(ciphertext, ciphertext)

    plaintext = ciphertext
    return
}

// From : https://gist.github.com/huyinghuan/7bf174017bf54efb91ece04a48589b22

// pkcs7Pad right-pads the given byte slice with 1 to n bytes, where
// n is the block size. The size of the result is x times n, where x
// is at least 1.
func pkcs7Pad(b []byte, blocksize int) ([]byte, error) {
	if blocksize <= 0 {
		return nil, errors.New("invalid blocksize")
	}
	if b == nil || len(b) == 0 {
		return nil, errors.New("invalid PKCS7 data (empty or not padded)")
	}
	n := blocksize - (len(b) % blocksize)
	pb := make([]byte, len(b)+n)
	copy(pb, b)
	copy(pb[len(b):], bytes.Repeat([]byte{byte(n)}, n))
	return pb, nil
}

// pkcs7Unpad validates and unpads data from the given bytes slice.
// The returned value will be 1 to n bytes smaller depending on the
// amount of padding, where n is the block size.
func pkcs7Unpad(b []byte, blocksize int) ([]byte, error) {
	if blocksize <= 0 {
		return nil, errors.New("invalid blocksize")
	}
	if b == nil || len(b) == 0 {
		return nil, errors.New("invalid PKCS7 data (empty or not padded)")
	}
	if len(b)%blocksize != 0 {
		return nil, errors.New("invalid padding on input")
	}
	c := b[len(b)-1]
	n := int(c)
	if n == 0 || n > len(b) {
		return nil, errors.New("invalid padding on input")
	}
	for i := 0; i < n; i++ {
		if b[len(b)-n+i] != c {
			return nil, errors.New("invalid padding on input")
		}
	}
	return b[:len(b)-n], nil
}
