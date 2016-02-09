.class public Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;
.super Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
.source "OpenSSLRSAPrivateCrtKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateCrtKey;


# static fields
.field private static final serialVersionUID:J = 0x34880ef7f10bfb7dL


# instance fields
.field private crtCoefficient:Ljava/math/BigInteger;

.field private primeExponentP:Ljava/math/BigInteger;

.field private primeExponentQ:Ljava/math/BigInteger;

.field private primeP:Ljava/math/BigInteger;

.field private primeQ:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 0
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    #@3
    .line 45
    return-void
.end method

.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V
    .locals 0
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .param p2, "params"    # [[B

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V

    #@3
    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V
    .locals 1
    .param p1, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateCrtKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 54
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->init(Ljava/security/spec/RSAPrivateCrtKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    #@7
    .line 53
    return-void
.end method

.method static getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 20
    .param p0, "rsaPrivateKey"    # Ljava/security/interfaces/RSAPrivateCrtKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getFormat()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 101
    invoke-static/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@9
    move-result-object v2

    #@a
    return-object v2

    #@b
    .line 104
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@e
    move-result-object v12

    #@f
    .line 105
    .local v12, "modulus":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@12
    move-result-object v17

    #@13
    .line 107
    .local v17, "privateExponent":Ljava/math/BigInteger;
    if-nez v12, :cond_1

    #@15
    .line 108
    new-instance v2, Ljava/security/InvalidKeyException;

    #@17
    const-string/jumbo v3, "modulus == null"

    #@1a
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v2

    #@1e
    .line 109
    :cond_1
    if-nez v17, :cond_2

    #@20
    .line 110
    new-instance v2, Ljava/security/InvalidKeyException;

    #@22
    const-string/jumbo v3, "privateExponent == null"

    #@25
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2

    #@29
    .line 120
    :cond_2
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@2c
    move-result-object v18

    #@2d
    .line 121
    .local v18, "publicExponent":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    #@30
    move-result-object v15

    #@31
    .line 122
    .local v15, "primeP":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    #@34
    move-result-object v16

    #@35
    .line 123
    .local v16, "primeQ":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    #@38
    move-result-object v13

    #@39
    .line 124
    .local v13, "primeExponentP":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    #@3c
    move-result-object v14

    #@3d
    .line 125
    .local v14, "primeExponentQ":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    #@40
    move-result-object v10

    #@41
    .line 127
    .local v10, "crtCoefficient":Ljava/math/BigInteger;
    new-instance v19, Lcom/android/org/conscrypt/OpenSSLKey;

    #@43
    .line 128
    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    #@46
    move-result-object v2

    #@47
    .line 129
    if-nez v18, :cond_3

    #@49
    const/4 v3, 0x0

    #@4a
    .line 130
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->toByteArray()[B

    #@4d
    move-result-object v4

    #@4e
    .line 131
    if-nez v15, :cond_4

    #@50
    const/4 v5, 0x0

    #@51
    .line 132
    :goto_1
    if-nez v16, :cond_5

    #@53
    const/4 v6, 0x0

    #@54
    .line 133
    :goto_2
    if-nez v13, :cond_6

    #@56
    const/4 v7, 0x0

    #@57
    .line 134
    :goto_3
    if-nez v14, :cond_7

    #@59
    const/4 v8, 0x0

    #@5a
    .line 135
    :goto_4
    if-nez v10, :cond_8

    #@5c
    const/4 v9, 0x0

    #@5d
    .line 127
    :goto_5
    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    #@60
    move-result-wide v2

    #@61
    move-object/from16 v0, v19

    #@63
    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@66
    return-object v19

    #@67
    .line 129
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->toByteArray()[B

    #@6a
    move-result-object v3

    #@6b
    goto :goto_0

    #@6c
    .line 131
    :cond_4
    invoke-virtual {v15}, Ljava/math/BigInteger;->toByteArray()[B

    #@6f
    move-result-object v5

    #@70
    goto :goto_1

    #@71
    .line 132
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->toByteArray()[B

    #@74
    move-result-object v6

    #@75
    goto :goto_2

    #@76
    .line 133
    :cond_6
    invoke-virtual {v13}, Ljava/math/BigInteger;->toByteArray()[B

    #@79
    move-result-object v7

    #@7a
    goto :goto_3

    #@7b
    .line 134
    :cond_7
    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    #@7e
    move-result-object v8

    #@7f
    goto :goto_4

    #@80
    .line 135
    :cond_8
    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@83
    move-result-object v9

    #@84
    goto :goto_5

    #@85
    .line 136
    .end local v10    # "crtCoefficient":Ljava/math/BigInteger;
    .end local v13    # "primeExponentP":Ljava/math/BigInteger;
    .end local v14    # "primeExponentQ":Ljava/math/BigInteger;
    .end local v15    # "primeP":Ljava/math/BigInteger;
    .end local v16    # "primeQ":Ljava/math/BigInteger;
    .end local v18    # "publicExponent":Ljava/math/BigInteger;
    :catch_0
    move-exception v11

    #@86
    .line 137
    .local v11, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    #@88
    invoke-direct {v2, v11}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@8b
    throw v2
.end method

.method private static init(Ljava/security/spec/RSAPrivateCrtKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 20
    .param p0, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateCrtKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getModulus()Ljava/math/BigInteger;

    #@3
    move-result-object v12

    #@4
    .line 59
    .local v12, "modulus":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    #@7
    move-result-object v17

    #@8
    .line 61
    .local v17, "privateExponent":Ljava/math/BigInteger;
    if-nez v12, :cond_0

    #@a
    .line 62
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@c
    const-string/jumbo v3, "modulus == null"

    #@f
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 63
    :cond_0
    if-nez v17, :cond_1

    #@15
    .line 64
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@17
    const-string/jumbo v3, "privateExponent == null"

    #@1a
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v2

    #@1e
    .line 74
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    #@21
    move-result-object v18

    #@22
    .line 75
    .local v18, "publicExponent":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeP()Ljava/math/BigInteger;

    #@25
    move-result-object v15

    #@26
    .line 76
    .local v15, "primeP":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeQ()Ljava/math/BigInteger;

    #@29
    move-result-object v16

    #@2a
    .line 77
    .local v16, "primeQ":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentP()Ljava/math/BigInteger;

    #@2d
    move-result-object v13

    #@2e
    .line 78
    .local v13, "primeExponentP":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentQ()Ljava/math/BigInteger;

    #@31
    move-result-object v14

    #@32
    .line 79
    .local v14, "primeExponentQ":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getCrtCoefficient()Ljava/math/BigInteger;

    #@35
    move-result-object v10

    #@36
    .line 81
    .local v10, "crtCoefficient":Ljava/math/BigInteger;
    new-instance v19, Lcom/android/org/conscrypt/OpenSSLKey;

    #@38
    .line 82
    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    #@3b
    move-result-object v2

    #@3c
    .line 83
    if-nez v18, :cond_2

    #@3e
    const/4 v3, 0x0

    #@3f
    .line 84
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->toByteArray()[B

    #@42
    move-result-object v4

    #@43
    .line 85
    if-nez v15, :cond_3

    #@45
    const/4 v5, 0x0

    #@46
    .line 86
    :goto_1
    if-nez v16, :cond_4

    #@48
    const/4 v6, 0x0

    #@49
    .line 87
    :goto_2
    if-nez v13, :cond_5

    #@4b
    const/4 v7, 0x0

    #@4c
    .line 88
    :goto_3
    if-nez v14, :cond_6

    #@4e
    const/4 v8, 0x0

    #@4f
    .line 89
    :goto_4
    if-nez v10, :cond_7

    #@51
    const/4 v9, 0x0

    #@52
    .line 81
    :goto_5
    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    #@55
    move-result-wide v2

    #@56
    move-object/from16 v0, v19

    #@58
    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@5b
    return-object v19

    #@5c
    .line 83
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->toByteArray()[B

    #@5f
    move-result-object v3

    #@60
    goto :goto_0

    #@61
    .line 85
    :cond_3
    invoke-virtual {v15}, Ljava/math/BigInteger;->toByteArray()[B

    #@64
    move-result-object v5

    #@65
    goto :goto_1

    #@66
    .line 86
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->toByteArray()[B

    #@69
    move-result-object v6

    #@6a
    goto :goto_2

    #@6b
    .line 87
    :cond_5
    invoke-virtual {v13}, Ljava/math/BigInteger;->toByteArray()[B

    #@6e
    move-result-object v7

    #@6f
    goto :goto_3

    #@70
    .line 88
    :cond_6
    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    #@73
    move-result-object v8

    #@74
    goto :goto_4

    #@75
    .line 89
    :cond_7
    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@78
    move-result-object v9

    #@79
    goto :goto_5

    #@7a
    .line 90
    .end local v10    # "crtCoefficient":Ljava/math/BigInteger;
    .end local v13    # "primeExponentP":Ljava/math/BigInteger;
    .end local v14    # "primeExponentQ":Ljava/math/BigInteger;
    .end local v15    # "primeP":Ljava/math/BigInteger;
    .end local v16    # "primeQ":Ljava/math/BigInteger;
    .end local v18    # "publicExponent":Ljava/math/BigInteger;
    :catch_0
    move-exception v11

    #@7b
    .line 91
    .local v11, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@7d
    invoke-direct {v2, v11}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    #@80
    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 315
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 317
    new-instance v8, Lcom/android/org/conscrypt/OpenSSLKey;

    #@6
    .line 318
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->modulus:Ljava/math/BigInteger;

    #@8
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    #@b
    move-result-object v0

    #@c
    .line 319
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@e
    if-nez v1, :cond_0

    #@10
    move-object v1, v7

    #@11
    .line 320
    :goto_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->privateExponent:Ljava/math/BigInteger;

    #@13
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    #@16
    move-result-object v2

    #@17
    .line 321
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    #@19
    if-nez v3, :cond_1

    #@1b
    move-object v3, v7

    #@1c
    .line 322
    :goto_1
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    #@1e
    if-nez v4, :cond_2

    #@20
    move-object v4, v7

    #@21
    .line 323
    :goto_2
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    #@23
    if-nez v5, :cond_3

    #@25
    move-object v5, v7

    #@26
    .line 324
    :goto_3
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    #@28
    if-nez v6, :cond_4

    #@2a
    move-object v6, v7

    #@2b
    .line 325
    :goto_4
    iget-object v9, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    #@2d
    if-nez v9, :cond_5

    #@2f
    .line 317
    :goto_5
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    #@32
    move-result-wide v0

    #@33
    invoke-direct {v8, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@36
    iput-object v8, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@38
    .line 326
    const/4 v0, 0x1

    #@39
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->fetchedParams:Z

    #@3b
    .line 314
    return-void

    #@3c
    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@3e
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    #@41
    move-result-object v1

    #@42
    goto :goto_0

    #@43
    .line 321
    :cond_1
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    #@45
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    #@48
    move-result-object v3

    #@49
    goto :goto_1

    #@4a
    .line 322
    :cond_2
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    #@4c
    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    #@4f
    move-result-object v4

    #@50
    goto :goto_2

    #@51
    .line 323
    :cond_3
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    #@53
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    #@56
    move-result-object v5

    #@57
    goto :goto_3

    #@58
    .line 324
    :cond_4
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    #@5a
    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    #@5d
    move-result-object v6

    #@5e
    goto :goto_4

    #@5f
    .line 325
    :cond_5
    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    #@61
    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    #@64
    move-result-object v7

    #@65
    goto :goto_5
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 331
    new-instance v0, Ljava/io/NotSerializableException;

    #@c
    const-string/jumbo v1, "engine-based keys can not be serialized"

    #@f
    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    #@16
    .line 335
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@19
    .line 329
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 204
    if-ne p1, p0, :cond_0

    #@3
    .line 205
    const/4 v3, 0x1

    #@4
    return v3

    #@5
    .line 208
    :cond_0
    instance-of v4, p1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    #@7
    if-eqz v4, :cond_1

    #@9
    move-object v0, p1

    #@a
    .line 209
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    #@c
    .line 210
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v3

    #@18
    return v3

    #@19
    .line 213
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    :cond_1
    instance-of v4, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@1b
    if-eqz v4, :cond_5

    #@1d
    .line 214
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    #@20
    move-object v1, p1

    #@21
    .line 215
    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@23
    .line 217
    .local v1, "other":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_3

    #@2d
    .line 218
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@30
    move-result-object v4

    #@31
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_2

    #@3b
    .line 219
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@3d
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v3

    #@45
    .line 218
    :cond_2
    return v3

    #@46
    .line 221
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@49
    move-result-object v4

    #@4a
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_4

    #@54
    .line 222
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@56
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v4

    #@5e
    .line 221
    if-eqz v4, :cond_4

    #@60
    .line 223
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@63
    move-result-object v4

    #@64
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v4

    #@6c
    .line 221
    if-eqz v4, :cond_4

    #@6e
    .line 224
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    #@70
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    #@73
    move-result-object v5

    #@74
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v4

    #@78
    .line 221
    if-eqz v4, :cond_4

    #@7a
    .line 224
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    #@7c
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    #@7f
    move-result-object v5

    #@80
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v4

    #@84
    .line 221
    if-eqz v4, :cond_4

    #@86
    .line 225
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    #@88
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    #@8b
    move-result-object v5

    #@8c
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v4

    #@90
    .line 221
    if-eqz v4, :cond_4

    #@92
    .line 226
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    #@94
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    #@97
    move-result-object v5

    #@98
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v4

    #@9c
    .line 221
    if-eqz v4, :cond_4

    #@9e
    .line 227
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    #@a0
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    #@a3
    move-result-object v4

    #@a4
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@a7
    move-result v3

    #@a8
    .line 221
    :cond_4
    return v3

    #@a9
    .line 229
    .end local v1    # "other":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_5
    instance-of v4, p1, Ljava/security/interfaces/RSAPrivateKey;

    #@ab
    if-eqz v4, :cond_8

    #@ad
    .line 230
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    #@b0
    move-object v2, p1

    #@b1
    .line 231
    check-cast v2, Ljava/security/interfaces/RSAPrivateKey;

    #@b3
    .line 233
    .local v2, "other":Ljava/security/interfaces/RSAPrivateKey;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@b6
    move-result-object v4

    #@b7
    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@ba
    move-result v4

    #@bb
    if-eqz v4, :cond_6

    #@bd
    .line 234
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@c0
    move-result-object v3

    #@c1
    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@c4
    move-result-object v4

    #@c5
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@c8
    move-result v3

    #@c9
    return v3

    #@ca
    .line 236
    :cond_6
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@cd
    move-result-object v4

    #@ce
    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@d1
    move-result-object v5

    #@d2
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@d5
    move-result v4

    #@d6
    if-eqz v4, :cond_7

    #@d8
    .line 237
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@db
    move-result-object v3

    #@dc
    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@df
    move-result-object v4

    #@e0
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@e3
    move-result v3

    #@e4
    .line 236
    :cond_7
    return v3

    #@e5
    .line 241
    .end local v2    # "other":Ljava/security/interfaces/RSAPrivateKey;
    :cond_8
    return v3
.end method

.method public getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    #@3
    .line 199
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    #@5
    return-object v0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    #@3
    .line 187
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    #@5
    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    #@3
    .line 193
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    #@5
    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    #@3
    .line 175
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    #@5
    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    #@3
    .line 181
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    #@5
    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    #@3
    .line 169
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@5
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    #@0
    .prologue
    .line 246
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->hashCode()I

    #@3
    move-result v0

    #@4
    .line 247
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 248
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@a
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@d
    move-result v1

    #@e
    xor-int/2addr v0, v1

    #@f
    .line 250
    :cond_0
    return v0
.end method

.method declared-synchronized readParams([[B)V
    .locals 2
    .param p1, "params"    # [[B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 143
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->readParams([[B)V

    #@4
    .line 145
    const/4 v0, 0x1

    #@5
    aget-object v0, p1, v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 146
    new-instance v0, Ljava/math/BigInteger;

    #@b
    const/4 v1, 0x1

    #@c
    aget-object v1, p1, v1

    #@e
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #@11
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@13
    .line 149
    :cond_0
    const/4 v0, 0x3

    #@14
    aget-object v0, p1, v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 150
    new-instance v0, Ljava/math/BigInteger;

    #@1a
    const/4 v1, 0x3

    #@1b
    aget-object v1, p1, v1

    #@1d
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #@20
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    #@22
    .line 152
    :cond_1
    const/4 v0, 0x4

    #@23
    aget-object v0, p1, v0

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 153
    new-instance v0, Ljava/math/BigInteger;

    #@29
    const/4 v1, 0x4

    #@2a
    aget-object v1, p1, v1

    #@2c
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #@2f
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    #@31
    .line 155
    :cond_2
    const/4 v0, 0x5

    #@32
    aget-object v0, p1, v0

    #@34
    if-eqz v0, :cond_3

    #@36
    .line 156
    new-instance v0, Ljava/math/BigInteger;

    #@38
    const/4 v1, 0x5

    #@39
    aget-object v1, p1, v1

    #@3b
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #@3e
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    #@40
    .line 158
    :cond_3
    const/4 v0, 0x6

    #@41
    aget-object v0, p1, v0

    #@43
    if-eqz v0, :cond_4

    #@45
    .line 159
    new-instance v0, Ljava/math/BigInteger;

    #@47
    const/4 v1, 0x6

    #@48
    aget-object v1, p1, v1

    #@4a
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #@4d
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    #@4f
    .line 161
    :cond_4
    const/4 v0, 0x7

    #@50
    aget-object v0, p1, v0

    #@52
    if-eqz v0, :cond_5

    #@54
    .line 162
    new-instance v0, Ljava/math/BigInteger;

    #@56
    const/4 v1, 0x7

    #@57
    aget-object v1, p1, v1

    #@59
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #@5c
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    :cond_5
    monitor-exit p0

    #@5f
    .line 142
    return-void

    #@60
    :catchall_0
    move-exception v0

    #@61
    monitor-exit p0

    #@62
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x2c

    #@2
    const/16 v3, 0x10

    #@4
    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    const-string/jumbo v2, "OpenSSLRSAPrivateCrtKey{"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c
    .line 257
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@13
    move-result v0

    #@14
    .line 258
    .local v0, "engineBased":Z
    if-eqz v0, :cond_0

    #@16
    .line 259
    const-string/jumbo v2, "key="

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 260
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    .line 261
    const/16 v2, 0x7d

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    #@2b
    .line 265
    const-string/jumbo v2, "modulus="

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 266
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 267
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3f
    .line 269
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@41
    if-eqz v2, :cond_1

    #@43
    .line 270
    const-string/jumbo v2, "publicExponent="

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 271
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@4b
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 272
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@55
    .line 275
    :cond_1
    if-nez v0, :cond_2

    #@57
    .line 276
    const-string/jumbo v2, "privateExponent="

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    .line 277
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 278
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6b
    .line 281
    :cond_2
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    #@6d
    if-eqz v2, :cond_3

    #@6f
    .line 282
    const-string/jumbo v2, "primeP="

    #@72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 283
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    #@77
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    .line 284
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@81
    .line 287
    :cond_3
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    #@83
    if-eqz v2, :cond_4

    #@85
    .line 288
    const-string/jumbo v2, "primeQ="

    #@88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    .line 289
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    #@8d
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@90
    move-result-object v2

    #@91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    .line 290
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@97
    .line 293
    :cond_4
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    #@99
    if-eqz v2, :cond_5

    #@9b
    .line 294
    const-string/jumbo v2, "primeExponentP="

    #@9e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    .line 295
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    #@a3
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@a6
    move-result-object v2

    #@a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    .line 296
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ad
    .line 299
    :cond_5
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    #@af
    if-eqz v2, :cond_6

    #@b1
    .line 300
    const-string/jumbo v2, "primeExponentQ="

    #@b4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    .line 301
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    #@b9
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@bc
    move-result-object v2

    #@bd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    .line 302
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c3
    .line 305
    :cond_6
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    #@c5
    if-eqz v2, :cond_7

    #@c7
    .line 306
    const-string/jumbo v2, "crtCoefficient="

    #@ca
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    .line 307
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    #@cf
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@d2
    move-result-object v2

    #@d3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    .line 308
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d9
    .line 311
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v2

    #@dd
    return-object v2
.end method
