.class public Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "OpenSSLRSAKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    if-nez p1, :cond_0

    #@2
    .line 56
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@4
    const-string/jumbo v1, "keySpec == null"

    #@7
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 59
    :cond_0
    instance-of v0, p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 60
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;

    #@11
    check-cast p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    #@13
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;-><init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V

    #@16
    return-object v0

    #@17
    .line 61
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    instance-of v0, p1, Ljava/security/spec/RSAPrivateKeySpec;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 62
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    #@1d
    check-cast p1, Ljava/security/spec/RSAPrivateKeySpec;

    #@1f
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Ljava/security/spec/RSAPrivateKeySpec;)V

    #@22
    return-object v0

    #@23
    .line 63
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_2
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 64
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@29
    .line 65
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    const/4 v0, 0x6

    #@2a
    .line 64
    invoke-static {p1, v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;

    #@2d
    move-result-object v0

    #@2e
    return-object v0

    #@2f
    .line 67
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_3
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@31
    new-instance v1, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v2, "Must use RSAPublicKeySpec or PKCS8EncodedKeySpec; was "

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@50
    throw v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 40
    if-nez p1, :cond_0

    #@2
    .line 41
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@4
    const-string/jumbo v1, "keySpec == null"

    #@7
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 44
    :cond_0
    instance-of v0, p1, Ljava/security/spec/RSAPublicKeySpec;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 45
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    #@11
    check-cast p1, Ljava/security/spec/RSAPublicKeySpec;

    #@13
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;-><init>(Ljava/security/spec/RSAPublicKeySpec;)V

    #@16
    return-object v0

    #@17
    .line 46
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 47
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    #@1d
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    const/4 v0, 0x6

    #@1e
    invoke-static {p1, v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 49
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "Must use RSAPublicKeySpec or X509EncodedKeySpec; was "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 15
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
    .line 74
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 75
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    #@4
    const-string/jumbo v2, "key == null"

    #@7
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 78
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 79
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    #@f
    const-string/jumbo v2, "keySpec == null"

    #@12
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 82
    :cond_1
    const-string/jumbo v1, "RSA"

    #@19
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_2

    #@23
    .line 83
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    #@25
    const-string/jumbo v2, "Key must be a RSA key"

    #@28
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 86
    :cond_2
    move-object/from16 v0, p1

    #@2e
    instance-of v1, v0, Ljava/security/interfaces/RSAPublicKey;

    #@30
    if-eqz v1, :cond_3

    #@32
    const-class v1, Ljava/security/spec/RSAPublicKeySpec;

    #@34
    move-object/from16 v0, p2

    #@36
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_3

    #@3c
    move-object/from16 v14, p1

    #@3e
    .line 87
    check-cast v14, Ljava/security/interfaces/RSAPublicKey;

    #@40
    .line 88
    .local v14, "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    #@42
    invoke-interface {v14}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@45
    move-result-object v2

    #@46
    invoke-interface {v14}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@49
    move-result-object v3

    #@4a
    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@4d
    return-object v1

    #@4e
    .line 89
    .end local v14    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_3
    move-object/from16 v0, p1

    #@50
    instance-of v1, v0, Ljava/security/PublicKey;

    #@52
    if-eqz v1, :cond_6

    #@54
    const-class v1, Ljava/security/spec/RSAPublicKeySpec;

    #@56
    move-object/from16 v0, p2

    #@58
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_6

    #@5e
    .line 90
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getEncoded()[B

    #@61
    move-result-object v10

    #@62
    .line 91
    .local v10, "encoded":[B
    const-string/jumbo v1, "X.509"

    #@65
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v1

    #@6d
    if-eqz v1, :cond_4

    #@6f
    if-nez v10, :cond_5

    #@71
    .line 92
    :cond_4
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    #@73
    const-string/jumbo v2, "Not a valid X.509 encoding"

    #@76
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@79
    throw v1

    #@7a
    .line 95
    :cond_5
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    #@7c
    invoke-direct {v1, v10}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@7f
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@82
    move-result-object v14

    #@83
    check-cast v14, Ljava/security/interfaces/RSAPublicKey;

    #@85
    .line 96
    .restart local v14    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    #@87
    invoke-interface {v14}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@8a
    move-result-object v2

    #@8b
    invoke-interface {v14}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@8e
    move-result-object v3

    #@8f
    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@92
    return-object v1

    #@93
    .line 97
    .end local v10    # "encoded":[B
    .end local v14    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_6
    move-object/from16 v0, p1

    #@95
    instance-of v1, v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@97
    if-eqz v1, :cond_7

    #@99
    .line 98
    const-class v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    #@9b
    move-object/from16 v0, p2

    #@9d
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@a0
    move-result v1

    #@a1
    .line 97
    if-eqz v1, :cond_7

    #@a3
    move-object/from16 v12, p1

    #@a5
    .line 99
    check-cast v12, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@a7
    .line 100
    .local v12, "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    #@a9
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@ac
    move-result-object v2

    #@ad
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@b0
    move-result-object v3

    #@b1
    .line 101
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@b4
    move-result-object v4

    #@b5
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    #@b8
    move-result-object v5

    #@b9
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    #@bc
    move-result-object v6

    #@bd
    .line 102
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    #@c0
    move-result-object v7

    #@c1
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    #@c4
    move-result-object v8

    #@c5
    .line 103
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    #@c8
    move-result-object v9

    #@c9
    .line 100
    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@cc
    return-object v1

    #@cd
    .line 104
    .end local v12    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_7
    move-object/from16 v0, p1

    #@cf
    instance-of v1, v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@d1
    if-eqz v1, :cond_8

    #@d3
    .line 105
    const-class v1, Ljava/security/spec/RSAPrivateKeySpec;

    #@d5
    move-object/from16 v0, p2

    #@d7
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@da
    move-result v1

    #@db
    .line 104
    if-eqz v1, :cond_8

    #@dd
    move-object/from16 v12, p1

    #@df
    .line 106
    check-cast v12, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@e1
    .line 107
    .restart local v12    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    #@e3
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@e6
    move-result-object v2

    #@e7
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@ea
    move-result-object v3

    #@eb
    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@ee
    return-object v1

    #@ef
    .line 108
    .end local v12    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_8
    move-object/from16 v0, p1

    #@f1
    instance-of v1, v0, Ljava/security/interfaces/RSAPrivateKey;

    #@f3
    if-eqz v1, :cond_9

    #@f5
    .line 109
    const-class v1, Ljava/security/spec/RSAPrivateKeySpec;

    #@f7
    move-object/from16 v0, p2

    #@f9
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@fc
    move-result v1

    #@fd
    .line 108
    if-eqz v1, :cond_9

    #@ff
    move-object/from16 v13, p1

    #@101
    .line 110
    check-cast v13, Ljava/security/interfaces/RSAPrivateKey;

    #@103
    .line 111
    .local v13, "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    #@105
    invoke-interface {v13}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@108
    move-result-object v2

    #@109
    invoke-interface {v13}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@10c
    move-result-object v3

    #@10d
    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@110
    return-object v1

    #@111
    .line 112
    .end local v13    # "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_9
    move-object/from16 v0, p1

    #@113
    instance-of v1, v0, Ljava/security/PrivateKey;

    #@115
    if-eqz v1, :cond_d

    #@117
    .line 113
    const-class v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    #@119
    move-object/from16 v0, p2

    #@11b
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@11e
    move-result v1

    #@11f
    .line 112
    if-eqz v1, :cond_d

    #@121
    .line 114
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getEncoded()[B

    #@124
    move-result-object v10

    #@125
    .line 115
    .restart local v10    # "encoded":[B
    const-string/jumbo v1, "PKCS#8"

    #@128
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@12b
    move-result-object v2

    #@12c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12f
    move-result v1

    #@130
    if-eqz v1, :cond_a

    #@132
    if-nez v10, :cond_b

    #@134
    .line 116
    :cond_a
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    #@136
    const-string/jumbo v2, "Not a valid PKCS#8 encoding"

    #@139
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@13c
    throw v1

    #@13d
    .line 119
    :cond_b
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@13f
    invoke-direct {v1, v10}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@142
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    #@145
    move-result-object v11

    #@146
    check-cast v11, Ljava/security/interfaces/RSAPrivateKey;

    #@148
    .line 120
    .local v11, "privKey":Ljava/security/interfaces/RSAPrivateKey;
    instance-of v1, v11, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@14a
    if-eqz v1, :cond_c

    #@14c
    move-object v12, v11

    #@14d
    .line 121
    check-cast v12, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@14f
    .line 122
    .restart local v12    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    #@151
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@154
    move-result-object v2

    #@155
    .line 123
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@158
    move-result-object v3

    #@159
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@15c
    move-result-object v4

    #@15d
    .line 124
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    #@160
    move-result-object v5

    #@161
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    #@164
    move-result-object v6

    #@165
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    #@168
    move-result-object v7

    #@169
    .line 125
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    #@16c
    move-result-object v8

    #@16d
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    #@170
    move-result-object v9

    #@171
    .line 122
    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@174
    return-object v1

    #@175
    .line 127
    .end local v12    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_c
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    #@177
    const-string/jumbo v2, "Encoded key is not an RSAPrivateCrtKey"

    #@17a
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@17d
    throw v1

    #@17e
    .line 129
    .end local v10    # "encoded":[B
    .end local v11    # "privKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_d
    move-object/from16 v0, p1

    #@180
    instance-of v1, v0, Ljava/security/PrivateKey;

    #@182
    if-eqz v1, :cond_10

    #@184
    const-class v1, Ljava/security/spec/RSAPrivateKeySpec;

    #@186
    move-object/from16 v0, p2

    #@188
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@18b
    move-result v1

    #@18c
    if-eqz v1, :cond_10

    #@18e
    .line 130
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getEncoded()[B

    #@191
    move-result-object v10

    #@192
    .line 131
    .restart local v10    # "encoded":[B
    const-string/jumbo v1, "PKCS#8"

    #@195
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@198
    move-result-object v2

    #@199
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19c
    move-result v1

    #@19d
    if-eqz v1, :cond_e

    #@19f
    if-nez v10, :cond_f

    #@1a1
    .line 132
    :cond_e
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    #@1a3
    const-string/jumbo v2, "Not a valid PKCS#8 encoding"

    #@1a6
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@1a9
    throw v1

    #@1aa
    .line 135
    :cond_f
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@1ac
    invoke-direct {v1, v10}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@1af
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    #@1b2
    move-result-object v13

    #@1b3
    check-cast v13, Ljava/security/interfaces/RSAPrivateKey;

    #@1b5
    .line 136
    .restart local v13    # "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    #@1b7
    invoke-interface {v13}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@1ba
    move-result-object v2

    #@1bb
    invoke-interface {v13}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@1be
    move-result-object v3

    #@1bf
    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@1c2
    return-object v1

    #@1c3
    .line 137
    .end local v10    # "encoded":[B
    .end local v13    # "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_10
    move-object/from16 v0, p1

    #@1c5
    instance-of v1, v0, Ljava/security/PrivateKey;

    #@1c7
    if-eqz v1, :cond_13

    #@1c9
    .line 138
    const-class v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@1cb
    move-object/from16 v0, p2

    #@1cd
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1d0
    move-result v1

    #@1d1
    .line 137
    if-eqz v1, :cond_13

    #@1d3
    .line 139
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getEncoded()[B

    #@1d6
    move-result-object v10

    #@1d7
    .line 140
    .restart local v10    # "encoded":[B
    const-string/jumbo v1, "PKCS#8"

    #@1da
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@1dd
    move-result-object v2

    #@1de
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e1
    move-result v1

    #@1e2
    if-nez v1, :cond_11

    #@1e4
    .line 141
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    #@1e6
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1eb
    const-string/jumbo v3, "Encoding type must be PKCS#8; was "

    #@1ee
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v2

    #@1f2
    .line 142
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@1f5
    move-result-object v3

    #@1f6
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f9
    move-result-object v2

    #@1fa
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fd
    move-result-object v2

    #@1fe
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@201
    throw v1

    #@202
    .line 143
    :cond_11
    if-nez v10, :cond_12

    #@204
    .line 144
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    #@206
    const-string/jumbo v2, "Key is not encodable"

    #@209
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@20c
    throw v1

    #@20d
    .line 146
    :cond_12
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@20f
    invoke-direct {v1, v10}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@212
    return-object v1

    #@213
    .line 147
    .end local v10    # "encoded":[B
    :cond_13
    move-object/from16 v0, p1

    #@215
    instance-of v1, v0, Ljava/security/PublicKey;

    #@217
    if-eqz v1, :cond_16

    #@219
    const-class v1, Ljava/security/spec/X509EncodedKeySpec;

    #@21b
    move-object/from16 v0, p2

    #@21d
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@220
    move-result v1

    #@221
    if-eqz v1, :cond_16

    #@223
    .line 148
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getEncoded()[B

    #@226
    move-result-object v10

    #@227
    .line 149
    .restart local v10    # "encoded":[B
    const-string/jumbo v1, "X.509"

    #@22a
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@22d
    move-result-object v2

    #@22e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@231
    move-result v1

    #@232
    if-nez v1, :cond_14

    #@234
    .line 150
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    #@236
    new-instance v2, Ljava/lang/StringBuilder;

    #@238
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23b
    const-string/jumbo v3, "Encoding type must be X.509; was "

    #@23e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@241
    move-result-object v2

    #@242
    .line 151
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@245
    move-result-object v3

    #@246
    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@249
    move-result-object v2

    #@24a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24d
    move-result-object v2

    #@24e
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@251
    throw v1

    #@252
    .line 152
    :cond_14
    if-nez v10, :cond_15

    #@254
    .line 153
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    #@256
    const-string/jumbo v2, "Key is not encodable"

    #@259
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@25c
    throw v1

    #@25d
    .line 155
    :cond_15
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    #@25f
    invoke-direct {v1, v10}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@262
    return-object v1

    #@263
    .line 157
    .end local v10    # "encoded":[B
    :cond_16
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    #@265
    new-instance v2, Ljava/lang/StringBuilder;

    #@267
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26a
    const-string/jumbo v3, "Unsupported key type and key spec combination; key="

    #@26d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@270
    move-result-object v2

    #@271
    .line 158
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@274
    move-result-object v3

    #@275
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@278
    move-result-object v3

    #@279
    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27c
    move-result-object v2

    #@27d
    .line 158
    const-string/jumbo v3, ", keySpec="

    #@280
    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@283
    move-result-object v2

    #@284
    .line 158
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@287
    move-result-object v3

    #@288
    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28b
    move-result-object v2

    #@28c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28f
    move-result-object v2

    #@290
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@293
    throw v1
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 17
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    if-nez p1, :cond_0

    #@2
    .line 165
    new-instance v1, Ljava/security/InvalidKeyException;

    #@4
    const-string/jumbo v15, "key == null"

    #@7
    invoke-direct {v1, v15}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 168
    :cond_0
    move-object/from16 v0, p1

    #@d
    instance-of v1, v0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    #@f
    if-nez v1, :cond_1

    #@11
    move-object/from16 v0, p1

    #@13
    instance-of v1, v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 169
    :cond_1
    return-object p1

    #@18
    .line 170
    :cond_2
    move-object/from16 v0, p1

    #@1a
    instance-of v1, v0, Ljava/security/interfaces/RSAPublicKey;

    #@1c
    if-eqz v1, :cond_3

    #@1e
    move-object/from16 v14, p1

    #@20
    .line 171
    check-cast v14, Ljava/security/interfaces/RSAPublicKey;

    #@22
    .line 174
    .local v14, "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    :try_start_0
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    #@24
    invoke-interface {v14}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@27
    move-result-object v15

    #@28
    .line 175
    invoke-interface {v14}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@2b
    move-result-object v16

    #@2c
    .line 174
    move-object/from16 v0, v16

    #@2e
    invoke-direct {v1, v15, v0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@31
    move-object/from16 v0, p0

    #@33
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    move-result-object v1

    #@37
    return-object v1

    #@38
    .line 176
    :catch_0
    move-exception v10

    #@39
    .line 177
    .local v10, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/InvalidKeyException;

    #@3b
    invoke-direct {v1, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@3e
    throw v1

    #@3f
    .line 179
    .end local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v14    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_3
    move-object/from16 v0, p1

    #@41
    instance-of v1, v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@43
    if-eqz v1, :cond_4

    #@45
    move-object/from16 v12, p1

    #@47
    .line 180
    check-cast v12, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@49
    .line 181
    .local v12, "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@4c
    move-result-object v2

    #@4d
    .line 182
    .local v2, "modulus":Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@50
    move-result-object v3

    #@51
    .line 183
    .local v3, "publicExponent":Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@54
    move-result-object v4

    #@55
    .line 184
    .local v4, "privateExponent":Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    #@58
    move-result-object v5

    #@59
    .line 185
    .local v5, "primeP":Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    #@5c
    move-result-object v6

    #@5d
    .line 186
    .local v6, "primeQ":Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    #@60
    move-result-object v7

    #@61
    .line 187
    .local v7, "primeExponentP":Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    #@64
    move-result-object v8

    #@65
    .line 188
    .local v8, "primeExponentQ":Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    #@68
    move-result-object v9

    #@69
    .line 191
    .local v9, "crtCoefficient":Ljava/math/BigInteger;
    :try_start_1
    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    #@6b
    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@6e
    move-object/from16 v0, p0

    #@70
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    #@73
    move-result-object v1

    #@74
    return-object v1

    #@75
    .line 194
    :catch_1
    move-exception v10

    #@76
    .line 195
    .restart local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/InvalidKeyException;

    #@78
    invoke-direct {v1, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@7b
    throw v1

    #@7c
    .line 197
    .end local v2    # "modulus":Ljava/math/BigInteger;
    .end local v3    # "publicExponent":Ljava/math/BigInteger;
    .end local v4    # "privateExponent":Ljava/math/BigInteger;
    .end local v5    # "primeP":Ljava/math/BigInteger;
    .end local v6    # "primeQ":Ljava/math/BigInteger;
    .end local v7    # "primeExponentP":Ljava/math/BigInteger;
    .end local v8    # "primeExponentQ":Ljava/math/BigInteger;
    .end local v9    # "crtCoefficient":Ljava/math/BigInteger;
    .end local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v12    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_4
    move-object/from16 v0, p1

    #@7e
    instance-of v1, v0, Ljava/security/interfaces/RSAPrivateKey;

    #@80
    if-eqz v1, :cond_5

    #@82
    move-object/from16 v13, p1

    #@84
    .line 198
    check-cast v13, Ljava/security/interfaces/RSAPrivateKey;

    #@86
    .line 199
    .local v13, "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    invoke-interface {v13}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@89
    move-result-object v2

    #@8a
    .line 200
    .restart local v2    # "modulus":Ljava/math/BigInteger;
    invoke-interface {v13}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@8d
    move-result-object v4

    #@8e
    .line 203
    .restart local v4    # "privateExponent":Ljava/math/BigInteger;
    :try_start_2
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    #@90
    invoke-direct {v1, v2, v4}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@93
    move-object/from16 v0, p0

    #@95
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    #@98
    move-result-object v1

    #@99
    return-object v1

    #@9a
    .line 204
    :catch_2
    move-exception v10

    #@9b
    .line 205
    .restart local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/InvalidKeyException;

    #@9d
    invoke-direct {v1, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@a0
    throw v1

    #@a1
    .line 207
    .end local v2    # "modulus":Ljava/math/BigInteger;
    .end local v4    # "privateExponent":Ljava/math/BigInteger;
    .end local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v13    # "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_5
    move-object/from16 v0, p1

    #@a3
    instance-of v1, v0, Ljava/security/PrivateKey;

    #@a5
    if-eqz v1, :cond_7

    #@a7
    const-string/jumbo v1, "PKCS#8"

    #@aa
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@ad
    move-result-object v15

    #@ae
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result v1

    #@b2
    if-eqz v1, :cond_7

    #@b4
    .line 208
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getEncoded()[B

    #@b7
    move-result-object v11

    #@b8
    .line 209
    .local v11, "encoded":[B
    if-nez v11, :cond_6

    #@ba
    .line 210
    new-instance v1, Ljava/security/InvalidKeyException;

    #@bc
    const-string/jumbo v15, "Key does not support encoding"

    #@bf
    invoke-direct {v1, v15}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@c2
    throw v1

    #@c3
    .line 213
    :cond_6
    :try_start_3
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@c5
    invoke-direct {v1, v11}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@c8
    move-object/from16 v0, p0

    #@ca
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_3

    #@cd
    move-result-object v1

    #@ce
    return-object v1

    #@cf
    .line 214
    :catch_3
    move-exception v10

    #@d0
    .line 215
    .restart local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/InvalidKeyException;

    #@d2
    invoke-direct {v1, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@d5
    throw v1

    #@d6
    .line 217
    .end local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v11    # "encoded":[B
    :cond_7
    move-object/from16 v0, p1

    #@d8
    instance-of v1, v0, Ljava/security/PublicKey;

    #@da
    if-eqz v1, :cond_9

    #@dc
    const-string/jumbo v1, "X.509"

    #@df
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@e2
    move-result-object v15

    #@e3
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e6
    move-result v1

    #@e7
    if-eqz v1, :cond_9

    #@e9
    .line 218
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getEncoded()[B

    #@ec
    move-result-object v11

    #@ed
    .line 219
    .restart local v11    # "encoded":[B
    if-nez v11, :cond_8

    #@ef
    .line 220
    new-instance v1, Ljava/security/InvalidKeyException;

    #@f1
    const-string/jumbo v15, "Key does not support encoding"

    #@f4
    invoke-direct {v1, v15}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@f7
    throw v1

    #@f8
    .line 223
    :cond_8
    :try_start_4
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    #@fa
    invoke-direct {v1, v11}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@fd
    move-object/from16 v0, p0

    #@ff
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_4} :catch_4

    #@102
    move-result-object v1

    #@103
    return-object v1

    #@104
    .line 224
    :catch_4
    move-exception v10

    #@105
    .line 225
    .restart local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/InvalidKeyException;

    #@107
    invoke-direct {v1, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@10a
    throw v1

    #@10b
    .line 228
    .end local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v11    # "encoded":[B
    :cond_9
    new-instance v1, Ljava/security/InvalidKeyException;

    #@10d
    new-instance v15, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    const-string/jumbo v16, "Key must be an RSA public or private key; was "

    #@115
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v15

    #@119
    .line 229
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11c
    move-result-object v16

    #@11d
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@120
    move-result-object v16

    #@121
    .line 228
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v15

    #@125
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@128
    move-result-object v15

    #@129
    invoke-direct {v1, v15}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@12c
    throw v1
.end method
