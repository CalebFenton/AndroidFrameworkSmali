.class abstract Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;
.super Lcom/android/org/conscrypt/OpenSSLSignature;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "RSAPSSPadding"
.end annotation


# static fields
.field private static final MGF1_ALGORITHM_NAME:Ljava/lang/String; = "MGF1"

.field private static final MGF1_OID:Ljava/lang/String; = "1.2.840.113549.1.1.8"

.field private static final TRAILER_FIELD_BC_ID:I = 0x1


# instance fields
.field private final contentDigestAlgorithm:Ljava/lang/String;

.field private mgf1DigestAlgorithm:Ljava/lang/String;

.field private mgf1EvpMdRef:J

.field private saltSizeBytes:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 3
    .param p1, "contentDigestEvpMdRef"    # J
    .param p3, "contentDigestAlgorithm"    # Ljava/lang/String;
    .param p4, "saltSizeBytes"    # I

    #@0
    .prologue
    .line 375
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;-><init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;Lcom/android/org/conscrypt/OpenSSLSignature;)V

    #@6
    .line 376
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->contentDigestAlgorithm:Ljava/lang/String;

    #@8
    .line 377
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1DigestAlgorithm:Ljava/lang/String;

    #@a
    .line 378
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1EvpMdRef:J

    #@c
    .line 379
    iput p4, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->saltSizeBytes:I

    #@e
    .line 374
    return-void
.end method

.method private static getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 503
    const-string/jumbo v0, "SHA-256"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 504
    const-string/jumbo v0, "sha256"

    #@c
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    #@f
    move-result-wide v0

    #@10
    return-wide v0

    #@11
    .line 505
    :cond_0
    const-string/jumbo v0, "SHA-512"

    #@14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 506
    const-string/jumbo v0, "sha512"

    #@1d
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    #@20
    move-result-wide v0

    #@21
    return-wide v0

    #@22
    .line 507
    :cond_1
    const-string/jumbo v0, "SHA-1"

    #@25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_2

    #@2b
    .line 508
    const-string/jumbo v0, "sha1"

    #@2e
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    #@31
    move-result-wide v0

    #@32
    return-wide v0

    #@33
    .line 509
    :cond_2
    const-string/jumbo v0, "SHA-384"

    #@36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_3

    #@3c
    .line 510
    const-string/jumbo v0, "sha384"

    #@3f
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    #@42
    move-result-wide v0

    #@43
    return-wide v0

    #@44
    .line 511
    :cond_3
    const-string/jumbo v0, "SHA-224"

    #@47
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_4

    #@4d
    .line 512
    const-string/jumbo v0, "sha224"

    #@50
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    #@53
    move-result-wide v0

    #@54
    return-wide v0

    #@55
    .line 514
    :cond_4
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    #@57
    new-instance v1, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v2, "Unsupported algorithm: "

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v0
.end method

.method private static getJcaDigestAlgorithmStandardName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 481
    const-string/jumbo v0, "SHA-256"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 482
    const-string/jumbo v0, "2.16.840.1.101.3.4.2.1"

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 481
    if-eqz v0, :cond_1

    #@12
    .line 483
    :cond_0
    const-string/jumbo v0, "SHA-256"

    #@15
    return-object v0

    #@16
    .line 484
    :cond_1
    const-string/jumbo v0, "SHA-512"

    #@19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_2

    #@1f
    .line 485
    const-string/jumbo v0, "2.16.840.1.101.3.4.2.3"

    #@22
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    .line 484
    if-eqz v0, :cond_3

    #@28
    .line 486
    :cond_2
    const-string/jumbo v0, "SHA-512"

    #@2b
    return-object v0

    #@2c
    .line 487
    :cond_3
    const-string/jumbo v0, "SHA-1"

    #@2f
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_4

    #@35
    .line 488
    const-string/jumbo v0, "1.3.14.3.2.26"

    #@38
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v0

    #@3c
    .line 487
    if-eqz v0, :cond_5

    #@3e
    .line 489
    :cond_4
    const-string/jumbo v0, "SHA-1"

    #@41
    return-object v0

    #@42
    .line 490
    :cond_5
    const-string/jumbo v0, "SHA-384"

    #@45
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@48
    move-result v0

    #@49
    if-nez v0, :cond_6

    #@4b
    .line 491
    const-string/jumbo v0, "2.16.840.1.101.3.4.2.2"

    #@4e
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v0

    #@52
    .line 490
    if-eqz v0, :cond_7

    #@54
    .line 492
    :cond_6
    const-string/jumbo v0, "SHA-384"

    #@57
    return-object v0

    #@58
    .line 493
    :cond_7
    const-string/jumbo v0, "SHA-224"

    #@5b
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5e
    move-result v0

    #@5f
    if-nez v0, :cond_8

    #@61
    .line 494
    const-string/jumbo v0, "2.16.840.1.101.3.4.2.4"

    #@64
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v0

    #@68
    .line 493
    if-eqz v0, :cond_9

    #@6a
    .line 495
    :cond_8
    const-string/jumbo v0, "SHA-224"

    #@6d
    return-object v0

    #@6e
    .line 497
    :cond_9
    const/4 v0, 0x0

    #@6f
    return-object v0
