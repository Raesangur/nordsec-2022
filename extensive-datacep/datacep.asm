
extensible_datacep:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 2f 00 00 	mov    0x2fe9(%rip),%rax        # 403ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 e3 2f 00 00 	bnd jmp *0x2fe3(%rip)        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nopl   (%rax)
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	push   $0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmp 401020 <.plt>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	push   $0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmp 401020 <.plt>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	push   $0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmp 401020 <.plt>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	push   $0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmp 401020 <.plt>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	push   $0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmp 401020 <.plt>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	push   $0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmp 401020 <.plt>
  40108f:	90                   	nop
  401090:	f3 0f 1e fa          	endbr64 
  401094:	68 06 00 00 00       	push   $0x6
  401099:	f2 e9 81 ff ff ff    	bnd jmp 401020 <.plt>
  40109f:	90                   	nop
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	68 07 00 00 00       	push   $0x7
  4010a9:	f2 e9 71 ff ff ff    	bnd jmp 401020 <.plt>
  4010af:	90                   	nop
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	68 08 00 00 00       	push   $0x8
  4010b9:	f2 e9 61 ff ff ff    	bnd jmp 401020 <.plt>
  4010bf:	90                   	nop
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	68 09 00 00 00       	push   $0x9
  4010c9:	f2 e9 51 ff ff ff    	bnd jmp 401020 <.plt>
  4010cf:	90                   	nop
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	68 0a 00 00 00       	push   $0xa
  4010d9:	f2 e9 41 ff ff ff    	bnd jmp 401020 <.plt>
  4010df:	90                   	nop
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	68 0b 00 00 00       	push   $0xb
  4010e9:	f2 e9 31 ff ff ff    	bnd jmp 401020 <.plt>
  4010ef:	90                   	nop
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	68 0c 00 00 00       	push   $0xc
  4010f9:	f2 e9 21 ff ff ff    	bnd jmp 401020 <.plt>
  4010ff:	90                   	nop

Disassembly of section .plt.sec:

