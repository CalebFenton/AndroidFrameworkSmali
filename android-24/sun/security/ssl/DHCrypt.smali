.class final Lsun/security/ssl/DHCrypt;
.super Ljava/lang/Object;
.source "DHCrypt.java"


# static fields
.field private static MAX_FAILOVER_TIMES:I


# instance fields
.field private base:Ljava/math/BigInteger;

.field private modulus:Ljava/math/BigInteger;

.field private privateKey:Ljava/security/PrivateKey;

.field private publicValue:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 91
    const/4 v0, 0x2

    #@1
    sput v0, Lsun/security/ssl/DHCrypt;->MAX_FAILOVER_TIMES:I

    #@3
    .line 78
    return-void
.end method

.method constructor <init>(ILjava/security/SecureRandom;)V
    .locals 5
    .param p1, "keyLength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 98
    :try_start_0
    const-string/jumbo v3, "DiffieHellman"

    #@6
    invoke-static {v3}, Lsun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    #@9
    move-result-object v1

    #@a
    .line 99
    .local v1, "kpg":Ljava/security/KeyPairGenerator;
    invoke-virtual {v1, p1, p2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    #@d
    .line 101
    invoke-direct {p0, v1}, Lsun/security/ssl/DHCrypt;->generateDHPublicKeySpec(Ljava/security/KeyPairGenerator;)Ljavax/crypto/spec/DHPublicKeySpec;

    #@10
    move-result-object v2

    #@11
    .line 102
    .local v2, "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    if-nez v2, :cond_0

    #@13
    .line 103
    new-instance v3, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v4, "Could not generate DH keypair"

    #@18
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 109
    .end local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v2    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    :catch_0
    move-exception v0

    #@1d
    .line 110
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@1f
    const-string/jumbo v4, "Could not generate DH keypair"

    #@22
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@25
    throw v3

    #@26
    .line 106
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .restart local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .restart local v2    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    #@29
    move-result-object v3

    #@2a
    iput-object v3, p0, Lsun/security/ssl/DHCrypt;->publicValue:Ljava/math/BigInteger;

    #@2c
    .line 107
    invoke-virtual {v2}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    #@2f
    move-result-object v3

    #@30
    iput-object v3, p0, Lsun/security/ssl/DHCrypt;->modulus:Ljava/math/BigInteger;

    #@32
    .line 108
    invoke-virtual {v2}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    #@35
    move-result-object v3

    #@36
    iput-object v3, p0, Lsun/security/ssl/DHCrypt;->base:Ljava/math/BigInteger;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    #@38
    .line 96
    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "base"    # Ljava/math/BigInteger;
    .param p3, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 122
    iput-object p1, p0, Lsun/security/ssl/DHCrypt;->modulus:Ljava/math/BigInteger;

    #@5
    .line 123
    iput-object p2, p0, Lsun/security/ssl/DHCrypt;->base:Ljava/math/BigInteger;

    #@7
    .line 125
    :try_start_0
    const-string/jumbo v4, "DiffieHellman"

    #@a
    invoke-static {v4}, Lsun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    #@d
    move-result-object v1

    #@e
    .line 126
    .local v1, "kpg":Ljava/security/KeyPairGenerator;
    new-instance v2, Ljavax/crypto/spec/DHParameterSpec;

    #@10
    invoke-direct {v2, p1, p2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@13
    .line 127
    .local v2, "params":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v1, v2, p3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@16
    .line 129
    invoke-direct {p0, v1}, Lsun/security/ssl/DHCrypt;->generateDHPublicKeySpec(Ljava/security/KeyPairGenerator;)Ljavax/crypto/spec/DHPublicKeySpec;

    #@19
    move-result-object v3

    #@1a
    .line 130
    .local v3, "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    if-nez v3, :cond_0

    #@1c
    .line 131
    new-instance v4, Ljava/lang/RuntimeException;

    #@1e
    const-string/jumbo v5, "Could not generate DH keypair"

    #@21
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@24
    throw v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 135
    .end local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v2    # "params":Ljavax/crypto/spec/DHParameterSpec;
    .end local v3    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    :catch_0
    move-exception v0

    #@26
    .line 136
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@28
    const-string/jumbo v5, "Could not generate DH keypair"

    #@2b
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2e
    throw v4

    #@2f
    .line 134
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .restart local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .restart local v2    # "params":Ljavax/crypto/spec/DHParameterSpec;
    .restart local v3    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    #@32
    move-result-object v4

    #@33
    iput-object v4, p0, Lsun/security/ssl/DHCrypt;->publicValue:Ljava/math/BigInteger;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    #@35
    .line 121
    return-void
.end method

.method private generateDHPublicKeySpec(Ljava/security/KeyPairGenerator;)Ljavax/crypto/spec/DHPublicKeySpec;
    .locals 6
    .param p1, "kpg"    # Ljava/security/KeyPairGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 223
    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->getProvider()Ljava/security/Provider;

    #@3
    move-result-object v5

    #@4
    invoke-virtual {v5}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    invoke-static {v5}, Lsun/security/util/KeyUtil;->isOracleJCEProvider(Ljava/lang/String;)Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_1

    #@e
    const/4 v0, 0x0

    #@f
    .line 224
    .local v0, "doExtraValiadtion":Z
    :goto_0
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_1
    sget v5, Lsun/security/ssl/DHCrypt;->MAX_FAILOVER_TIMES:I

    #@12
    if-gt v1, v5, :cond_3

    #@14
    .line 225
    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    #@17
    move-result-object v3

    #@18
    .line 226
    .local v3, "kp":Ljava/security/KeyPair;
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    #@1b
    move-result-object v5

    #@1c
    iput-object v5, p0, Lsun/security/ssl/DHCrypt;->privateKey:Ljava/security/PrivateKey;

    #@1e
    .line 227
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    #@21
    move-result-object v5

    #@22
    invoke-static {v5}, Lsun/security/ssl/DHCrypt;->getDHPublicKeySpec(Ljava/security/PublicKey;)Ljavax/crypto/spec/DHPublicKeySpec;

    #@25
    move-result-object v4

    #@26
    .line 230
    .local v4, "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    if-eqz v0, :cond_0

    #@28
    .line 232
    :try_start_0
    invoke-static {v4}, Lsun/security/util/KeyUtil;->validate(Ljava/security/spec/KeySpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 242
    :cond_0
    return-object v4

    #@2c
    .line 223
    .end local v0    # "doExtraValiadtion":Z
    .end local v1    # "i":I
    .end local v3    # "kp":Ljava/security/KeyPair;
    .end local v4    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    :cond_1
    const/4 v0, 0x1

    #@2d
    .restart local v0    # "doExtraValiadtion":Z
    goto :goto_0

    #@2e
    .line 233
    .restart local v1    # "i":I
    .restart local v3    # "kp":Ljava/security/KeyPair;
    .restart local v4    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    :catch_0
    move-exception v2

    #@2f
    .line 234
    .local v2, "ivke":Ljava/security/InvalidKeyException;
    sget v5, Lsun/security/ssl/DHCrypt;->MAX_FAILOVER_TIMES:I

    #@31
    if-ne v1, v5, :cond_2

    #@33
    .line 235
    throw v2

    #@34
    .line 224
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@36
    goto :goto_1

    #@37
    .line 245
    .end local v2    # "ivke":Ljava/security/InvalidKeyException;
    .end local v3    # "kp":Ljava/security/KeyPair;
    .end local v4    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    :cond_3
    const/4 v5, 0x0

    #@38
    return-object v5
.end method

.method static getDHPublicKeySpec(Ljava/security/PublicKey;)Ljavax/crypto/spec/DHPublicKeySpec;
    .locals 8
    .param p0, "key"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 142
    instance-of v4, p0, Ljavax/crypto/interfaces/DHPublicKey;

    #@2
    if-eqz v4, :cond_0

    #@4
    move-object v0, p0

    #@5
    .line 143
    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    #@7
    .line 144
    .local v0, "dhKey":Ljavax/crypto/interfaces/DHPublicKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@a
    move-result-object v3

    #@b
    .line 145
    .local v3, "params":Ljavax/crypto/spec/DHParameterSpec;
    new-instance v4, Ljavax/crypto/spec/DHPublicKeySpec;

    #@d
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    #@10
    move-result-object v5

    #@11
    .line 146
    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@18
    move-result-object v7

    #@19
    .line 145
    invoke-direct {v4, v5, v6, v7}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@1c
    return-object v4

    #@1d
    .line 149
    .end local v0    # "dhKey":Ljavax/crypto/interfaces/DHPublicKey;
    .end local v3    # "params":Ljavax/crypto/spec/DHParameterSpec;
    :cond_0
    :try_start_0
    const-string/jumbo v4, "DH"

    #@20
    invoke-static {v4}, Lsun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@23
    move-result-object v2

    #@24
    .line 150
    .local v2, "factory":Ljava/security/KeyFactory;
    const-class v4, Ljavax/crypto/spec/DHPublicKeySpec;

    #@26
    invoke-virtual {v2, p0, v4}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Ljavax/crypto/spec/DHPublicKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    return-object v4

    #@2d
    .line 151
    .end local v2    # "factory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    #@2e
    .line 152
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    #@30
    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@33
    throw v4
.end method


# virtual methods
.method getAgreedSecret(Ljava/math/BigInteger;Z)Ljavax/crypto/SecretKey;
    .locals 8
    .param p1, "peerPublicValue"    # Ljava/math/BigInteger;
    .param p2, "keyIsValidated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 193
    :try_start_0
    const-string/jumbo v6, "DiffieHellman"

    #@3
    invoke-static {v6}, Lsun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@6
    move-result-object v3

    #@7
    .line 195
    .local v3, "kf":Ljava/security/KeyFactory;
    new-instance v5, Ljavax/crypto/spec/DHPublicKeySpec;

    #@9
    iget-object v6, p0, Lsun/security/ssl/DHCrypt;->modulus:Ljava/math/BigInteger;

    #@b
    iget-object v7, p0, Lsun/security/ssl/DHCrypt;->base:Ljava/math/BigInteger;

    #@d
    invoke-direct {v5, p1, v6, v7}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@10
    .line 196
    .local v5, "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    invoke-virtual {v3, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@13
    move-result-object v4

    #@14
    .line 197
    .local v4, "publicKey":Ljava/security/PublicKey;
    const-string/jumbo v6, "DiffieHellman"

    #@17
    invoke-static {v6}, Lsun/security/ssl/JsseJce;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    #@1a
    move-result-object v2

    #@1b
    .line 200
    .local v2, "ka":Ljavax/crypto/KeyAgreement;
    if-nez p2, :cond_0

    #@1d
    .line 201
    invoke-virtual {v2}, Ljavax/crypto/KeyAgreement;->getProvider()Ljava/security/Provider;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    invoke-static {v6}, Lsun/security/util/KeyUtil;->isOracleJCEProvider(Ljava/lang/String;)Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_1

    #@2b
    .line 210
    :cond_0
    :goto_0
    iget-object v6, p0, Lsun/security/ssl/DHCrypt;->privateKey:Ljava/security/PrivateKey;

    #@2d
    invoke-virtual {v2, v6}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    #@30
    .line 211
    const/4 v6, 0x1

    #@31
    invoke-virtual {v2, v4, v6}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    #@34
    .line 212
    const-string/jumbo v6, "TlsPremasterSecret"

    #@37
    invoke-virtual {v2, v6}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    #@3a
    move-result-object v6

    #@3b
    return-object v6

    #@3c
    .line 203
    :cond_1
    :try_start_1
    invoke-static {v5}, Lsun/security/util/KeyUtil;->validate(Ljava/security/spec/KeySpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    #@3f
    goto :goto_0

    #@40
    .line 204
    :catch_0
    move-exception v1

    #@41
    .line 206
    .local v1, "ike":Ljava/security/InvalidKeyException;
    :try_start_2
    new-instance v6, Ljavax/net/ssl/SSLHandshakeException;

    #@43
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@46
    move-result-object v7

    #@47
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v6
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    #@4b
    .line 213
    .end local v1    # "ike":Ljava/security/InvalidKeyException;
    .end local v2    # "ka":Ljavax/crypto/KeyAgreement;
    .end local v3    # "kf":Ljava/security/KeyFactory;
    .end local v4    # "publicKey":Ljava/security/PublicKey;
    .end local v5    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    :catch_1
    move-exception v0

    #@4c
    .line 214
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@4e
    const-string/jumbo v7, "Could not generate secret"

    #@51
    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@54
    throw v6
.end method

.method getBase()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lsun/security/ssl/DHCrypt;->base:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method getModulus()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lsun/security/ssl/DHCrypt;->modulus:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method getPublicKey()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lsun/security/ssl/DHCrypt;->publicValue:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
