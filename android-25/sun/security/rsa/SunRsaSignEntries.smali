.class public final Lsun/security/rsa/SunRsaSignEntries;
.super Ljava/lang/Object;
.source "SunRsaSignEntries.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static putEntries(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 45
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string/jumbo v1, "KeyFactory.RSA"

    #@3
    .line 46
    const-string/jumbo v2, "sun.security.rsa.RSAKeyFactory"

    #@6
    .line 45
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 47
    const-string/jumbo v1, "KeyPairGenerator.RSA"

    #@c
    .line 48
    const-string/jumbo v2, "sun.security.rsa.RSAKeyPairGenerator"

    #@f
    .line 47
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 49
    const-string/jumbo v1, "Signature.MD2withRSA"

    #@15
    .line 50
    const-string/jumbo v2, "sun.security.rsa.RSASignature$MD2withRSA"

    #@18
    .line 49
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 51
    const-string/jumbo v1, "Signature.MD5withRSA"

    #@1e
    .line 52
    const-string/jumbo v2, "sun.security.rsa.RSASignature$MD5withRSA"

    #@21
    .line 51
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 53
    const-string/jumbo v1, "Signature.SHA1withRSA"

    #@27
    .line 54
    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA1withRSA"

    #@2a
    .line 53
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 55
    const-string/jumbo v1, "Signature.SHA256withRSA"

    #@30
    .line 56
    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA256withRSA"

    #@33
    .line 55
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 57
    const-string/jumbo v1, "Signature.SHA384withRSA"

    #@39
    .line 58
    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA384withRSA"

    #@3c
    .line 57
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 59
    const-string/jumbo v1, "Signature.SHA512withRSA"

    #@42
    .line 60
    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA512withRSA"

    #@45
    .line 59
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 64
    const-string/jumbo v0, "java.security.interfaces.RSAPublicKey|java.security.interfaces.RSAPrivateKey"

    #@4b
    .line 66
    .local v0, "rsaKeyClasses":Ljava/lang/String;
    const-string/jumbo v1, "Signature.MD2withRSA SupportedKeyClasses"

    #@4e
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 67
    const-string/jumbo v1, "Signature.MD5withRSA SupportedKeyClasses"

    #@54
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@57
    .line 68
    const-string/jumbo v1, "Signature.SHA1withRSA SupportedKeyClasses"

    #@5a
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    .line 69
    const-string/jumbo v1, "Signature.SHA256withRSA SupportedKeyClasses"

    #@60
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    .line 70
    const-string/jumbo v1, "Signature.SHA384withRSA SupportedKeyClasses"

    #@66
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    .line 71
    const-string/jumbo v1, "Signature.SHA512withRSA SupportedKeyClasses"

    #@6c
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    .line 75
    const-string/jumbo v1, "Alg.Alias.KeyFactory.1.2.840.113549.1.1"

    #@72
    const-string/jumbo v2, "RSA"

    #@75
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    .line 76
    const-string/jumbo v1, "Alg.Alias.KeyFactory.OID.1.2.840.113549.1.1"

    #@7b
    const-string/jumbo v2, "RSA"

    #@7e
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@81
    .line 78
    const-string/jumbo v1, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1"

    #@84
    const-string/jumbo v2, "RSA"

    #@87
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    .line 79
    const-string/jumbo v1, "Alg.Alias.KeyPairGenerator.OID.1.2.840.113549.1.1"

    #@8d
    const-string/jumbo v2, "RSA"

    #@90
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@93
    .line 81
    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.2"

    #@96
    const-string/jumbo v2, "MD2withRSA"

    #@99
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9c
    .line 82
    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.2"

    #@9f
    const-string/jumbo v2, "MD2withRSA"

    #@a2
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a5
    .line 84
    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    #@a8
    const-string/jumbo v2, "MD5withRSA"

    #@ab
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ae
    .line 85
    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.4"

    #@b1
    const-string/jumbo v2, "MD5withRSA"

    #@b4
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b7
    .line 87
    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    #@ba
    const-string/jumbo v2, "SHA1withRSA"

    #@bd
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c0
    .line 88
    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.5"

    #@c3
    const-string/jumbo v2, "SHA1withRSA"

    #@c6
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c9
    .line 89
    const-string/jumbo v1, "Alg.Alias.Signature.1.3.14.3.2.29"

    #@cc
    const-string/jumbo v2, "SHA1withRSA"

    #@cf
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d2
    .line 91
    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    #@d5
    const-string/jumbo v2, "SHA256withRSA"

    #@d8
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@db
    .line 92
    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.11"

    #@de
    const-string/jumbo v2, "SHA256withRSA"

    #@e1
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e4
    .line 94
    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    #@e7
    const-string/jumbo v2, "SHA384withRSA"

    #@ea
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ed
    .line 95
    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.12"

    #@f0
    const-string/jumbo v2, "SHA384withRSA"

    #@f3
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f6
    .line 97
    const-string/jumbo v1, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    #@f9
    const-string/jumbo v2, "SHA512withRSA"

    #@fc
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ff
    .line 98
    const-string/jumbo v1, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.13"

    #@102
    const-string/jumbo v2, "SHA512withRSA"

    #@105
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@108
    .line 41
    return-void
.end method
