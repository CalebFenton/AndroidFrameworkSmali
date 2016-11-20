.class public Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;
    }
.end annotation


# static fields
.field private static final APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field private static final APK_SIG_BLOCK_MAGIC_HI:J = 0x3234206b636f6c42L

.field private static final APK_SIG_BLOCK_MAGIC_LO:J = 0x20676953204b5041L

.field private static final APK_SIG_BLOCK_MIN_SIZE:I = 0x20

.field private static final CHUNK_SIZE_BYTES:I = 0x100000

.field private static final CONTENT_DIGEST_CHUNKED_SHA256:I = 0x1

.field private static final CONTENT_DIGEST_CHUNKED_SHA512:I = 0x2

.field public static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID:I = 0x2

.field public static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_NAME:Ljava/lang/String; = "X-Android-APK-Signed"

.field private static final SIGNATURE_DSA_WITH_SHA256:I = 0x301

.field private static final SIGNATURE_ECDSA_WITH_SHA256:I = 0x201

.field private static final SIGNATURE_ECDSA_WITH_SHA512:I = 0x202

.field private static final SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA256:I = 0x103

.field private static final SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA512:I = 0x104

.field private static final SIGNATURE_RSA_PSS_WITH_SHA256:I = 0x101

.field private static final SIGNATURE_RSA_PSS_WITH_SHA512:I = 0x102


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 954
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 955
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "ByteBuffer byte order must be little endian"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 953
    :cond_0
    return-void
.end method

