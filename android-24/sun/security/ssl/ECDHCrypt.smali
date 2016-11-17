.class final Lsun/security/ssl/ECDHCrypt;
.super Ljava/lang/Object;
.source "ECDHCrypt.java"


# instance fields
.field private privateKey:Ljava/security/PrivateKey;

.field private publicKey:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "curveName"    # Ljava/lang/String;
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    :try_start_0
    const-string/jumbo v4, "EC"

    #@6
    invoke-static {v4}, Lsun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    #@9
    move-result-object v2

    #@a
    .line 61
    .local v2, "kpg":Ljava/security/KeyPairGenerator;
    new-instance v3, Ljava/security/spec/ECGenParameterSpec;

    #@c
    invoke-direct {v3, p1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    #@f
    .line 62
    .local v3, "params":Ljava/security/spec/ECGenParameterSpec;
    invoke-virtual {v2, v3, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@12
    .line 63
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    #@15
    move-result-object v1

    #@16
    .line 64
    .local v1, "kp":Ljava/security/KeyPair;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    #@19
    move-result-object v4

    #@1a
    iput-object v4, p0, Lsun/security/ssl/ECDHCrypt;->privateKey:Ljava/security/PrivateKey;

    #@1c
    .line 65
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Ljava/security/interfaces/ECPublicKey;

    #@22
    iput-object v4, p0, Lsun/security/ssl/ECDHCrypt;->publicKey:Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 58
    return-void

    #@25
    .line 66
    .end local v1    # "kp":Ljava/security/KeyPair;
    .end local v2    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v3    # "params":Ljava/security/spec/ECGenParameterSpec;
    :catch_0
    move-exception v0

    #@26
    .line 67
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@28
    const-string/jumbo v5, "Could not generate DH keypair"

    #@2b
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2e
    throw v4
.end method

.method constructor <init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 0
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "publicKey"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Lsun/security/ssl/ECDHCrypt;->privateKey:Ljava/security/PrivateKey;

    #@5
    .line 54
    check-cast p2, Ljava/security/interfaces/ECPublicKey;

    #@7
    .end local p2    # "publicKey":Ljava/security/PublicKey;
    iput-object p2, p0, Lsun/security/ssl/ECDHCrypt;->publicKey:Ljava/security/interfaces/ECPublicKey;

    #@9
    .line 52
    return-void
.end method

.method constructor <init>(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "params"    # Ljava/security/spec/ECParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    :try_start_0
    const-string/jumbo v3, "EC"

    #@6
    invoke-static {v3}, Lsun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    #@9
    move-result-object v2

    #@a
    .line 75
    .local v2, "kpg":Ljava/security/KeyPairGenerator;
    invoke-virtual {v2, p1, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@d
    .line 76
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    #@10
    move-result-object v1

    #@11
    .line 77
    .local v1, "kp":Ljava/security/KeyPair;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    #@14
    move-result-object v3

    #@15
    iput-object v3, p0, Lsun/security/ssl/ECDHCrypt;->privateKey:Ljava/security/PrivateKey;

    #@17
    .line 78
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    #@1d
    iput-object v3, p0, Lsun/security/ssl/ECDHCrypt;->publicKey:Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 72
    return-void

    #@20
    .line 79
    .end local v1    # "kp":Ljava/security/KeyPair;
    .end local v2    # "kpg":Ljava/security/KeyPairGenerator;
    :catch_0
    move-exception v0

    #@21
    .line 80
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@23
    const-string/jumbo v4, "Could not generate DH keypair"

    #@26
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@29
    throw v3
.end method


# virtual methods
.method getAgreedSecret(Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;
    .locals 4
    .param p1, "peerPublicKey"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 94
    :try_start_0
    const-string/jumbo v2, "ECDH"

    #@3
    invoke-static {v2}, Lsun/security/ssl/JsseJce;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    #@6
    move-result-object v1

    #@7
    .line 95
    .local v1, "ka":Ljavax/crypto/KeyAgreement;
    iget-object v2, p0, Lsun/security/ssl/ECDHCrypt;->privateKey:Ljava/security/PrivateKey;

    #@9
    invoke-virtual {v1, v2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    #@c
    .line 96
    const/4 v2, 0x1

    #@d
    invoke-virtual {v1, p1, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    #@10
    .line 97
    const-string/jumbo v2, "TlsPremasterSecret"

    #@13
    invoke-virtual {v1, v2}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 98
    .end local v1    # "ka":Ljavax/crypto/KeyAgreement;
    :catch_0
    move-exception v0

    #@19
    .line 99
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@1b
    const-string/jumbo v3, "Could not generate secret"

    #@1e
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@21
    throw v2
.end method

.method getAgreedSecret([B)Ljavax/crypto/SecretKey;
    .locals 9
    .param p1, "encodedPoint"    # [B

    #@0
    .prologue
    .line 106
    :try_start_0
    iget-object v7, p0, Lsun/security/ssl/ECDHCrypt;->publicKey:Ljava/security/interfaces/ECPublicKey;

    #@2
    invoke-interface {v7}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@5
    move-result-object v3

    #@6
    .line 107
    .local v3, "params":Ljava/security/spec/ECParameterSpec;
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@9
    move-result-object v7

    #@a
    invoke-static {p1, v7}, Lsun/security/ssl/JsseJce;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    #@d
    move-result-object v5

    #@e
    .line 108
    .local v5, "point":Ljava/security/spec/ECPoint;
    const-string/jumbo v7, "EC"

    #@11
    invoke-static {v7}, Lsun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@14
    move-result-object v2

    #@15
    .line 109
    .local v2, "kf":Ljava/security/KeyFactory;
    new-instance v6, Ljava/security/spec/ECPublicKeySpec;

    #@17
    invoke-direct {v6, v5, v3}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    #@1a
    .line 110
    .local v6, "spec":Ljava/security/spec/ECPublicKeySpec;
    invoke-virtual {v2, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@1d
    move-result-object v4

    #@1e
    .line 111
    .local v4, "peerPublicKey":Ljava/security/PublicKey;
    invoke-virtual {p0, v4}, Lsun/security/ssl/ECDHCrypt;->getAgreedSecret(Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v7

    #@22
    return-object v7

    #@23
    .line 114
    .end local v2    # "kf":Ljava/security/KeyFactory;
    .end local v3    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v4    # "peerPublicKey":Ljava/security/PublicKey;
    .end local v5    # "point":Ljava/security/spec/ECPoint;
    .end local v6    # "spec":Ljava/security/spec/ECPublicKeySpec;
    :catch_0
    move-exception v0

    #@24
    .line 115
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    #@26
    const-string/jumbo v8, "Could not generate secret"

    #@29
    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2c
    throw v7

    #@2d
    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@2e
    .line 113
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v7, Ljava/lang/RuntimeException;

    #@30
    const-string/jumbo v8, "Could not generate secret"

    #@33
    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@36
    throw v7
.end method

.method getPublicKey()Ljava/security/PublicKey;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lsun/security/ssl/ECDHCrypt;->publicKey:Ljava/security/interfaces/ECPublicKey;

    #@2
    return-object v0
.end method
