.class final Lsun/security/ssl/RSAClientKeyExchange;
.super Lsun/security/ssl/HandshakeMessage;
.source "RSAClientKeyExchange.java"


# static fields
.field private static final PROP_NAME:Ljava/lang/String; = "com.sun.net.ssl.rsaPreMasterSecretFix"

.field private static final rsaPreMasterSecretFix:Z


# instance fields
.field private encrypted:[B

.field preMaster:Ljavax/crypto/SecretKey;

.field private protocolVersion:Lsun/security/ssl/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 68
    const-string/jumbo v0, "com.sun.net.ssl.rsaPreMasterSecretFix"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    .line 67
    sput-boolean v0, Lsun/security/ssl/RSAClientKeyExchange;->rsaPreMasterSecretFix:Z

    #@a
    .line 51
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Ljava/security/PublicKey;)V
    .locals 8
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "maxVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p3, "generator"    # Ljava/security/SecureRandom;
    .param p4, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 88
    invoke-interface {p4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@6
    move-result-object v6

    #@7
    const-string/jumbo v7, "RSA"

    #@a
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v6

    #@e
    if-nez v6, :cond_0

    #@10
    .line 89
    new-instance v6, Ljavax/net/ssl/SSLKeyException;

    #@12
    const-string/jumbo v7, "Public key not of type RSA"

    #@15
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    #@18
    throw v6

    #@19
    .line 91
    :cond_0
    iput-object p1, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@1b
    .line 95
    sget-boolean v6, Lsun/security/ssl/RSAClientKeyExchange;->rsaPreMasterSecretFix:Z

    #@1d
    if-nez v6, :cond_1

    #@1f
    iget v6, p2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@21
    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@23
    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    #@25
    if-lt v6, v7, :cond_2

    #@27
    .line 96
    :cond_1
    iget-byte v3, p2, Lsun/security/ssl/ProtocolVersion;->major:B

    #@29
    .line 97
    .local v3, "major":I
    iget-byte v4, p2, Lsun/security/ssl/ProtocolVersion;->minor:B

    #@2b
    .line 104
    .local v4, "minor":I
    :goto_0
    :try_start_0
    iget v6, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@2d
    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@2f
    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    #@31
    if-lt v6, v7, :cond_3

    #@33
    .line 105
    const-string/jumbo v5, "SunTls12RsaPremasterSecret"

    #@36
    .line 106
    .local v5, "s":Ljava/lang/String;
    :goto_1
    invoke-static {v5}, Lsun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    #@39
    move-result-object v2

    #@3a
    .line 107
    .local v2, "kg":Ljavax/crypto/KeyGenerator;
    new-instance v6, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    #@3c
    invoke-direct {v6, v3, v4}, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;-><init>(II)V

    #@3f
    invoke-virtual {v2, v6, p3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@42
    .line 109
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    #@45
    move-result-object v6

    #@46
    iput-object v6, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    #@48
    .line 111
    const-string/jumbo v6, "RSA/ECB/PKCS1Padding"

    #@4b
    invoke-static {v6}, Lsun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@4e
    move-result-object v0

    #@4f
    .line 112
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x3

    #@50
    invoke-virtual {v0, v6, p4, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    #@53
    .line 113
    iget-object v6, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    #@55
    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    #@58
    move-result-object v6

    #@59
    iput-object v6, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@5b
    .line 87
    return-void

    #@5c
    .line 99
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "kg":Ljavax/crypto/KeyGenerator;
    .end local v3    # "major":I
    .end local v4    # "minor":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    iget-byte v3, p1, Lsun/security/ssl/ProtocolVersion;->major:B

    #@5e
    .line 100
    .restart local v3    # "major":I
    iget-byte v4, p1, Lsun/security/ssl/ProtocolVersion;->minor:B

    #@60
    .restart local v4    # "minor":I
    goto :goto_0

    #@61
    .line 105
    :cond_3
    :try_start_1
    const-string/jumbo v5, "SunTlsRsaPremasterSecret"
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    #@64
    .restart local v5    # "s":Ljava/lang/String;
    goto :goto_1

    #@65
    .line 114
    .end local v5    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@66
    .line 115
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v6, Ljavax/net/ssl/SSLKeyException;

    #@68
    .line 116
    const-string/jumbo v7, "RSA premaster secret error"

    #@6b
    .line 115
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    #@6e
    invoke-virtual {v6, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@71
    move-result-object v6

    #@72
    check-cast v6, Ljavax/net/ssl/SSLKeyException;

    #@74
    throw v6
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Lsun/security/ssl/HandshakeInStream;ILjava/security/PrivateKey;)V
    .locals 8
    .param p1, "currentVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "maxVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p3, "generator"    # Ljava/security/SecureRandom;
    .param p4, "input"    # Lsun/security/ssl/HandshakeInStream;
    .param p5, "messageSize"    # I
    .param p6, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 124
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@4
    .line 129
    invoke-interface {p6}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, "RSA"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_0

    #@11
    .line 130
    new-instance v0, Ljavax/net/ssl/SSLKeyException;

    #@13
    const-string/jumbo v1, "Private key not of type RSA"

    #@16
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 133
    :cond_0
    iget v0, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1c
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@1e
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@20
    if-lt v0, v1, :cond_2

    #@22
    .line 134
    invoke-virtual {p4}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    #@28
    .line 144
    :cond_1
    :try_start_0
    const-string/jumbo v0, "RSA/ECB/PKCS1Padding"

    #@2b
    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@2e
    move-result-object v6

    #@2f
    .line 145
    .local v6, "cipher":Ljavax/crypto/Cipher;
    const/4 v0, 0x4

    #@30
    invoke-virtual {v6, v0, p6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    #@33
    .line 146
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    #@35
    .line 147
    const-string/jumbo v1, "TlsRsaPremasterSecret"

    #@38
    const/4 v2, 0x3

    #@39
    .line 146
    invoke-virtual {v6, v0, v1, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Ljavax/crypto/SecretKey;

    #@3f
    iput-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    #@41
    .line 151
    iget-object v4, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    #@43
    const/4 v5, 0x0

    #@44
    move-object v0, p0

    #@45
    move-object v1, p1

    #@46
    move-object v2, p2

    #@47
    move-object v3, p3

    #@48
    .line 150
    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/RSAClientKeyExchange;->polishPreMasterSecretKey(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Ljavax/crypto/SecretKey;Ljava/lang/Exception;)Ljavax/crypto/SecretKey;

    #@4b
    move-result-object v0

    #@4c
    iput-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 127
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    :goto_0
    return-void

    #@4f
    .line 136
    :cond_2
    new-array v0, p5, [B

    #@51
    iput-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    #@53
    .line 137
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    #@55
    invoke-virtual {p4, v0}, Ljava/io/InputStream;->read([B)I

    #@58
    move-result v0

    #@59
    if-eq v0, p5, :cond_1

    #@5b
    .line 138
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    #@5d
    .line 139
    const-string/jumbo v1, "SSL: read PreMasterSecret: short read"

    #@60
    .line 138
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@63
    throw v0

    #@64
    .line 152
    :catch_0
    move-exception v5

    #@65
    .local v5, "e":Ljava/lang/Exception;
    move-object v0, p0

    #@66
    move-object v1, p1

    #@67
    move-object v2, p2

    #@68
    move-object v3, p3

    #@69
    move-object v4, v7

    #@6a
    .line 155
    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/RSAClientKeyExchange;->polishPreMasterSecretKey(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Ljavax/crypto/SecretKey;Ljava/lang/Exception;)Ljavax/crypto/SecretKey;

    #@6d
    move-result-object v0

    #@6e
    .line 154
    iput-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    #@70
    goto :goto_0
.end method

.method static generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;
    .locals 6
    .param p0, "version"    # Lsun/security/ssl/ProtocolVersion;

    #@0
    .prologue
    .line 260
    sget-object v3, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    #@2
    if-eqz v3, :cond_0

    #@4
    const-string/jumbo v3, "handshake"

    #@7
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 261
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    const-string/jumbo v4, "Generating a random fake premaster secret"

    #@12
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@15
    .line 265
    :cond_0
    :try_start_0
    iget v3, p0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@17
    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@19
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1b
    if-lt v3, v4, :cond_1

    #@1d
    .line 266
    const-string/jumbo v2, "SunTls12RsaPremasterSecret"

    #@20
    .line 267
    .local v2, "s":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lsun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    #@23
    move-result-object v1

    #@24
    .line 268
    .local v1, "kg":Ljavax/crypto/KeyGenerator;
    new-instance v3, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    #@26
    .line 269
    iget-byte v4, p0, Lsun/security/ssl/ProtocolVersion;->major:B

    #@28
    iget-byte v5, p0, Lsun/security/ssl/ProtocolVersion;->minor:B

    #@2a
    .line 268
    invoke-direct {v3, v4, v5}, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;-><init>(II)V

    #@2d
    invoke-virtual {v1, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    #@30
    .line 270
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    #@33
    move-result-object v3

    #@34
    return-object v3

    #@35
    .line 266
    .end local v1    # "kg":Ljavax/crypto/KeyGenerator;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "SunTlsRsaPremasterSecret"
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    #@39
    .line 271
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@3a
    .line 272
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@3c
    const-string/jumbo v4, "Could not generate dummy secret"

    #@3f
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@42
    throw v3
.end method

.method private polishPreMasterSecretKey(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Ljavax/crypto/SecretKey;Ljava/lang/Exception;)Ljavax/crypto/SecretKey;
    .locals 7
    .param p1, "currentVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "clientHelloVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p3, "generator"    # Ljava/security/SecureRandom;
    .param p4, "secretKey"    # Ljavax/crypto/SecretKey;
    .param p5, "failoverException"    # Ljava/lang/Exception;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 185
    iput-object p2, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@4
    .line 187
    if-nez p5, :cond_9

    #@6
    if-eqz p4, :cond_9

    #@8
    .line 189
    invoke-interface {p4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@b
    move-result-object v0

    #@c
    .line 190
    .local v0, "encoded":[B
    if-nez v0, :cond_3

    #@e
    .line 191
    sget-object v2, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    #@10
    if-eqz v2, :cond_0

    #@12
    const-string/jumbo v2, "handshake"

    #@15
    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 192
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1d
    .line 193
    const-string/jumbo v3, "unable to get the plaintext of the premaster secret"

    #@20
    .line 192
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@23
    .line 196
    :cond_0
    invoke-static {p4}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    #@26
    move-result v1

    #@27
    .line 197
    .local v1, "keySize":I
    if-lez v1, :cond_2

    #@29
    const/16 v2, 0x180

    #@2b
    if-eq v1, v2, :cond_2

    #@2d
    .line 198
    sget-object v2, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    #@2f
    if-eqz v2, :cond_1

    #@31
    const-string/jumbo v2, "handshake"

    #@34
    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_1

    #@3a
    .line 199
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3c
    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v4, "incorrect length of premaster secret: "

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    .line 201
    div-int/lit8 v4, v1, 0x8

    #@4a
    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    .line 199
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@55
    .line 204
    :cond_1
    invoke-static {p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    #@58
    move-result-object v2

    #@59
    return-object v2

    #@5a
    .line 211
    :cond_2
    return-object p4

    #@5b
    .line 212
    .end local v1    # "keySize":I
    :cond_3
    array-length v2, v0

    #@5c
    const/16 v3, 0x30

    #@5e
    if-ne v2, v3, :cond_7

    #@60
    .line 214
    iget-byte v2, p2, Lsun/security/ssl/ProtocolVersion;->major:B

    #@62
    aget-byte v3, v0, v5

    #@64
    if-ne v2, v3, :cond_4

    #@66
    .line 215
    iget-byte v2, p2, Lsun/security/ssl/ProtocolVersion;->minor:B

    #@68
    aget-byte v3, v0, v6

    #@6a
    if-ne v2, v3, :cond_4

    #@6c
    .line 217
    return-object p4

    #@6d
    .line 218
    :cond_4
    iget v2, p2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@6f
    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@71
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@73
    if-gt v2, v3, :cond_5

    #@75
    .line 219
    iget-byte v2, p1, Lsun/security/ssl/ProtocolVersion;->major:B

    #@77
    aget-byte v3, v0, v5

    #@79
    if-ne v2, v3, :cond_5

    #@7b
    .line 220
    iget-byte v2, p1, Lsun/security/ssl/ProtocolVersion;->minor:B

    #@7d
    aget-byte v3, v0, v6

    #@7f
    if-ne v2, v3, :cond_5

    #@81
    .line 226
    iput-object p1, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@83
    .line 227
    return-object p4

    #@84
    .line 230
    :cond_5
    sget-object v2, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    #@86
    if-eqz v2, :cond_6

    #@88
    const-string/jumbo v2, "handshake"

    #@8b
    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@8e
    move-result v2

    #@8f
    if-eqz v2, :cond_6

    #@91
    .line 231
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@93
    new-instance v3, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v4, "Mismatching Protocol Versions, ClientHello.client_version is "

    #@9b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v3

    #@9f
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v3

    #@a3
    .line 233
    const-string/jumbo v4, ", while PreMasterSecret.client_version is "

    #@a6
    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v3

    #@aa
    .line 234
    aget-byte v4, v0, v5

    #@ac
    aget-byte v5, v0, v6

    #@ae
    invoke-static {v4, v5}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    #@b1
    move-result-object v4

    #@b2
    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v3

    #@b6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@bd
    .line 237
    :cond_6
    invoke-static {p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    #@c0
    move-result-object v2

    #@c1
    return-object v2

    #@c2
    .line 239
    :cond_7
    sget-object v2, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    #@c4
    if-eqz v2, :cond_8

    #@c6
    const-string/jumbo v2, "handshake"

    #@c9
    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@cc
    move-result v2

    #@cd
    if-eqz v2, :cond_8

    #@cf
    .line 240
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@d1
    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string/jumbo v4, "incorrect length of premaster secret: "

    #@d9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v3

    #@dd
    .line 242
    array-length v4, v0

    #@de
    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v3

    #@e2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v3

    #@e6
    .line 240
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e9
    .line 245
    :cond_8
    invoke-static {p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    #@ec
    move-result-object v2

    #@ed
    return-object v2

    #@ee
    .line 249
    .end local v0    # "encoded":[B
    :cond_9
    sget-object v2, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    #@f0
    if-eqz v2, :cond_a

    #@f2
    const-string/jumbo v2, "handshake"

    #@f5
    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@f8
    move-result v2

    #@f9
    if-eqz v2, :cond_a

    #@fb
    .line 250
    if-eqz p5, :cond_a

    #@fd
    .line 251
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@ff
    const-string/jumbo v3, "Error decrypting premaster secret:"

    #@102
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@105
    .line 252
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@107
    invoke-virtual {p5, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    #@10a
    .line 255
    :cond_a
    invoke-static {p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    #@10d
    move-result-object v2

    #@10e
    return-object v2
.end method


# virtual methods
.method messageLength()I
    .locals 2

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@2
    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@4
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@6
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 284
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    #@c
    array-length v0, v0

    #@d
    add-int/lit8 v0, v0, 0x2

    #@f
    return v0

    #@10
    .line 286
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    #@12
    array-length v0, v0

    #@13
    return v0
.end method

.method messageType()I
    .locals 1

    #@0
    .prologue
    .line 278
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "*** ClientKeyExchange, RSA PreMasterSecret, "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 302
    iget-object v1, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@e
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19
    .line 300
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 2
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@2
    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@4
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@6
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 293
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    #@c
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    #@f
    .line 291
    :goto_0
    return-void

    #@10
    .line 295
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    #@12
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@15
    goto :goto_0
.end method