.method private static compareContentDigestAlgorithm(II)I
    .locals 3
    .param p0, "digestAlgorithm1"    # I
    .param p1, "digestAlgorithm2"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 635
    packed-switch p0, :pswitch_data_0

    #@4
    .line 657
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Unknown digestAlgorithm1: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 637
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    #@21
    .line 643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@23
    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "Unknown digestAlgorithm2: "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 643
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 639
    :pswitch_1
    return v0

    #@3c
    .line 641
    :pswitch_2
    const/4 v0, -0x1

    #@3d
    return v0

    #@3e
    .line 647
    :pswitch_3
    packed-switch p1, :pswitch_data_2

    #@41
    .line 653
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@43
    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v2, "Unknown digestAlgorithm2: "

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    .line 653
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v0

    #@5b
    .line 649
    :pswitch_4
    const/4 v0, 0x1

    #@5c
    return v0

    #@5d
    .line 651
    :pswitch_5
    return v0

    #@5e
    .line 635
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    #@66
    .line 637
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    #@6e
    .line 647
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static compareSignatureAlgorithm(II)I
    .locals 3
    .param p0, "sigAlgorithm1"    # I
    .param p1, "sigAlgorithm2"    # I

    #@0
    .prologue
    .line 629
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    #@3
    move-result v0

    #@4
    .line 630
    .local v0, "digestAlgorithm1":I
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    #@7
    move-result v1

    #@8
    .line 631
    .local v1, "digestAlgorithm2":I
    invoke-static {v0, v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->compareContentDigestAlgorithm(II)I

    #@b
    move-result v2

    #@c
    return v2
.end method

.method private static computeContentDigests([I[Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;)[[B
    .locals 36
    .param p0, "digestAlgorithms"    # [I
    .param p1, "contents"    # [Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    #@0
    .prologue
    .line 463
    const-wide/16 v30, 0x0

    #@2
    .line 464
    .local v30, "totalChunkCountLong":J
    const/16 v29, 0x0

    #@4
    move-object/from16 v0, p1

    #@6
    array-length v0, v0

    #@7
    move/from16 v32, v0

    #@9
    :goto_0
    move/from16 v0, v29

    #@b
    move/from16 v1, v32

    #@d
    if-ge v0, v1, :cond_0

    #@f
    aget-object v17, p1, v29

    #@11
    .line 465
    .local v17, "input":Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;
    invoke-interface/range {v17 .. v17}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;->size()J

    #@14
    move-result-wide v34

    #@15
    invoke-static/range {v34 .. v35}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getChunkCount(J)J

    #@18
    move-result-wide v34

    #@19
    add-long v30, v30, v34

    #@1b
    .line 464
    add-int/lit8 v29, v29, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 467
    .end local v17    # "input":Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;
    :cond_0
    const-wide/32 v32, 0x1fffff

    #@21
    cmp-long v29, v30, v32

    #@23
    if-ltz v29, :cond_1

    #@25
    .line 468
    new-instance v29, Ljava/security/DigestException;

    #@27
    new-instance v32, Ljava/lang/StringBuilder;

    #@29
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v33, "Too many chunks: "

    #@2f
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v32

    #@33
    move-object/from16 v0, v32

    #@35
    move-wide/from16 v1, v30

    #@37
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v32

    #@3b
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v32

    #@3f
    move-object/from16 v0, v29

    #@41
    move-object/from16 v1, v32

    #@43
    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    #@46
    throw v29

    #@47
    .line 470
    :cond_1
    move-wide/from16 v0, v30

    #@49
    long-to-int v0, v0

    #@4a
    move/from16 v28, v0

    #@4c
    .line 472
    .local v28, "totalChunkCount":I
    move-object/from16 v0, p0

    #@4e
    array-length v0, v0

    #@4f
    move/from16 v29, v0

    #@51
    move/from16 v0, v29

    #@53
    new-array v12, v0, [[B

    #@55
    .line 473
    .local v12, "digestsOfChunks":[[B
    const/16 v16, 0x0

    #@57
    .local v16, "i":I
    :goto_1
    move-object/from16 v0, p0

    #@59
    array-length v0, v0

    #@5a
    move/from16 v29, v0

    #@5c
    move/from16 v0, v16

    #@5e
    move/from16 v1, v29

    #@60
    if-ge v0, v1, :cond_2

    #@62
    .line 474
    aget v10, p0, v16

    #@64
    .line 475
    .local v10, "digestAlgorithm":I
    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmOutputSizeBytes(I)I

    #@67
    move-result v11

    #@68
    .line 477
    .local v11, "digestOutputSizeBytes":I
    mul-int v29, v28, v11

    #@6a
    add-int/lit8 v29, v29, 0x5

    #@6c
    move/from16 v0, v29

    #@6e
    new-array v8, v0, [B

    #@70
    .line 478
    .local v8, "concatenationOfChunkCountAndChunkDigests":[B
    const/16 v29, 0x5a

    #@72
    const/16 v32, 0x0

    #@74
    aput-byte v29, v8, v32

    #@76
    .line 482
    const/16 v29, 0x1

    #@78
    .line 479
    move/from16 v0, v28

    #@7a
    move/from16 v1, v29

    #@7c
    invoke-static {v0, v8, v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->setUnsignedInt32LittleEndian(I[BI)V

    #@7f
    .line 483
    aput-object v8, v12, v16

    #@81
    .line 473
    add-int/lit8 v16, v16, 0x1

    #@83
    goto :goto_1

    #@84
    .line 486
    .end local v8    # "concatenationOfChunkCountAndChunkDigests":[B
    .end local v10    # "digestAlgorithm":I
    .end local v11    # "digestOutputSizeBytes":I
    :cond_2
    const/16 v29, 0x5

    #@86
    move/from16 v0, v29

    #@88
    new-array v5, v0, [B

    #@8a
    .line 487
    .local v5, "chunkContentPrefix":[B
    const/16 v29, -0x5b

    #@8c
    const/16 v32, 0x0

    #@8e
    aput-byte v29, v5, v32

    #@90
    .line 488
    const/4 v6, 0x0

    #@91
    .line 489
    .local v6, "chunkIndex":I
    move-object/from16 v0, p0

    #@93
    array-length v0, v0

    #@94
    move/from16 v29, v0

    #@96
    move/from16 v0, v29

    #@98
    new-array v0, v0, [Ljava/security/MessageDigest;

    #@9a
    move-object/from16 v25, v0

    #@9c
    .line 490
    .local v25, "mds":[Ljava/security/MessageDigest;
    const/16 v16, 0x0

    #@9e
    :goto_2
    move-object/from16 v0, p0

    #@a0
    array-length v0, v0

    #@a1
    move/from16 v29, v0

    #@a3
    move/from16 v0, v16

    #@a5
    move/from16 v1, v29

    #@a7
    if-ge v0, v1, :cond_3

    #@a9
    .line 492
    aget v29, p0, v16

    #@ab
    invoke-static/range {v29 .. v29}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    #@ae
    move-result-object v19

    #@af
    .line 494
    .local v19, "jcaAlgorithmName":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@b2
    move-result-object v29

    #@b3
    aput-object v29, v25, v16
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@b5
    .line 490
    add-int/lit8 v16, v16, 0x1

    #@b7
    goto :goto_2

    #@b8
    .line 495
    :catch_0
    move-exception v14

    #@b9
    .line 496
    .local v14, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v29, Ljava/lang/RuntimeException;

    #@bb
    new-instance v32, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    move-object/from16 v0, v32

    #@c2
    move-object/from16 v1, v19

    #@c4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v32

    #@c8
    const-string/jumbo v33, " digest not supported"

    #@cb
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v32

    #@cf
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v32

    #@d3
    move-object/from16 v0, v29

    #@d5
    move-object/from16 v1, v32

    #@d7
    invoke-direct {v0, v1, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@da
    throw v29

    #@db
    .line 502
    .end local v14    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v19    # "jcaAlgorithmName":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    #@dc
    .line 503
    .local v9, "dataSourceIndex":I
    const/16 v29, 0x0

    #@de
    move-object/from16 v0, p1

    #@e0
    array-length v0, v0

    #@e1
    move/from16 v32, v0

    #@e3
    :goto_3
    move/from16 v0, v29

    #@e5
    move/from16 v1, v32

    #@e7
    if-ge v0, v1, :cond_8

    #@e9
    aget-object v17, p1, v29

    #@eb
    .line 504
    .restart local v17    # "input":Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;
    const-wide/16 v20, 0x0

    #@ed
    .line 505
    .local v20, "inputOffset":J
    invoke-interface/range {v17 .. v17}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;->size()J

    #@f0
    move-result-wide v22

    #@f1
    .line 506
    .local v22, "inputRemaining":J
    :goto_4
    const-wide/16 v34, 0x0

    #@f3
    cmp-long v33, v22, v34

    #@f5
    if-lez v33, :cond_7

    #@f7
    .line 507
    const-wide/32 v34, 0x100000

    #@fa
    move-wide/from16 v0, v22

    #@fc
    move-wide/from16 v2, v34

    #@fe
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@101
    move-result-wide v34

    #@102
    move-wide/from16 v0, v34

    #@104
    long-to-int v7, v0

    #@105
    .line 508
    .local v7, "chunkSize":I
    const/16 v33, 0x1

    #@107
    move/from16 v0, v33

    #@109
    invoke-static {v7, v5, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->setUnsignedInt32LittleEndian(I[BI)V

    #@10c
    .line 509
    const/16 v16, 0x0

    #@10e
    :goto_5
    move-object/from16 v0, v25

    #@110
    array-length v0, v0

    #@111
    move/from16 v33, v0

    #@113
    move/from16 v0, v16

    #@115
    move/from16 v1, v33

    #@117
    if-ge v0, v1, :cond_4

    #@119
    .line 510
    aget-object v33, v25, v16

    #@11b
    move-object/from16 v0, v33

    #@11d
    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    #@120
    .line 509
    add-int/lit8 v16, v16, 0x1

    #@122
    goto :goto_5

    #@123
    .line 513
    :cond_4
    :try_start_1
    move-object/from16 v0, v17

    #@125
    move-object/from16 v1, v25

    #@127
    move-wide/from16 v2, v20

    #@129
    invoke-interface {v0, v1, v2, v3, v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;->feedIntoMessageDigests([Ljava/security/MessageDigest;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@12c
    .line 520
    const/16 v16, 0x0

    #@12e
    :goto_6
    move-object/from16 v0, p0

    #@130
    array-length v0, v0

    #@131
    move/from16 v33, v0

    #@133
    move/from16 v0, v16

    #@135
    move/from16 v1, v33

    #@137
    if-ge v0, v1, :cond_6

    #@139
    .line 521
    aget v10, p0, v16

    #@13b
    .line 522
    .restart local v10    # "digestAlgorithm":I
    aget-object v8, v12, v16

    #@13d
    .line 524
    .restart local v8    # "concatenationOfChunkCountAndChunkDigests":[B
    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmOutputSizeBytes(I)I

    #@140
    move-result v15

    #@141
    .line 525
    .local v15, "expectedDigestSizeBytes":I
    aget-object v24, v25, v16

    #@143
    .line 529
    .local v24, "md":Ljava/security/MessageDigest;
    mul-int v33, v6, v15

    #@145
    add-int/lit8 v33, v33, 0x5

    #@147
    .line 527
    move-object/from16 v0, v24

    #@149
    move/from16 v1, v33

    #@14b
    invoke-virtual {v0, v8, v1, v15}, Ljava/security/MessageDigest;->digest([BII)I

    #@14e
    move-result v4

    #@14f
    .line 531
    .local v4, "actualDigestSizeBytes":I
    if-eq v4, v15, :cond_5

    #@151
    .line 532
    new-instance v29, Ljava/lang/RuntimeException;

    #@153
    .line 533
    new-instance v32, Ljava/lang/StringBuilder;

    #@155
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@158
    const-string/jumbo v33, "Unexpected output size of "

    #@15b
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v32

    #@15f
    invoke-virtual/range {v24 .. v24}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    #@162
    move-result-object v33

    #@163
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v32

    #@167
    const-string/jumbo v33, " digest: "

    #@16a
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v32

    #@16e
    move-object/from16 v0, v32

    #@170
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@173
    move-result-object v32

    #@174
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@177
    move-result-object v32

    #@178
    .line 532
    move-object/from16 v0, v29

    #@17a
    move-object/from16 v1, v32

    #@17c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@17f
    throw v29

    #@180
    .line 514
    .end local v4    # "actualDigestSizeBytes":I
    .end local v8    # "concatenationOfChunkCountAndChunkDigests":[B
    .end local v10    # "digestAlgorithm":I
    .end local v15    # "expectedDigestSizeBytes":I
    .end local v24    # "md":Ljava/security/MessageDigest;
    :catch_1
    move-exception v13

    #@181
    .line 515
    .local v13, "e":Ljava/io/IOException;
    new-instance v29, Ljava/security/DigestException;

    #@183
    .line 516
    new-instance v32, Ljava/lang/StringBuilder;

    #@185
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@188
    const-string/jumbo v33, "Failed to digest chunk #"

    #@18b
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v32

    #@18f
    move-object/from16 v0, v32

    #@191
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@194
    move-result-object v32

    #@195
    const-string/jumbo v33, " of section #"

    #@198
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v32

    #@19c
    move-object/from16 v0, v32

    #@19e
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v32

    #@1a2
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a5
    move-result-object v32

    #@1a6
    .line 515
    move-object/from16 v0, v29

    #@1a8
    move-object/from16 v1, v32

    #@1aa
    invoke-direct {v0, v1, v13}, Ljava/security/DigestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1ad
    throw v29

    #@1ae
    .line 520
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v4    # "actualDigestSizeBytes":I
    .restart local v8    # "concatenationOfChunkCountAndChunkDigests":[B
    .restart local v10    # "digestAlgorithm":I
    .restart local v15    # "expectedDigestSizeBytes":I
    .restart local v24    # "md":Ljava/security/MessageDigest;
    :cond_5
    add-int/lit8 v16, v16, 0x1

    #@1b0
    goto/16 :goto_6

    #@1b2
    .line 537
    .end local v4    # "actualDigestSizeBytes":I
    .end local v8    # "concatenationOfChunkCountAndChunkDigests":[B
    .end local v10    # "digestAlgorithm":I
    .end local v15    # "expectedDigestSizeBytes":I
    .end local v24    # "md":Ljava/security/MessageDigest;
    :cond_6
    int-to-long v0, v7

    #@1b3
    move-wide/from16 v34, v0

    #@1b5
    add-long v20, v20, v34

    #@1b7
    .line 538
    int-to-long v0, v7

    #@1b8
    move-wide/from16 v34, v0

    #@1ba
    sub-long v22, v22, v34

    #@1bc
    .line 539
    add-int/lit8 v6, v6, 0x1

    #@1be
    goto/16 :goto_4

    #@1c0
    .line 541
    .end local v7    # "chunkSize":I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    #@1c2
    .line 503
    add-int/lit8 v29, v29, 0x1

    #@1c4
    goto/16 :goto_3

    #@1c6
    .line 544
    .end local v17    # "input":Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;
    .end local v20    # "inputOffset":J
    .end local v22    # "inputRemaining":J
    :cond_8
    move-object/from16 v0, p0

    #@1c8
    array-length v0, v0

    #@1c9
    move/from16 v29, v0

    #@1cb
    move/from16 v0, v29

    #@1cd
    new-array v0, v0, [[B

    #@1cf
    move-object/from16 v27, v0

    #@1d1
    .line 545
    .local v27, "result":[[B
    const/16 v16, 0x0

    #@1d3
    :goto_7
    move-object/from16 v0, p0

    #@1d5
    array-length v0, v0

    #@1d6
    move/from16 v29, v0

    #@1d8
    move/from16 v0, v16

    #@1da
    move/from16 v1, v29

    #@1dc
    if-ge v0, v1, :cond_9

    #@1de
    .line 546
    aget v10, p0, v16

    #@1e0
    .line 547
    .restart local v10    # "digestAlgorithm":I
    aget-object v18, v12, v16

    #@1e2
    .line 548
    .local v18, "input":[B
    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    #@1e5
    move-result-object v19

    #@1e6
    .line 551
    .restart local v19    # "jcaAlgorithmName":Ljava/lang/String;
    :try_start_2
    invoke-static/range {v19 .. v19}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    #@1e9
    move-result-object v24

    #@1ea
    .line 555
    .restart local v24    # "md":Ljava/security/MessageDigest;
    move-object/from16 v0, v24

    #@1ec
    move-object/from16 v1, v18

    #@1ee
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    #@1f1
    move-result-object v26

    #@1f2
    .line 556
    .local v26, "output":[B
    aput-object v26, v27, v16

    #@1f4
    .line 545
    add-int/lit8 v16, v16, 0x1

    #@1f6
    goto :goto_7

    #@1f7
    .line 552
    .end local v24    # "md":Ljava/security/MessageDigest;
    .end local v26    # "output":[B
    :catch_2
    move-exception v14

    #@1f8
    .line 553
    .restart local v14    # "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v29, Ljava/lang/RuntimeException;

    #@1fa
    new-instance v32, Ljava/lang/StringBuilder;

    #@1fc
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@1ff
    move-object/from16 v0, v32

    #@201
    move-object/from16 v1, v19

    #@203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@206
    move-result-object v32

    #@207
    const-string/jumbo v33, " digest not supported"

    #@20a
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v32

    #@20e
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@211
    move-result-object v32

    #@212
    move-object/from16 v0, v29

    #@214
    move-object/from16 v1, v32

    #@216
    invoke-direct {v0, v1, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@219
    throw v29

    #@21a
    .line 558
    .end local v10    # "digestAlgorithm":I
    .end local v14    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v18    # "input":[B
    .end local v19    # "jcaAlgorithmName":Ljava/lang/String;
    :cond_9
    return-object v27
.end method

.method private static findApkSignatureSchemeV2Block(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 11
    .param p0, "apkSigningBlock"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x8

    #@2
    .line 913
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    #@5
    .line 920
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    #@8
    move-result v7

    #@9
    add-int/lit8 v7, v7, -0x18

    #@b
    invoke-static {p0, v10, v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    #@e
    move-result-object v6

    #@f
    .line 922
    .local v6, "pairs":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    #@10
    .line 923
    .local v0, "entryCount":I
    :goto_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@13
    move-result v7

    #@14
    if-eqz v7, :cond_5

    #@16
    .line 924
    add-int/lit8 v0, v0, 0x1

    #@18
    .line 925
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    #@1b
    move-result v7

    #@1c
    if-ge v7, v10, :cond_0

    #@1e
    .line 926
    new-instance v7, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    #@20
    .line 927
    new-instance v8, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v9, "Insufficient data to read size of APK Signing Block entry #"

    #@28
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v8

    #@2c
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v8

    #@30
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v8

    #@34
    .line 926
    invoke-direct {v7, v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    #@37
    throw v7

    #@38
    .line 929
    :cond_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    #@3b
    move-result-wide v4

    #@3c
    .line 930
    .local v4, "lenLong":J
    const-wide/16 v8, 0x4

    #@3e
    cmp-long v7, v4, v8

    #@40
    if-ltz v7, :cond_1

    #@42
    const-wide/32 v8, 0x7fffffff

    #@45
    cmp-long v7, v4, v8

    #@47
    if-lez v7, :cond_2

    #@49
    .line 931
    :cond_1
    new-instance v7, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    #@4b
    .line 932
    new-instance v8, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v9, "APK Signing Block entry #"

    #@53
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v8

    #@57
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v8

    #@5b
    .line 933
    const-string/jumbo v9, " size out of range: "

    #@5e
    .line 932
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v8

    #@62
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@65
    move-result-object v8

    #@66
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v8

    #@6a
    .line 931
    invoke-direct {v7, v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v7

    #@6e
    .line 935
    :cond_2
    long-to-int v2, v4

    #@6f
    .line 936
    .local v2, "len":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    #@72
    move-result v7

    #@73
    add-int v3, v7, v2

    #@75
    .line 937
    .local v3, "nextEntryPos":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    #@78
    move-result v7

    #@79
    if-le v2, v7, :cond_3

    #@7b
    .line 938
    new-instance v7, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    #@7d
    .line 939
    new-instance v8, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v9, "APK Signing Block entry #"

    #@85
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v8

    #@89
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v8

    #@8d
    const-string/jumbo v9, " size out of range: "

    #@90
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v8

    #@94
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    move-result-object v8

    #@98
    .line 940
    const-string/jumbo v9, ", available: "

    #@9b
    .line 939
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v8

    #@9f
    .line 940
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    #@a2
    move-result v9

    #@a3
    .line 939
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v8

    #@a7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v8

    #@ab
    .line 938
    invoke-direct {v7, v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    #@ae
    throw v7

    #@af
    .line 942
    :cond_3
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    #@b2
    move-result v1

    #@b3
    .line 943
    .local v1, "id":I
    const v7, 0x7109871a

    #@b6
    if-ne v1, v7, :cond_4

    #@b8
    .line 944
    add-int/lit8 v7, v2, -0x4

    #@ba
    invoke-static {v6, v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    #@bd
    move-result-object v7

    #@be
    return-object v7

    #@bf
    .line 946
    :cond_4
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@c2
    goto/16 :goto_0

    #@c4
    .line 949
    .end local v1    # "id":I
    .end local v2    # "len":I
    .end local v3    # "nextEntryPos":I
    .end local v4    # "lenLong":J
    :cond_5
    new-instance v7, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    #@c6
    .line 950
    const-string/jumbo v8, "No APK Signature Scheme v2 block in APK Signing Block"

    #@c9
    .line 949
    invoke-direct {v7, v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    #@cc
    throw v7
.end method

.method private static findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;
    .locals 17
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "centralDirOffset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "J)",
            "Landroid/util/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 868
    const-wide/16 v12, 0x20

    #@2
    cmp-long v11, p1, v12

    #@4
    if-gez v11, :cond_0

    #@6
    .line 869
    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    #@8
    .line 870
    new-instance v12, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v13, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    #@10
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v12

    #@14
    move-wide/from16 v0, p1

    #@16
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19
    move-result-object v12

    #@1a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v12

    #@1e
    .line 869
    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    #@21
    throw v11

    #@22
    .line 876
    :cond_0
    const/16 v11, 0x18

    #@24
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@27
    move-result-object v3

    #@28
    .line 877
    .local v3, "footer":Ljava/nio/ByteBuffer;
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@2a
    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@2d
    .line 878
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    #@30
    move-result v11

    #@31
    int-to-long v12, v11

    #@32
    sub-long v12, p1, v12

    #@34
    move-object/from16 v0, p0

    #@36
    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    #@39
    .line 879
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    #@3c
    move-result-object v11

    #@3d
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@40
    move-result v12

    #@41
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    #@44
    move-result v13

    #@45
    move-object/from16 v0, p0

    #@47
    invoke-virtual {v0, v11, v12, v13}, Ljava/io/RandomAccessFile;->readFully([BII)V

    #@4a
    .line 880
    const/16 v11, 0x8

    #@4c
    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    #@4f
    move-result-wide v12

    #@50
    const-wide v14, 0x20676953204b5041L

    #@55
    cmp-long v11, v12, v14

    #@57
    if-nez v11, :cond_1

    #@59
    .line 881
    const/16 v11, 0x10

    #@5b
    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    #@5e
    move-result-wide v12

    #@5f
    const-wide v14, 0x3234206b636f6c42L    # 7.465385175170059E-67

    #@64
    cmp-long v11, v12, v14

    #@66
    if-eqz v11, :cond_2

    #@68
    .line 882
    :cond_1
    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    #@6a
    .line 883
    const-string/jumbo v12, "No APK Signing Block before ZIP Central Directory"

    #@6d
    .line 882
    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    #@70
    throw v11

    #@71
    .line 886
    :cond_2
    const/4 v11, 0x0

    #@72
    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    #@75
    move-result-wide v6

    #@76
    .line 887
    .local v6, "apkSigBlockSizeInFooter":J
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    #@79
    move-result v11

    #@7a
    int-to-long v12, v11

    #@7b
    cmp-long v11, v6, v12

    #@7d
    if-ltz v11, :cond_3

    #@7f
    .line 888
    const-wide/32 v12, 0x7ffffff7

    #@82
    cmp-long v11, v6, v12

    #@84
    if-lez v11, :cond_4

    #@86
    .line 889
    :cond_3
    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    #@88
    .line 890
    new-instance v12, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v13, "APK Signing Block size out of range: "

    #@90
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v12

    #@94
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@97
    move-result-object v12

    #@98
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v12

    #@9c
    .line 889
    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v11

    #@a0
    .line 892
    :cond_4
    const-wide/16 v12, 0x8

    #@a2
    add-long/2addr v12, v6

    #@a3
    long-to-int v10, v12

    #@a4
    .line 893
    .local v10, "totalSize":I
    int-to-long v12, v10

    #@a5
    sub-long v4, p1, v12

    #@a7
    .line 894
    .local v4, "apkSigBlockOffset":J
    const-wide/16 v12, 0x0

    #@a9
    cmp-long v11, v4, v12

    #@ab
    if-gez v11, :cond_5

    #@ad
    .line 895
    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    #@af
    .line 896
    new-instance v12, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v13, "APK Signing Block offset out of range: "

    #@b7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v12

    #@bb
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@be
    move-result-object v12

    #@bf
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v12

    #@c3
    .line 895
    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    #@c6
    throw v11

    #@c7
    .line 898
    :cond_5
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@ca
    move-result-object v2

    #@cb
    .line 899
    .local v2, "apkSigBlock":Ljava/nio/ByteBuffer;
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@cd
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@d0
    .line 900
    move-object/from16 v0, p0

    #@d2
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    #@d5
    .line 901
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    #@d8
    move-result-object v11

    #@d9
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@dc
    move-result v12

    #@dd
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    #@e0
    move-result v13

    #@e1
    move-object/from16 v0, p0

    #@e3
    invoke-virtual {v0, v11, v12, v13}, Ljava/io/RandomAccessFile;->readFully([BII)V

    #@e6
    .line 902
    const/4 v11, 0x0

    #@e7
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    #@ea
    move-result-wide v8

    #@eb
    .line 903
    .local v8, "apkSigBlockSizeInHeader":J
    cmp-long v11, v8, v6

    #@ed
    if-eqz v11, :cond_6

    #@ef
    .line 904
    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    #@f1
    .line 905
    new-instance v12, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    const-string/jumbo v13, "APK Signing Block sizes in header and footer do not match: "

    #@f9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v12

    #@fd
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@100
    move-result-object v12

    #@101
    .line 906
    const-string/jumbo v13, " vs "

    #@104
    .line 905
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v12

    #@108
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v12

    #@10c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v12

    #@110
    .line 904
    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    #@113
    throw v11

    #@114
    .line 908
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@117
    move-result-object v11

    #@118
    invoke-static {v2, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@11b
    move-result-object v11

    #@11c
    return-object v11
.end method

.method private static findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;
    .locals 13
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    #@3
    move-result-object v12

    #@4
    .line 171
    .local v12, "eocdAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    iget-object v8, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@6
    check-cast v8, Ljava/nio/ByteBuffer;

    #@8
    .line 172
    .local v8, "eocd":Ljava/nio/ByteBuffer;
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@a
    check-cast v0, Ljava/lang/Long;

    #@c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@f
    move-result-wide v6

    #@10
    .line 173
    .local v6, "eocdOffset":J
    invoke-static {p0, v6, v7}, Landroid/util/apk/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 174
    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    #@18
    const-string/jumbo v9, "ZIP64 APK not supported"

    #@1b
    invoke-direct {v0, v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 178
    :cond_0
    invoke-static {v8, v6, v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    #@22
    move-result-wide v4

    #@23
    .line 180
    .local v4, "centralDirOffset":J
    invoke-static {p0, v4, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;

    #@26
    move-result-object v11

    #@27
    .line 181
    .local v11, "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    iget-object v10, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@29
    check-cast v10, Ljava/nio/ByteBuffer;

    #@2b
    .line 182
    .local v10, "apkSigningBlock":Ljava/nio/ByteBuffer;
    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@2d
    check-cast v0, Ljava/lang/Long;

    #@2f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@32
    move-result-wide v2

    #@33
    .line 185
    .local v2, "apkSigningBlockOffset":J
    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findApkSignatureSchemeV2Block(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@36
    move-result-object v1

    #@37
    .line 187
    .local v1, "apkSignatureSchemeV2Block":Ljava/nio/ByteBuffer;
    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;

    #@39
    const/4 v9, 0x0

    #@3a
    invoke-direct/range {v0 .. v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)V

    #@3d
    return-object v0
.end method

.method private static getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    #@0
    .prologue
    .line 796
    if-gez p1, :cond_0

    #@2
    .line 797
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v5, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v6, "size: "

    #@c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v4

    #@1c
    .line 799
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    #@1f
    move-result v1

    #@20
    .line 800
    .local v1, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@23
    move-result v2

    #@24
    .line 801
    .local v2, "position":I
    add-int v0, v2, p1

    #@26
    .line 802
    .local v0, "limit":I
    if-lt v0, v2, :cond_1

    #@28
    if-le v0, v1, :cond_2

    #@2a
    .line 803
    :cond_1
    new-instance v4, Ljava/nio/BufferUnderflowException;

    #@2c
    invoke-direct {v4}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@2f
    throw v4

    #@30
    .line 805
    :cond_2
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@33
    .line 807
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@36
    move-result-object v3

    #@37
    .line 808
    .local v3, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@3e
    .line 809
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 812
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@44
    .line 810
    return-object v3

    #@45
    .line 811
    .end local v3    # "result":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v4

    #@46
    .line 812
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@49
    .line 811
    throw v4
.end method

.method private static getCentralDirOffset(Ljava/nio/ByteBuffer;J)J
    .locals 7
    .param p0, "eocd"    # Ljava/nio/ByteBuffer;
    .param p1, "eocdOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 581
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J

    #@3
    move-result-wide v0

    #@4
    .line 582
    .local v0, "centralDirOffset":J
    cmp-long v4, v0, p1

    #@6
    if-ltz v4, :cond_0

    #@8
    .line 583
    new-instance v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    #@a
    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v6, "ZIP Central Directory offset out of range: "

    #@12
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    .line 585
    const-string/jumbo v6, ". ZIP End of Central Directory offset: "

    #@1d
    .line 584
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    .line 583
    invoke-direct {v4, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v4

    #@2d
    .line 587
    :cond_0
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J

    #@30
    move-result-wide v2

    #@31
    .line 588
    .local v2, "centralDirSize":J
    add-long v4, v0, v2

    #@33
    cmp-long v4, v4, p1

    #@35
    if-eqz v4, :cond_1

    #@37
    .line 589
    new-instance v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    #@39
    .line 590
    const-string/jumbo v5, "ZIP Central Directory is not immediately followed by End of Central Directory"

    #@3c
    .line 589
    invoke-direct {v4, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v4

    #@40
    .line 593
    :cond_1
    return-wide v0
.end method

.method private static final getChunkCount(J)J
    .locals 6
    .param p0, "inputSizeBytes"    # J

    #@0
    .prologue
    const-wide/32 v4, 0x100000

    #@3
    .line 597
    add-long v0, p0, v4

    #@5
    const-wide/16 v2, 0x1

    #@7
    sub-long/2addr v0, v2

    #@8
    div-long/2addr v0, v4

    #@9
    return-wide v0
.end method

.method private static getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;
    .locals 3
    .param p0, "digestAlgorithm"    # I

    #@0
    .prologue
    .line 680
    packed-switch p0, :pswitch_data_0

    #@3
    .line 686
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown content digest algorthm: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 686
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 682
    :pswitch_0
    const-string/jumbo v0, "SHA-256"

    #@20
    return-object v0

    #@21
    .line 684
    :pswitch_1
    const-string/jumbo v0, "SHA-512"

    #@24
    return-object v0

    #@25
    .line 680
    nop

    #@26
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getContentDigestAlgorithmOutputSizeBytes(I)I
    .locals 3
    .param p0, "digestAlgorithm"    # I

    #@0
    .prologue
    .line 692
    packed-switch p0, :pswitch_data_0

    #@3
    .line 698
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown content digest algorthm: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 698
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 694
    :pswitch_0
    const/16 v0, 0x20

    #@1f
    return v0

    #@20
    .line 696
    :pswitch_1
    const/16 v0, 0x40

    #@22
    return v0

    #@23
    .line 692
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;
    .locals 3
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 570
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    #@3
    move-result-object v0

    #@4
    .line 571
    .local v0, "eocdAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    #@6
    .line 572
    new-instance v1, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    #@8
    .line 573
    const-string/jumbo v2, "Not an APK file: ZIP End of Central Directory record not found"

    #@b
    .line 572
    invoke-direct {v1, v2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 575
    :cond_0
    return-object v0
.end method

.method private static getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 817
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x4

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 818
    new-instance v1, Ljava/io/IOException;

    #@9
    .line 819
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 820
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@18
    move-result v3

    #@19
    .line 819
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 818
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 822
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@28
    move-result v0

    #@29
    .line 823
    .local v0, "len":I
    if-gez v0, :cond_1

    #@2b
    .line 824
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v2, "Negative length"

    #@30
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1

    #@34
    .line 825
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@37
    move-result v1

    #@38
    if-le v0, v1, :cond_2

    #@3a
    .line 826
    new-instance v1, Ljava/io/IOException;

    #@3c
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v3, "Length-prefixed field longer than remaining buffer. Field length: "

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    .line 827
    const-string/jumbo v3, ", remaining: "

    #@4f
    .line 826
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    .line 827
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@56
    move-result v3

    #@57
    .line 826
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@62
    throw v1

    #@63
    .line 829
    :cond_2
    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    #@66
    move-result-object v1

    #@67
    return-object v1
.end method

.method private static getSignatureAlgorithmContentDigestAlgorithm(I)I
    .locals 4
    .param p0, "sigAlgorithm"    # I

    #@0
    .prologue
    .line 662
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 673
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown signature algorithm: 0x"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    .line 675
    and-int/lit8 v2, p0, -0x1

    #@13
    int-to-long v2, v2

    #@14
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 674
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 673
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 667
    :sswitch_0
    const/4 v0, 0x1

    #@25
    return v0

    #@26
    .line 671
    :sswitch_1
    const/4 v0, 0x2

    #@27
    return v0

    #@28
    .line 662
    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_1
        0x103 -> :sswitch_0
        0x104 -> :sswitch_1
        0x201 -> :sswitch_0
        0x202 -> :sswitch_1
        0x301 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;
    .locals 4
    .param p0, "sigAlgorithm"    # I

    #@0
    .prologue
    .line 704
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown signature algorithm: 0x"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    .line 718
    and-int/lit8 v2, p0, -0x1

    #@13
    int-to-long v2, v2

    #@14
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 717
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 716
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 709
    :sswitch_0
    const-string/jumbo v0, "RSA"

    #@27
    return-object v0

    #@28
    .line 712
    :sswitch_1
    const-string/jumbo v0, "EC"

    #@2b
    return-object v0

    #@2c
    .line 714
    :sswitch_2
    const-string/jumbo v0, "DSA"

    #@2f
    return-object v0

    #@30
    .line 704
    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_0
        0x103 -> :sswitch_0
        0x104 -> :sswitch_0
        0x201 -> :sswitch_1
        0x202 -> :sswitch_1
        0x301 -> :sswitch_2
    .end sparse-switch
.end method

.method private static getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;
    .locals 7
    .param p0, "sigAlgorithm"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 724
    sparse-switch p0, :sswitch_data_0

    #@5
    .line 746
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Unknown signature algorithm: 0x"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    .line 748
    and-int/lit8 v2, p0, -0x1

    #@15
    int-to-long v2, v2

    #@16
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 747
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 746
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 727
    :sswitch_0
    const-string/jumbo v6, "SHA256withRSA/PSS"

    #@29
    .line 728
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    #@2b
    .line 729
    const-string/jumbo v1, "SHA-256"

    #@2e
    const-string/jumbo v2, "MGF1"

    #@31
    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    #@33
    const/16 v4, 0x20

    #@35
    .line 728
    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    #@38
    .line 726
    invoke-static {v6, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@3b
    move-result-object v0

    #@3c
    return-object v0

    #@3d
    .line 732
    :sswitch_1
    const-string/jumbo v6, "SHA512withRSA/PSS"

    #@40
    .line 733
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    #@42
    .line 734
    const-string/jumbo v1, "SHA-512"

    #@45
    const-string/jumbo v2, "MGF1"

    #@48
    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    #@4a
    const/16 v4, 0x40

    #@4c
    .line 733
    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    #@4f
    .line 731
    invoke-static {v6, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@52
    move-result-object v0

    #@53
    return-object v0

    #@54
    .line 736
    :sswitch_2
    const-string/jumbo v0, "SHA256withRSA"

    #@57
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@5a
    move-result-object v0

    #@5b
    return-object v0

    #@5c
    .line 738
    :sswitch_3
    const-string/jumbo v0, "SHA512withRSA"

    #@5f
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@62
    move-result-object v0

    #@63
    return-object v0

    #@64
    .line 740
    :sswitch_4
    const-string/jumbo v0, "SHA256withECDSA"

    #@67
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@6a
    move-result-object v0

    #@6b
    return-object v0

    #@6c
    .line 742
    :sswitch_5
    const-string/jumbo v0, "SHA512withECDSA"

    #@6f
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@72
    move-result-object v0

    #@73
    return-object v0

    #@74
    .line 744
    :sswitch_6
    const-string/jumbo v0, "SHA256withDSA"

    #@77
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@7a
    move-result-object v0

    #@7b
    return-object v0

    #@7c
    .line 724
    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_1
        0x103 -> :sswitch_2
        0x104 -> :sswitch_3
        0x201 -> :sswitch_4
        0x202 -> :sswitch_5
        0x301 -> :sswitch_6
    .end sparse-switch
.end method

.method public static hasSignature(Ljava/lang/String;)Z
    .locals 7
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 88
    const/4 v0, 0x0

    #@2
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    #@4
    const-string/jumbo v3, "r"

    #@7
    invoke-direct {v1, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@a
    .line 89
    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    .local v1, "apk":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-static {v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@d
    .line 90
    const/4 v3, 0x1

    #@e
    .line 93
    if-eqz v1, :cond_0

    #@10
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    #@13
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    #@15
    :try_start_3
    throw v4
    :try_end_3
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    #@16
    .line 91
    :catch_0
    move-exception v2

    #@17
    .local v2, "e":Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    move-object v0, v1

    #@18
    .line 92
    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    :goto_1
    const/4 v3, 0x0

    #@19
    return v3

    #@1a
    .line 93
    .end local v2    # "e":Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    .restart local v1    # "apk":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v4

    #@1b
    goto :goto_0

    #@1c
    .line 90
    :cond_1
    return v3

    #@1d
    .line 93
    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    .restart local v0    # "apk":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v3

    #@1e
    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1f
    :catchall_0
    move-exception v4

    #@20
    move-object v6, v4

    #@21
    move-object v4, v3

    #@22
    move-object v3, v6

    #@23
    :goto_3
    if-eqz v0, :cond_2

    #@25
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    #@28
    :cond_2
    :goto_4
    if-eqz v4, :cond_4

    #@2a
    :try_start_6
    throw v4

    #@2b
    .line 91
    :catch_3
    move-exception v2

    #@2c
    .restart local v2    # "e":Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    goto :goto_1

    #@2d
    .line 93
    .end local v2    # "e":Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    :catch_4
    move-exception v5

    #@2e
    if-nez v4, :cond_3

    #@30
    move-object v4, v5

    #@31
    goto :goto_4

    #@32
    :cond_3
    if-eq v4, v5, :cond_2

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@37
    goto :goto_4

    #@38
    :cond_4
    throw v3
    :try_end_6
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    #@39
    .restart local v0    # "apk":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v3

    #@3a
    goto :goto_3

    #@3b
    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    .restart local v1    # "apk":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v3

    #@3c
    move-object v0, v1

    #@3d
    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    .local v0, "apk":Ljava/io/RandomAccessFile;
    goto :goto_3

    #@3e
    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    .restart local v1    # "apk":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v3

    #@3f
    move-object v0, v1

    #@40
    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    .restart local v0    # "apk":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private static isSupportedSignatureAlgorithm(I)Z
    .locals 1
    .param p0, "sigAlgorithm"    # I

    #@0
    .prologue
    .line 614
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 624
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 622
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 614
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_0
        0x103 -> :sswitch_0
        0x104 -> :sswitch_0
        0x201 -> :sswitch_0
        0x202 -> :sswitch_0
        0x301 -> :sswitch_0
    .end sparse-switch
.end method

.method private static readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 833
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@3
    move-result v0

    #@4
    .line 834
    .local v0, "len":I
    if-gez v0, :cond_0

    #@6
    .line 835
    new-instance v2, Ljava/io/IOException;

    #@8
    const-string/jumbo v3, "Negative length"

    #@b
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 836
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@12
    move-result v2

    #@13
    if-le v0, v2, :cond_1

    #@15
    .line 837
    new-instance v2, Ljava/io/IOException;

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "Underflow while reading length-prefixed value. Length: "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 838
    const-string/jumbo v4, ", available: "

    #@2a
    .line 837
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    .line 838
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@31
    move-result v4

    #@32
    .line 837
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v2

    #@3e
    .line 840
    :cond_1
    new-array v1, v0, [B

    #@40
    .line 841
    .local v1, "result":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@43
    .line 842
    return-object v1
.end method

.method private static setUnsignedInt32LittleEndian(I[BI)V
    .locals 2
    .param p0, "value"    # I
    .param p1, "result"    # [B
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 846
    and-int/lit16 v0, p0, 0xff

    #@2
    int-to-byte v0, v0

    #@3
    aput-byte v0, p1, p2

    #@5
    .line 847
    add-int/lit8 v0, p2, 0x1

    #@7
    ushr-int/lit8 v1, p0, 0x8

    #@9
    and-int/lit16 v1, v1, 0xff

    #@b
    int-to-byte v1, v1

    #@c
    aput-byte v1, p1, v0

    #@e
    .line 848
    add-int/lit8 v0, p2, 0x2

    #@10
    ushr-int/lit8 v1, p0, 0x10

    #@12
    and-int/lit16 v1, v1, 0xff

    #@14
    int-to-byte v1, v1

    #@15
    aput-byte v1, p1, v0

    #@17
    .line 849
    add-int/lit8 v0, p2, 0x3

    #@19
    ushr-int/lit8 v1, p0, 0x18

    #@1b
    and-int/lit16 v1, v1, 0xff

    #@1d
    int-to-byte v1, v1

    #@1e
    aput-byte v1, p1, v0

    #@20
    .line 845
    return-void
.end method

.method private static sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 759
    if-gez p1, :cond_0

    #@3
    .line 760
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v5, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v6, "start: "

    #@d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v4

    #@1d
    .line 762
    :cond_0
    if-ge p2, p1, :cond_1

    #@1f
    .line 763
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@21
    new-instance v5, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v6, "end < start: "

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    const-string/jumbo v6, " < "

    #@34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v4

    #@44
    .line 765
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    #@47
    move-result v0

    #@48
    .line 766
    .local v0, "capacity":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    #@4b
    move-result v4

    #@4c
    if-le p2, v4, :cond_2

    #@4e
    .line 767
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@50
    new-instance v5, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v6, "end > capacity: "

    #@58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    const-string/jumbo v6, " > "

    #@63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v5

    #@6f
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@72
    throw v4

    #@73
    .line 769
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    #@76
    move-result v1

    #@77
    .line 770
    .local v1, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@7a
    move-result v2

    #@7b
    .line 772
    .local v2, "originalPosition":I
    const/4 v4, 0x0

    #@7c
    :try_start_0
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@7f
    .line 773
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@82
    .line 774
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@85
    .line 775
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@88
    move-result-object v3

    #@89
    .line 776
    .local v3, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@8c
    move-result-object v4

    #@8d
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@90
    .line 779
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@93
    .line 780
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@96
    .line 781
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@99
    .line 777
    return-object v3

    #@9a
    .line 778
    .end local v3    # "result":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v4

    #@9b
    .line 779
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@9e
    .line 780
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@a1
    .line 781
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@a4
    .line 778
    throw v4
.end method

.method private static verify(Ljava/io/FileDescriptor;Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)[[Ljava/security/cert/X509Certificate;
    .locals 20
    .param p0, "apkFileDescriptor"    # Ljava/io/FileDescriptor;
    .param p1, "signatureInfo"    # Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    const/16 v18, 0x0

    #@2
    .line 206
    .local v18, "signerCount":I
    new-instance v2, Landroid/util/ArrayMap;

    #@4
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@7
    .line 207
    .local v2, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    new-instance v17, Ljava/util/ArrayList;

    #@9
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 210
    .local v17, "signerCerts":Ljava/util/List;, "Ljava/util/List<[Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    const-string/jumbo v3, "X.509"

    #@f
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    #@12
    move-result-object v11

    #@13
    .line 216
    .local v11, "certFactory":Ljava/security/cert/CertificateFactory;
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get4(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)Ljava/nio/ByteBuffer;

    #@16
    move-result-object v3

    #@17
    invoke-static {v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@1a
    move-result-object v19

    #@1b
    .line 220
    .local v19, "signers":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 221
    add-int/lit8 v18, v18, 0x1

    #@23
    .line 223
    :try_start_2
    invoke-static/range {v19 .. v19}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@26
    move-result-object v16

    #@27
    .line 224
    .local v16, "signer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v16

    #@29
    invoke-static {v0, v2, v11}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    #@2c
    move-result-object v12

    #@2d
    .line 225
    .local v12, "certs":[Ljava/security/cert/X509Certificate;
    move-object/from16 v0, v17

    #@2f
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    #@32
    goto :goto_0

    #@33
    .line 226
    .end local v12    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v16    # "signer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v14

    #@34
    .line 227
    .local v14, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/SecurityException;

    #@36
    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v5, "Failed to parse/verify signer #"

    #@3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    move/from16 v0, v18

    #@44
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    const-string/jumbo v5, " block"

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    .line 227
    invoke-direct {v3, v4, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@56
    throw v3

    #@57
    .line 211
    .end local v11    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v19    # "signers":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v15

    #@58
    .line 212
    .local v15, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@5a
    const-string/jumbo v4, "Failed to obtain X.509 CertificateFactory"

    #@5d
    invoke-direct {v3, v4, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@60
    throw v3

    #@61
    .line 217
    .end local v15    # "e":Ljava/security/cert/CertificateException;
    .restart local v11    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_2
    move-exception v13

    #@62
    .line 218
    .local v13, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/SecurityException;

    #@64
    const-string/jumbo v4, "Failed to read list of signers"

    #@67
    invoke-direct {v3, v4, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6a
    throw v3

    #@6b
    .line 233
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v19    # "signers":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v3, 0x1

    #@6c
    move/from16 v0, v18

    #@6e
    if-ge v0, v3, :cond_1

    #@70
    .line 234
    new-instance v3, Ljava/lang/SecurityException;

    #@72
    const-string/jumbo v4, "No signers found"

    #@75
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@78
    throw v3

    #@79
    .line 237
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    #@7c
    move-result v3

    #@7d
    if-eqz v3, :cond_2

    #@7f
    .line 238
    new-instance v3, Ljava/lang/SecurityException;

    #@81
    const-string/jumbo v4, "No content digests found"

    #@84
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@87
    throw v3

    #@88
    .line 244
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get0(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J

    #@8b
    move-result-wide v4

    #@8c
    .line 245
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get1(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J

    #@8f
    move-result-wide v6

    #@90
    .line 246
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get3(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J

    #@93
    move-result-wide v8

    #@94
    .line 247
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get2(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)Ljava/nio/ByteBuffer;

    #@97
    move-result-object v10

    #@98
    move-object/from16 v3, p0

    #@9a
    .line 241
    invoke-static/range {v2 .. v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifyIntegrity(Ljava/util/Map;Ljava/io/FileDescriptor;JJJLjava/nio/ByteBuffer;)V

    #@9d
    .line 249
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    #@a0
    move-result v3

    #@a1
    new-array v3, v3, [[Ljava/security/cert/X509Certificate;

    #@a3
    move-object/from16 v0, v17

    #@a5
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@a8
    move-result-object v3

    #@a9
    check-cast v3, [[Ljava/security/cert/X509Certificate;

    #@ab
    return-object v3
.end method

.method private static verify(Ljava/io/RandomAccessFile;)[[Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;

    #@3
    move-result-object v0

    #@4
    .line 123
    .local v0, "signatureInfo":Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/FileDescriptor;Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)[[Ljava/security/cert/X509Certificate;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public static verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .locals 6
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 106
    const/4 v0, 0x0

    #@2
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    #@4
    const-string/jumbo v2, "r"

    #@7
    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@a
    .line 107
    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    .local v1, "apk":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-static {v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;)[[Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@d
    move-result-object v2

    #@e
    .line 108
    if-eqz v1, :cond_0

    #@10
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@13
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    #@15
    throw v3

    #@16
    :catch_0
    move-exception v3

    #@17
    goto :goto_0

    #@18
    .line 107
    :cond_1
    return-object v2

    #@19
    .line 108
    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    .restart local v0    # "apk":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v2

    #@1a
    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1b
    :catchall_0
    move-exception v3

    #@1c
    move-object v5, v3

    #@1d
    move-object v3, v2

    #@1e
    move-object v2, v5

    #@1f
    :goto_2
    if-eqz v0, :cond_2

    #@21
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    #@24
    :cond_2
    :goto_3
    if-eqz v3, :cond_4

    #@26
    throw v3

    #@27
    :catch_2
    move-exception v4

    #@28
    if-nez v3, :cond_3

    #@2a
    move-object v3, v4

    #@2b
    goto :goto_3

    #@2c
    :cond_3
    if-eq v3, v4, :cond_2

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@31
    goto :goto_3

    #@32
    :cond_4
    throw v2

    #@33
    .restart local v0    # "apk":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v2

    #@34
    goto :goto_2

    #@35
    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    .restart local v1    # "apk":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v2

    #@36
    move-object v0, v1

    #@37
    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    .local v0, "apk":Ljava/io/RandomAccessFile;
    goto :goto_2

    #@38
    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    .restart local v1    # "apk":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v2

    #@39
    move-object v0, v1

    #@3a
    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    .restart local v0    # "apk":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method private static verifyIntegrity(Ljava/util/Map;Ljava/io/FileDescriptor;JJJLjava/nio/ByteBuffer;)V
    .locals 22
    .param p1, "apkFileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "apkSigningBlockOffset"    # J
    .param p4, "centralDirOffset"    # J
    .param p6, "eocdOffset"    # J
    .param p8, "eocdBuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/io/FileDescriptor;",
            "JJJ",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 396
    .local p0, "expectedDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->isEmpty()Z

    #@3
    move-result v5

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 397
    new-instance v5, Ljava/lang/SecurityException;

    #@8
    const-string/jumbo v7, "No digests provided"

    #@b
    invoke-direct {v5, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@e
    throw v5

    #@f
    .line 411
    :cond_0
    new-instance v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;

    #@11
    const-wide/16 v6, 0x0

    #@13
    move-object/from16 v5, p1

    #@15
    move-wide/from16 v8, p2

    #@17
    invoke-direct/range {v4 .. v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    #@1a
    .line 413
    .local v4, "beforeApkSigningBlock":Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;
    new-instance v6, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;

    #@1c
    .line 414
    sub-long v10, p6, p4

    #@1e
    move-object/from16 v7, p1

    #@20
    move-wide/from16 v8, p4

    #@22
    .line 413
    invoke-direct/range {v6 .. v11}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    #@25
    .line 418
    .local v6, "centralDir":Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;
    invoke-virtual/range {p8 .. p8}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@28
    move-result-object p8

    #@29
    .line 419
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@2b
    move-object/from16 v0, p8

    #@2d
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@30
    .line 420
    move-object/from16 v0, p8

    #@32
    move-wide/from16 v1, p2

    #@34
    invoke-static {v0, v1, v2}, Landroid/util/apk/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    #@37
    .line 421
    new-instance v19, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;

    #@39
    move-object/from16 v0, v19

    #@3b
    move-object/from16 v1, p8

    #@3d
    invoke-direct {v0, v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    #@40
    .line 423
    .local v19, "eocd":Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->size()I

    #@43
    move-result v5

    #@44
    new-array v0, v5, [I

    #@46
    move-object/from16 v17, v0

    #@48
    .line 424
    .local v17, "digestAlgorithms":[I
    const/16 v16, 0x0

    #@4a
    .line 425
    .local v16, "digestAlgorithmCount":I
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@4d
    move-result-object v5

    #@4e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@51
    move-result-object v15

    #@52
    .local v15, "digestAlgorithm$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@55
    move-result v5

    #@56
    if-eqz v5, :cond_1

    #@58
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5b
    move-result-object v5

    #@5c
    check-cast v5, Ljava/lang/Integer;

    #@5e
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@61
    move-result v14

    #@62
    .line 426
    .local v14, "digestAlgorithm":I
    aput v14, v17, v16

    #@64
    .line 427
    add-int/lit8 v16, v16, 0x1

    #@66
    goto :goto_0

    #@67
    .line 434
    .end local v14    # "digestAlgorithm":I
    :cond_1
    const/4 v5, 0x3

    #@68
    :try_start_0
    new-array v5, v5, [Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;

    #@6a
    const/4 v7, 0x0

    #@6b
    aput-object v4, v5, v7

    #@6d
    const/4 v7, 0x1

    #@6e
    aput-object v6, v5, v7

    #@70
    const/4 v7, 0x2

    #@71
    aput-object v19, v5, v7

    #@73
    .line 432
    move-object/from16 v0, v17

    #@75
    invoke-static {v0, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->computeContentDigests([I[Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;)[[B
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    #@78
    move-result-object v13

    #@79
    .line 438
    .local v13, "actualDigests":[[B
    const/16 v21, 0x0

    #@7b
    .local v21, "i":I
    :goto_1
    move-object/from16 v0, v17

    #@7d
    array-length v5, v0

    #@7e
    move/from16 v0, v21

    #@80
    if-ge v0, v5, :cond_3

    #@82
    .line 439
    aget v14, v17, v21

    #@84
    .line 440
    .restart local v14    # "digestAlgorithm":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@87
    move-result-object v5

    #@88
    move-object/from16 v0, p0

    #@8a
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8d
    move-result-object v20

    #@8e
    check-cast v20, [B

    #@90
    .line 441
    .local v20, "expectedDigest":[B
    aget-object v12, v13, v21

    #@92
    .line 442
    .local v12, "actualDigest":[B
    move-object/from16 v0, v20

    #@94
    invoke-static {v0, v12}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    #@97
    move-result v5

    #@98
    if-nez v5, :cond_2

    #@9a
    .line 443
    new-instance v5, Ljava/lang/SecurityException;

    #@9c
    .line 444
    new-instance v7, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    invoke-static {v14}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    #@a4
    move-result-object v8

    #@a5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v7

    #@a9
    .line 445
    const-string/jumbo v8, " digest of contents did not verify"

    #@ac
    .line 444
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v7

    #@b0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v7

    #@b4
    .line 443
    invoke-direct {v5, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@b7
    throw v5

    #@b8
    .line 435
    .end local v12    # "actualDigest":[B
    .end local v13    # "actualDigests":[[B
    .end local v14    # "digestAlgorithm":I
    .end local v20    # "expectedDigest":[B
    .end local v21    # "i":I
    :catch_0
    move-exception v18

    #@b9
    .line 436
    .local v18, "e":Ljava/security/DigestException;
    new-instance v5, Ljava/lang/SecurityException;

    #@bb
    const-string/jumbo v7, "Failed to compute digest(s) of contents"

    #@be
    move-object/from16 v0, v18

    #@c0
    invoke-direct {v5, v7, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c3
    throw v5

    #@c4
    .line 438
    .end local v18    # "e":Ljava/security/DigestException;
    .restart local v12    # "actualDigest":[B
    .restart local v13    # "actualDigests":[[B
    .restart local v14    # "digestAlgorithm":I
    .restart local v20    # "expectedDigest":[B
    .restart local v21    # "i":I
    :cond_2
    add-int/lit8 v21, v21, 0x1

    #@c6
    goto :goto_1

    #@c7
    .line 394
    .end local v12    # "actualDigest":[B
    .end local v14    # "digestAlgorithm":I
    .end local v20    # "expectedDigest":[B
    :cond_3
    return-void
.end method

.method private static verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .locals 40
    .param p0, "signerBlock"    # Ljava/nio/ByteBuffer;
    .param p2, "certFactory"    # Ljava/security/cert/CertificateFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    .local p1, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v36

    #@4
    .line 257
    .local v36, "signedData":Ljava/nio/ByteBuffer;
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@7
    move-result-object v34

    #@8
    .line 258
    .local v34, "signatures":Ljava/nio/ByteBuffer;
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    #@b
    move-result-object v27

    #@c
    .line 260
    .local v27, "publicKeyBytes":[B
    const/16 v33, 0x0

    #@e
    .line 261
    .local v33, "signatureCount":I
    const/4 v3, -0x1

    #@f
    .line 262
    .local v3, "bestSigAlgorithm":I
    const/4 v4, 0x0

    #@10
    .line 263
    .local v4, "bestSigAlgorithmSignatureBytes":[B
    new-instance v35, Ljava/util/ArrayList;

    #@12
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 264
    .end local v4    # "bestSigAlgorithmSignatureBytes":[B
    .local v35, "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@18
    move-result v37

    #@19
    if-eqz v37, :cond_3

    #@1b
    .line 265
    add-int/lit8 v33, v33, 0x1

    #@1d
    .line 267
    :try_start_0
    invoke-static/range {v34 .. v34}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@20
    move-result-object v31

    #@21
    .line 268
    .local v31, "signature":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->remaining()I

    #@24
    move-result v37

    #@25
    const/16 v38, 0x8

    #@27
    move/from16 v0, v37

    #@29
    move/from16 v1, v38

    #@2b
    if-ge v0, v1, :cond_1

    #@2d
    .line 269
    new-instance v37, Ljava/lang/SecurityException;

    #@2f
    const-string/jumbo v38, "Signature record too short"

    #@32
    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@35
    throw v37
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 281
    .end local v31    # "signature":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v17

    #@37
    .line 282
    .local v17, "e":Ljava/lang/Exception;
    new-instance v37, Ljava/lang/SecurityException;

    #@39
    .line 283
    new-instance v38, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v39, "Failed to parse signature record #"

    #@41
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v38

    #@45
    move-object/from16 v0, v38

    #@47
    move/from16 v1, v33

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v38

    #@4d
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v38

    #@51
    .line 282
    move-object/from16 v0, v37

    #@53
    move-object/from16 v1, v38

    #@55
    move-object/from16 v2, v17

    #@57
    invoke-direct {v0, v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5a
    throw v37

    #@5b
    .line 271
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v31    # "signature":Ljava/nio/ByteBuffer;
    :cond_1
    :try_start_1
    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    #@5e
    move-result v29

    #@5f
    .line 272
    .local v29, "sigAlgorithm":I
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v37

    #@63
    move-object/from16 v0, v35

    #@65
    move-object/from16 v1, v37

    #@67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6a
    .line 273
    invoke-static/range {v29 .. v29}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->isSupportedSignatureAlgorithm(I)Z

    #@6d
    move-result v37

    #@6e
    if-eqz v37, :cond_0

    #@70
    .line 276
    const/16 v37, -0x1

    #@72
    move/from16 v0, v37

    #@74
    if-eq v3, v0, :cond_2

    #@76
    .line 277
    move/from16 v0, v29

    #@78
    invoke-static {v0, v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->compareSignatureAlgorithm(II)I

    #@7b
    move-result v37

    #@7c
    if-lez v37, :cond_0

    #@7e
    .line 278
    :cond_2
    move/from16 v3, v29

    #@80
    .line 279
    invoke-static/range {v31 .. v31}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    #@83
    move-result-object v4

    #@84
    .local v4, "bestSigAlgorithmSignatureBytes":[B
    goto :goto_0

    #@85
    .line 287
    .end local v4    # "bestSigAlgorithmSignatureBytes":[B
    .end local v29    # "sigAlgorithm":I
    .end local v31    # "signature":Ljava/nio/ByteBuffer;
    :cond_3
    const/16 v37, -0x1

    #@87
    move/from16 v0, v37

    #@89
    if-ne v3, v0, :cond_5

    #@8b
    .line 288
    if-nez v33, :cond_4

    #@8d
    .line 289
    new-instance v37, Ljava/lang/SecurityException;

    #@8f
    const-string/jumbo v38, "No signatures found"

    #@92
    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@95
    throw v37

    #@96
    .line 291
    :cond_4
    new-instance v37, Ljava/lang/SecurityException;

    #@98
    const-string/jumbo v38, "No supported signatures found"

    #@9b
    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v37

    #@9f
    .line 295
    :cond_5
    invoke-static {v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    #@a2
    move-result-object v23

    #@a3
    .line 297
    .local v23, "keyAlgorithm":Ljava/lang/String;
    invoke-static {v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    #@a6
    move-result-object v32

    #@a7
    .line 298
    .local v32, "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    move-object/from16 v0, v32

    #@a9
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@ab
    move-object/from16 v21, v0

    #@ad
    check-cast v21, Ljava/lang/String;

    #@af
    .line 299
    .local v21, "jcaSignatureAlgorithm":Ljava/lang/String;
    move-object/from16 v0, v32

    #@b1
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@b3
    move-object/from16 v22, v0

    #@b5
    check-cast v22, Ljava/security/spec/AlgorithmParameterSpec;

    #@b7
    .line 303
    .local v22, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    :try_start_2
    invoke-static/range {v23 .. v23}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@ba
    move-result-object v37

    #@bb
    .line 304
    new-instance v38, Ljava/security/spec/X509EncodedKeySpec;

    #@bd
    move-object/from16 v0, v38

    #@bf
    move-object/from16 v1, v27

    #@c1
    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@c4
    .line 303
    invoke-virtual/range {v37 .. v38}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@c7
    move-result-object v26

    #@c8
    .line 305
    .local v26, "publicKey":Ljava/security/PublicKey;
    invoke-static/range {v21 .. v21}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@cb
    move-result-object v28

    #@cc
    .line 306
    .local v28, "sig":Ljava/security/Signature;
    move-object/from16 v0, v28

    #@ce
    move-object/from16 v1, v26

    #@d0
    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@d3
    .line 307
    if-eqz v22, :cond_6

    #@d5
    .line 308
    move-object/from16 v0, v28

    #@d7
    move-object/from16 v1, v22

    #@d9
    invoke-virtual {v0, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    #@dc
    .line 310
    :cond_6
    move-object/from16 v0, v28

    #@de
    move-object/from16 v1, v36

    #@e0
    invoke-virtual {v0, v1}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    #@e3
    .line 311
    move-object/from16 v0, v28

    #@e5
    invoke-virtual {v0, v4}, Ljava/security/Signature;->verify([B)Z
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_1

    #@e8
    move-result v30

    #@e9
    .line 317
    .local v30, "sigVerified":Z
    if-nez v30, :cond_7

    #@eb
    .line 318
    new-instance v37, Ljava/lang/SecurityException;

    #@ed
    new-instance v38, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    move-object/from16 v0, v38

    #@f4
    move-object/from16 v1, v21

    #@f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v38

    #@fa
    const-string/jumbo v39, " signature did not verify"

    #@fd
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v38

    #@101
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v38

    #@105
    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@108
    throw v37

    #@109
    .line 313
    .end local v26    # "publicKey":Ljava/security/PublicKey;
    .end local v28    # "sig":Ljava/security/Signature;
    .end local v30    # "sigVerified":Z
    :catch_1
    move-exception v18

    #@10a
    .line 314
    .local v18, "e":Ljava/security/GeneralSecurityException;
    new-instance v37, Ljava/lang/SecurityException;

    #@10c
    .line 315
    new-instance v38, Ljava/lang/StringBuilder;

    #@10e
    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    #@111
    const-string/jumbo v39, "Failed to verify "

    #@114
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v38

    #@118
    move-object/from16 v0, v38

    #@11a
    move-object/from16 v1, v21

    #@11c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v38

    #@120
    const-string/jumbo v39, " signature"

    #@123
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v38

    #@127
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v38

    #@12b
    .line 314
    move-object/from16 v0, v37

    #@12d
    move-object/from16 v1, v38

    #@12f
    move-object/from16 v2, v18

    #@131
    invoke-direct {v0, v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@134
    throw v37

    #@135
    .line 323
    .end local v18    # "e":Ljava/security/GeneralSecurityException;
    .restart local v26    # "publicKey":Ljava/security/PublicKey;
    .restart local v28    # "sig":Ljava/security/Signature;
    .restart local v30    # "sigVerified":Z
    :cond_7
    const/4 v11, 0x0

    #@136
    .line 324
    .local v11, "contentDigest":[B
    invoke-virtual/range {v36 .. v36}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@139
    .line 325
    invoke-static/range {v36 .. v36}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@13c
    move-result-object v15

    #@13d
    .line 326
    .local v15, "digests":Ljava/nio/ByteBuffer;
    new-instance v16, Ljava/util/ArrayList;

    #@13f
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    #@142
    .line 327
    .local v16, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    #@143
    .line 328
    .end local v11    # "contentDigest":[B
    .local v14, "digestCount":I
    :cond_8
    :goto_1
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@146
    move-result v37

    #@147
    if-eqz v37, :cond_a

    #@149
    .line 329
    add-int/lit8 v14, v14, 0x1

    #@14b
    .line 331
    :try_start_3
    invoke-static {v15}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@14e
    move-result-object v12

    #@14f
    .line 332
    .local v12, "digest":Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    #@152
    move-result v37

    #@153
    const/16 v38, 0x8

    #@155
    move/from16 v0, v37

    #@157
    move/from16 v1, v38

    #@159
    if-ge v0, v1, :cond_9

    #@15b
    .line 333
    new-instance v37, Ljava/io/IOException;

    #@15d
    const-string/jumbo v38, "Record too short"

    #@160
    invoke-direct/range {v37 .. v38}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@163
    throw v37
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_2

    #@164
    .line 340
    .end local v12    # "digest":Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v17

    #@165
    .line 341
    .restart local v17    # "e":Ljava/lang/Exception;
    new-instance v37, Ljava/io/IOException;

    #@167
    new-instance v38, Ljava/lang/StringBuilder;

    #@169
    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    #@16c
    const-string/jumbo v39, "Failed to parse digest record #"

    #@16f
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@172
    move-result-object v38

    #@173
    move-object/from16 v0, v38

    #@175
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@178
    move-result-object v38

    #@179
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17c
    move-result-object v38

    #@17d
    move-object/from16 v0, v37

    #@17f
    move-object/from16 v1, v38

    #@181
    move-object/from16 v2, v17

    #@183
    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@186
    throw v37

    #@187
    .line 335
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v12    # "digest":Ljava/nio/ByteBuffer;
    :cond_9
    :try_start_4
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    #@18a
    move-result v29

    #@18b
    .line 336
    .restart local v29    # "sigAlgorithm":I
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18e
    move-result-object v37

    #@18f
    move-object/from16 v0, v16

    #@191
    move-object/from16 v1, v37

    #@193
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@196
    .line 337
    move/from16 v0, v29

    #@198
    if-ne v0, v3, :cond_8

    #@19a
    .line 338
    invoke-static {v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_2

    #@19d
    move-result-object v11

    #@19e
    .local v11, "contentDigest":[B
    goto :goto_1

    #@19f
    .line 345
    .end local v11    # "contentDigest":[B
    .end local v12    # "digest":Ljava/nio/ByteBuffer;
    .end local v29    # "sigAlgorithm":I
    :cond_a
    move-object/from16 v0, v35

    #@1a1
    move-object/from16 v1, v16

    #@1a3
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@1a6
    move-result v37

    #@1a7
    if-nez v37, :cond_b

    #@1a9
    .line 346
    new-instance v37, Ljava/lang/SecurityException;

    #@1ab
    .line 347
    const-string/jumbo v38, "Signature algorithms don\'t match between digests and signatures records"

    #@1ae
    .line 346
    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1b1
    throw v37

    #@1b2
    .line 349
    :cond_b
    invoke-static {v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    #@1b5
    move-result v13

    #@1b6
    .line 350
    .local v13, "digestAlgorithm":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b9
    move-result-object v37

    #@1ba
    move-object/from16 v0, p1

    #@1bc
    move-object/from16 v1, v37

    #@1be
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c1
    move-result-object v25

    #@1c2
    check-cast v25, [B

    #@1c4
    .line 351
    .local v25, "previousSignerDigest":[B
    if-eqz v25, :cond_c

    #@1c6
    .line 352
    move-object/from16 v0, v25

    #@1c8
    invoke-static {v0, v11}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    #@1cb
    move-result v37

    #@1cc
    if-eqz v37, :cond_d

    #@1ce
    .line 358
    :cond_c
    invoke-static/range {v36 .. v36}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@1d1
    move-result-object v9

    #@1d2
    .line 359
    .local v9, "certificates":Ljava/nio/ByteBuffer;
    new-instance v10, Ljava/util/ArrayList;

    #@1d4
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@1d7
    .line 360
    .local v10, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v7, 0x0

    #@1d8
    .line 361
    .local v7, "certificateCount":I
    :goto_2
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@1db
    move-result v37

    #@1dc
    if-eqz v37, :cond_e

    #@1de
    .line 362
    add-int/lit8 v7, v7, 0x1

    #@1e0
    .line 363
    invoke-static {v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    #@1e3
    move-result-object v20

    #@1e4
    .line 367
    .local v20, "encodedCert":[B
    :try_start_5
    new-instance v37, Ljava/io/ByteArrayInputStream;

    #@1e6
    move-object/from16 v0, v37

    #@1e8
    move-object/from16 v1, v20

    #@1ea
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@1ed
    move-object/from16 v0, p2

    #@1ef
    move-object/from16 v1, v37

    #@1f1
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@1f4
    move-result-object v5

    #@1f5
    .line 366
    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_3

    #@1f7
    .line 371
    .local v5, "certificate":Ljava/security/cert/X509Certificate;
    new-instance v6, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;

    #@1f9
    move-object/from16 v0, v20

    #@1fb
    invoke-direct {v6, v5, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    #@1fe
    .line 372
    .end local v5    # "certificate":Ljava/security/cert/X509Certificate;
    .local v6, "certificate":Ljava/security/cert/X509Certificate;
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@201
    goto :goto_2

    #@202
    .line 353
    .end local v6    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v7    # "certificateCount":I
    .end local v9    # "certificates":Ljava/nio/ByteBuffer;
    .end local v10    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v20    # "encodedCert":[B
    :cond_d
    new-instance v37, Ljava/lang/SecurityException;

    #@204
    .line 354
    new-instance v38, Ljava/lang/StringBuilder;

    #@206
    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    #@209
    invoke-static {v13}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    #@20c
    move-result-object v39

    #@20d
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@210
    move-result-object v38

    #@211
    .line 355
    const-string/jumbo v39, " contents digest does not match the digest specified by a preceding signer"

    #@214
    .line 354
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@217
    move-result-object v38

    #@218
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21b
    move-result-object v38

    #@21c
    .line 353
    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@21f
    throw v37

    #@220
    .line 368
    .restart local v7    # "certificateCount":I
    .restart local v9    # "certificates":Ljava/nio/ByteBuffer;
    .restart local v10    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v20    # "encodedCert":[B
    :catch_3
    move-exception v19

    #@221
    .line 369
    .local v19, "e":Ljava/security/cert/CertificateException;
    new-instance v37, Ljava/lang/SecurityException;

    #@223
    new-instance v38, Ljava/lang/StringBuilder;

    #@225
    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    #@228
    const-string/jumbo v39, "Failed to decode certificate #"

    #@22b
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22e
    move-result-object v38

    #@22f
    move-object/from16 v0, v38

    #@231
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@234
    move-result-object v38

    #@235
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@238
    move-result-object v38

    #@239
    move-object/from16 v0, v37

    #@23b
    move-object/from16 v1, v38

    #@23d
    move-object/from16 v2, v19

    #@23f
    invoke-direct {v0, v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@242
    throw v37

    #@243
    .line 375
    .end local v19    # "e":Ljava/security/cert/CertificateException;
    .end local v20    # "encodedCert":[B
    :cond_e
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    #@246
    move-result v37

    #@247
    if-eqz v37, :cond_f

    #@249
    .line 376
    new-instance v37, Ljava/lang/SecurityException;

    #@24b
    const-string/jumbo v38, "No certificates listed"

    #@24e
    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@251
    throw v37

    #@252
    .line 378
    :cond_f
    const/16 v37, 0x0

    #@254
    move/from16 v0, v37

    #@256
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@259
    move-result-object v24

    #@25a
    check-cast v24, Ljava/security/cert/X509Certificate;

    #@25c
    .line 379
    .local v24, "mainCertificate":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v24 .. v24}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@25f
    move-result-object v37

    #@260
    invoke-interface/range {v37 .. v37}, Ljava/security/PublicKey;->getEncoded()[B

    #@263
    move-result-object v8

    #@264
    .line 380
    .local v8, "certificatePublicKeyBytes":[B
    move-object/from16 v0, v27

    #@266
    invoke-static {v0, v8}, Ljava/util/Arrays;->equals([B[B)Z

    #@269
    move-result v37

    #@26a
    if-nez v37, :cond_10

    #@26c
    .line 381
    new-instance v37, Ljava/lang/SecurityException;

    #@26e
    .line 382
    const-string/jumbo v38, "Public key mismatch between certificate and signature record"

    #@271
    .line 381
    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@274
    throw v37

    #@275
    .line 385
    :cond_10
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@278
    move-result v37

    #@279
    move/from16 v0, v37

    #@27b
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    #@27d
    move-object/from16 v37, v0

    #@27f
    move-object/from16 v0, v37

    #@281
    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@284
    move-result-object v37

    #@285
    check-cast v37, [Ljava/security/cert/X509Certificate;

    #@287
    return-object v37
.end method
