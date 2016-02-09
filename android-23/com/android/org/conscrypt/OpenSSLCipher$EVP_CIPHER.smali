.class public abstract Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;
.super Lcom/android/org/conscrypt/OpenSSLCipher;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EVP_CIPHER"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$ARC4;
    }
.end annotation


# instance fields
.field protected calledUpdate:Z

.field private final cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

.field private modeBlockSize:I


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 4
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .param p2, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@0
    .prologue
    .line 471
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    #@3
    .line 455
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    #@5
    .line 456
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_new()J

    #@8
    move-result-wide v2

    #@9
    .line 455
    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;-><init>(J)V

    #@c
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    #@e
    .line 470
    return-void
.end method

.method private reset()V
    .locals 7

    #@0
    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    #@2
    const-wide/16 v2, 0x0

    #@4
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->encodedKey:[B

    #@6
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->iv:[B

    #@8
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->isEncrypting()Z

    #@b
    move-result v6

    #@c
    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    #@f
    .line 626
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->calledUpdate:Z

    #@12
    .line 624
    return-void
.end method


# virtual methods
.method protected doFinalInternal([BII)I
    .locals 7
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .param p3, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 554
    move v1, p2

    #@2
    .line 560
    .local v1, "initialOutputOffset":I
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->isEncrypting()Z

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_0

    #@8
    iget-boolean v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->calledUpdate:Z

    #@a
    if-eqz v4, :cond_2

    #@c
    .line 565
    :cond_0
    array-length v4, p1

    #@d
    sub-int v0, v4, p2

    #@f
    .line 567
    .local v0, "bytesLeft":I
    if-lt v0, p3, :cond_3

    #@11
    .line 568
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    #@13
    invoke-static {v4, p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I

    #@16
    move-result v3

    #@17
    .line 579
    .local v3, "writtenBytes":I
    :cond_1
    :goto_0
    add-int/2addr p2, v3

    #@18
    .line 581
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->reset()V

    #@1b
    .line 583
    sub-int v4, p2, v1

    #@1d
    return v4

    #@1e
    .line 561
    .end local v0    # "bytesLeft":I
    .end local v3    # "writtenBytes":I
    :cond_2
    return v5

    #@1f
    .line 570
    .restart local v0    # "bytesLeft":I
    :cond_3
    new-array v2, p3, [B

    #@21
    .line 571
    .local v2, "lastBlock":[B
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    #@23
    invoke-static {v4, v2, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I

    #@26
    move-result v3

    #@27
    .line 572
    .restart local v3    # "writtenBytes":I
    if-le v3, v0, :cond_4

    #@29
    .line 573
    new-instance v4, Ljavax/crypto/ShortBufferException;

    #@2b
    new-instance v5, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v6, "buffer is too short: "

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    const-string/jumbo v6, " > "

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-direct {v4, v5}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v4

    #@4e
    .line 575
    :cond_4
    if-lez v3, :cond_1

    #@50
    .line 576
    invoke-static {v2, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@53
    goto :goto_0
.end method

.method protected engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 16
    .param p1, "encodedKey"    # [B
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 479
    move-object/from16 v0, p2

    #@2
    instance-of v3, v0, Ljavax/crypto/spec/IvParameterSpec;

    #@4
    if-eqz v3, :cond_0

    #@6
    move-object/from16 v15, p2

    #@8
    .line 480
    check-cast v15, Ljavax/crypto/spec/IvParameterSpec;

    #@a
    .line 481
    .local v15, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v15}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@d
    move-result-object v13

    #@e
    .line 487
    .end local v15    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    :goto_0
    move-object/from16 v0, p1

    #@10
    array-length v3, v0

    #@11
    move-object/from16 v0, p0

    #@13
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@15
    .line 486
    move-object/from16 v0, p0

    #@17
    invoke-virtual {v0, v3, v6}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_cipherbyname(Ljava/lang/String;)J

    #@1e
    move-result-wide v4

    #@1f
    .line 488
    .local v4, "cipherType":J
    const-wide/16 v6, 0x0

    #@21
    cmp-long v3, v4, v6

    #@23
    if-nez v3, :cond_1

    #@25
    .line 489
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@27
    new-instance v6, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v7, "Cannot find name for key length = "

    #@2f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    .line 490
    move-object/from16 v0, p1

    #@35
    array-length v7, v0

    #@36
    mul-int/lit8 v7, v7, 0x8

    #@38
    .line 489
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    .line 490
    const-string/jumbo v7, " and mode = "

    #@3f
    .line 489
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    .line 490
    move-object/from16 v0, p0

    #@45
    iget-object v7, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@47
    .line 489
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v6

    #@4f
    invoke-direct {v3, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@52
    throw v3

    #@53
    .line 483
    .end local v4    # "cipherType":J
    :cond_0
    const/4 v13, 0x0

    #@54
    .local v13, "iv":[B
    goto :goto_0

    #@55
    .line 493
    .end local v13    # "iv":[B
    .restart local v4    # "cipherType":J
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->isEncrypting()Z

    #@58
    move-result v8

    #@59
    .line 495
    .local v8, "encrypting":Z
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_iv_length(J)I

    #@5c
    move-result v2

    #@5d
    .line 496
    .local v2, "expectedIvLength":I
    if-nez v13, :cond_5

    #@5f
    if-eqz v2, :cond_5

    #@61
    .line 497
    if-nez v8, :cond_2

    #@63
    .line 498
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@65
    new-instance v6, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v7, "IV must be specified in "

    #@6d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    move-object/from16 v0, p0

    #@73
    iget-object v7, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v6

    #@79
    .line 499
    const-string/jumbo v7, " mode"

    #@7c
    .line 498
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v6

    #@84
    invoke-direct {v3, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@87
    throw v3

    #@88
    .line 502
    :cond_2
    new-array v13, v2, [B

    #@8a
    .line 503
    .local v13, "iv":[B
    if-nez p3, :cond_3

    #@8c
    .line 504
    new-instance p3, Ljava/security/SecureRandom;

    #@8e
    .end local p3    # "random":Ljava/security/SecureRandom;
    invoke-direct/range {p3 .. p3}, Ljava/security/SecureRandom;-><init>()V

    #@91
    .line 506
    .restart local p3    # "random":Ljava/security/SecureRandom;
    :cond_3
    move-object/from16 v0, p3

    #@93
    invoke-virtual {v0, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@96
    .line 514
    .end local v13    # "iv":[B
    :cond_4
    move-object/from16 v0, p0

    #@98
    iput-object v13, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->iv:[B

    #@9a
    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->supportsVariableSizeKey()Z

    #@9d
    move-result v3

    #@9e
    if-eqz v3, :cond_7

    #@a0
    .line 517
    move-object/from16 v0, p0

    #@a2
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    #@a4
    const/4 v6, 0x0

    #@a5
    const/4 v7, 0x0

    #@a6
    invoke-static/range {v3 .. v8}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    #@a9
    .line 518
    move-object/from16 v0, p0

    #@ab
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    #@ad
    move-object/from16 v0, p1

    #@af
    array-length v6, v0

    #@b0
    invoke-static {v3, v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_key_length(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;I)V

    #@b3
    .line 519
    move-object/from16 v0, p0

    #@b5
    iget-object v9, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    #@b7
    const-wide/16 v10, 0x0

    #@b9
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->isEncrypting()Z

    #@bc
    move-result v14

    #@bd
    move-object/from16 v12, p1

    #@bf
    invoke-static/range {v9 .. v14}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    #@c2
    .line 526
    :goto_1
    move-object/from16 v0, p0

    #@c4
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    #@c6
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->getPadding()Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@c9
    move-result-object v3

    #@ca
    sget-object v7, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@cc
    if-ne v3, v7, :cond_8

    #@ce
    const/4 v3, 0x1

    #@cf
    .line 525
    :goto_2
    invoke-static {v6, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_padding(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;Z)V

    #@d2
    .line 527
    move-object/from16 v0, p0

    #@d4
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    #@d6
    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_block_size(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)I

    #@d9
    move-result v3

    #@da
    move-object/from16 v0, p0

    #@dc
    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    #@de
    .line 528
    const/4 v3, 0x0

    #@df
    move-object/from16 v0, p0

    #@e1
    iput-boolean v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->calledUpdate:Z

    #@e3
    .line 477
    return-void

    #@e4
    .line 507
    :cond_5
    if-nez v2, :cond_6

    #@e6
    if-eqz v13, :cond_6

    #@e8
    .line 508
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@ea
    new-instance v6, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v7, "IV not used in "

    #@f2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v6

    #@f6
    move-object/from16 v0, p0

    #@f8
    iget-object v7, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@fa
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v6

    #@fe
    const-string/jumbo v7, " mode"

    #@101
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v6

    #@105
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@108
    move-result-object v6

    #@109
    invoke-direct {v3, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@10c
    throw v3

    #@10d
    .line 509
    :cond_6
    if-eqz v13, :cond_4

    #@10f
    array-length v3, v13

    #@110
    if-eq v3, v2, :cond_4

    #@112
    .line 510
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@114
    new-instance v6, Ljava/lang/StringBuilder;

    #@116
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@119
    const-string/jumbo v7, "expected IV length of "

    #@11c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v6

    #@120
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@123
    move-result-object v6

    #@124
    .line 511
    const-string/jumbo v7, " but was "

    #@127
    .line 510
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v6

    #@12b
    .line 511
    array-length v7, v13

    #@12c
    .line 510
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v6

    #@130
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v6

    #@134
    invoke-direct {v3, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@137
    throw v3

    #@138
    .line 521
    :cond_7
    move-object/from16 v0, p0

    #@13a
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    #@13c
    move-object/from16 v6, p1

    #@13e
    move-object v7, v13

    #@13f
    invoke-static/range {v3 .. v8}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    #@142
    goto :goto_1

    #@143
    .line 526
    :cond_8
    const/4 v3, 0x0

    #@144
    goto :goto_2
.end method

.method protected abstract getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
.end method

.method protected getOutputSizeForFinal(I)I
    .locals 6
    .param p1, "inputLen"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 588
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    #@3
    const/4 v5, 0x1

    #@4
    if-ne v3, v5, :cond_0

    #@6
    .line 589
    return p1

    #@7
    .line 591
    :cond_0
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    #@9
    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_buf_len(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)I

    #@c
    move-result v0

    #@d
    .line 593
    .local v0, "buffered":I
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->getPadding()Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@10
    move-result-object v3

    #@11
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@13
    if-ne v3, v5, :cond_1

    #@15
    .line 594
    add-int v3, v0, p1

    #@17
    return v3

    #@18
    .line 596
    :cond_1
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    #@1a
    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_final_used(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)Z

    #@1d
    move-result v1

    #@1e
    .line 598
    .local v1, "finalUsed":Z
    add-int v5, p1, v0

    #@20
    if-eqz v1, :cond_4

    #@22
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    #@24
    :goto_0
    add-int v2, v5, v3

    #@26
    .line 602
    .local v2, "totalLen":I
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    #@28
    rem-int v3, v2, v3

    #@2a
    if-nez v3, :cond_2

    #@2c
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->isEncrypting()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_3

    #@32
    .line 603
    :cond_2
    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    #@34
    .line 602
    :cond_3
    add-int/2addr v2, v4

    #@35
    .line 605
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    #@37
    rem-int v3, v2, v3

    #@39
    sub-int v3, v2, v3

    #@3b
    return v3

    #@3c
    .end local v2    # "totalLen":I
    :cond_4
    move v3, v4

    #@3d
    .line 598
    goto :goto_0
.end method

.method protected getOutputSizeForUpdate(I)I
    .locals 1
    .param p1, "inputLen"    # I

    #@0
    .prologue
    .line 612
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->getOutputSizeForFinal(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected updateInternal([BII[BII)I
    .locals 8
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .param p6, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    .line 534
    move v7, p5

    #@1
    .line 536
    .local v7, "intialOutputOffset":I
    array-length v0, p4

    #@2
    sub-int v6, v0, p5

    #@4
    .line 537
    .local v6, "bytesLeft":I
    if-ge v6, p6, :cond_0

    #@6
    .line 538
    new-instance v0, Ljavax/crypto/ShortBufferException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "output buffer too small during update: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 539
    const-string/jumbo v2, " < "

    #@1b
    .line 538
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    #@2d
    move-object v1, p4

    #@2e
    move v2, p5

    #@2f
    move-object v3, p1

    #@30
    move v4, p2

    #@31
    move v5, p3

    #@32
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI[BII)I

    #@35
    move-result v0

    #@36
    add-int/2addr p5, v0

    #@37
    .line 545
    const/4 v0, 0x1

    #@38
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->calledUpdate:Z

    #@3a
    .line 547
    sub-int v0, p5, v7

    #@3c
    return v0
.end method
