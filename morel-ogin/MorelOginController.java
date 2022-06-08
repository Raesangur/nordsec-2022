// 
// Decompiled by Procyon v0.5.36
// 

package ctf.morelogin;

import org.springframework.web.bind.annotation.GetMapping;
import java.util.UUID;
import com.fasterxml.uuid.impl.RandomBasedGenerator;
import java.util.Random;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MorelOginController
{
    private static final Random random;
    
    @GetMapping({ "/getToken" })
    public String getToken() {
        final UUID uuid = new RandomBasedGenerator(MorelOginController.random).generate();
        return uuid.toString();
    }
    
    static {
        random = new Random();
    }
}

