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
    .line 128
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@2
    .line 129
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
    .line 130
    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    #@10
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 128
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
    .line 135
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@2
    .line 136
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
    .line 137
    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    #@10
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 135
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 9
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
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    #@4
    const-string/jumbo v7, "key == null"

    #@7
    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@a
    throw v6

    #@b
    .line 48
    :cond_0
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@d
    if-nez v6, :cond_1

    #@f
    .line 49
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@11
    if-eqz v6, :cond_2

    #@13
    .line 57
    :cond_1
    if-nez p2, :cond_3

    #@15
    .line 58
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    #@17
    const-string/jumbo v7, "keySpecClass == null"

    #@1a
    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v6

    #@1e
    .line 50
    :cond_2
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    #@20
    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v8, "Unsupported key type: "

    #@28
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2f
    move-result-object v8

    #@30
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@33
    move-result-object v8

    #@34
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    .line 52
    const-string/jumbo v8, ". This KeyFactory supports only Android Keystore asymmetric keys"

    #@3b
    .line 51
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v7

    #@43
    .line 50
    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@46
    throw v6

    #@47
    .line 59
    :cond_3
    const-class v6, Landroid/security/keystore/KeyInfo;

    #@49
    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v6

    #@4d
    if-eqz v6, :cond_6

    #@4f
    .line 60
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@51
    if-nez v6, :cond_4

    #@53
    .line 61
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    #@55
    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v8, "Unsupported key type: "

    #@5d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@64
    move-result-object v8

    #@65
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@68
    move-result-object v8

    #@69
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v7

    #@6d
    .line 63
    const-string/jumbo v8, ". KeyInfo can be obtained only for Android Keystore private keys"

    #@70
    .line 62
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v7

    #@78
    .line 61
    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v6

    #@7c
    :cond_4
    move-object v3, p1

    #@7d
    .line 65
    nop

    #@7e
    nop

    #@7f
    .line 66
    .local v3, "keystorePrivateKey":Landroid/security/keystore/AndroidKeyStorePrivateKey;
    invoke-virtual {v3}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    .line 68
    .local v2, "keyAliasInKeystore":Ljava/lang/String;
    const-string/jumbo v6, "USRPKEY_"

    #@86
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@89
    move-result v6

    #@8a
    if-eqz v6, :cond_5

    #@8c
    .line 69
    const-string/jumbo v6, "USRPKEY_"

    #@8f
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@92
    move-result v6

    #@93
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@96
    move-result-object v1

    #@97
    .line 75
    .local v1, "entryAlias":Ljava/lang/String;
    iget-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    #@99
    invoke-virtual {v3}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    #@9c
    move-result v7

    #@9d
    .line 74
    invoke-static {v6, v1, v2, v7}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Landroid/security/keystore/KeyInfo;

    #@a0
    move-result-object v4

    #@a1
    .line 76
    .local v4, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v4

    #@a2
    .line 71
    .end local v1    # "entryAlias":Ljava/lang/String;
    .end local v4    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_5
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    #@a4
    new-instance v7, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v8, "Invalid key alias: "

    #@ac
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v7

    #@b0
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v7

    #@b4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v7

    #@b8
    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@bb
    throw v6

    #@bc
    .line 77
    .end local v2    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v3    # "keystorePrivateKey":Landroid/security/keystore/AndroidKeyStorePrivateKey;
    :cond_6
    const-class v6, Ljava/security/spec/X509EncodedKeySpec;

    #@be
    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@c1
    move-result v6

    #@c2
    if-eqz v6, :cond_8

    #@c4
    .line 78
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@c6
    if-nez v6, :cond_7

    #@c8
    .line 79
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    #@ca
    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v8, "Unsupported key type: "

    #@d2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v7

    #@d6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d9
    move-result-object v8

    #@da
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@dd
    move-result-object v8

    #@de
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v7

    #@e2
    .line 81
    const-string/jumbo v8, ". X509EncodedKeySpec can be obtained only for Android Keystore public"

    #@e5
    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v7

    #@e9
    .line 82
    const-string/jumbo v8, " keys"

    #@ec
    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v7

    #@f0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v7

    #@f4
    .line 79
    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@f7
    throw v6

    #@f8
    .line 85
    :cond_7
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    #@fa
    nop

    #@fb
    nop

    #@fc
    .end local p1    # "key":Ljava/security/Key;
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getEncoded()[B

    #@ff
    move-result-object v6

    #@100
    invoke-direct {v4, v6}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@103
    .line 86
    .restart local v4    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v4

    #@104
    .line 87
    .end local v4    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .restart local p1    # "key":Ljava/security/Key;
    :cond_8
    const-class v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@106
    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@109
    move-result v6

    #@10a
    if-eqz v6, :cond_a

    #@10c
    .line 88
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@10e
    if-eqz v6, :cond_9

    #@110
    .line 89
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    #@112
    .line 90
    const-string/jumbo v7, "Key material export of Android Keystore private keys is not supported"

    #@115
    .line 89
    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@118
    throw v6

    #@119
    .line 92
    :cond_9
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    #@11b
    .line 93
    const-string/jumbo v7, "Cannot export key material of public key in PKCS#8 format. Only X.509 format (X509EncodedKeySpec) supported for public keys."

    #@11e
    .line 92
    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@121
    throw v6

    #@122
    .line 96
    :cond_a
    const-class v6, Ljava/security/spec/RSAPublicKeySpec;

    #@124
    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@127
    move-result v6

    #@128
    if-eqz v6, :cond_d

    #@12a
    .line 97
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    #@12c
    if-eqz v6, :cond_b

    #@12e
    move-object v5, p1

    #@12f
    .line 98
    nop

    #@130
    nop

    #@131
    .line 101
    .local v5, "rsaKey":Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;
    new-instance v4, Ljava/security/spec/RSAPublicKeySpec;

    #@133
    invoke-virtual {v5}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@136
    move-result-object v6

    #@137
    invoke-virtual {v5}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@13a
    move-result-object v7

    #@13b
    invoke-direct {v4, v6, v7}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@13e
    .line 102
    .restart local v4    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v4

    #@13f
    .line 104
    .end local v4    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v5    # "rsaKey":Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;
    :cond_b
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    #@141
    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    #@143
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@146
    const-string/jumbo v8, "Obtaining RSAPublicKeySpec not supported for "

    #@149
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v6

    #@14d
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@150
    move-result-object v8

    #@151
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v6

    #@155
    const-string/jumbo v8, " "

    #@158
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v8

    #@15c
    .line 106
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@15e
    if-eqz v6, :cond_c

    #@160
    const-string/jumbo v6, "private"

    #@163
    .line 105
    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v6

    #@167
    .line 107
    const-string/jumbo v8, " key"

    #@16a
    .line 105
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v6

    #@16e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v6

    #@172
    .line 104
    invoke-direct {v7, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@175
    throw v7

    #@176
    .line 106
    :cond_c
    const-string/jumbo v6, "public"

    #@179
    goto :goto_0

    #@17a
    .line 109
    :cond_d
    const-class v6, Ljava/security/spec/ECPublicKeySpec;

    #@17c
    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17f
    move-result v6

    #@180
    if-eqz v6, :cond_10

    #@182
    .line 110
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    #@184
    if-eqz v6, :cond_e

    #@186
    move-object v0, p1

    #@187
    .line 111
    nop

    #@188
    nop

    #@189
    .line 113
    .local v0, "ecKey":Landroid/security/keystore/AndroidKeyStoreECPublicKey;
    new-instance v4, Ljava/security/spec/ECPublicKeySpec;

    #@18b
    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@18e
    move-result-object v6

    #@18f
    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@192
    move-result-object v7

    #@193
    invoke-direct {v4, v6, v7}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    #@196
    .line 114
    .restart local v4    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v4

    #@197
    .line 116
    .end local v0    # "ecKey":Landroid/security/keystore/AndroidKeyStoreECPublicKey;
    .end local v4    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_e
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    #@199
    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    #@19b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@19e
    const-string/jumbo v8, "Obtaining ECPublicKeySpec not supported for "

    #@1a1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v6

    #@1a5
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@1a8
    move-result-object v8

    #@1a9
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v6

    #@1ad
    const-string/jumbo v8, " "

    #@1b0
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v8

    #@1b4
    .line 118
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@1b6
    if-eqz v6, :cond_f

    #@1b8
    const-string/jumbo v6, "private"

    #@1bb
    .line 117
    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v6

    #@1bf
    .line 119
    const-string/jumbo v8, " key"

    #@1c2
    .line 117
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v6

    #@1c6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c9
    move-result-object v6

    #@1ca
    .line 116
    invoke-direct {v7, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@1cd
    throw v7

    #@1ce
    .line 118
    :cond_f
    const-string/jumbo v6, "public"

    #@1d1
    goto :goto_1

    #@1d2
    .line 122
    :cond_10
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    #@1d4
    new-instance v7, Ljava/lang/StringBuilder;

    #@1d6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1d9
    const-string/jumbo v8, "Unsupported key spec: "

    #@1dc
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v7

    #@1e0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1e3
    move-result-object v8

    #@1e4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v7

    #@1e8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1eb
    move-result-object v7

    #@1ec
    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@1ef
    throw v6
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
    .line 142
    if-nez p1, :cond_0

    #@2
    .line 143
    new-instance v0, Ljava/security/InvalidKeyException;

    #@4
    const-string/jumbo v1, "key == null"

    #@7
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 144
    :cond_0
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 145
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 149
    :cond_1
    return-object p1

    #@14
    .line 146
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    #@16
    .line 147
    const-string/jumbo v1, "To import a key into Android Keystore, use KeyStore.setEntry"

    #@19
    .line 146
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0
.end method