0000000000401100 <free@plt>:
  401100:	f3 0f 1e fa          	endbr64 
  401104:	f2 ff 25 0d 2f 00 00 	bnd jmp *0x2f0d(%rip)        # 404018 <free@GLIBC_2.2.5>
  40110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401110 <putchar@plt>:
  401110:	f3 0f 1e fa          	endbr64 
  401114:	f2 ff 25 05 2f 00 00 	bnd jmp *0x2f05(%rip)        # 404020 <putchar@GLIBC_2.2.5>
  40111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401120 <puts@plt>:
  401120:	f3 0f 1e fa          	endbr64 
  401124:	f2 ff 25 fd 2e 00 00 	bnd jmp *0x2efd(%rip)        # 404028 <puts@GLIBC_2.2.5>
  40112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401130 <fclose@plt>:
  401130:	f3 0f 1e fa          	endbr64 
  401134:	f2 ff 25 f5 2e 00 00 	bnd jmp *0x2ef5(%rip)        # 404030 <fclose@GLIBC_2.2.5>
  40113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401140 <setbuf@plt>:
  401140:	f3 0f 1e fa          	endbr64 
  401144:	f2 ff 25 ed 2e 00 00 	bnd jmp *0x2eed(%rip)        # 404038 <setbuf@GLIBC_2.2.5>
  40114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401150 <printf@plt>:
  401150:	f3 0f 1e fa          	endbr64 
  401154:	f2 ff 25 e5 2e 00 00 	bnd jmp *0x2ee5(%rip)        # 404040 <printf@GLIBC_2.2.5>
  40115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401160 <fgetc@plt>:
  401160:	f3 0f 1e fa          	endbr64 
  401164:	f2 ff 25 dd 2e 00 00 	bnd jmp *0x2edd(%rip)        # 404048 <fgetc@GLIBC_2.2.5>
  40116b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401170 <fgets@plt>:
  401170:	f3 0f 1e fa          	endbr64 
  401174:	f2 ff 25 d5 2e 00 00 	bnd jmp *0x2ed5(%rip)        # 404050 <fgets@GLIBC_2.2.5>
  40117b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401180 <getchar@plt>:
  401180:	f3 0f 1e fa          	endbr64 
  401184:	f2 ff 25 cd 2e 00 00 	bnd jmp *0x2ecd(%rip)        # 404058 <getchar@GLIBC_2.2.5>
  40118b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401190 <fprintf@plt>:
  401190:	f3 0f 1e fa          	endbr64 
  401194:	f2 ff 25 c5 2e 00 00 	bnd jmp *0x2ec5(%rip)        # 404060 <fprintf@GLIBC_2.2.5>
  40119b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011a0 <malloc@plt>:
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	f2 ff 25 bd 2e 00 00 	bnd jmp *0x2ebd(%rip)        # 404068 <malloc@GLIBC_2.2.5>
  4011ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011b0 <fopen@plt>:
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	f2 ff 25 b5 2e 00 00 	bnd jmp *0x2eb5(%rip)        # 404070 <fopen@GLIBC_2.2.5>
  4011bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011c0 <__isoc99_scanf@plt>:
  4011c0:	f3 0f 1e fa          	endbr64 
  4011c4:	f2 ff 25 ad 2e 00 00 	bnd jmp *0x2ead(%rip)        # 404078 <__isoc99_scanf@GLIBC_2.7>
  4011cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000004011d0 <_start>:
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	31 ed                	xor    %ebp,%ebp
  4011d6:	49 89 d1             	mov    %rdx,%r9
  4011d9:	5e                   	pop    %rsi
  4011da:	48 89 e2             	mov    %rsp,%rdx
  4011dd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4011e1:	50                   	push   %rax
  4011e2:	54                   	push   %rsp
  4011e3:	49 c7 c0 40 17 40 00 	mov    $0x401740,%r8
  4011ea:	48 c7 c1 d0 16 40 00 	mov    $0x4016d0,%rcx
  4011f1:	48 c7 c7 1f 16 40 00 	mov    $0x40161f,%rdi
  4011f8:	ff 15 f2 2d 00 00    	call   *0x2df2(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  4011fe:	f4                   	hlt    
  4011ff:	90                   	nop

0000000000401200 <_dl_relocate_static_pie>:
  401200:	f3 0f 1e fa          	endbr64 
  401204:	c3                   	ret    
  401205:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40120c:	00 00 00 
  40120f:	90                   	nop

0000000000401210 <deregister_tm_clones>:
  401210:	b8 90 40 40 00       	mov    $0x404090,%eax
  401215:	48 3d 90 40 40 00    	cmp    $0x404090,%rax
  40121b:	74 13                	je     401230 <deregister_tm_clones+0x20>
  40121d:	b8 00 00 00 00       	mov    $0x0,%eax
  401222:	48 85 c0             	test   %rax,%rax
  401225:	74 09                	je     401230 <deregister_tm_clones+0x20>
  401227:	bf 90 40 40 00       	mov    $0x404090,%edi
  40122c:	ff e0                	jmp    *%rax
  40122e:	66 90                	xchg   %ax,%ax
  401230:	c3                   	ret    
  401231:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401238:	00 00 00 00 
  40123c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401240 <register_tm_clones>:
  401240:	be 90 40 40 00       	mov    $0x404090,%esi
  401245:	48 81 ee 90 40 40 00 	sub    $0x404090,%rsi
  40124c:	48 89 f0             	mov    %rsi,%rax
  40124f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401253:	48 c1 f8 03          	sar    $0x3,%rax
  401257:	48 01 c6             	add    %rax,%rsi
  40125a:	48 d1 fe             	sar    %rsi
  40125d:	74 11                	je     401270 <register_tm_clones+0x30>
  40125f:	b8 00 00 00 00       	mov    $0x0,%eax
  401264:	48 85 c0             	test   %rax,%rax
  401267:	74 07                	je     401270 <register_tm_clones+0x30>
  401269:	bf 90 40 40 00       	mov    $0x404090,%edi
  40126e:	ff e0                	jmp    *%rax
  401270:	c3                   	ret    
  401271:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401278:	00 00 00 00 
  40127c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401280 <__do_global_dtors_aux>:
  401280:	f3 0f 1e fa          	endbr64 
  401284:	80 3d 1d 2e 00 00 00 	cmpb   $0x0,0x2e1d(%rip)        # 4040a8 <completed.8061>
  40128b:	75 13                	jne    4012a0 <__do_global_dtors_aux+0x20>
  40128d:	55                   	push   %rbp
  40128e:	48 89 e5             	mov    %rsp,%rbp
  401291:	e8 7a ff ff ff       	call   401210 <deregister_tm_clones>
  401296:	c6 05 0b 2e 00 00 01 	movb   $0x1,0x2e0b(%rip)        # 4040a8 <completed.8061>
  40129d:	5d                   	pop    %rbp
  40129e:	c3                   	ret    
  40129f:	90                   	nop
  4012a0:	c3                   	ret    
  4012a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012a8:	00 00 00 00 
  4012ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012b0 <frame_dummy>:
  4012b0:	f3 0f 1e fa          	endbr64 
  4012b4:	eb 8a                	jmp    401240 <register_tm_clones>

00000000004012b6 <generateFlagFromSeed_TODO>:
  4012b6:	f3 0f 1e fa          	endbr64 
  4012ba:	55                   	push   %rbp
  4012bb:	48 89 e5             	mov    %rsp,%rbp
  4012be:	c7 45 fc 54 5f 54 5f 	movl   $0x5f545f54,-0x4(%rbp)
  4012c5:	90                   	nop
  4012c6:	5d                   	pop    %rbp
  4012c7:	c3                   	ret    

00000000004012c8 <flushin>:
  4012c8:	f3 0f 1e fa          	endbr64 
  4012cc:	55                   	push   %rbp
  4012cd:	48 89 e5             	mov    %rsp,%rbp
  4012d0:	48 83 ec 10          	sub    $0x10,%rsp
  4012d4:	90                   	nop
  4012d5:	e8 a6 fe ff ff       	call   401180 <getchar@plt>
  4012da:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4012dd:	83 7d fc 0a          	cmpl   $0xa,-0x4(%rbp)
  4012e1:	74 06                	je     4012e9 <flushin+0x21>
  4012e3:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  4012e7:	75 ec                	jne    4012d5 <flushin+0xd>
  4012e9:	90                   	nop
  4012ea:	c9                   	leave  
  4012eb:	c3                   	ret    

00000000004012ec <createExtensibleDatasetBase2>:
  4012ec:	f3 0f 1e fa          	endbr64 
  4012f0:	55                   	push   %rbp
  4012f1:	48 89 e5             	mov    %rsp,%rbp
  4012f4:	48 83 ec 20          	sub    $0x20,%rsp
  4012f8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4012fc:	c6 45 f7 01          	movb   $0x1,-0x9(%rbp)
  401300:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  401307:	00 
  401308:	eb 55                	jmp    40135f <createExtensibleDatasetBase2+0x73>
  40130a:	48 8d 3d f7 0c 00 00 	lea    0xcf7(%rip),%rdi        # 402008 <_IO_stdin_used+0x8>
  401311:	b8 00 00 00 00       	mov    $0x0,%eax
  401316:	e8 35 fe ff ff       	call   401150 <printf@plt>
  40131b:	48 8d 45 f6          	lea    -0xa(%rbp),%rax
  40131f:	48 89 c6             	mov    %rax,%rsi
  401322:	48 8d 3d 15 0d 00 00 	lea    0xd15(%rip),%rdi        # 40203e <_IO_stdin_used+0x3e>
  401329:	b8 00 00 00 00       	mov    $0x0,%eax
  40132e:	e8 8d fe ff ff       	call   4011c0 <__isoc99_scanf@plt>
  401333:	b8 00 00 00 00       	mov    $0x0,%eax
  401338:	e8 8b ff ff ff       	call   4012c8 <flushin>
  40133d:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
  401341:	0f b6 45 f6          	movzbl -0xa(%rbp),%eax
  401345:	0f b6 c0             	movzbl %al,%eax
  401348:	89 c1                	mov    %eax,%ecx
  40134a:	d3 e2                	shl    %cl,%edx
  40134c:	89 d0                	mov    %edx,%eax
  40134e:	48 98                	cltq   
  401350:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401354:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401358:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40135c:	48 89 10             	mov    %rdx,(%rax)
  40135f:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  401364:	74 a4                	je     40130a <createExtensibleDatasetBase2+0x1e>
  401366:	48 81 7d f8 00 00 10 	cmpq   $0x100000,-0x8(%rbp)
  40136d:	00 
  40136e:	7f 9a                	jg     40130a <createExtensibleDatasetBase2+0x1e>
  401370:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401374:	48 89 c7             	mov    %rax,%rdi
  401377:	e8 24 fe ff ff       	call   4011a0 <malloc@plt>
  40137c:	c9                   	leave  
  40137d:	c3                   	ret    

000000000040137e <printMsg>:
  40137e:	f3 0f 1e fa          	endbr64 
  401382:	55                   	push   %rbp
  401383:	48 89 e5             	mov    %rsp,%rbp
  401386:	48 83 ec 20          	sub    $0x20,%rsp
  40138a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40138e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401392:	48 8d 35 aa 0c 00 00 	lea    0xcaa(%rip),%rsi        # 402043 <_IO_stdin_used+0x43>
  401399:	48 89 c7             	mov    %rax,%rdi
  40139c:	e8 0f fe ff ff       	call   4011b0 <fopen@plt>
  4013a1:	48 89 05 08 2d 00 00 	mov    %rax,0x2d08(%rip)        # 4040b0 <f>
  4013a8:	48 8b 05 01 2d 00 00 	mov    0x2d01(%rip),%rax        # 4040b0 <f>
  4013af:	48 89 c7             	mov    %rax,%rdi
  4013b2:	e8 a9 fd ff ff       	call   401160 <fgetc@plt>
  4013b7:	88 45 ff             	mov    %al,-0x1(%rbp)
  4013ba:	eb 1d                	jmp    4013d9 <printMsg+0x5b>
  4013bc:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  4013c0:	89 c7                	mov    %eax,%edi
  4013c2:	e8 49 fd ff ff       	call   401110 <putchar@plt>
  4013c7:	48 8b 05 e2 2c 00 00 	mov    0x2ce2(%rip),%rax        # 4040b0 <f>
  4013ce:	48 89 c7             	mov    %rax,%rdi
  4013d1:	e8 8a fd ff ff       	call   401160 <fgetc@plt>
  4013d6:	88 45 ff             	mov    %al,-0x1(%rbp)
  4013d9:	80 7d ff ff          	cmpb   $0xff,-0x1(%rbp)
  4013dd:	75 dd                	jne    4013bc <printMsg+0x3e>
  4013df:	48 8b 05 ca 2c 00 00 	mov    0x2cca(%rip),%rax        # 4040b0 <f>
  4013e6:	48 89 c7             	mov    %rax,%rdi
  4013e9:	e8 42 fd ff ff       	call   401130 <fclose@plt>
  4013ee:	90                   	nop
  4013ef:	c9                   	leave  
  4013f0:	c3                   	ret    

00000000004013f1 <writeToLog>:
  4013f1:	f3 0f 1e fa          	endbr64 
  4013f5:	55                   	push   %rbp
  4013f6:	48 89 e5             	mov    %rsp,%rbp
  4013f9:	48 83 ec 20          	sub    $0x20,%rsp
  4013fd:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401401:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401405:	c7 45 fb 6c 6f 67 73 	movl   $0x73676f6c,-0x5(%rbp)
  40140c:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
  401410:	48 8d 45 fb          	lea    -0x5(%rbp),%rax
  401414:	48 8d 35 2a 0c 00 00 	lea    0xc2a(%rip),%rsi        # 402045 <_IO_stdin_used+0x45>
  40141b:	48 89 c7             	mov    %rax,%rdi
  40141e:	e8 8d fd ff ff       	call   4011b0 <fopen@plt>
  401423:	48 89 05 86 2c 00 00 	mov    %rax,0x2c86(%rip)        # 4040b0 <f>
  40142a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40142e:	48 8b 10             	mov    (%rax),%rdx
  401431:	48 8b 05 78 2c 00 00 	mov    0x2c78(%rip),%rax        # 4040b0 <f>
  401438:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  40143c:	48 89 ce             	mov    %rcx,%rsi
  40143f:	48 89 c7             	mov    %rax,%rdi
  401442:	b8 00 00 00 00       	mov    $0x0,%eax
  401447:	e8 44 fd ff ff       	call   401190 <fprintf@plt>
  40144c:	48 8b 05 5d 2c 00 00 	mov    0x2c5d(%rip),%rax        # 4040b0 <f>
  401453:	48 89 c7             	mov    %rax,%rdi
  401456:	e8 d5 fc ff ff       	call   401130 <fclose@plt>
  40145b:	90                   	nop
  40145c:	c9                   	leave  
  40145d:	c3                   	ret    

000000000040145e <logValue>:
  40145e:	f3 0f 1e fa          	endbr64 
  401462:	55                   	push   %rbp
  401463:	48 89 e5             	mov    %rsp,%rbp
  401466:	48 83 ec 30          	sub    $0x30,%rsp
  40146a:	48 b8 5b 20 f0 9f 8d 	movabs $0x4520848d9ff0205b,%rax
  401471:	84 20 45 
  401474:	48 ba 58 50 4f 4e 45 	movabs $0x20544e454e4f5058,%rdx
  40147b:	4e 54 20 
  40147e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  401482:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  401486:	48 b8 f0 9f 8d 84 20 	movabs $0x3a205d20848d9ff0,%rax
  40148d:	5d 20 3a 
  401490:	48 ba 3a 3a 20 25 68 	movabs $0xa75686825203a3a,%rdx
  401497:	68 75 0a 
  40149a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40149e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4014a2:	c6 45 f0 00          	movb   $0x0,-0x10(%rbp)
  4014a6:	48 8d 3d 9b 0b 00 00 	lea    0xb9b(%rip),%rdi        # 402048 <_IO_stdin_used+0x48>
  4014ad:	e8 6e fc ff ff       	call   401120 <puts@plt>
  4014b2:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
  4014b6:	48 89 c6             	mov    %rax,%rsi
  4014b9:	48 8d 3d 7e 0b 00 00 	lea    0xb7e(%rip),%rdi        # 40203e <_IO_stdin_used+0x3e>
  4014c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c5:	e8 f6 fc ff ff       	call   4011c0 <__isoc99_scanf@plt>
  4014ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4014cf:	e8 f4 fd ff ff       	call   4012c8 <flushin>
  4014d4:	48 8d 55 ff          	lea    -0x1(%rbp),%rdx
  4014d8:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  4014dc:	48 89 d6             	mov    %rdx,%rsi
  4014df:	48 89 c7             	mov    %rax,%rdi
  4014e2:	e8 0a ff ff ff       	call   4013f1 <writeToLog>
  4014e7:	90                   	nop
  4014e8:	c9                   	leave  
  4014e9:	c3                   	ret    

00000000004014ea <logError>:
  4014ea:	f3 0f 1e fa          	endbr64 
  4014ee:	55                   	push   %rbp
  4014ef:	48 89 e5             	mov    %rsp,%rbp
  4014f2:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  4014f9:	48 b8 5b 20 f0 9f 8d 	movabs $0x4520848d9ff0205b,%rax
  401500:	84 20 45 
  401503:	48 ba 52 52 4f 52 20 	movabs $0x8d9ff020524f5252,%rdx
  40150a:	f0 9f 8d 
  40150d:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401511:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  401515:	48 b8 84 20 5d 20 3a 	movabs $0x203a3a3a205d2084,%rax
  40151c:	3a 3a 20 
  40151f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401523:	c7 45 f8 25 73 0a 00 	movl   $0xa7325,-0x8(%rbp)
  40152a:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
  401531:	00 00 00 00 
  401535:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
  40153c:	00 00 00 00 
  401540:	48 c7 45 80 00 00 00 	movq   $0x0,-0x80(%rbp)
  401547:	00 
  401548:	48 c7 45 88 00 00 00 	movq   $0x0,-0x78(%rbp)
  40154f:	00 
  401550:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
  401557:	00 
  401558:	48 c7 45 98 00 00 00 	movq   $0x0,-0x68(%rbp)
  40155f:	00 
  401560:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
  401567:	00 
  401568:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  40156f:	00 
  401570:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
  401577:	00 
  401578:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
  40157f:	00 
  401580:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
  401587:	00 
  401588:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  40158f:	00 
  401590:	66 c7 45 d0 00 00    	movw   $0x0,-0x30(%rbp)
  401596:	c6 45 d2 00          	movb   $0x0,-0x2e(%rbp)
  40159a:	48 8d 3d cf 0a 00 00 	lea    0xacf(%rip),%rdi        # 402070 <_IO_stdin_used+0x70>
  4015a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4015a6:	e8 a5 fb ff ff       	call   401150 <printf@plt>
  4015ab:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
  4015af:	48 89 c6             	mov    %rax,%rsi
  4015b2:	48 8d 3d fe 0a 00 00 	lea    0xafe(%rip),%rdi        # 4020b7 <_IO_stdin_used+0xb7>
  4015b9:	b8 00 00 00 00       	mov    $0x0,%eax
  4015be:	e8 fd fb ff ff       	call   4011c0 <__isoc99_scanf@plt>
  4015c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4015c8:	e8 fb fc ff ff       	call   4012c8 <flushin>
  4015cd:	48 8d 3d e9 0a 00 00 	lea    0xae9(%rip),%rdi        # 4020bd <_IO_stdin_used+0xbd>
  4015d4:	e8 47 fb ff ff       	call   401120 <puts@plt>
  4015d9:	48 8b 15 c0 2a 00 00 	mov    0x2ac0(%rip),%rdx        # 4040a0 <stdin@GLIBC_2.2.5>
  4015e0:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
  4015e4:	0f b6 c8             	movzbl %al,%ecx
  4015e7:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  4015ee:	89 ce                	mov    %ecx,%esi
  4015f0:	48 89 c7             	mov    %rax,%rdi
  4015f3:	e8 78 fb ff ff       	call   401170 <fgets@plt>
  4015f8:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  4015ff:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  401606:	48 8d 95 68 ff ff ff 	lea    -0x98(%rbp),%rdx
  40160d:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401611:	48 89 d6             	mov    %rdx,%rsi
  401614:	48 89 c7             	mov    %rax,%rdi
  401617:	e8 d5 fd ff ff       	call   4013f1 <writeToLog>
  40161c:	90                   	nop
  40161d:	c9                   	leave  
  40161e:	c3                   	ret    

000000000040161f <main>:
  40161f:	f3 0f 1e fa          	endbr64 
  401623:	55                   	push   %rbp
  401624:	48 89 e5             	mov    %rsp,%rbp
  401627:	48 83 ec 20          	sub    $0x20,%rsp
  40162b:	89 7d ec             	mov    %edi,-0x14(%rbp)
  40162e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401632:	48 8b 05 57 2a 00 00 	mov    0x2a57(%rip),%rax        # 404090 <stdout@GLIBC_2.2.5>
  401639:	be 00 00 00 00       	mov    $0x0,%esi
  40163e:	48 89 c7             	mov    %rax,%rdi
  401641:	e8 fa fa ff ff       	call   401140 <setbuf@plt>
  401646:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  40164d:	00 
  40164e:	48 8d 3d 82 0a 00 00 	lea    0xa82(%rip),%rdi        # 4020d7 <_IO_stdin_used+0xd7>
  401655:	e8 24 fd ff ff       	call   40137e <printMsg>
  40165a:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  40165e:	48 89 c7             	mov    %rax,%rdi
  401661:	e8 86 fc ff ff       	call   4012ec <createExtensibleDatasetBase2>
  401666:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40166a:	eb 24                	jmp    401690 <main+0x71>
  40166c:	b8 00 00 00 00       	mov    $0x0,%eax
  401671:	e8 e8 fd ff ff       	call   40145e <logValue>
  401676:	b8 00 00 00 00       	mov    $0x0,%eax
  40167b:	e8 6a fe ff ff       	call   4014ea <logError>
  401680:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  401684:	48 89 c7             	mov    %rax,%rdi
  401687:	e8 60 fc ff ff       	call   4012ec <createExtensibleDatasetBase2>
  40168c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401690:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  401695:	74 d5                	je     40166c <main+0x4d>
  401697:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40169b:	48 89 c6             	mov    %rax,%rsi
  40169e:	48 8d 3d 3b 0a 00 00 	lea    0xa3b(%rip),%rdi        # 4020e0 <_IO_stdin_used+0xe0>
  4016a5:	b8 00 00 00 00       	mov    $0x0,%eax
  4016aa:	e8 a1 fa ff ff       	call   401150 <printf@plt>
  4016af:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4016b3:	48 89 c7             	mov    %rax,%rdi
  4016b6:	e8 45 fa ff ff       	call   401100 <free@plt>
  4016bb:	b8 00 00 00 00       	mov    $0x0,%eax
  4016c0:	c9                   	leave  
  4016c1:	c3                   	ret    
  4016c2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4016c9:	00 00 00 
  4016cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004016d0 <__libc_csu_init>:
  4016d0:	f3 0f 1e fa          	endbr64 
  4016d4:	41 57                	push   %r15
  4016d6:	4c 8d 3d 33 27 00 00 	lea    0x2733(%rip),%r15        # 403e10 <__frame_dummy_init_array_entry>
  4016dd:	41 56                	push   %r14
  4016df:	49 89 d6             	mov    %rdx,%r14
  4016e2:	41 55                	push   %r13
  4016e4:	49 89 f5             	mov    %rsi,%r13
  4016e7:	41 54                	push   %r12
  4016e9:	41 89 fc             	mov    %edi,%r12d
  4016ec:	55                   	push   %rbp
  4016ed:	48 8d 2d 24 27 00 00 	lea    0x2724(%rip),%rbp        # 403e18 <__do_global_dtors_aux_fini_array_entry>
  4016f4:	53                   	push   %rbx
  4016f5:	4c 29 fd             	sub    %r15,%rbp
  4016f8:	48 83 ec 08          	sub    $0x8,%rsp
  4016fc:	e8 ff f8 ff ff       	call   401000 <_init>
  401701:	48 c1 fd 03          	sar    $0x3,%rbp
  401705:	74 1f                	je     401726 <__libc_csu_init+0x56>
  401707:	31 db                	xor    %ebx,%ebx
  401709:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401710:	4c 89 f2             	mov    %r14,%rdx
  401713:	4c 89 ee             	mov    %r13,%rsi
  401716:	44 89 e7             	mov    %r12d,%edi
  401719:	41 ff 14 df          	call   *(%r15,%rbx,8)
  40171d:	48 83 c3 01          	add    $0x1,%rbx
  401721:	48 39 dd             	cmp    %rbx,%rbp
  401724:	75 ea                	jne    401710 <__libc_csu_init+0x40>
  401726:	48 83 c4 08          	add    $0x8,%rsp
  40172a:	5b                   	pop    %rbx
  40172b:	5d                   	pop    %rbp
  40172c:	41 5c                	pop    %r12
  40172e:	41 5d                	pop    %r13
  401730:	41 5e                	pop    %r14
  401732:	41 5f                	pop    %r15
  401734:	c3                   	ret    
  401735:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40173c:	00 00 00 00 

0000000000401740 <__libc_csu_fini>:
  401740:	f3 0f 1e fa          	endbr64 
  401744:	c3                   	ret    

Disassembly of section .fini:

0000000000401748 <_fini>:
  401748:	f3 0f 1e fa          	endbr64 
  40174c:	48 83 ec 08          	sub    $0x8,%rsp
  401750:	48 83 c4 08          	add    $0x8,%rsp
  401754:	c3                   	ret    