.end method


# virtual methods
.method protected final configureEVP_PKEY_CTX(J)V
    .locals 3
    .param p1, "ctx"    # J

    #@0
    .prologue
    .line 384
    const/4 v0, 0x6

    #@1
    invoke-static {p1, p2, v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_padding(JI)V

    #@4
    .line 385
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1EvpMdRef:J

    #@6
    invoke-static {p1, p2, v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_mgf1_md(JJ)V

    #@9
    .line 386
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->saltSizeBytes:I

    #@b
    invoke-static {p1, p2, v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_pss_saltlen(JI)V

    #@e
    .line 383
    return-void
.end method

.method protected final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 8

    #@0
    .prologue
    .line 462
    :try_start_0
    const-string/jumbo v0, "PSS"

    #@3
    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@6
    move-result-object v7

    #@7
    .line 464
    .local v7, "result":Ljava/security/AlgorithmParameters;
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    #@9
    .line 465
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->contentDigestAlgorithm:Ljava/lang/String;

    #@b
    .line 466
    const-string/jumbo v2, "MGF1"

    #@e
    .line 467
    new-instance v3, Ljava/security/spec/MGF1ParameterSpec;

    #@10
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1DigestAlgorithm:Ljava/lang/String;

    #@12
    invoke-direct {v3, v4}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    #@15
    .line 468
    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->saltSizeBytes:I

    #@17
    .line 469
    const/4 v5, 0x1

    #@18
    .line 464
    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    #@1b
    .line 463
    invoke-virtual {v7, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 470
    return-object v7

    #@1f
    .line 471
    .end local v7    # "result":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v6

    #@20
    .line 472
    .local v6, "e":Ljava/security/GeneralSecurityException;
    new-instance v0, Ljava/security/ProviderException;

    #@22
    const-string/jumbo v1, "Failed to create PSS AlgorithmParameters"

    #@25
    invoke-direct {v0, v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@28
    throw v0
.end method

.method protected final engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 18
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 392
    move-object/from16 v0, p1

    #@2
    instance-of v15, v0, Ljava/security/spec/PSSParameterSpec;

    #@4
    if-nez v15, :cond_0

    #@6
    .line 393
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    #@8
    .line 394
    new-instance v16, Ljava/lang/StringBuilder;

    #@a
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v17, "Unsupported parameter: "

    #@10
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v16

    #@14
    move-object/from16 v0, v16

    #@16
    move-object/from16 v1, p1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v16

    #@1c
    const-string/jumbo v17, ". Only "

    #@1f
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v16

    #@23
    .line 395
    const-class v17, Ljava/security/spec/PSSParameterSpec;

    #@25
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@28
    move-result-object v17

    #@29
    .line 394
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v16

    #@2d
    .line 395
    const-string/jumbo v17, " supported"

    #@30
    .line 394
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v16

    #@34
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v16

    #@38
    .line 393
    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v15

    #@3c
    :cond_0
    move-object/from16 v6, p1

    #@3e
    .line 397
    nop

    #@3f
    nop

    #@40
    .line 398
    .local v6, "spec":Ljava/security/spec/PSSParameterSpec;
    invoke-virtual {v6}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    #@43
    move-result-object v15

    #@44
    invoke-static {v15}, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->getJcaDigestAlgorithmStandardName(Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v7

    #@48
    .line 399
    .local v7, "specContentDigest":Ljava/lang/String;
    if-nez v7, :cond_1

    #@4a
    .line 400
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    #@4c
    .line 401
    new-instance v16, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v17, "Unsupported content digest algorithm: "

    #@54
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v16

    #@58
    invoke-virtual {v6}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    #@5b
    move-result-object v17

    #@5c
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v16

    #@60
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v16

    #@64
    .line 400
    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@67
    throw v15

    #@68
    .line 402
    :cond_1
    move-object/from16 v0, p0

    #@6a
    iget-object v15, v0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->contentDigestAlgorithm:Ljava/lang/String;

    #@6c
    invoke-virtual {v15, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6f
    move-result v15

    #@70
    if-nez v15, :cond_2

    #@72
    .line 403
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    #@74
    .line 404
    const-string/jumbo v16, "Changing content digest algorithm not supported"

    #@77
    .line 403
    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v15

    #@7b
    .line 407
    :cond_2
    invoke-virtual {v6}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    #@7e
    move-result-object v12

    #@7f
    .line 408
    .local v12, "specMgfAlgorithm":Ljava/lang/String;
    const-string/jumbo v15, "MGF1"

    #@82
    invoke-virtual {v15, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@85
    move-result v15

    #@86
    if-nez v15, :cond_3

    #@88
    .line 409
    const-string/jumbo v15, "1.2.840.113549.1.1.8"

    #@8b
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v15

    #@8f
    if-eqz v15, :cond_4

    #@91
    .line 415
    :cond_3
    invoke-virtual {v6}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    #@94
    move-result-object v5

    #@95
    .line 416
    .local v5, "mgfSpec":Ljava/security/spec/AlgorithmParameterSpec;
    instance-of v15, v5, Ljava/security/spec/MGF1ParameterSpec;

    #@97
    if-nez v15, :cond_5

    #@99
    .line 417
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    #@9b
    .line 418
    new-instance v16, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v17, "Unsupported MGF parameters: "

    #@a3
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v16

    #@a7
    move-object/from16 v0, v16

    #@a9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v16

    #@ad
    const-string/jumbo v17, ". Only "

    #@b0
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v16

    #@b4
    .line 419
    const-class v17, Ljava/security/spec/MGF1ParameterSpec;

    #@b6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b9
    move-result-object v17

    #@ba
    .line 418
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v16

    #@be
    .line 419
    const-string/jumbo v17, " supported"

    #@c1
    .line 418
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v16

    #@c5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v16

    #@c9
    .line 417
    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@cc
    throw v15

    #@cd
    .line 410
    .end local v5    # "mgfSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_4
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    #@cf
    .line 411
    new-instance v16, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v17, "Unsupported MGF algorithm: "

    #@d7
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v16

    #@db
    move-object/from16 v0, v16

    #@dd
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v16

    #@e1
    const-string/jumbo v17, ". Only "

    #@e4
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v16

    #@e8
    .line 412
    const-string/jumbo v17, "MGF1"

    #@eb
    .line 411
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v16

    #@ef
    .line 412
    const-string/jumbo v17, " supported"

    #@f2
    .line 411
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v16

    #@f6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v16

    #@fa
    .line 410
    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@fd
    throw v15

    #@fe
    .line 421
    .restart local v5    # "mgfSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_5
    invoke-virtual {v6}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    #@101
    move-result-object v9

    #@102
    check-cast v9, Ljava/security/spec/MGF1ParameterSpec;

    #@104
    .line 424
    .local v9, "specMgf1Spec":Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v9}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    #@107
    move-result-object v15

    #@108
    invoke-static {v15}, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->getJcaDigestAlgorithmStandardName(Ljava/lang/String;)Ljava/lang/String;

    #@10b
    move-result-object v8

    #@10c
    .line 425
    .local v8, "specMgf1Digest":Ljava/lang/String;
    if-nez v8, :cond_6

    #@10e
    .line 426
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    #@110
    .line 427
    new-instance v16, Ljava/lang/StringBuilder;

    #@112
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    const-string/jumbo v17, "Unsupported MGF1 digest algorithm: "

    #@118
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v16

    #@11c
    invoke-virtual {v9}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    #@11f
    move-result-object v17

    #@120
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v16

    #@124
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v16

    #@128
    .line 426
    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@12b
    throw v15

    #@12c
    .line 431
    :cond_6
    :try_start_0
    invoke-static {v8}, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@12f
    move-result-wide v10

    #@130
    .line 436
    .local v10, "specMgf1EvpMdRef":J
    invoke-virtual {v6}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    #@133
    move-result v13

    #@134
    .line 437
    .local v13, "specSaltSizeBytes":I
    if-gez v13, :cond_7

    #@136
    .line 438
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    #@138
    .line 439
    new-instance v16, Ljava/lang/StringBuilder;

    #@13a
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@13d
    const-string/jumbo v17, "Salt length must be non-negative: "

    #@140
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v16

    #@144
    move-object/from16 v0, v16

    #@146
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@149
    move-result-object v16

    #@14a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14d
    move-result-object v16

    #@14e
    .line 438
    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@151
    throw v15

    #@152
    .line 432
    .end local v10    # "specMgf1EvpMdRef":J
    .end local v13    # "specSaltSizeBytes":I
    :catch_0
    move-exception v4

    #@153
    .line 433
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v15, Ljava/security/ProviderException;

    #@155
    new-instance v16, Ljava/lang/StringBuilder;

    #@157
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@15a
    const-string/jumbo v17, "Failed to obtain EVP_MD for "

    #@15d
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v16

    #@161
    move-object/from16 v0, v16

    #@163
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v16

    #@167
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16a
    move-result-object v16

    #@16b
    move-object/from16 v0, v16

    #@16d
    invoke-direct {v15, v0, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@170
    throw v15

    #@171
    .line 442
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v10    # "specMgf1EvpMdRef":J
    .restart local v13    # "specSaltSizeBytes":I
    :cond_7
    invoke-virtual {v6}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    #@174
    move-result v14

    #@175
    .line 443
    .local v14, "specTrailer":I
    const/4 v15, 0x1

    #@176
    if-eq v14, v15, :cond_8

    #@178
    .line 444
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    #@17a
    .line 445
    new-instance v16, Ljava/lang/StringBuilder;

    #@17c
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@17f
    const-string/jumbo v17, "Unsupported trailer field: "

    #@182
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v16

    #@186
    move-object/from16 v0, v16

    #@188
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v16

    #@18c
    const-string/jumbo v17, ". Only "

    #@18f
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v16

    #@193
    .line 446
    const/16 v17, 0x1

    #@195
    .line 445
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@198
    move-result-object v16

    #@199
    .line 446
    const-string/jumbo v17, " supported"

    #@19c
    .line 445
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v16

    #@1a0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a3
    move-result-object v16

    #@1a4
    .line 444
    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@1a7
    throw v15

    #@1a8
    .line 449
    :cond_8
    move-object/from16 v0, p0

    #@1aa
    iput-object v8, v0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1DigestAlgorithm:Ljava/lang/String;

    #@1ac
    .line 450
    move-object/from16 v0, p0

    #@1ae
    iput-wide v10, v0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1EvpMdRef:J

    #@1b0
    .line 451
    move-object/from16 v0, p0

    #@1b2
    iput v13, v0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->saltSizeBytes:I

    #@1b4
    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->getEVP_PKEY_CTX()J

    #@1b7
    move-result-wide v2

    #@1b8
    .line 454
    .local v2, "ctx":J
    const-wide/16 v16, 0x0

    #@1ba
    cmp-long v15, v2, v16

    #@1bc
    if-eqz v15, :cond_9

    #@1be
    .line 455
    move-object/from16 v0, p0

    #@1c0
    invoke-virtual {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->configureEVP_PKEY_CTX(J)V

    #@1c3
    .line 391
    :cond_9
    return-void
.end method
