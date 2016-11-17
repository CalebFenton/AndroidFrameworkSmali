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
    .line 98
    const-string/jumbo v3, "Alg.Alias.KeyPairGenerator.1.2.840.10045.2.1"

    #@209
    const-string/jumbo v4, "EC"

    #@20c
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20f
    .line 101
    const-string/jumbo v3, "KeyFactory.RSA"

    #@212
    new-instance v4, Ljava/lang/StringBuilder;

    #@214
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@217
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@219
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21c
    move-result-object v4

    #@21d
    const-string/jumbo v5, "OpenSSLRSAKeyFactory"

    #@220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@223
    move-result-object v4

    #@224
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@227
    move-result-object v4

    #@228
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22b
    .line 102
    const-string/jumbo v3, "Alg.Alias.KeyFactory.1.2.840.113549.1.1.1"

    #@22e
    const-string/jumbo v4, "RSA"

    #@231
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@234
    .line 104
    const-string/jumbo v3, "KeyFactory.EC"

    #@237
    new-instance v4, Ljava/lang/StringBuilder;

    #@239
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23c
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@23e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@241
    move-result-object v4

    #@242
    const-string/jumbo v5, "OpenSSLECKeyFactory"

    #@245
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v4

    #@249
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24c
    move-result-object v4

    #@24d
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@250
    .line 105
    const-string/jumbo v3, "Alg.Alias.KeyFactory.1.2.840.10045.2.1"

    #@253
    const-string/jumbo v4, "EC"

    #@256
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@259
    .line 108
    const-string/jumbo v3, "OpenSSLECDHKeyAgreement"

    #@25c
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putECDHKeyAgreementImplClass(Ljava/lang/String;)V

    #@25f
    .line 111
    const-string/jumbo v3, "MD5WithRSA"

    #@262
    const-string/jumbo v4, "OpenSSLSignature$MD5RSA"

    #@265
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@268
    .line 112
    const-string/jumbo v3, "Alg.Alias.Signature.MD5WithRSAEncryption"

    #@26b
    const-string/jumbo v4, "MD5WithRSA"

    #@26e
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@271
    .line 113
    const-string/jumbo v3, "Alg.Alias.Signature.MD5/RSA"

    #@274
    const-string/jumbo v4, "MD5WithRSA"

    #@277
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27a
    .line 114
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    #@27d
    const-string/jumbo v4, "MD5WithRSA"

    #@280
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@283
    .line 115
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    #@286
    const-string/jumbo v4, "MD5WithRSA"

    #@289
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28c
    .line 117
    const-string/jumbo v3, "SHA1WithRSA"

    #@28f
    const-string/jumbo v4, "OpenSSLSignature$SHA1RSA"

    #@292
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@295
    .line 118
    const-string/jumbo v3, "Alg.Alias.Signature.SHA1WithRSAEncryption"

    #@298
    const-string/jumbo v4, "SHA1WithRSA"

    #@29b
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29e
    .line 119
    const-string/jumbo v3, "Alg.Alias.Signature.SHA1/RSA"

    #@2a1
    const-string/jumbo v4, "SHA1WithRSA"

    #@2a4
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a7
    .line 120
    const-string/jumbo v3, "Alg.Alias.Signature.SHA-1/RSA"

    #@2aa
    const-string/jumbo v4, "SHA1WithRSA"

    #@2ad
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b0
    .line 121
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    #@2b3
    const-string/jumbo v4, "SHA1WithRSA"

    #@2b6
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b9
    .line 122
    const-string/jumbo v3, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.1"

    #@2bc
    const-string/jumbo v4, "SHA1WithRSA"

    #@2bf
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c2
    .line 123
    const-string/jumbo v3, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.5"

    #@2c5
    const-string/jumbo v4, "SHA1WithRSA"

    #@2c8
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2cb
    .line 124
    const-string/jumbo v3, "Alg.Alias.Signature.1.3.14.3.2.29"

    #@2ce
    const-string/jumbo v4, "SHA1WithRSA"

    #@2d1
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d4
    .line 126
    const-string/jumbo v3, "SHA224WithRSA"

    #@2d7
    const-string/jumbo v4, "OpenSSLSignature$SHA224RSA"

    #@2da
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@2dd
    .line 127
    const-string/jumbo v3, "Alg.Alias.Signature.SHA224WithRSAEncryption"

    #@2e0
    const-string/jumbo v4, "SHA224WithRSA"

    #@2e3
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e6
    .line 128
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.14"

    #@2e9
    const-string/jumbo v4, "SHA224WithRSA"

    #@2ec
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ef
    .line 129
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.1"

    #@2f2
    .line 130
    const-string/jumbo v4, "SHA224WithRSA"

    #@2f5
    .line 129
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f8
    .line 131
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.14"

    #@2fb
    .line 132
    const-string/jumbo v4, "SHA224WithRSA"

    #@2fe
    .line 131
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@301
    .line 134
    const-string/jumbo v3, "SHA256WithRSA"

    #@304
    const-string/jumbo v4, "OpenSSLSignature$SHA256RSA"

    #@307
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@30a
    .line 135
    const-string/jumbo v3, "Alg.Alias.Signature.SHA256WithRSAEncryption"

    #@30d
    const-string/jumbo v4, "SHA256WithRSA"

    #@310
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@313
    .line 136
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    #@316
    const-string/jumbo v4, "SHA256WithRSA"

    #@319
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31c
    .line 137
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.1"

    #@31f
    .line 138
    const-string/jumbo v4, "SHA256WithRSA"

    #@322
    .line 137
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@325
    .line 139
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.11"

    #@328
    .line 140
    const-string/jumbo v4, "SHA256WithRSA"

    #@32b
    .line 139
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32e
    .line 142
    const-string/jumbo v3, "SHA384WithRSA"

    #@331
    const-string/jumbo v4, "OpenSSLSignature$SHA384RSA"

    #@334
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@337
    .line 143
    const-string/jumbo v3, "Alg.Alias.Signature.SHA384WithRSAEncryption"

    #@33a
    const-string/jumbo v4, "SHA384WithRSA"

    #@33d
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@340
    .line 144
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    #@343
    const-string/jumbo v4, "SHA384WithRSA"

    #@346
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@349
    .line 145
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.113549.1.1.1"

    #@34c
    .line 146
    const-string/jumbo v4, "SHA384WithRSA"

    #@34f
    .line 145
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@352
    .line 148
    const-string/jumbo v3, "SHA512WithRSA"

    #@355
    const-string/jumbo v4, "OpenSSLSignature$SHA512RSA"

    #@358
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@35b
    .line 149
    const-string/jumbo v3, "Alg.Alias.Signature.SHA512WithRSAEncryption"

    #@35e
    const-string/jumbo v4, "SHA512WithRSA"

    #@361
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@364
    .line 150
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    #@367
    const-string/jumbo v4, "SHA512WithRSA"

    #@36a
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36d
    .line 151
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.113549.1.1.1"

    #@370
    .line 152
    const-string/jumbo v4, "SHA512WithRSA"

    #@373
    .line 151
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@376
    .line 154
    const-string/jumbo v3, "OpenSSLSignatureRawRSA"

    #@379
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRAWRSASignatureImplClass(Ljava/lang/String;)V

    #@37c
    .line 156
    const-string/jumbo v3, "SHA1withECDSA"

    #@37f
    const-string/jumbo v4, "OpenSSLSignature$SHA1ECDSA"

    #@382
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@385
    .line 157
    const-string/jumbo v3, "Alg.Alias.Signature.ECDSA"

    #@388
    const-string/jumbo v4, "SHA1withECDSA"

    #@38b
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38e
    .line 158
    const-string/jumbo v3, "Alg.Alias.Signature.ECDSAwithSHA1"

    #@391
    const-string/jumbo v4, "SHA1withECDSA"

    #@394
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@397
    .line 160
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.10045.4.1"

    #@39a
    const-string/jumbo v4, "SHA1withECDSA"

    #@39d
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a0
    .line 161
    const-string/jumbo v3, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10045.2.1"

    #@3a3
    const-string/jumbo v4, "SHA1withECDSA"

    #@3a6
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a9
    .line 164
    const-string/jumbo v3, "SHA224withECDSA"

    #@3ac
    const-string/jumbo v4, "OpenSSLSignature$SHA224ECDSA"

    #@3af
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@3b2
    .line 166
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.10045.4.3.1"

    #@3b5
    const-string/jumbo v4, "SHA224withECDSA"

    #@3b8
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3bb
    .line 167
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.10045.2.1"

    #@3be
    const-string/jumbo v4, "SHA224withECDSA"

    #@3c1
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c4
    .line 170
    const-string/jumbo v3, "SHA256withECDSA"

    #@3c7
    const-string/jumbo v4, "OpenSSLSignature$SHA256ECDSA"

    #@3ca
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@3cd
    .line 172
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.10045.4.3.2"

    #@3d0
    const-string/jumbo v4, "SHA256withECDSA"

    #@3d3
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d6
    .line 173
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.10045.2.1"

    #@3d9
    const-string/jumbo v4, "SHA256withECDSA"

    #@3dc
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3df
    .line 175
    const-string/jumbo v3, "SHA384withECDSA"

    #@3e2
    const-string/jumbo v4, "OpenSSLSignature$SHA384ECDSA"

    #@3e5
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@3e8
    .line 177
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.10045.4.3.3"

    #@3eb
    const-string/jumbo v4, "SHA384withECDSA"

    #@3ee
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f1
    .line 178
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.10045.2.1"

    #@3f4
    const-string/jumbo v4, "SHA384withECDSA"

    #@3f7
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3fa
    .line 180
    const-string/jumbo v3, "SHA512withECDSA"

    #@3fd
    const-string/jumbo v4, "OpenSSLSignature$SHA512ECDSA"

    #@400
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@403
    .line 182
    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.10045.4.3.4"

    #@406
    const-string/jumbo v4, "SHA512withECDSA"

    #@409
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40c
    .line 183
    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.10045.2.1"

    #@40f
    const-string/jumbo v4, "SHA512withECDSA"

    #@412
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@415
    .line 185
    const-string/jumbo v3, "SHA1withRSA/PSS"

    #@418
    const-string/jumbo v4, "OpenSSLSignature$SHA1RSAPSS"

    #@41b
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@41e
    .line 186
    const-string/jumbo v3, "Alg.Alias.Signature.SHA1withRSAandMGF1"

    #@421
    const-string/jumbo v4, "SHA1withRSA/PSS"

    #@424
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@427
    .line 188
    const-string/jumbo v3, "SHA224withRSA/PSS"

    #@42a
    const-string/jumbo v4, "OpenSSLSignature$SHA224RSAPSS"

    #@42d
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@430
    .line 189
    const-string/jumbo v3, "Alg.Alias.Signature.SHA224withRSAandMGF1"

    #@433
    const-string/jumbo v4, "SHA224withRSA/PSS"

    #@436
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@439
    .line 191
    const-string/jumbo v3, "SHA256withRSA/PSS"

    #@43c
    const-string/jumbo v4, "OpenSSLSignature$SHA256RSAPSS"

    #@43f
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@442
    .line 192
    const-string/jumbo v3, "Alg.Alias.Signature.SHA256withRSAandMGF1"

    #@445
    const-string/jumbo v4, "SHA256withRSA/PSS"

    #@448
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44b
    .line 194
    const-string/jumbo v3, "SHA384withRSA/PSS"

    #@44e
    const-string/jumbo v4, "OpenSSLSignature$SHA384RSAPSS"

    #@451
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@454
    .line 195
    const-string/jumbo v3, "Alg.Alias.Signature.SHA384withRSAandMGF1"

    #@457
    const-string/jumbo v4, "SHA384withRSA/PSS"

    #@45a
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45d
    .line 197
    const-string/jumbo v3, "SHA512withRSA/PSS"

    #@460
    const-string/jumbo v4, "OpenSSLSignature$SHA512RSAPSS"

    #@463
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@466
    .line 198
    const-string/jumbo v3, "Alg.Alias.Signature.SHA512withRSAandMGF1"

    #@469
    const-string/jumbo v4, "SHA512withRSA/PSS"

    #@46c
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46f
    .line 206
    const-string/jumbo v3, "SecureRandom.SHA1PRNG"

    #@472
    new-instance v4, Ljava/lang/StringBuilder;

    #@474
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@477
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@479
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47c
    move-result-object v4

    #@47d
    const-string/jumbo v5, "OpenSSLRandom"

    #@480
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@483
    move-result-object v4

    #@484
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@487
    move-result-object v4

    #@488
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48b
    .line 207
    const-string/jumbo v3, "SecureRandom.SHA1PRNG ImplementedIn"

    #@48e
    const-string/jumbo v4, "Software"

    #@491
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@494
    .line 210
    const-string/jumbo v3, "RSA/ECB/NoPadding"

    #@497
    const-string/jumbo v4, "OpenSSLCipherRSA$Raw"

    #@49a
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@49d
    .line 211
    const-string/jumbo v3, "Alg.Alias.Cipher.RSA/None/NoPadding"

    #@4a0
    const-string/jumbo v4, "RSA/ECB/NoPadding"

    #@4a3
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a6
    .line 212
    const-string/jumbo v3, "RSA/ECB/PKCS1Padding"

    #@4a9
    const-string/jumbo v4, "OpenSSLCipherRSA$PKCS1"

    #@4ac
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@4af
    .line 213
    const-string/jumbo v3, "Alg.Alias.Cipher.RSA/None/PKCS1Padding"

    #@4b2
    const-string/jumbo v4, "RSA/ECB/PKCS1Padding"

    #@4b5
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b8
    .line 228
    const-string/jumbo v3, "AES/ECB/NoPadding"

    #@4bb
    .line 229
    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES$ECB$NoPadding"

    #@4be
    .line 228
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@4c1
    .line 230
    const-string/jumbo v3, "AES/ECB/PKCS5Padding"

    #@4c4
    .line 231
    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES$ECB$PKCS5Padding"

    #@4c7
    .line 230
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@4ca
    .line 232
    const-string/jumbo v3, "Alg.Alias.Cipher.AES/ECB/PKCS7Padding"

    #@4cd
    const-string/jumbo v4, "AES/ECB/PKCS5Padding"

    #@4d0
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d3
    .line 233
    const-string/jumbo v3, "AES/CBC/NoPadding"

    #@4d6
    .line 234
    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES$CBC$NoPadding"

    #@4d9
    .line 233
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@4dc
    .line 235
    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    #@4df
    .line 236
    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES$CBC$PKCS5Padding"

    #@4e2
    .line 235
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@4e5
    .line 237
    const-string/jumbo v3, "Alg.Alias.Cipher.AES/CBC/PKCS7Padding"

    #@4e8
    const-string/jumbo v4, "AES/CBC/PKCS5Padding"

    #@4eb
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4ee
    .line 238
    const-string/jumbo v3, "AES/CTR/NoPadding"

    #@4f1
    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES$CTR"

    #@4f4
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@4f7
    .line 240
    const-string/jumbo v3, "DESEDE/CBC/NoPadding"

    #@4fa
    .line 241
    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$DESEDE$CBC$NoPadding"

    #@4fd
    .line 240
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@500
    .line 242
    const-string/jumbo v3, "DESEDE/CBC/PKCS5Padding"

    #@503
    .line 243
    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$DESEDE$CBC$PKCS5Padding"

    #@506
    .line 242
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@509
    .line 244
    const-string/jumbo v3, "Alg.Alias.Cipher.DESEDE/CBC/PKCS7Padding"

    #@50c
    const-string/jumbo v4, "DESEDE/CBC/PKCS5Padding"

    #@50f
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@512
    .line 246
    const-string/jumbo v3, "ARC4"

    #@515
    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$ARC4"

    #@518
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@51b
    .line 249
    const-string/jumbo v3, "AES/GCM/NoPadding"

    #@51e
    const-string/jumbo v4, "OpenSSLCipher$EVP_AEAD$AES$GCM"

    #@521
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@524
    .line 250
    const-string/jumbo v3, "Alg.Alias.Cipher.GCM"

    #@527
    const-string/jumbo v4, "AES/GCM/NoPadding"

    #@52a
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52d
    .line 255
    const-string/jumbo v3, "HmacMD5"

    #@530
    const-string/jumbo v4, "OpenSSLMac$HmacMD5"

    #@533
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@536
    .line 261
    const-string/jumbo v3, "HmacSHA1"

    #@539
    const-string/jumbo v4, "OpenSSLMac$HmacSHA1"

    #@53c
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@53f
    .line 262
    const-string/jumbo v3, "Alg.Alias.Mac.1.2.840.113549.2.7"

    #@542
    const-string/jumbo v4, "HmacSHA1"

    #@545
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@548
    .line 263
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC-SHA1"

    #@54b
    const-string/jumbo v4, "HmacSHA1"

    #@54e
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@551
    .line 264
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC/SHA1"

    #@554
    const-string/jumbo v4, "HmacSHA1"

    #@557
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55a
    .line 267
    const-string/jumbo v3, "HmacSHA224"

    #@55d
    const-string/jumbo v4, "OpenSSLMac$HmacSHA224"

    #@560
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@563
    .line 268
    const-string/jumbo v3, "Alg.Alias.Mac.1.2.840.113549.2.9"

    #@566
    const-string/jumbo v4, "HmacSHA224"

    #@569
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56c
    .line 269
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC-SHA224"

    #@56f
    const-string/jumbo v4, "HmacSHA224"

    #@572
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@575
    .line 270
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC/SHA224"

    #@578
    const-string/jumbo v4, "HmacSHA224"

    #@57b
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@57e
    .line 273
    const-string/jumbo v3, "HmacSHA256"

    #@581
    const-string/jumbo v4, "OpenSSLMac$HmacSHA256"

    #@584
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@587
    .line 274
    const-string/jumbo v3, "Alg.Alias.Mac.1.2.840.113549.2.9"

    #@58a
    const-string/jumbo v4, "HmacSHA256"

    #@58d
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@590
    .line 275
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC-SHA256"

    #@593
    const-string/jumbo v4, "HmacSHA256"

    #@596
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@599
    .line 276
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC/SHA256"

    #@59c
    const-string/jumbo v4, "HmacSHA256"

    #@59f
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a2
    .line 279
    const-string/jumbo v3, "HmacSHA384"

    #@5a5
    const-string/jumbo v4, "OpenSSLMac$HmacSHA384"

    #@5a8
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@5ab
    .line 280
    const-string/jumbo v3, "Alg.Alias.Mac.1.2.840.113549.2.10"

    #@5ae
    const-string/jumbo v4, "HmacSHA384"

    #@5b1
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b4
    .line 281
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC-SHA384"

    #@5b7
    const-string/jumbo v4, "HmacSHA384"

    #@5ba
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5bd
    .line 282
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC/SHA384"

    #@5c0
    const-string/jumbo v4, "HmacSHA384"

    #@5c3
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5c6
    .line 285
    const-string/jumbo v3, "HmacSHA512"

    #@5c9
    const-string/jumbo v4, "OpenSSLMac$HmacSHA512"

    #@5cc
    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    #@5cf
    .line 286
    const-string/jumbo v3, "Alg.Alias.Mac.1.2.840.113549.2.11"

    #@5d2
    const-string/jumbo v4, "HmacSHA512"

    #@5d5
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d8
    .line 287
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC-SHA512"

    #@5db
    const-string/jumbo v4, "HmacSHA512"

    #@5de
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e1
    .line 288
    const-string/jumbo v3, "Alg.Alias.Mac.HMAC/SHA512"

    #@5e4
    const-string/jumbo v4, "HmacSHA512"

    #@5e7
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5ea
    .line 292
    const-string/jumbo v3, "CertificateFactory.X509"

    #@5ed
    new-instance v4, Ljava/lang/StringBuilder;

    #@5ef
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5f2
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@5f4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f7
    move-result-object v4

    #@5f8
    const-string/jumbo v5, "OpenSSLX509CertificateFactory"

    #@5fb
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5fe
    move-result-object v4

    #@5ff
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@602
    move-result-object v4

    #@603
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@606
    .line 293
    const-string/jumbo v3, "Alg.Alias.CertificateFactory.X.509"

    #@609
    const-string/jumbo v4, "X509"

    #@60c
    invoke-virtual {p0, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@60f
    .line 49
    return-void
.end method

.method private putECDHKeyAgreementImplClass(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 378
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
    .line 379
    const-string/jumbo v3, "|"

    #@15
    .line 378
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 379
    const-string/jumbo v3, "java.security.interfaces.ECPrivateKey"

    #@1c
    .line 378
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 380
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string/jumbo v1, "PKCS#8"

    #@27
    .line 382
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    const-string/jumbo v2, "KeyAgreement.ECDH"

    #@2a
    .line 383
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
    .line 381
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@40
    .line 373
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
    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 393
    if-eqz p3, :cond_0

    #@5
    .line 394
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
    .line 396
    :cond_0
    if-eqz p4, :cond_1

    #@1e
    .line 397
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
    .line 391
    :cond_1
    return-void
.end method

.method private putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 300
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
    .line 301
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string/jumbo v1, "RAW"

    #@19
    .line 303
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
    .line 304
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
    .line 302
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@43
    .line 296
    return-void
.end method

.method private putRAWRSASignatureImplClass(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 361
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
    .line 362
    const-string/jumbo v3, "|"

    #@15
    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 362
    const-string/jumbo v3, "java.security.interfaces.RSAPrivateKey"

    #@1c
    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 363
    const-string/jumbo v3, "|"

    #@23
    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 363
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@29
    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 363
    const-string/jumbo v3, "OpenSSLRSAPublicKey"

    #@30
    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 364
    const-string/jumbo v3, "|"

    #@37
    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 364
    const-string/jumbo v3, "java.security.interfaces.RSAPublicKey"

    #@3e
    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .line 365
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const/4 v1, 0x0

    #@47
    .line 367
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    const-string/jumbo v2, "Signature.NONEwithRSA"

    #@4a
    .line 368
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
    .line 366
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@60
    .line 357
    return-void
.end method

.method private putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 325
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
    .line 326
    const-string/jumbo v3, "|"

    #@15
    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 326
    const-string/jumbo v3, "java.security.interfaces.RSAPrivateKey"

    #@1c
    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 327
    const-string/jumbo v3, "|"

    #@23
    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 327
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    #@29
    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 327
    const-string/jumbo v3, "OpenSSLRSAPublicKey"

    #@30
    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 328
    const-string/jumbo v3, "|"

    #@37
    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 328
    const-string/jumbo v3, "java.security.interfaces.RSAPublicKey"

    #@3e
    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .line 329
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const/4 v1, 0x0

    #@47
    .line 331
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
    .line 332
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
    .line 330
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@71
    .line 321
    return-void
.end method

.method private putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

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
    const-string/jumbo v3, "OpenSSLKeyHolder"

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
    const-string/jumbo v3, "java.security.interfaces.ECPrivateKey"

    #@2a
    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 348
    const-string/jumbo v3, "|"

    #@31
    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 348
    const-string/jumbo v3, "java.security.interfaces.RSAPublicKey"

    #@38
    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    .line 349
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string/jumbo v1, "PKCS#8|X.509"

    #@43
    .line 351
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
    .line 352
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
    .line 350
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@6d
    .line 337
    return-void
.end method

.method private putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 312
    const/4 v0, 0x0

    #@1
    .line 313
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string/jumbo v1, "RAW"

    #@4
    .line 315
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
    .line 316
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
    .line 314
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 309
    return-void
.end method
