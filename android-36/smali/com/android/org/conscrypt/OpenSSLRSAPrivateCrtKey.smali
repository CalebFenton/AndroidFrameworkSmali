.class final Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;
.super Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
.source "OpenSSLRSAPrivateCrtKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateCrtKey;


# static fields
.field private static final whitelist serialVersionUID:J = 0x34880ef7f10bfb7dL


# instance fields
.field private blacklist crtCoefficient:Ljava/math/BigInteger;

.field private blacklist primeExponentP:Ljava/math/BigInteger;

.field private blacklist primeExponentQ:Ljava/math/BigInteger;

.field private blacklist primeP:Ljava/math/BigInteger;

.field private blacklist primeQ:Ljava/math/BigInteger;

.field private blacklist publicExponent:Ljava/math/BigInteger;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 2
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 52
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V
    .registers 3
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .param p2, "params"    # [[B

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V

    .line 56
    return-void
.end method

.method constructor blacklist <init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V
    .registers 3
    .param p1, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateCrtKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 59
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->init(Ljava/security/spec/RSAPrivateCrtKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 60
    return-void
.end method

.method static blacklist getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 19
    .param p0, "rsaPrivateKey"    # Ljava/security/interfaces/RSAPrivateCrtKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 105
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 106
    invoke-static/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    .line 109
    :cond_b
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 110
    .local v1, "modulus":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    .line 112
    .local v2, "privateExponent":Ljava/math/BigInteger;
    if-eqz v1, :cond_8c

    .line 114
    if-eqz v2, :cond_84

    .line 125
    :try_start_17
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 126
    .local v0, "publicExponent":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v3

    .line 127
    .local v3, "primeP":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v4

    .line 128
    .local v4, "primeQ":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v5

    .line 129
    .local v5, "primeExponentP":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 130
    .local v6, "primeExponentQ":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v7

    .line 132
    .local v7, "crtCoefficient":Ljava/math/BigInteger;
    new-instance v8, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 133
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    .line 134
    const/4 v10, 0x0

    if-nez v0, :cond_3a

    move-object v11, v10

    goto :goto_3e

    :cond_3a
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v11

    .line 135
    :goto_3e
    move-object v12, v10

    move-object v10, v11

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v11

    .line 136
    if-nez v3, :cond_48

    move-object v13, v12

    goto :goto_4c

    :cond_48
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v13

    .line 137
    :goto_4c
    if-nez v4, :cond_50

    move-object v14, v12

    goto :goto_54

    :cond_50
    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v14

    .line 138
    :goto_54
    if-nez v5, :cond_58

    move-object v15, v12

    goto :goto_5c

    :cond_58
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v15

    .line 139
    :goto_5c
    if-nez v6, :cond_61

    move-object/from16 v16, v12

    goto :goto_65

    :cond_61
    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v16

    .line 140
    :goto_65
    if-nez v7, :cond_68

    goto :goto_6c

    :cond_68
    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    .line 132
    :goto_6c
    move-object/from16 v17, v16

    move-object/from16 v16, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v17

    invoke-static/range {v9 .. v16}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_7c} :catch_7d

    return-object v8

    .line 141
    .end local v0    # "publicExponent":Ljava/math/BigInteger;
    .end local v3    # "primeP":Ljava/math/BigInteger;
    .end local v4    # "primeQ":Ljava/math/BigInteger;
    .end local v5    # "primeExponentP":Ljava/math/BigInteger;
    .end local v6    # "primeExponentQ":Ljava/math/BigInteger;
    .end local v7    # "crtCoefficient":Ljava/math/BigInteger;
    :catch_7d
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_84
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v3, "privateExponent == null"

    invoke-direct {v0, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_8c
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v3, "modulus == null"

    invoke-direct {v0, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist init(Ljava/security/spec/RSAPrivateCrtKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 19
    .param p0, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateCrtKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 63
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 64
    .local v1, "modulus":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    .line 66
    .local v2, "privateExponent":Ljava/math/BigInteger;
    if-eqz v1, :cond_81

    .line 68
    if-eqz v2, :cond_79

    .line 79
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 80
    .local v0, "publicExponent":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v3

    .line 81
    .local v3, "primeP":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v4

    .line 82
    .local v4, "primeQ":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v5

    .line 83
    .local v5, "primeExponentP":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 84
    .local v6, "primeExponentQ":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v7

    .line 86
    .local v7, "crtCoefficient":Ljava/math/BigInteger;
    new-instance v8, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 87
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    .line 88
    const/4 v10, 0x0

    if-nez v0, :cond_2f

    move-object v11, v10

    goto :goto_33

    :cond_2f
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v11

    .line 89
    :goto_33
    move-object v12, v10

    move-object v10, v11

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v11

    .line 90
    if-nez v3, :cond_3d

    move-object v13, v12

    goto :goto_41

    :cond_3d
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v13

    .line 91
    :goto_41
    if-nez v4, :cond_45

    move-object v14, v12

    goto :goto_49

    :cond_45
    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v14

    .line 92
    :goto_49
    if-nez v5, :cond_4d

    move-object v15, v12

    goto :goto_51

    :cond_4d
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v15

    .line 93
    :goto_51
    if-nez v6, :cond_56

    move-object/from16 v16, v12

    goto :goto_5a

    :cond_56
    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v16

    .line 94
    :goto_5a
    if-nez v7, :cond_5d

    goto :goto_61

    :cond_5d
    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    .line 86
    :goto_61
    move-object/from16 v17, v16

    move-object/from16 v16, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v17

    invoke-static/range {v9 .. v16}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_71} :catch_72

    return-object v8

    .line 95
    .end local v0    # "publicExponent":Ljava/math/BigInteger;
    .end local v3    # "primeP":Ljava/math/BigInteger;
    .end local v4    # "primeQ":Ljava/math/BigInteger;
    .end local v5    # "primeExponentP":Ljava/math/BigInteger;
    .end local v6    # "primeExponentQ":Ljava/math/BigInteger;
    .end local v7    # "crtCoefficient":Ljava/math/BigInteger;
    :catch_72
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_79
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "privateExponent == null"

    invoke-direct {v0, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_81
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "modulus == null"

    invoke-direct {v0, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 12
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 277
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 279
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->modulus:Ljava/math/BigInteger;

    .line 280
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 281
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    const/4 v3, 0x0

    if-nez v1, :cond_12

    move-object v1, v3

    goto :goto_18

    :cond_12
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    :goto_18
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->privateExponent:Ljava/math/BigInteger;

    .line 282
    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    .line 283
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    if-nez v5, :cond_24

    move-object v5, v3

    goto :goto_2a

    :cond_24
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 284
    :goto_2a
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    if-nez v6, :cond_30

    move-object v6, v3

    goto :goto_36

    :cond_30
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    .line 285
    :goto_36
    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    if-nez v7, :cond_3c

    move-object v7, v3

    goto :goto_42

    :cond_3c
    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    .line 286
    :goto_42
    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    if-nez v8, :cond_48

    move-object v8, v3

    goto :goto_4e

    :cond_48
    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    .line 287
    :goto_4e
    iget-object v9, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    if-nez v9, :cond_53

    goto :goto_59

    :cond_53
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    :goto_59
    move-object v9, v3

    .line 279
    move-object v3, v1

    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->fetchedParams:Z

    .line 289
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isHardwareBacked()Z

    move-result v0

    if-nez v0, :cond_11

    .line 296
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 297
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 298
    return-void

    .line 293
    :cond_11
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "Hardware backed keys cannot be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 209
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 210
    return v0

    .line 213
    :cond_4
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v1, :cond_18

    .line 214
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    .line 215
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 218
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    :cond_18
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_b1

    .line 219
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 220
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 222
    .local v1, "other":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->isHardwareBacked()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 223
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    .line 224
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_49

    :cond_48
    move v0, v2

    .line 223
    :goto_49
    return v0

    .line 226
    :cond_4a
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    .line 227
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 228
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    .line 229
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    .line 230
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    .line 231
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    .line 232
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    goto :goto_b0

    :cond_af
    move v0, v2

    .line 226
    :goto_b0
    return v0

    .line 234
    .end local v1    # "other":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_b1
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v1, :cond_f1

    .line 235
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 236
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 238
    .local v1, "other":Ljava/security/interfaces/RSAPrivateKey;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->isHardwareBacked()Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 239
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 241
    :cond_d2
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 242
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    goto :goto_f0

    :cond_ef
    move v0, v2

    .line 241
    :goto_f0
    return v0

    .line 246
    .end local v1    # "other":Ljava/security/interfaces/RSAPrivateKey;
    :cond_f1
    return v2
.end method

.method public whitelist test-api getCrtCoefficient()Ljava/math/BigInteger;
    .registers 2

    .line 203
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 204
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPrimeExponentP()Ljava/math/BigInteger;
    .registers 2

    .line 191
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 192
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPrimeExponentQ()Ljava/math/BigInteger;
    .registers 2

    .line 197
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 198
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPrimeP()Ljava/math/BigInteger;
    .registers 2

    .line 179
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 180
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPrimeQ()Ljava/math/BigInteger;
    .registers 2

    .line 185
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 186
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .line 173
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 174
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 251
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->hashCode()I

    move-result v0

    .line 252
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    if-eqz v1, :cond_f

    .line 253
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 255
    :cond_f
    return v0
.end method

.method declared-synchronized blacklist readParams([[B)V
    .registers 4
    .param p1, "params"    # [[B

    monitor-enter p0

    .line 148
    :try_start_1
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->readParams([[B)V

    .line 150
    const/4 v0, 0x1

    aget-object v1, p1, v0

    if-eqz v1, :cond_12

    .line 151
    new-instance v1, Ljava/math/BigInteger;

    aget-object v0, p1, v0

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    .line 154
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;
    :cond_12
    const/4 v0, 0x3

    aget-object v1, p1, v0

    if-eqz v1, :cond_20

    .line 155
    new-instance v1, Ljava/math/BigInteger;

    aget-object v0, p1, v0

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    .line 157
    :cond_20
    const/4 v0, 0x4

    aget-object v1, p1, v0

    if-eqz v1, :cond_2e

    .line 158
    new-instance v1, Ljava/math/BigInteger;

    aget-object v0, p1, v0

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    .line 160
    :cond_2e
    const/4 v0, 0x5

    aget-object v1, p1, v0

    if-eqz v1, :cond_3c

    .line 161
    new-instance v1, Ljava/math/BigInteger;

    aget-object v0, p1, v0

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    .line 163
    :cond_3c
    const/4 v0, 0x6

    aget-object v1, p1, v0

    if-eqz v1, :cond_4a

    .line 164
    new-instance v1, Ljava/math/BigInteger;

    aget-object v0, p1, v0

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    .line 166
    :cond_4a
    const/4 v0, 0x7

    aget-object v1, p1, v0

    if-eqz v1, :cond_58

    .line 167
    new-instance v1, Ljava/math/BigInteger;

    aget-object v0, p1, v0

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_5a

    .line 169
    :cond_58
    monitor-exit p0

    return-void

    .line 147
    .end local p1    # "params":[[B
    :catchall_5a
    move-exception p1

    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLRSAPrivateCrtKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 263
    const-string v1, "modulus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    if-eqz v1, :cond_33

    .line 267
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, "publicExponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_33
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
