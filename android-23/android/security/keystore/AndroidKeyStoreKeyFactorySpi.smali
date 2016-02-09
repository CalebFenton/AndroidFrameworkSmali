.class public Landroid/security/keystore/AndroidKeyStoreKeyFactorySpi;
.super Ljava/security/KeyFactorySpi;
.source "AndroidKeyStoreKeyFactorySpi.java"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    #@3
    .line 41
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    #@9
    .line 39
    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3
    .param p1, "spec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@2
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "To generate a key pair in Android Keystore, use KeyPairGenerator initialized with "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 129
    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    #@10
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 127
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .param p1, "spec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@2
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "To generate a key pair in Android Keystore, use KeyPairGenerator initialized with "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 136
    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    #@10
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 134
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 8
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    .local p2, "keySpecClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 47
    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    #@4
    const-string/jumbo v6, "key == null"

    #@7
    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 48
    :cond_0
    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@d
    if-nez v5, :cond_1

    #@f
    .line 49
    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@11
    if-eqz v5, :cond_2

    #@13
    .line 57
    :cond_1
    if-nez p2, :cond_3

    #@15
    .line 58
    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    #@17
    const-string/jumbo v6, "keySpecClass == null"

    #@1a
    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v5

    #@1e
    .line 50
    :cond_2
    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    #@20
    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v7, "Unsupported key type: "

    #@28
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2f
    move-result-object v7

    #@30
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    .line 52
    const-string/jumbo v7, ". This KeyFactory supports only Android Keystore asymmetric keys"

    #@3b
    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    .line 50
    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@46
    throw v5

    #@47
    .line 59
    :cond_3
    const-class v5, Landroid/security/keystore/KeyInfo;

    #@49
    invoke-virtual {v5, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v5

    #@4d
    if-eqz v5, :cond_6

    #@4f
    .line 60
    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@51
    if-nez v5, :cond_4

    #@53
    .line 61
    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    #@55
    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v7, "Unsupported key type: "

    #@5d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@68
    move-result-object v7

    #@69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v6

    #@6d
    .line 63
    const-string/jumbo v7, ". KeyInfo can be obtained only for Android Keystore private keys"

    #@70
    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v6

    #@74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    .line 61
    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v5

    #@7c
    .line 65
    :cond_4
    check-cast p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@7e
    .end local p1    # "key":Ljava/security/Key;
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStorePrivateKey;->getAlias()Ljava/lang/String;

    #@81
    move-result-object v2

    #@82
    .line 67
    .local v2, "keyAliasInKeystore":Ljava/lang/String;
    const-string/jumbo v5, "USRPKEY_"

    #@85
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@88
    move-result v5

    #@89
    if-eqz v5, :cond_5

    #@8b
    .line 68
    const-string/jumbo v5, "USRPKEY_"

    #@8e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@91
    move-result v5

    #@92
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@95
    move-result-object v1

    #@96
    .line 74
    .local v1, "entryAlias":Ljava/lang/String;
    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    #@98
    .line 73
    invoke-static {v5, v1, v2}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Landroid/security/keystore/KeyInfo;

    #@9b
    move-result-object v3

    #@9c
    .line 75
    .local v3, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v3

    #@9d
    .line 70
    .end local v1    # "entryAlias":Ljava/lang/String;
    .end local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_5
    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    #@9f
    new-instance v6, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v7, "Invalid key alias: "

    #@a7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v6

    #@ab
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v6

    #@af
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v6

    #@b3
    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@b6
    throw v5

    #@b7
    .line 76
    .end local v2    # "keyAliasInKeystore":Ljava/lang/String;
    .restart local p1    # "key":Ljava/security/Key;
    :cond_6
    const-class v5, Ljava/security/spec/X509EncodedKeySpec;

    #@b9
    invoke-virtual {v5, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@bc
    move-result v5

    #@bd
    if-eqz v5, :cond_8

    #@bf
    .line 77
    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@c1
    if-nez v5, :cond_7

    #@c3
    .line 78
    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    #@c5
    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v7, "Unsupported key type: "

    #@cd
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v6

    #@d1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d4
    move-result-object v7

    #@d5
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@d8
    move-result-object v7

    #@d9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v6

    #@dd
    .line 80
    const-string/jumbo v7, ". X509EncodedKeySpec can be obtained only for Android Keystore public"

    #@e0
    .line 79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v6

    #@e4
    .line 81
    const-string/jumbo v7, " keys"

    #@e7
    .line 79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v6

    #@eb
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v6

    #@ef
    .line 78
    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@f2
    throw v5

    #@f3
    .line 84
    :cond_7
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    #@f5
    check-cast p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@f7
    .end local p1    # "key":Ljava/security/Key;
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getEncoded()[B

    #@fa
    move-result-object v5

    #@fb
    invoke-direct {v3, v5}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@fe
    .line 85
    .restart local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v3

    #@ff
    .line 86
    .end local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .restart local p1    # "key":Ljava/security/Key;
    :cond_8
    const-class v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@101
    invoke-virtual {v5, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@104
    move-result v5

    #@105
    if-eqz v5, :cond_a

    #@107
    .line 87
    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@109
    if-eqz v5, :cond_9

    #@10b
    .line 88
    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    #@10d
    .line 89
    const-string/jumbo v6, "Key material export of Android Keystore private keys is not supported"

    #@110
    .line 88
    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@113
    throw v5

    #@114
    .line 91
    :cond_9
    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    #@116
    .line 92
    const-string/jumbo v6, "Cannot export key material of public key in PKCS#8 format. Only X.509 format (X509EncodedKeySpec) supported for public keys."

    #@119
    .line 91
    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@11c
    throw v5

    #@11d
    .line 95
    :cond_a
    const-class v5, Ljava/security/spec/RSAPublicKeySpec;

    #@11f
    invoke-virtual {v5, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@122
    move-result v5

    #@123
    if-eqz v5, :cond_d

    #@125
    .line 96
    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    #@127
    if-eqz v5, :cond_b

    #@129
    move-object v4, p1

    #@12a
    .line 97
    check-cast v4, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    #@12c
    .line 100
    .local v4, "rsaKey":Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;
    new-instance v3, Ljava/security/spec/RSAPublicKeySpec;

    #@12e
    invoke-virtual {v4}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@131
    move-result-object v5

    #@132
    invoke-virtual {v4}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@135
    move-result-object v6

    #@136
    invoke-direct {v3, v5, v6}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@139
    .line 101
    .restart local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v3

    #@13a
    .line 103
    .end local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v4    # "rsaKey":Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;
    :cond_b
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    #@13c
    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    #@13e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@141
    const-string/jumbo v7, "Obtaining RSAPublicKeySpec not supported for "

    #@144
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v5

    #@148
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@14b
    move-result-object v7

    #@14c
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v5

    #@150
    const-string/jumbo v7, " "

    #@153
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v7

    #@157
    .line 105
    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@159
    if-eqz v5, :cond_c

    #@15b
    const-string/jumbo v5, "private"

    #@15e
    .line 104
    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v5

    #@162
    .line 106
    const-string/jumbo v7, " key"

    #@165
    .line 104
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v5

    #@169
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16c
    move-result-object v5

    #@16d
    .line 103
    invoke-direct {v6, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@170
    throw v6

    #@171
    .line 105
    :cond_c
    const-string/jumbo v5, "public"

    #@174
    goto :goto_0

    #@175
    .line 108
    :cond_d
    const-class v5, Ljava/security/spec/ECPublicKeySpec;

    #@177
    invoke-virtual {v5, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@17a
    move-result v5

    #@17b
    if-eqz v5, :cond_10

    #@17d
    .line 109
    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    #@17f
    if-eqz v5, :cond_e

    #@181
    move-object v0, p1

    #@182
    .line 110
    check-cast v0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    #@184
    .line 112
    .local v0, "ecKey":Landroid/security/keystore/AndroidKeyStoreECPublicKey;
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    #@186
    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@189
    move-result-object v5

    #@18a
    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@18d
    move-result-object v6

    #@18e
    invoke-direct {v3, v5, v6}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    #@191
    .line 113
    .restart local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v3

    #@192
    .line 115
    .end local v0    # "ecKey":Landroid/security/keystore/AndroidKeyStoreECPublicKey;
    .end local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_e
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    #@194
    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    #@196
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@199
    const-string/jumbo v7, "Obtaining ECPublicKeySpec not supported for "

    #@19c
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v5

    #@1a0
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@1a3
    move-result-object v7

    #@1a4
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v5

    #@1a8
    const-string/jumbo v7, " "

    #@1ab
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v7

    #@1af
    .line 117
    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@1b1
    if-eqz v5, :cond_f

    #@1b3
    const-string/jumbo v5, "private"

    #@1b6
    .line 116
    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v5

    #@1ba
    .line 118
    const-string/jumbo v7, " key"

    #@1bd
    .line 116
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v5

    #@1c1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c4
    move-result-object v5

    #@1c5
    .line 115
    invoke-direct {v6, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@1c8
    throw v6

    #@1c9
    .line 117
    :cond_f
    const-string/jumbo v5, "public"

    #@1cc
    goto :goto_1

    #@1cd
    .line 121
    :cond_10
    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    #@1cf
    new-instance v6, Ljava/lang/StringBuilder;

    #@1d1
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1d4
    const-string/jumbo v7, "Unsupported key spec: "

    #@1d7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v6

    #@1db
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1de
    move-result-object v7

    #@1df
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v6

    #@1e3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e6
    move-result-object v6

    #@1e7
    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@1ea
    throw v5
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    if-nez p1, :cond_0

    #@2
    .line 142
    new-instance v0, Ljava/security/InvalidKeyException;

    #@4
    const-string/jumbo v1, "key == null"

    #@7
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 143
    :cond_0
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 144
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 148
    :cond_1
    return-object p1

    #@14
    .line 145
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    #@16
    .line 146
    const-string/jumbo v1, "To import a key into Android Keystore, use KeyStore.setEntry"

    #@19
    .line 145
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0
.end method
