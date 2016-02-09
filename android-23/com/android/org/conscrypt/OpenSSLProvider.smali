.class public final Lcom/android/org/conscrypt/OpenSSLProvider;
.super Ljava/security/Provider;
.source "OpenSSLProvider.java"


# static fields
.field private static final PREFIX:Ljava/lang/String;

.field public static final PROVIDER_NAME:Ljava/lang/String; = "AndroidOpenSSL"

.field private static final STANDARD_EC_PRIVATE_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.ECPrivateKey"

.field private static final STANDARD_RSA_PRIVATE_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.RSAPrivateKey"

.field private static final STANDARD_RSA_PUBLIC_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.RSAPublicKey"

.field private static final serialVersionUID:J = 0x29969a845b3fb130L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-class v1, Lcom/android/org/conscrypt/OpenSSLProvider;

    #@7
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, "."

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@20
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 46
    const-string/jumbo v0, "AndroidOpenSSL"

    #@3
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLProvider;-><init>(Ljava/lang/String;)V

    #@6
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "providerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    const-string/jumbo v3, "Android\'s OpenSSL-backed security provider"

    #@3
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@5
    invoke-direct {p0, p1, v4, v5, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    #@8
    .line 53
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->setup()V

    #@b
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    const-string/jumbo v4, "OpenSSLContextImpl"

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 57
    .local v0, "classOpenSSLContextImpl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    const-string/jumbo v4, "$TLSv12"

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    .line 58
    .local v2, "tls12SSLContext":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    const-string/jumbo v4, "$SSLv3"

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    .line 59
    .local v1, "ssl3SSLContext":Ljava/lang/String;
    const-string/jumbo v3, "SSLContext.SSL"

    #@4c
    invoke-virtual {p0, v3, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    .line 60
    const-string/jumbo v3, "SSLContext.SSLv3"

    #@52
    invoke-virtual {p0, v3, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 61
    const-string/jumbo v3, "SSLContext.TLS"

    #@58
    invoke-virtual {p0, v3, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 62
    const-string/jumbo v3, "SSLContext.TLSv1"

    #@5e
    new-instance v4, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    const-string/jumbo v5, "$TLSv1"

    #@6a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    .line 63
    const-string/jumbo v3, "SSLContext.TLSv1.1"

    #@78
    new-instance v4, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    const-string/jumbo v5, "$TLSv11"

    #@84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v4

    #@8c
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8f
    .line 64
    const-string/jumbo v3, "SSLContext.TLSv1.2"

    #@92
    invoke-virtual {p0, v3, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@95
    .line 65
    const-string/jumbo v3, "SSLContext.Default"

    #@98
    new-instance v4, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@9f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v4

    #@a3
    const-string/jumbo v5, "DefaultSSLContextImpl"

    #@a6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v4

    #@aa
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v4

    #@ae
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b1
    .line 68
    const-string/jumbo v3, "MessageDigest.SHA-1"

    #@b4
    new-instance v4, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@bb
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v4

    #@bf
    const-string/jumbo v5, "OpenSSLMessageDigestJDK$SHA1"

    #@c2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v4

    #@c6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v4

    #@ca
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cd
    .line 69
    const-string/jumbo v3, "Alg.Alias.MessageDigest.SHA1"

    #@d0
    const-string/jumbo v4, "SHA-1"

    #@d3
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d6
    .line 70
    const-string/jumbo v3, "Alg.Alias.MessageDigest.SHA"

    #@d9
    const-string/jumbo v4, "SHA-1"

    #@dc
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@df
    .line 71
    const-string/jumbo v3, "Alg.Alias.MessageDigest.1.3.14.3.2.26"

    #@e2
    const-string/jumbo v4, "SHA-1"

    #@e5
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e8
    .line 73
    const-string/jumbo v3, "MessageDigest.SHA-224"

    #@eb
    new-instance v4, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@f2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v4

    #@f6
    const-string/jumbo v5, "OpenSSLMessageDigestJDK$SHA224"

    #@f9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v4

    #@fd
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v4

    #@101
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@104
    .line 74
    const-string/jumbo v3, "Alg.Alias.MessageDigest.SHA224"

    #@107
    const-string/jumbo v4, "SHA-224"

    #@10a
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10d
    .line 75
    const-string/jumbo v3, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.4"

    #@110
    const-string/jumbo v4, "SHA-224"

    #@113
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@116
    .line 77
    const-string/jumbo v3, "MessageDigest.SHA-256"

    #@119
    new-instance v4, Ljava/lang/StringBuilder;

    #@11b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11e
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v4

    #@124
    const-string/jumbo v5, "OpenSSLMessageDigestJDK$SHA256"

    #@127
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v4

    #@12b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v4

    #@12f
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@132
    .line 78
    const-string/jumbo v3, "Alg.Alias.MessageDigest.SHA256"

    #@135
    const-string/jumbo v4, "SHA-256"

    #@138
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13b
    .line 79
    const-string/jumbo v3, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.1"

    #@13e
    const-string/jumbo v4, "SHA-256"

    #@141
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@144
    .line 81
    const-string/jumbo v3, "MessageDigest.SHA-384"

    #@147
    new-instance v4, Ljava/lang/StringBuilder;

    #@149
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14c
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@14e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v4

    #@152
    const-string/jumbo v5, "OpenSSLMessageDigestJDK$SHA384"

    #@155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v4

    #@159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15c
    move-result-object v4

    #@15d
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@160
    .line 82
    const-string/jumbo v3, "Alg.Alias.MessageDigest.SHA384"

    #@163
    const-string/jumbo v4, "SHA-384"

    #@166
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@169
    .line 83
    const-string/jumbo v3, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.2"

    #@16c
    const-string/jumbo v4, "SHA-384"

    #@16f
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@172
    .line 85
    const-string/jumbo v3, "MessageDigest.SHA-512"

    #@175
    new-instance v4, Ljava/lang/StringBuilder;

    #@177
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17a
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@17c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v4

    #@180
    const-string/jumbo v5, "OpenSSLMessageDigestJDK$SHA512"

    #@183
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v4

    #@187
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v4

    #@18b
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18e
    .line 86
    const-string/jumbo v3, "Alg.Alias.MessageDigest.SHA512"

    #@191
    const-string/jumbo v4, "SHA-512"

    #@194
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@197
    .line 87
    const-string/jumbo v3, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.3"

    #@19a
    const-string/jumbo v4, "SHA-512"

    #@19d
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a0
    .line 90
    const-string/jumbo v3, "MessageDigest.MD5"

    #@1a3
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a8
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@1aa
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v4

    #@1ae
    const-string/jumbo v5, "OpenSSLMessageDigestJDK$MD5"

    #@1b1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v4

    #@1b5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b8
    move-result-object v4

    #@1b9
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1bc
    .line 91
    const-string/jumbo v3, "Alg.Alias.MessageDigest.1.2.840.113549.2.5"

    #@1bf
    const-string/jumbo v4, "MD5"

    #@1c2
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c5
    .line 94
    const-string/jumbo v3, "KeyPairGenerator.RSA"

    #@1c8
    new-instance v4, Ljava/lang/StringBuilder;

    #@1ca
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1cd
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@1cf
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v4

    #@1d3
    const-string/jumbo v5, "OpenSSLRSAKeyPairGenerator"

    #@1d6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d9
    move-result-object v4

    #@1da
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dd
    move-result-object v4

    #@1de
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e1
    .line 95
    const-string/jumbo v3, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1.1"

    #@1e4
    const-string/jumbo v4, "RSA"

    #@1e7
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ea
    .line 97
    const-string/jumbo v3, "KeyPairGenerator.EC"

    #@1ed
    new-instance v4, Ljava/lang/StringBuilder;

    #@1ef
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f2
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@1f4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v4

    #@1f8
    const-string/jumbo v5, "OpenSSLECKeyPairGenerator"

    #@1fb
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fe
    move-result-object v4

    #@1ff
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@202
    move-result-object v4

    #@203
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@206
    .line 100
    const-string/jumbo v3, "KeyFactory.RSA"

    #@209
    new-instance v4, Ljava/lang/StringBuilder;

    #@20b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20e
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@213
    move-result-object v4

    #@214
    const-string/jumbo v5, "OpenSSLRSAKeyFactory"

    #@217
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21a
    move-result-object v4

    #@21b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21e
    move-result-object v4

    #@21f
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@222
    .line 101
    const-string/jumbo v3, "Alg.Alias.KeyFactory.1.2.840.113549.1.1.1"

    #@225
    const-string/jumbo v4, "RSA"

    #@228
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22b
    .line 103
    const-string/jumbo v3, "KeyFactory.EC"

    #@22e
    new-instance v4, Ljava/lang/StringBuilder;

    #@230
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@233
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@235
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@238
    move-result-object v4

    #@239
    const-string/jumbo v5, "OpenSSLECKeyFactory"

    #@23c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v4

    #@240
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@243
    move-result-object v4

    #@244
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@247
    .line 106
    const-string/jumbo v3, "OpenSSLECDHKeyAgreement"

    #@24a
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putECDHKeyAgreementImplClass(Ljava/lang/String;)V

    #@24d
    .line 109
    const-string/jumbo v3, "MD5WithRSA"

    #@250
    const-string/jumbo v4, "OpenSSLSignature$MD5RSA"

    #@253
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@256
    .line 110
    const-string/jumbo v3, "Alg.Alias.Signature.MD5WithRSAEncryption"

    #@259
    const-string/jumbo v4, "MD5WithRSA"

    #@25c
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25f
    .line 111
    const-string/jumbo v3, "Alg.Alias.Signature.MD5/RSA"

    #@262
    const-string/jumbo v4, "MD5WithRSA"

    #@265
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@268
    .line 112
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    #@26b
    const-string/jumbo v4, "MD5WithRSA"

    #@26e
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@271
    .line 113
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    #@274
    const-string/jumbo v4, "MD5WithRSA"

    #@277
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27a
    .line 115
    const-string/jumbo v3, "SHA1WithRSA"

    #@27d
    const-string/jumbo v4, "OpenSSLSignature$SHA1RSA"

    #@280
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@283
    .line 116
    const-string/jumbo v3, "Alg.Alias.Signature.SHA1WithRSAEncryption"

    #@286
    const-string/jumbo v4, "SHA1WithRSA"

    #@289
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28c
    .line 117
    const-string/jumbo v3, "Alg.Alias.Signature.SHA1/RSA"

    #@28f
    const-string/jumbo v4, "SHA1WithRSA"

    #@292
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@295
    .line 118
    const-string/jumbo v3, "Alg.Alias.Signature.SHA-1/RSA"

    #@298
    const-string/jumbo v4, "SHA1WithRSA"

    #@29b
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29e
    .line 119
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    #@2a1
    const-string/jumbo v4, "SHA1WithRSA"

    #@2a4
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a7
    .line 120
    const-string/jumbo v3, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.1"

    #@2aa
    const-string/jumbo v4, "SHA1WithRSA"

    #@2ad
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b0
    .line 121
    const-string/jumbo v3, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.5"

    #@2b3
    const-string/jumbo v4, "SHA1WithRSA"

    #@2b6
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b9
    .line 122
    const-string/jumbo v3, "Alg.Alias.Signature.1.3.14.3.2.29"

    #@2bc
    const-string/jumbo v4, "SHA1WithRSA"

    #@2bf
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c2
    .line 124
    const-string/jumbo v3, "SHA224WithRSA"

    #@2c5
    const-string/jumbo v4, "OpenSSLSignature$SHA224RSA"

    #@2c8
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@2cb
    .line 125
    const-string/jumbo v3, "Alg.Alias.Signature.SHA224WithRSAEncryption"

    #@2ce
    const-string/jumbo v4, "SHA224WithRSA"

    #@2d1
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d4
    .line 126
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    #@2d7
    const-string/jumbo v4, "SHA224WithRSA"

    #@2da
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2dd
    .line 127
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.1"

    #@2e0
    .line 128
    const-string/jumbo v4, "SHA224WithRSA"

    #@2e3
    .line 127
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e6
    .line 129
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.11"

    #@2e9
    .line 130
    const-string/jumbo v4, "SHA224WithRSA"

    #@2ec
    .line 129
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ef
    .line 132
    const-string/jumbo v3, "SHA256WithRSA"

    #@2f2
    const-string/jumbo v4, "OpenSSLSignature$SHA256RSA"

    #@2f5
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@2f8
    .line 133
    const-string/jumbo v3, "Alg.Alias.Signature.SHA256WithRSAEncryption"

    #@2fb
    const-string/jumbo v4, "SHA256WithRSA"

    #@2fe
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@301
    .line 134
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    #@304
    const-string/jumbo v4, "SHA256WithRSA"

    #@307
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30a
    .line 135
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.1"

    #@30d
    .line 136
    const-string/jumbo v4, "SHA256WithRSA"

    #@310
    .line 135
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@313
    .line 137
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.11"

    #@316
    .line 138
    const-string/jumbo v4, "SHA256WithRSA"

    #@319
    .line 137
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31c
    .line 140
    const-string/jumbo v3, "SHA384WithRSA"

    #@31f
    const-string/jumbo v4, "OpenSSLSignature$SHA384RSA"

    #@322
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@325
    .line 141
    const-string/jumbo v3, "Alg.Alias.Signature.SHA384WithRSAEncryption"

    #@328
    const-string/jumbo v4, "SHA384WithRSA"

    #@32b
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32e
    .line 142
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    #@331
    const-string/jumbo v4, "SHA384WithRSA"

    #@334
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@337
    .line 143
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.113549.1.1.1"

    #@33a
    .line 144
    const-string/jumbo v4, "SHA384WithRSA"

    #@33d
    .line 143
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@340
    .line 146
    const-string/jumbo v3, "SHA512WithRSA"

    #@343
    const-string/jumbo v4, "OpenSSLSignature$SHA512RSA"

    #@346
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@349
    .line 147
    const-string/jumbo v3, "Alg.Alias.Signature.SHA512WithRSAEncryption"

    #@34c
    const-string/jumbo v4, "SHA512WithRSA"

    #@34f
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@352
    .line 148
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    #@355
    const-string/jumbo v4, "SHA512WithRSA"

    #@358
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35b
    .line 149
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.113549.1.1.1"

    #@35e
    .line 150
    const-string/jumbo v4, "SHA512WithRSA"

    #@361
    .line 149
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@364
    .line 152
    const-string/jumbo v3, "OpenSSLSignatureRawRSA"

    #@367
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRAWRSASignatureImplClass(Ljava/lang/String;)V

    #@36a
    .line 154
    const-string/jumbo v3, "ECDSA"

    #@36d
    const-string/jumbo v4, "OpenSSLSignature$SHA1ECDSA"

    #@370
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@373
    .line 155
    const-string/jumbo v3, "Alg.Alias.Signature.SHA1withECDSA"

    #@376
    const-string/jumbo v4, "ECDSA"

    #@379
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37c
    .line 156
    const-string/jumbo v3, "Alg.Alias.Signature.ECDSAwithSHA1"

    #@37f
    const-string/jumbo v4, "ECDSA"

    #@382
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@385
    .line 158
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.10045.4.1"

    #@388
    const-string/jumbo v4, "ECDSA"

    #@38b
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38e
    .line 159
    const-string/jumbo v3, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10045.2.1"

    #@391
    const-string/jumbo v4, "ECDSA"

    #@394
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@397
    .line 162
    const-string/jumbo v3, "SHA224withECDSA"

    #@39a
    const-string/jumbo v4, "OpenSSLSignature$SHA224ECDSA"

    #@39d
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@3a0
    .line 164
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.10045.4.3.1"

    #@3a3
    const-string/jumbo v4, "SHA224withECDSA"

    #@3a6
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a9
    .line 165
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.10045.2.1"

    #@3ac
    const-string/jumbo v4, "SHA224withECDSA"

    #@3af
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b2
    .line 168
    const-string/jumbo v3, "SHA256withECDSA"

    #@3b5
    const-string/jumbo v4, "OpenSSLSignature$SHA256ECDSA"

    #@3b8
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@3bb
    .line 170
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.10045.4.3.2"

    #@3be
    const-string/jumbo v4, "SHA256withECDSA"

    #@3c1
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c4
    .line 171
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.10045.2.1"

    #@3c7
    const-string/jumbo v4, "SHA256withECDSA"

    #@3ca
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3cd
    .line 173
    const-string/jumbo v3, "SHA384withECDSA"

    #@3d0
    const-string/jumbo v4, "OpenSSLSignature$SHA384ECDSA"

    #@3d3
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@3d6
    .line 175
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.10045.4.3.3"

    #@3d9
    const-string/jumbo v4, "SHA384withECDSA"

    #@3dc
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3df
    .line 176
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.10045.2.1"

    #@3e2
    const-string/jumbo v4, "SHA384withECDSA"

    #@3e5
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e8
    .line 178
    const-string/jumbo v3, "SHA512withECDSA"

    #@3eb
    const-string/jumbo v4, "OpenSSLSignature$SHA512ECDSA"

    #@3ee
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@3f1
    .line 180
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.10045.4.3.4"

    #@3f4
    const-string/jumbo v4, "SHA512withECDSA"

    #@3f7
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3fa
    .line 181
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.10045.2.1"

    #@3fd
    const-string/jumbo v4, "SHA512withECDSA"

    #@400
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@403
    .line 189
    const-string/jumbo v3, "SecureRandom.SHA1PRNG"

    #@406
    new-instance v4, Ljava/lang/StringBuilder;

    #@408
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@40b
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@40d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@410
    move-result-object v4

    #@411
    const-string/jumbo v5, "OpenSSLRandom"

    #@414
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@417
    move-result-object v4

    #@418
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41b
    move-result-object v4

    #@41c
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41f
    .line 190
    const-string/jumbo v3, "SecureRandom.SHA1PRNG ImplementedIn"

    #@422
    const-string/jumbo v4, "Software"

    #@425
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@428
    .line 193
    const-string/jumbo v3, "RSA/ECB/NoPadding"

    #@42b
    const-string/jumbo v4, "OpenSSLCipherRSA$Raw"

    #@42e
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@431
    .line 194
    const-string/jumbo v3, "Alg.Alias.Cipher.RSA/None/NoPadding"

    #@434
    const-string/jumbo v4, "RSA/ECB/NoPadding"

    #@437
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43a
    .line 195
    const-string/jumbo v3, "RSA/ECB/PKCS1Padding"

    #@43d
    const-string/jumbo v4, "OpenSSLCipherRSA$PKCS1"

    #@440
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@443
    .line 196
    const-string/jumbo v3, "Alg.Alias.Cipher.RSA/None/PKCS1Padding"

    #@446
    const-string/jumbo v4, "RSA/ECB/PKCS1Padding"

    #@449
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44c
    .line 211
    const-string/jumbo v3, "AES/ECB/NoPadding"

    #@44f
    .line 212
    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES$ECB$NoPadding"

    #@452
    .line 211
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@455
    .line 213
    const-string/jumbo v3, "AES/ECB/PKCS5Padding"

    #@458
    .line 214
    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES$ECB$PKCS5Padding"

    #@45b
    .line 213
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@45e
    .line 215
    const-string/jumbo v3, "Alg.Alias.Cipher.AES/ECB/PKCS7Padding"

    #@461
    const-string/jumbo v4, "AES/ECB/PKCS5Padding"

    #@464
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@467
    .line 216
    const-string/jumbo v3, "AES/CBC/NoPadding"

    #@46a
    .line 217
    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES$CBC$NoPadding"

    #@46d
    .line 216
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@470
    .line 218
    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    #@473
    .line 219
    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES$CBC$PKCS5Padding"

    #@476
    .line 218
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@479
    .line 220
    const-string/jumbo v3, "Alg.Alias.Cipher.AES/CBC/PKCS7Padding"

    #@47c
    const-string/jumbo v4, "AES/CBC/PKCS5Padding"

    #@47f
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@482
    .line 221
    const-string/jumbo v3, "AES/CTR/NoPadding"

    #@485
    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES$CTR"

    #@488
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@48b
    .line 223
    const-string/jumbo v3, "DESEDE/CBC/NoPadding"

    #@48e
    .line 224
    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$DESEDE$CBC$NoPadding"

    #@491
    .line 223
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@494
    .line 225
    const-string/jumbo v3, "DESEDE/CBC/PKCS5Padding"

    #@497
    .line 226
    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$DESEDE$CBC$PKCS5Padding"

    #@49a
    .line 225
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@49d
    .line 227
    const-string/jumbo v3, "Alg.Alias.Cipher.DESEDE/CBC/PKCS7Padding"

    #@4a0
    const-string/jumbo v4, "DESEDE/CBC/PKCS5Padding"

    #@4a3
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a6
    .line 229
    const-string/jumbo v3, "ARC4"

    #@4a9
    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$ARC4"

    #@4ac
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@4af
    .line 233
    const-string/jumbo v3, "AES/GCM/NoPadding"

    #@4b2
    const-string/jumbo v4, "OpenSSLCipher$EVP_AEAD$AES$GCM"

    #@4b5
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@4b8
    .line 234
    const-string/jumbo v3, "Alg.Alias.Cipher.GCM"

    #@4bb
    const-string/jumbo v4, "AES/GCM/NoPadding"

    #@4be
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c1
    .line 239
    const-string/jumbo v3, "HmacMD5"

    #@4c4
    const-string/jumbo v4, "OpenSSLMac$HmacMD5"

    #@4c7
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@4ca
    .line 245
    const-string/jumbo v3, "HmacSHA1"

    #@4cd
    const-string/jumbo v4, "OpenSSLMac$HmacSHA1"

    #@4d0
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@4d3
    .line 246
    const-string/jumbo v3, "Alg.Alias.Mac.1.2.840.113549.2.7"

    #@4d6
    const-string/jumbo v4, "HmacSHA1"

    #@4d9
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4dc
    .line 247
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC-SHA1"

    #@4df
    const-string/jumbo v4, "HmacSHA1"

    #@4e2
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e5
    .line 248
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC/SHA1"

    #@4e8
    const-string/jumbo v4, "HmacSHA1"

    #@4eb
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4ee
    .line 251
    const-string/jumbo v3, "HmacSHA224"

    #@4f1
    const-string/jumbo v4, "OpenSSLMac$HmacSHA224"

    #@4f4
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@4f7
    .line 252
    const-string/jumbo v3, "Alg.Alias.Mac.1.2.840.113549.2.9"

    #@4fa
    const-string/jumbo v4, "HmacSHA224"

    #@4fd
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@500
    .line 253
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC-SHA224"

    #@503
    const-string/jumbo v4, "HmacSHA224"

    #@506
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@509
    .line 254
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC/SHA224"

    #@50c
    const-string/jumbo v4, "HmacSHA224"

    #@50f
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@512
    .line 257
    const-string/jumbo v3, "HmacSHA256"

    #@515
    const-string/jumbo v4, "OpenSSLMac$HmacSHA256"

    #@518
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@51b
    .line 258
    const-string/jumbo v3, "Alg.Alias.Mac.1.2.840.113549.2.9"

    #@51e
    const-string/jumbo v4, "HmacSHA256"

    #@521
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@524
    .line 259
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC-SHA256"

    #@527
    const-string/jumbo v4, "HmacSHA256"

    #@52a
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52d
    .line 260
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC/SHA256"

    #@530
    const-string/jumbo v4, "HmacSHA256"

    #@533
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@536
    .line 263
    const-string/jumbo v3, "HmacSHA384"

    #@539
    const-string/jumbo v4, "OpenSSLMac$HmacSHA384"

    #@53c
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@53f
    .line 264
    const-string/jumbo v3, "Alg.Alias.Mac.1.2.840.113549.2.10"

    #@542
    const-string/jumbo v4, "HmacSHA384"

    #@545
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@548
    .line 265
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC-SHA384"

    #@54b
    const-string/jumbo v4, "HmacSHA384"

    #@54e
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@551
    .line 266
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC/SHA384"

    #@554
    const-string/jumbo v4, "HmacSHA384"

    #@557
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55a
    .line 269
    const-string/jumbo v3, "HmacSHA512"

    #@55d
    const-string/jumbo v4, "OpenSSLMac$HmacSHA512"

    #@560
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@563
    .line 270
    const-string/jumbo v3, "Alg.Alias.Mac.1.2.840.113549.2.11"

    #@566
    const-string/jumbo v4, "HmacSHA512"

    #@569
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56c
    .line 271
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC-SHA512"

    #@56f
    const-string/jumbo v4, "HmacSHA512"

    #@572
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@575
    .line 272
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC/SHA512"

    #@578
    const-string/jumbo v4, "HmacSHA512"

    #@57b
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@57e
    .line 276
    const-string/jumbo v3, "CertificateFactory.X509"

    #@581
    new-instance v4, Ljava/lang/StringBuilder;

    #@583
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@586
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@588
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58b
    move-result-object v4

    #@58c
    const-string/jumbo v5, "OpenSSLX509CertificateFactory"

    #@58f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@592
    move-result-object v4

    #@593
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@596
    move-result-object v4

    #@597
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59a
    .line 277
    const-string/jumbo v3, "Alg.Alias.CertificateFactory.X.509"

    #@59d
    const-string/jumbo v4, "X509"

    #@5a0
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a3
    .line 49
    return-void
.end method

.method private putECDHKeyAgreementImplClass(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v2

    #@b
    const-string/jumbo v3, "OpenSSLKeyHolder"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    .line 363
    const-string/jumbo v3, "|"

    #@15
    .line 362
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 363
    const-string/jumbo v3, "java.security.interfaces.ECPrivateKey"

    #@1c
    .line 362
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 364
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string/jumbo v1, "PKCS#8"

    #@27
    .line 366
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    const-string/jumbo v2, "KeyAgreement.ECDH"

    #@2a
    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 365
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@40
    .line 357
    return-void
.end method

.method private putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "typeAndAlgName"    # Ljava/lang/String;
    .param p2, "fullyQualifiedClassName"    # Ljava/lang/String;
    .param p3, "supportedKeyClasses"    # Ljava/lang/String;
    .param p4, "supportedKeyFormats"    # Ljava/lang/String;

    #@0
    .prologue
    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 377
    if-eqz p3, :cond_0

    #@5
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    const-string/jumbo v1, " SupportedKeyClasses"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p0, v0, p3}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 380
    :cond_0
    if-eqz p4, :cond_1

    #@1e
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const-string/jumbo v1, " SupportedKeyFormats"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {p0, v0, p4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 375
    :cond_1
    return-void
.end method

.method private putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v2

    #@b
    const-string/jumbo v3, "OpenSSLKeyHolder"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 285
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string/jumbo v1, "RAW"

    #@19
    .line 287
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "Mac."

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    .line 286
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@43
    .line 280
    return-void
.end method

.method private putRAWRSASignatureImplClass(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v2

    #@b
    const-string/jumbo v3, "OpenSSLRSAPrivateKey"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    .line 346
    const-string/jumbo v3, "|"

    #@15
    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 346
    const-string/jumbo v3, "java.security.interfaces.RSAPrivateKey"

    #@1c
    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 347
    const-string/jumbo v3, "|"

    #@23
    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 347
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@29
    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 347
    const-string/jumbo v3, "OpenSSLRSAPublicKey"

    #@30
    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 348
    const-string/jumbo v3, "|"

    #@37
    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 348
    const-string/jumbo v3, "java.security.interfaces.RSAPublicKey"

    #@3e
    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .line 349
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const/4 v1, 0x0

    #@47
    .line 351
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    const-string/jumbo v2, "Signature.NONEwithRSA"

    #@4a
    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    .line 350
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@60
    .line 341
    return-void
.end method

.method private putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v2

    #@b
    const-string/jumbo v3, "OpenSSLRSAPrivateKey"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    .line 310
    const-string/jumbo v3, "|"

    #@15
    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 310
    const-string/jumbo v3, "java.security.interfaces.RSAPrivateKey"

    #@1c
    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 311
    const-string/jumbo v3, "|"

    #@23
    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 311
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@29
    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 311
    const-string/jumbo v3, "OpenSSLRSAPublicKey"

    #@30
    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 312
    const-string/jumbo v3, "|"

    #@37
    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 312
    const-string/jumbo v3, "java.security.interfaces.RSAPublicKey"

    #@3e
    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .line 313
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const/4 v1, 0x0

    #@47
    .line 315
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v3, "Cipher."

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    .line 314
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@71
    .line 305
    return-void
.end method

.method private putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v2

    #@b
    const-string/jumbo v3, "OpenSSLKeyHolder"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    .line 330
    const-string/jumbo v3, "|"

    #@15
    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 330
    const-string/jumbo v3, "java.security.interfaces.RSAPrivateKey"

    #@1c
    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 331
    const-string/jumbo v3, "|"

    #@23
    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 331
    const-string/jumbo v3, "java.security.interfaces.ECPrivateKey"

    #@2a
    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 332
    const-string/jumbo v3, "|"

    #@31
    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 332
    const-string/jumbo v3, "java.security.interfaces.RSAPublicKey"

    #@38
    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    .line 333
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string/jumbo v1, "PKCS#8|X.509"

    #@43
    .line 335
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v3, "Signature."

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    .line 334
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@6d
    .line 321
    return-void
.end method

.method private putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 296
    const/4 v0, 0x0

    #@1
    .line 297
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string/jumbo v1, "RAW"

    #@4
    .line 299
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "Cipher."

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    .line 298
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 293
    return-void
.end method
