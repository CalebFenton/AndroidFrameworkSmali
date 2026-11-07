.class public Lcom/google/android/rappor/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final blacklist HMAC_DRBG_TYPE_COHORT:B = 0x0t

.field private static final blacklist HMAC_DRBG_TYPE_PRR:B = 0x1t

.field public static final blacklist MAX_BITS:I = 0x1000

.field public static final blacklist MAX_BLOOM_HASHES:I = 0x8

.field public static final blacklist MAX_COHORTS:I = 0x80

.field public static final blacklist MIN_USER_SECRET_BYTES:I = 0x30

.field public static final blacklist VERSION:J = 0x3L


# instance fields
.field private final blacklist cohort:I

.field private final blacklist encoderIdBytes:[B

.field private final blacklist inputMask:Ljava/util/BitSet;

.field private final blacklist md5:Ljava/security/MessageDigest;

.field private final blacklist numBits:I

.field private final blacklist numBloomHashes:I

.field private final blacklist numCohorts:I

.field private final blacklist probabilityF:D

.field private final blacklist probabilityP:D

.field private final blacklist probabilityQ:D

.field private final blacklist random:Ljava/util/Random;

.field private final blacklist sha256:Ljava/security/MessageDigest;

.field private final blacklist userSecret:[B


# direct methods
.method public constructor blacklist <init>(Ljava/util/Random;Ljava/security/MessageDigest;Ljava/security/MessageDigest;[BLjava/lang/String;IDDDII)V
    .registers 40
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "md5"    # Ljava/security/MessageDigest;
    .param p3, "sha256"    # Ljava/security/MessageDigest;
    .param p4, "userSecret"    # [B
    .param p5, "encoderId"    # Ljava/lang/String;
    .param p6, "numBits"    # I
    .param p7, "probabilityF"    # D
    .param p9, "probabilityP"    # D
    .param p11, "probabilityQ"    # D
    .param p13, "numCohorts"    # I
    .param p14, "numBloomHashes"    # I

    .line 279
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    move/from16 v11, p13

    move/from16 v12, p14

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 280
    if-eqz v3, :cond_1c

    .line 281
    iput-object v3, v1, Lcom/google/android/rappor/Encoder;->md5:Ljava/security/MessageDigest;

    goto :goto_25

    .line 284
    :cond_1c
    :try_start_1c
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/rappor/Encoder;->md5:Ljava/security/MessageDigest;
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1c .. :try_end_24} :catch_11c

    .line 289
    nop

    .line 291
    :goto_25
    iget-object v0, v1, Lcom/google/android/rappor/Encoder;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 293
    if-eqz v4, :cond_2f

    .line 294
    iput-object v4, v1, Lcom/google/android/rappor/Encoder;->sha256:Ljava/security/MessageDigest;

    goto :goto_38

    .line 297
    :cond_2f
    :try_start_2f
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/rappor/Encoder;->sha256:Ljava/security/MessageDigest;
    :try_end_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2f .. :try_end_37} :catch_113

    .line 302
    nop

    .line 304
    :goto_38
    iget-object v0, v1, Lcom/google/android/rappor/Encoder;->sha256:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 306
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v13, p5

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/rappor/Encoder;->encoderIdBytes:[B

    .line 308
    if-eqz v2, :cond_4c

    .line 309
    iput-object v2, v1, Lcom/google/android/rappor/Encoder;->random:Ljava/util/Random;

    goto :goto_53

    .line 311
    :cond_4c
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, v1, Lcom/google/android/rappor/Encoder;->random:Ljava/util/Random;

    .line 319
    :goto_53
    array-length v0, v5

    const/16 v14, 0x30

    const/4 v15, 0x1

    if-lt v0, v14, :cond_5b

    move v0, v15

    goto :goto_5c

    :cond_5b
    const/4 v0, 0x0

    :goto_5c
    const-string v14, "userSecret must be at least 48 bytes of high-quality entropy."

    invoke-static {v0, v14}, Lcom/google/android/rappor/Encoder;->checkArgument(ZLjava/lang/Object;)V

    .line 323
    iput-object v5, v1, Lcom/google/android/rappor/Encoder;->userSecret:[B

    .line 325
    const-wide/16 v17, 0x0

    cmpl-double v0, p7, v17

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    if-ltz v0, :cond_71

    cmpg-double v0, p7, v19

    if-gtz v0, :cond_71

    move v0, v15

    goto :goto_72

    :cond_71
    const/4 v0, 0x0

    :goto_72
    const-string v14, "probabilityF must be on range [0.0, 1.0]"

    invoke-static {v0, v14}, Lcom/google/android/rappor/Encoder;->checkArgument(ZLjava/lang/Object;)V

    .line 327
    const-wide/high16 v21, 0x4060000000000000L    # 128.0

    mul-double v23, p7, v21

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double v2, v2, v21

    iput-wide v2, v1, Lcom/google/android/rappor/Encoder;->probabilityF:D

    .line 329
    cmpl-double v0, v7, v17

    if-ltz v0, :cond_8e

    cmpg-double v0, v7, v19

    if-gtz v0, :cond_8e

    move v0, v15

    goto :goto_8f

    :cond_8e
    const/4 v0, 0x0

    :goto_8f
    const-string v2, "probabilityP must be on range [0.0, 1.0]"

    invoke-static {v0, v2}, Lcom/google/android/rappor/Encoder;->checkArgument(ZLjava/lang/Object;)V

    .line 331
    iput-wide v7, v1, Lcom/google/android/rappor/Encoder;->probabilityP:D

    .line 333
    cmpl-double v0, v9, v17

    if-ltz v0, :cond_a0

    cmpg-double v0, v9, v19

    if-gtz v0, :cond_a0

    move v0, v15

    goto :goto_a1

    :cond_a0
    const/4 v0, 0x0

    :goto_a1
    const-string v2, "probabilityQ must be on range [0.0, 1.0]"

    invoke-static {v0, v2}, Lcom/google/android/rappor/Encoder;->checkArgument(ZLjava/lang/Object;)V

    .line 335
    iput-wide v9, v1, Lcom/google/android/rappor/Encoder;->probabilityQ:D

    .line 337
    if-lt v6, v15, :cond_b0

    const/16 v0, 0x1000

    if-gt v6, v0, :cond_b0

    move v0, v15

    goto :goto_b1

    :cond_b0
    const/4 v0, 0x0

    :goto_b1
    const-string v2, "numBits must be on range [1, 4096]."

    invoke-static {v0, v2}, Lcom/google/android/rappor/Encoder;->checkArgument(ZLjava/lang/Object;)V

    .line 339
    iput v6, v1, Lcom/google/android/rappor/Encoder;->numBits:I

    .line 341
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v6}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, v1, Lcom/google/android/rappor/Encoder;->inputMask:Ljava/util/BitSet;

    .line 342
    iget-object v0, v1, Lcom/google/android/rappor/Encoder;->inputMask:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v6, v15}, Ljava/util/BitSet;->set(IIZ)V

    .line 344
    if-lt v12, v15, :cond_cb

    if-gt v12, v6, :cond_cb

    move v2, v15

    goto :goto_cc

    :cond_cb
    const/4 v2, 0x0

    :goto_cc
    const-string v0, "numBloomHashes must be on range [1, numBits)."

    invoke-static {v2, v0}, Lcom/google/android/rappor/Encoder;->checkArgument(ZLjava/lang/Object;)V

    .line 347
    iput v12, v1, Lcom/google/android/rappor/Encoder;->numBloomHashes:I

    .line 349
    const/16 v0, 0x80

    if-lt v11, v15, :cond_db

    if-gt v11, v0, :cond_db

    move v2, v15

    goto :goto_dc

    :cond_db
    const/4 v2, 0x0

    :goto_dc
    const-string v3, "numCohorts must be on range [1, 128]."

    invoke-static {v2, v3}, Lcom/google/android/rappor/Encoder;->checkArgument(ZLjava/lang/Object;)V

    .line 361
    add-int/lit8 v2, v11, -0x1

    and-int/2addr v2, v11

    if-nez v2, :cond_e8

    move v2, v15

    goto :goto_e9

    :cond_e8
    const/4 v2, 0x0

    .line 362
    .local v2, "numCohortsIsPowerOfTwo":Z
    :goto_e9
    const-string v3, "numCohorts must be a power of 2."

    invoke-static {v2, v3}, Lcom/google/android/rappor/Encoder;->checkArgument(ZLjava/lang/Object;)V

    .line 363
    iput v11, v1, Lcom/google/android/rappor/Encoder;->numCohorts:I

    .line 366
    new-instance v3, Lcom/google/android/rappor/HmacDrbg;

    new-array v14, v15, [B

    const/16 v16, 0x0

    aput-byte v16, v14, v16

    invoke-direct {v3, v5, v14}, Lcom/google/android/rappor/HmacDrbg;-><init>([B[B)V

    .line 367
    .local v3, "cohortDrbg":Lcom/google/android/rappor/HmacDrbg;
    const/4 v14, 0x4

    invoke-virtual {v3, v14}, Lcom/google/android/rappor/HmacDrbg;->nextBytes(I)[B

    move-result-object v14

    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 368
    .local v14, "cohortDrbgBytes":Ljava/nio/ByteBuffer;
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    rem-int/2addr v15, v0

    .line 369
    .local v15, "cohortMasterAssignment":I
    add-int/lit8 v0, v11, -0x1

    and-int/2addr v0, v15

    iput v0, v1, Lcom/google/android/rappor/Encoder;->cohort:I

    .line 370
    return-void

    .line 298
    .end local v2    # "numCohortsIsPowerOfTwo":Z
    .end local v3    # "cohortDrbg":Lcom/google/android/rappor/HmacDrbg;
    .end local v14    # "cohortDrbgBytes":Ljava/nio/ByteBuffer;
    .end local v15    # "cohortMasterAssignment":I
    :catch_113
    move-exception v0

    move-object/from16 v13, p5

    .line 301
    .local v0, "impossible":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 285
    .end local v0    # "impossible":Ljava/security/NoSuchAlgorithmException;
    :catch_11c
    move-exception v0

    move-object/from16 v13, p5

    .line 288
    .restart local v0    # "impossible":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public constructor blacklist <init>([BLjava/lang/String;IDDDII)V
    .registers 27
    .param p1, "userSecret"    # [B
    .param p2, "encoderId"    # Ljava/lang/String;
    .param p3, "numBits"    # I
    .param p4, "probabilityF"    # D
    .param p6, "probabilityP"    # D
    .param p8, "probabilityQ"    # D
    .param p10, "numCohorts"    # I
    .param p11, "numBloomHashes"    # I

    .line 222
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-direct/range {v0 .. v14}, Lcom/google/android/rappor/Encoder;-><init>(Ljava/util/Random;Ljava/security/MessageDigest;Ljava/security/MessageDigest;[BLjava/lang/String;IDDDII)V

    .line 234
    return-void
.end method

.method private static blacklist checkArgument(ZLjava/lang/Object;)V
    .registers 4
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/Object;

    .line 602
    if-eqz p0, :cond_3

    .line 605
    return-void

    .line 603
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist computeInstantaneousRandomizedResponse(Ljava/util/BitSet;)Ljava/util/BitSet;
    .registers 10
    .param p1, "bits"    # Ljava/util/BitSet;

    .line 581
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 582
    .local v0, "masked":Ljava/util/BitSet;
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 583
    iget-object v1, p0, Lcom/google/android/rappor/Encoder;->inputMask:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 584
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    const-string v2, "Input bits had bits set past Encoder\'s numBits limit."

    invoke-static {v1, v2}, Lcom/google/android/rappor/Encoder;->checkArgument(ZLjava/lang/Object;)V

    .line 586
    iget-wide v1, p0, Lcom/google/android/rappor/Encoder;->probabilityP:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_27

    iget-wide v1, p0, Lcom/google/android/rappor/Encoder;->probabilityQ:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_27

    .line 587
    return-object p1

    .line 590
    :cond_27
    new-instance v1, Ljava/util/BitSet;

    iget v2, p0, Lcom/google/android/rappor/Encoder;->numBits:I

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 591
    .local v1, "response":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    iget v3, p0, Lcom/google/android/rappor/Encoder;->numBits:I

    if-ge v2, v3, :cond_52

    .line 592
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    .line 593
    .local v3, "bit":Z
    if-eqz v3, :cond_3c

    iget-wide v4, p0, Lcom/google/android/rappor/Encoder;->probabilityQ:D

    goto :goto_3e

    :cond_3c
    iget-wide v4, p0, Lcom/google/android/rappor/Encoder;->probabilityP:D

    .line 594
    .local v4, "probability":D
    :goto_3e
    iget-object v6, p0, Lcom/google/android/rappor/Encoder;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    float-to-double v6, v6

    cmpg-double v6, v6, v4

    if-gez v6, :cond_4b

    const/4 v6, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v6, 0x0

    .line 595
    .local v6, "responseBit":Z
    :goto_4c
    invoke-virtual {v1, v2, v6}, Ljava/util/BitSet;->set(IZ)V

    .line 591
    .end local v3    # "bit":Z
    .end local v4    # "probability":D
    .end local v6    # "responseBit":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 597
    .end local v2    # "i":I
    :cond_52
    return-object v1
.end method

.method private blacklist computePermanentRandomizedResponse(Ljava/util/BitSet;)Ljava/util/BitSet;
    .registers 15
    .param p1, "bits"    # Ljava/util/BitSet;

    .line 519
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 520
    .local v0, "masked":Ljava/util/BitSet;
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 521
    iget-object v1, p0, Lcom/google/android/rappor/Encoder;->inputMask:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 522
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    const-string v2, "Input bits had bits set past Encoder\'s numBits limit."

    invoke-static {v1, v2}, Lcom/google/android/rappor/Encoder;->checkArgument(ZLjava/lang/Object;)V

    .line 524
    iget-wide v1, p0, Lcom/google/android/rappor/Encoder;->probabilityF:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1f

    .line 525
    return-object p1

    .line 533
    :cond_1f
    monitor-enter p0

    .line 534
    :try_start_20
    iget-object v1, p0, Lcom/google/android/rappor/Encoder;->sha256:Ljava/security/MessageDigest;

    .line 535
    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0x14

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 536
    .local v1, "personalizationStringLength":I
    new-array v3, v1, [B

    .line 537
    .local v3, "personalizationString":[B
    const/4 v4, 0x0

    aput-byte v2, v3, v4

    .line 538
    iget-object v5, p0, Lcom/google/android/rappor/Encoder;->sha256:Ljava/security/MessageDigest;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    .line 539
    iget-object v5, p0, Lcom/google/android/rappor/Encoder;->sha256:Ljava/security/MessageDigest;

    iget-object v6, p0, Lcom/google/android/rappor/Encoder;->encoderIdBytes:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 540
    iget-object v5, p0, Lcom/google/android/rappor/Encoder;->sha256:Ljava/security/MessageDigest;

    new-array v6, v2, [B

    aput-byte v4, v6, v4

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 541
    iget-object v5, p0, Lcom/google/android/rappor/Encoder;->sha256:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 542
    iget-object v5, p0, Lcom/google/android/rappor/Encoder;->sha256:Ljava/security/MessageDigest;

    invoke-virtual {v5, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 543
    .local v5, "digest":[B
    array-length v6, v3

    sub-int/2addr v6, v2

    invoke-static {v5, v4, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    .end local v1    # "personalizationStringLength":I
    .end local v5    # "digest":[B
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_20 .. :try_end_5d} :catchall_ae

    .line 546
    new-instance v1, Lcom/google/android/rappor/HmacDrbg;

    iget-object v5, p0, Lcom/google/android/rappor/Encoder;->userSecret:[B

    invoke-direct {v1, v5, v3}, Lcom/google/android/rappor/HmacDrbg;-><init>([B[B)V

    .line 547
    .local v1, "drbg":Lcom/google/android/rappor/HmacDrbg;
    iget v5, p0, Lcom/google/android/rappor/Encoder;->numBits:I

    invoke-virtual {v1, v5}, Lcom/google/android/rappor/HmacDrbg;->nextBytes(I)[B

    move-result-object v5

    .line 550
    .local v5, "pseudorandomStream":[B
    iget v6, p0, Lcom/google/android/rappor/Encoder;->numBits:I

    array-length v7, v5

    if-gt v6, v7, :cond_71

    move v6, v2

    goto :goto_72

    :cond_71
    move v6, v4

    :goto_72
    invoke-static {v6}, Lcom/google/android/rappor/Encoder;->verify(Z)V

    .line 552
    iget-wide v6, p0, Lcom/google/android/rappor/Encoder;->probabilityF:D

    const-wide/high16 v8, 0x4060000000000000L    # 128.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    .line 553
    .local v6, "probabilityFTimes128":I
    new-instance v7, Ljava/util/BitSet;

    iget v8, p0, Lcom/google/android/rappor/Encoder;->numBits:I

    invoke-direct {v7, v8}, Ljava/util/BitSet;-><init>(I)V

    .line 554
    .local v7, "result":Ljava/util/BitSet;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_87
    iget v9, p0, Lcom/google/android/rappor/Encoder;->numBits:I

    if-ge v8, v9, :cond_ad

    .line 557
    aget-byte v9, v5, v8

    and-int/lit16 v9, v9, 0xff

    .line 560
    .local v9, "pseudorandomByte":I
    shr-int/lit8 v10, v9, 0x1

    .line 561
    .local v10, "uniform0to127":I
    if-ge v10, v6, :cond_95

    move v11, v2

    goto :goto_96

    :cond_95
    move v11, v4

    .line 563
    .local v11, "shouldUseNoise":Z
    :goto_96
    if-eqz v11, :cond_a3

    .line 565
    and-int/lit8 v12, v9, 0x1

    if-lez v12, :cond_9e

    move v12, v2

    goto :goto_9f

    :cond_9e
    move v12, v4

    :goto_9f
    invoke-virtual {v7, v8, v12}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_aa

    .line 567
    :cond_a3
    invoke-virtual {p1, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    invoke-virtual {v7, v8, v12}, Ljava/util/BitSet;->set(IZ)V

    .line 554
    .end local v9    # "pseudorandomByte":I
    .end local v10    # "uniform0to127":I
    .end local v11    # "shouldUseNoise":Z
    :goto_aa
    add-int/lit8 v8, v8, 0x1

    goto :goto_87

    .line 570
    .end local v8    # "i":I
    :cond_ad
    return-object v7

    .line 544
    .end local v1    # "drbg":Lcom/google/android/rappor/HmacDrbg;
    .end local v3    # "personalizationString":[B
    .end local v5    # "pseudorandomStream":[B
    .end local v6    # "probabilityFTimes128":I
    .end local v7    # "result":Ljava/util/BitSet;
    :catchall_ae
    move-exception v1

    :try_start_af
    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw v1
.end method

.method private blacklist encodeBits(Ljava/util/BitSet;)[B
    .registers 9
    .param p1, "bits"    # Ljava/util/BitSet;

    .line 491
    invoke-direct {p0, p1}, Lcom/google/android/rappor/Encoder;->computePermanentRandomizedResponse(Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v0

    .line 492
    .local v0, "permanentRandomizedResponse":Ljava/util/BitSet;
    invoke-direct {p0, v0}, Lcom/google/android/rappor/Encoder;->computeInstantaneousRandomizedResponse(Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v1

    .line 497
    .local v1, "encodedBitSet":Ljava/util/BitSet;
    invoke-virtual {v1}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v2

    .line 498
    .local v2, "encodedBytes":[B
    iget v3, p0, Lcom/google/android/rappor/Encoder;->numBits:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    .line 501
    .local v3, "output":[B
    array-length v4, v2

    array-length v5, v3

    const/4 v6, 0x0

    if-gt v4, v5, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    move v4, v6

    :goto_1c
    invoke-static {v4}, Lcom/google/android/rappor/Encoder;->verify(Z)V

    .line 502
    array-length v4, v2

    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    return-object v3
.end method

.method private static blacklist verify(Z)V
    .registers 2
    .param p0, "expression"    # Z

    .line 608
    if-eqz p0, :cond_3

    .line 611
    return-void

    .line 609
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public blacklist encodeBits([B)[B
    .registers 3
    .param p1, "bits"    # [B

    .line 482
    invoke-static {p1}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/rappor/Encoder;->encodeBits(Ljava/util/BitSet;)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist encodeBoolean(Z)[B
    .registers 4
    .param p1, "bool"    # Z

    .line 415
    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Lcom/google/android/rappor/Encoder;->numBits:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 416
    .local v0, "input":Ljava/util/BitSet;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 417
    invoke-direct {p0, v0}, Lcom/google/android/rappor/Encoder;->encodeBits(Ljava/util/BitSet;)[B

    move-result-object v1

    return-object v1
.end method

.method public blacklist encodeOrdinal(I)[B
    .registers 5
    .param p1, "ordinal"    # I

    .line 429
    const/4 v0, 0x1

    if-ltz p1, :cond_9

    iget v1, p0, Lcom/google/android/rappor/Encoder;->numBits:I

    if-ge p1, v1, :cond_9

    move v1, v0

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "Ordinal value must be in range [0, numBits)."

    invoke-static {v1, v2}, Lcom/google/android/rappor/Encoder;->checkArgument(ZLjava/lang/Object;)V

    .line 431
    new-instance v1, Ljava/util/BitSet;

    iget v2, p0, Lcom/google/android/rappor/Encoder;->numBits:I

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 432
    .local v1, "input":Ljava/util/BitSet;
    invoke-virtual {v1, p1, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 433
    invoke-direct {p0, v1}, Lcom/google/android/rappor/Encoder;->encodeBits(Ljava/util/BitSet;)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist encodeString(Ljava/lang/String;)[B
    .registers 10
    .param p1, "string"    # Ljava/lang/String;

    .line 446
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 447
    .local v0, "stringInUtf8":[B
    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    .line 448
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/rappor/Encoder;->cohort:I

    .line 449
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 450
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 451
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 454
    .local v1, "message":[B
    monitor-enter p0

    .line 455
    :try_start_1c
    iget-object v2, p0, Lcom/google/android/rappor/Encoder;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 456
    iget-object v2, p0, Lcom/google/android/rappor/Encoder;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 457
    .local v2, "digest":[B
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_6b

    .line 461
    array-length v3, v2

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_31

    move v3, v6

    goto :goto_32

    :cond_31
    move v3, v5

    :goto_32
    invoke-static {v3}, Lcom/google/android/rappor/Encoder;->verify(Z)V

    .line 462
    iget v3, p0, Lcom/google/android/rappor/Encoder;->numBloomHashes:I

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    if-gt v3, v4, :cond_3d

    move v5, v6

    :cond_3d
    invoke-static {v5}, Lcom/google/android/rappor/Encoder;->verify(Z)V

    .line 464
    new-instance v3, Ljava/util/BitSet;

    iget v4, p0, Lcom/google/android/rappor/Encoder;->numBits:I

    invoke-direct {v3, v4}, Ljava/util/BitSet;-><init>(I)V

    .line 465
    .local v3, "input":Ljava/util/BitSet;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_48
    iget v5, p0, Lcom/google/android/rappor/Encoder;->numBloomHashes:I

    if-ge v4, v5, :cond_66

    .line 468
    mul-int/lit8 v5, v4, 0x2

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit16 v5, v5, 0x100

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v6

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    .line 469
    .local v5, "digestWord":I
    iget v7, p0, Lcom/google/android/rappor/Encoder;->numBits:I

    rem-int v7, v5, v7

    .line 470
    .local v7, "chosenBit":I
    invoke-virtual {v3, v7, v6}, Ljava/util/BitSet;->set(IZ)V

    .line 465
    .end local v5    # "digestWord":I
    .end local v7    # "chosenBit":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 473
    .end local v4    # "i":I
    :cond_66
    invoke-direct {p0, v3}, Lcom/google/android/rappor/Encoder;->encodeBits(Ljava/util/BitSet;)[B

    move-result-object v4

    return-object v4

    .line 457
    .end local v2    # "digest":[B
    .end local v3    # "input":Ljava/util/BitSet;
    :catchall_6b
    move-exception v2

    :try_start_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v2
.end method

.method public blacklist getCohort()I
    .registers 2

    .line 397
    iget v0, p0, Lcom/google/android/rappor/Encoder;->cohort:I

    return v0
.end method

.method public blacklist getEncoderId()Ljava/lang/String;
    .registers 4

    .line 404
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/rappor/Encoder;->encoderIdBytes:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public blacklist getNumBits()I
    .registers 2

    .line 385
    iget v0, p0, Lcom/google/android/rappor/Encoder;->numBits:I

    return v0
.end method

.method public blacklist getNumBloomHashes()I
    .registers 2

    .line 389
    iget v0, p0, Lcom/google/android/rappor/Encoder;->numBloomHashes:I

    return v0
.end method

.method public blacklist getNumCohorts()I
    .registers 2

    .line 393
    iget v0, p0, Lcom/google/android/rappor/Encoder;->numCohorts:I

    return v0
.end method

.method public blacklist getProbabilityF()D
    .registers 3

    .line 373
    iget-wide v0, p0, Lcom/google/android/rappor/Encoder;->probabilityF:D

    return-wide v0
.end method

.method public blacklist getProbabilityP()D
    .registers 3

    .line 377
    iget-wide v0, p0, Lcom/google/android/rappor/Encoder;->probabilityP:D

    return-wide v0
.end method

.method public blacklist getProbabilityQ()D
    .registers 3

    .line 381
    iget-wide v0, p0, Lcom/google/android/rappor/Encoder;->probabilityQ:D

    return-wide v0
.end method
