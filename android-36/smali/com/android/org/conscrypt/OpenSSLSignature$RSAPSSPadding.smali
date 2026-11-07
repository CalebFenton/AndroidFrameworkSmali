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
.field private static final blacklist TRAILER_FIELD_BC_ID:I = 0x1


# instance fields
.field private final blacklist contentDigestAlgorithm:Ljava/lang/String;

.field private blacklist mgf1DigestAlgorithm:Ljava/lang/String;

.field private blacklist mgf1EvpMdRef:J

.field private blacklist saltSizeBytes:I


# direct methods
.method constructor blacklist <init>(JLjava/lang/String;I)V
    .registers 7
    .param p1, "contentDigestEvpMdRef"    # J
    .param p3, "contentDigestAlgorithm"    # Ljava/lang/String;
    .param p4, "saltSizeBytes"    # I

    .line 393
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;-><init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;Lcom/android/org/conscrypt/OpenSSLSignature-IA;)V

    .line 394
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->contentDigestAlgorithm:Ljava/lang/String;

    .line 395
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1DigestAlgorithm:Ljava/lang/String;

    .line 396
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1EvpMdRef:J

    .line 397
    iput p4, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->saltSizeBytes:I

    .line 398
    return-void
.end method


# virtual methods
.method protected final blacklist configureEVP_PKEY_CTX(J)V
    .registers 5
    .param p1, "ctx"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 403
    const/4 v0, 0x6

    invoke-static {p1, p2, v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_padding(JI)V

    .line 404
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1EvpMdRef:J

    invoke-static {p1, p2, v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_mgf1_md(JJ)V

    .line 405
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->saltSizeBytes:I

    invoke-static {p1, p2, v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_pss_saltlen(JI)V

    .line 406
    return-void
.end method

.method protected final whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 8

    .line 483
    :try_start_0
    const-string v0, "PSS"

    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 484
    .local v0, "result":Ljava/security/AlgorithmParameters;
    new-instance v1, Ljava/security/spec/PSSParameterSpec;

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->contentDigestAlgorithm:Ljava/lang/String;

    const-string v3, "MGF1"

    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1DigestAlgorithm:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->saltSizeBytes:I

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 491
    return-object v0

    .line 492
    .end local v0    # "result":Ljava/security/AlgorithmParameters;
    :catch_1d
    move-exception v0

    .line 493
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to create PSS AlgorithmParameters"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final whitelist test-api engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 18
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 411
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    instance-of v0, v2, Ljava/security/spec/PSSParameterSpec;

    const-string v3, " supported"

    const-string v4, ". Only "

    if-eqz v0, :cond_163

    .line 416
    move-object v5, v2

    check-cast v5, Ljava/security/spec/PSSParameterSpec;

    .line 417
    .local v5, "spec":Ljava/security/spec/PSSParameterSpec;
    nop

    .line 418
    invoke-virtual {v5}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/EvpMdRef;->getJcaDigestAlgorithmStandardName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 419
    .local v6, "specContentDigest":Ljava/lang/String;
    if-eqz v6, :cond_146

    .line 422
    iget-object v0, v1, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->contentDigestAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 427
    invoke-virtual {v5}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 428
    .local v7, "specMgfAlgorithm":Ljava/lang/String;
    const-string v0, "MGF1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5c

    .line 429
    const-string v8, "1.2.840.113549.1.1.8"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    goto :goto_5c

    .line 430
    :cond_37
    new-instance v8, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported MGF algorithm: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 435
    :cond_5c
    :goto_5c
    invoke-virtual {v5}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v8

    .line 436
    .local v8, "mgfSpec":Ljava/security/spec/AlgorithmParameterSpec;
    instance-of v0, v8, Ljava/security/spec/MGF1ParameterSpec;

    if-eqz v0, :cond_113

    .line 441
    invoke-virtual {v5}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/security/spec/MGF1ParameterSpec;

    .line 443
    .local v9, "specMgf1Spec":Ljava/security/spec/MGF1ParameterSpec;
    nop

    .line 444
    invoke-virtual {v9}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/EvpMdRef;->getJcaDigestAlgorithmStandardName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 445
    .local v10, "specMgf1Digest":Ljava/lang/String;
    if-eqz v10, :cond_f6

    .line 451
    nop

    .line 452
    :try_start_77
    invoke-static {v10}, Lcom/android/org/conscrypt/EvpMdRef;->getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_7b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_77 .. :try_end_7b} :catch_dc

    .line 455
    .local v11, "specMgf1EvpMdRef":J
    nop

    .line 457
    invoke-virtual {v5}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v0

    .line 458
    .local v0, "specSaltSizeBytes":I
    if-ltz v0, :cond_c3

    .line 463
    invoke-virtual {v5}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v13

    .line 464
    .local v13, "specTrailer":I
    const/4 v14, 0x1

    if-ne v13, v14, :cond_9d

    .line 470
    iput-object v10, v1, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1DigestAlgorithm:Ljava/lang/String;

    .line 471
    iput-wide v11, v1, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1EvpMdRef:J

    .line 472
    iput v0, v1, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->saltSizeBytes:I

    .line 474
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->getEVP_PKEY_CTX()J

    move-result-wide v3

    .line 475
    .local v3, "ctx":J
    const-wide/16 v14, 0x0

    cmp-long v14, v3, v14

    if-eqz v14, :cond_9c

    .line 476
    invoke-virtual {v1, v3, v4}, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;->configureEVP_PKEY_CTX(J)V

    .line 478
    :cond_9c
    return-void

    .line 465
    .end local v3    # "ctx":J
    :cond_9d
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported trailer field: "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 459
    .end local v13    # "specTrailer":I
    :cond_c3
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Salt length must be non-negative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    .end local v0    # "specSaltSizeBytes":I
    .end local v11    # "specMgf1EvpMdRef":J
    :catch_dc
    move-exception v0

    .line 454
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to obtain EVP_MD for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 446
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_f6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported MGF1 digest algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 447
    invoke-virtual {v9}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    .end local v9    # "specMgf1Spec":Ljava/security/spec/MGF1ParameterSpec;
    .end local v10    # "specMgf1Digest":Ljava/lang/String;
    :cond_113
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported MGF parameters: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v4, Ljava/security/spec/MGF1ParameterSpec;

    .line 439
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    .end local v7    # "specMgfAlgorithm":Ljava/lang/String;
    .end local v8    # "mgfSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_13e
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Changing content digest algorithm not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_146
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported content digest algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 421
    invoke-virtual {v5}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    .end local v5    # "spec":Ljava/security/spec/PSSParameterSpec;
    .end local v6    # "specContentDigest":Ljava/lang/String;
    :cond_163
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported parameter: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v4, Ljava/security/spec/PSSParameterSpec;

    .line 414
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
