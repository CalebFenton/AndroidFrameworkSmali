.class public final Landroid/util/apk/ApkSigningBlockUtils;
.super Ljava/lang/Object;
.source "ApkSigningBlockUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;,
        Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    }
.end annotation


# static fields
.field private static final blacklist APK_SIG_BLOCK_MAGIC_HI:J = 0x3234206b636f6c42L

.field private static final blacklist APK_SIG_BLOCK_MAGIC_LO:J = 0x20676953204b5041L

.field private static final blacklist APK_SIG_BLOCK_MIN_SIZE:I = 0x20

.field private static final blacklist CHUNK_SIZE_BYTES:I = 0x100000

.field public static final blacklist CONTENT_DIGEST_CHUNKED_SHA256:I = 0x1

.field public static final blacklist CONTENT_DIGEST_CHUNKED_SHA512:I = 0x2

.field public static final blacklist CONTENT_DIGEST_SHA256:I = 0x4

.field public static final blacklist CONTENT_DIGEST_VERITY_CHUNKED_SHA256:I = 0x3

.field static final blacklist SIGNATURE_DSA_WITH_SHA256:I = 0x301

.field static final blacklist SIGNATURE_ECDSA_WITH_SHA256:I = 0x201

.field static final blacklist SIGNATURE_ECDSA_WITH_SHA512:I = 0x202

.field static final blacklist SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA256:I = 0x103

.field static final blacklist SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA512:I = 0x104

.field static final blacklist SIGNATURE_RSA_PSS_WITH_SHA256:I = 0x101

.field static final blacklist SIGNATURE_RSA_PSS_WITH_SHA512:I = 0x102

.field static final blacklist SIGNATURE_VERITY_DSA_WITH_SHA256:I = 0x425

.field static final blacklist SIGNATURE_VERITY_ECDSA_WITH_SHA256:I = 0x423

.field static final blacklist SIGNATURE_VERITY_RSA_PKCS1_V1_5_WITH_SHA256:I = 0x421


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static blacklist checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 794
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_9

    .line 797
    return-void

    .line 795
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist compareContentDigestAlgorithm(II)I
    .registers 6
    .param p0, "digestAlgorithm1"    # I
    .param p1, "digestAlgorithm2"    # I

    .line 451
    const/4 v0, 0x1

    const/4 v1, -0x1

    const-string v2, "Unknown digestAlgorithm2: "

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_76

    .line 487
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown digestAlgorithm1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :pswitch_21
    packed-switch p1, :pswitch_data_80

    .line 483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :pswitch_3b
    return v3

    .line 477
    :pswitch_3c
    return v1

    .line 481
    :pswitch_3d
    return v0

    .line 464
    :pswitch_3e
    packed-switch p1, :pswitch_data_8a

    .line 471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :pswitch_58
    return v3

    .line 467
    :pswitch_59
    return v0

    .line 453
    :pswitch_5a
    packed-switch p1, :pswitch_data_94

    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :pswitch_74
    return v1

    .line 455
    :pswitch_75
    return v3

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_3e
        :pswitch_21
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_59
        :pswitch_58
        :pswitch_59
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_75
        :pswitch_74
        :pswitch_74
    .end packed-switch
.end method

.method static blacklist compareSignatureAlgorithm(II)I
    .registers 5
    .param p0, "sigAlgorithm1"    # I
    .param p1, "sigAlgorithm2"    # I

    .line 445
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v0

    .line 446
    .local v0, "digestAlgorithm1":I
    invoke-static {p1}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v1

    .line 447
    .local v1, "digestAlgorithm2":I
    invoke-static {v0, v1}, Landroid/util/apk/ApkSigningBlockUtils;->compareContentDigestAlgorithm(II)I

    move-result v2

    return v2
.end method

.method public static blacklist computeContentDigestsPer1MbChunk([ILjava/io/FileDescriptor;Landroid/util/apk/SignatureInfo;)[[B
    .registers 10
    .param p0, "digestAlgorithms"    # [I
    .param p1, "apkFileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 202
    iget-wide v0, p2, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    .line 203
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Landroid/util/apk/DataSource;->create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;

    move-result-object v0

    .line 204
    .local v0, "beforeApkSigningBlock":Landroid/util/apk/DataSource;
    iget-wide v1, p2, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v3, p2, Landroid/util/apk/SignatureInfo;->eocdOffset:J

    iget-wide v5, p2, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    sub-long/2addr v3, v5

    .line 205
    invoke-static {p1, v1, v2, v3, v4}, Landroid/util/apk/DataSource;->create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;

    move-result-object v1

    .line 211
    .local v1, "centralDir":Landroid/util/apk/DataSource;
    iget-object v2, p2, Landroid/util/apk/SignatureInfo;->eocd:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 212
    .local v2, "eocdBuf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 213
    iget-wide v3, p2, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    invoke-static {v2, v3, v4}, Landroid/util/apk/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    .line 214
    new-instance v3, Landroid/util/apk/ByteBufferDataSource;

    invoke-direct {v3, v2}, Landroid/util/apk/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    .line 216
    .local v3, "eocd":Landroid/util/apk/DataSource;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/util/apk/DataSource;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {p0, v4}, Landroid/util/apk/ApkSigningBlockUtils;->computeContentDigestsPer1MbChunk([I[Landroid/util/apk/DataSource;)[[B

    move-result-object v4

    return-object v4
.end method

.method private static blacklist computeContentDigestsPer1MbChunk([I[Landroid/util/apk/DataSource;)[[B
    .registers 30
    .param p0, "digestAlgorithms"    # [I
    .param p1, "contents"    # [Landroid/util/apk/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 233
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide/16 v3, 0x0

    .line 234
    .local v3, "totalChunkCountLong":J
    array-length v0, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_9
    if-ge v6, v0, :cond_19

    aget-object v7, v2, v6

    .line 235
    .local v7, "input":Landroid/util/apk/DataSource;
    invoke-interface {v7}, Landroid/util/apk/DataSource;->size()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/util/apk/ApkSigningBlockUtils;->getChunkCount(J)J

    move-result-wide v8

    add-long/2addr v3, v8

    .line 234
    .end local v7    # "input":Landroid/util/apk/DataSource;
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 237
    :cond_19
    const-wide/32 v6, 0x1fffff

    cmp-long v0, v3, v6

    if-gez v0, :cond_1b0

    .line 240
    long-to-int v6, v3

    .line 242
    .local v6, "totalChunkCount":I
    array-length v0, v1

    new-array v7, v0, [[B

    .line 243
    .local v7, "digestsOfChunks":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    array-length v8, v1

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-ge v0, v8, :cond_41

    .line 244
    aget v8, v1, v0

    .line 245
    .local v8, "digestAlgorithm":I
    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmOutputSizeBytes(I)I

    move-result v11

    .line 246
    .local v11, "digestOutputSizeBytes":I
    mul-int v12, v6, v11

    add-int/2addr v12, v9

    new-array v9, v12, [B

    .line 248
    .local v9, "concatenationOfChunkCountAndChunkDigests":[B
    const/16 v12, 0x5a

    aput-byte v12, v9, v5

    .line 249
    invoke-static {v6, v9, v10}, Landroid/util/apk/ApkSigningBlockUtils;->setUnsignedInt32LittleEndian(I[BI)V

    .line 253
    aput-object v9, v7, v0

    .line 243
    .end local v8    # "digestAlgorithm":I
    .end local v9    # "concatenationOfChunkCountAndChunkDigests":[B
    .end local v11    # "digestOutputSizeBytes":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 256
    .end local v0    # "i":I
    :cond_41
    new-array v8, v9, [B

    .line 257
    .local v8, "chunkContentPrefix":[B
    const/16 v0, -0x5b

    aput-byte v0, v8, v5

    .line 258
    const/4 v11, 0x0

    .line 259
    .local v11, "chunkIndex":I
    array-length v0, v1

    new-array v12, v0, [Ljava/security/MessageDigest;

    .line 260
    .local v12, "mds":[Ljava/security/MessageDigest;
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_4d
    array-length v0, v1

    const-string v14, " digest not supported"

    if-ge v13, v0, :cond_7a

    .line 261
    aget v0, v1, v13

    .line 262
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v15

    .line 264
    .local v15, "jcaAlgorithmName":Ljava/lang/String;
    :try_start_58
    invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    aput-object v0, v12, v13
    :try_end_5e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_58 .. :try_end_5e} :catch_62

    .line 267
    nop

    .line 260
    .end local v15    # "jcaAlgorithmName":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    goto :goto_4d

    .line 265
    .restart local v15    # "jcaAlgorithmName":Ljava/lang/String;
    :catch_62
    move-exception v0

    .line 266
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 272
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v13    # "i":I
    .end local v15    # "jcaAlgorithmName":Ljava/lang/String;
    :cond_7a
    new-instance v0, Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;

    invoke-direct {v0, v12}, Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;-><init>([Ljava/security/MessageDigest;)V

    move-object v13, v0

    .line 273
    .local v13, "digester":Landroid/util/apk/DataDigester;
    const/4 v0, 0x0

    .line 274
    .local v0, "dataSourceIndex":I
    array-length v15, v2

    move/from16 v27, v5

    move v5, v0

    move/from16 v0, v27

    .end local v0    # "dataSourceIndex":I
    .local v5, "dataSourceIndex":I
    :goto_87
    if-ge v0, v15, :cond_173

    move/from16 v16, v9

    aget-object v9, v2, v0

    .line 275
    .local v9, "input":Landroid/util/apk/DataSource;
    const-wide/16 v17, 0x0

    .line 276
    .local v17, "inputOffset":J
    invoke-interface {v9}, Landroid/util/apk/DataSource;->size()J

    move-result-wide v19

    move-wide/from16 v21, v17

    move/from16 v18, v11

    move-wide/from16 v10, v19

    .line 277
    .end local v11    # "chunkIndex":I
    .end local v17    # "inputOffset":J
    .local v10, "inputRemaining":J
    .local v18, "chunkIndex":I
    .local v21, "inputOffset":J
    :goto_99
    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-lez v19, :cond_159

    .line 278
    move/from16 v19, v6

    move-object/from16 v20, v7

    .end local v6    # "totalChunkCount":I
    .end local v7    # "digestsOfChunks":[[B
    .local v19, "totalChunkCount":I
    .local v20, "digestsOfChunks":[[B
    const-wide/32 v6, 0x100000

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    .line 279
    .local v6, "chunkSize":I
    const/4 v7, 0x1

    invoke-static {v6, v8, v7}, Landroid/util/apk/ApkSigningBlockUtils;->setUnsignedInt32LittleEndian(I[BI)V

    .line 280
    const/16 v17, 0x0

    move/from16 v7, v17

    .local v7, "i":I
    :goto_b3
    move/from16 v17, v0

    array-length v0, v12

    if-ge v7, v0, :cond_c2

    .line 281
    aget-object v0, v12, v7

    invoke-virtual {v0, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 280
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v17

    goto :goto_b3

    .line 284
    .end local v7    # "i":I
    :cond_c2
    move-object/from16 v23, v8

    move-wide/from16 v7, v21

    .end local v8    # "chunkContentPrefix":[B
    .end local v21    # "inputOffset":J
    .local v7, "inputOffset":J
    .local v23, "chunkContentPrefix":[B
    :try_start_c6
    invoke-interface {v9, v13, v7, v8, v6}, Landroid/util/apk/DataSource;->feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_131

    .line 290
    nop

    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_cb
    array-length v2, v1

    if-ge v0, v2, :cond_119

    .line 292
    aget v2, v1, v0

    .line 293
    .local v2, "digestAlgorithm":I
    move/from16 v21, v0

    .end local v0    # "i":I
    .local v21, "i":I
    aget-object v0, v20, v21

    .line 294
    .local v0, "concatenationOfChunkCountAndChunkDigests":[B
    nop

    .line 295
    move/from16 v22, v2

    .end local v2    # "digestAlgorithm":I
    .local v22, "digestAlgorithm":I
    invoke-static/range {v22 .. v22}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmOutputSizeBytes(I)I

    move-result v2

    .line 296
    .local v2, "expectedDigestSizeBytes":I
    move-wide/from16 v24, v7

    .end local v7    # "inputOffset":J
    .local v24, "inputOffset":J
    aget-object v7, v12, v21

    .line 297
    .local v7, "md":Ljava/security/MessageDigest;
    mul-int v8, v18, v2

    add-int/lit8 v8, v8, 0x5

    .line 298
    invoke-virtual {v7, v0, v8, v2}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v8

    .line 302
    .local v8, "actualDigestSizeBytes":I
    if-ne v8, v2, :cond_f0

    .line 291
    .end local v0    # "concatenationOfChunkCountAndChunkDigests":[B
    .end local v2    # "expectedDigestSizeBytes":I
    .end local v7    # "md":Ljava/security/MessageDigest;
    .end local v8    # "actualDigestSizeBytes":I
    .end local v22    # "digestAlgorithm":I
    add-int/lit8 v0, v21, 0x1

    move-object/from16 v2, p1

    move-wide/from16 v7, v24

    .end local v21    # "i":I
    .local v0, "i":I
    goto :goto_cb

    .line 303
    .local v0, "concatenationOfChunkCountAndChunkDigests":[B
    .restart local v2    # "expectedDigestSizeBytes":I
    .restart local v7    # "md":Ljava/security/MessageDigest;
    .restart local v8    # "actualDigestSizeBytes":I
    .restart local v21    # "i":I
    .restart local v22    # "digestAlgorithm":I
    :cond_f0
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v0

    .end local v0    # "concatenationOfChunkCountAndChunkDigests":[B
    .local v26, "concatenationOfChunkCountAndChunkDigests":[B
    const-string v0, "Unexpected output size of "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 304
    invoke-virtual {v7}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " digest: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 291
    .end local v2    # "expectedDigestSizeBytes":I
    .end local v8    # "actualDigestSizeBytes":I
    .end local v21    # "i":I
    .end local v22    # "digestAlgorithm":I
    .end local v24    # "inputOffset":J
    .end local v26    # "concatenationOfChunkCountAndChunkDigests":[B
    .local v0, "i":I
    .local v7, "inputOffset":J
    :cond_119
    move/from16 v21, v0

    move-wide/from16 v24, v7

    .line 308
    .end local v0    # "i":I
    .end local v7    # "inputOffset":J
    .restart local v24    # "inputOffset":J
    int-to-long v7, v6

    add-long v21, v24, v7

    .line 309
    .end local v24    # "inputOffset":J
    .local v21, "inputOffset":J
    int-to-long v7, v6

    sub-long/2addr v10, v7

    .line 310
    nop

    .end local v6    # "chunkSize":I
    add-int/lit8 v18, v18, 0x1

    .line 311
    move-object/from16 v2, p1

    move/from16 v0, v17

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v23

    goto/16 :goto_99

    .line 285
    .end local v21    # "inputOffset":J
    .restart local v6    # "chunkSize":I
    .restart local v7    # "inputOffset":J
    :catch_131
    move-exception v0

    move-wide/from16 v24, v7

    .line 286
    .end local v7    # "inputOffset":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v24    # "inputOffset":J
    new-instance v2, Ljava/security/DigestException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to digest chunk #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v8, v18

    .end local v18    # "chunkIndex":I
    .local v8, "chunkIndex":I
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, " of section #"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7, v0}, Ljava/security/DigestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 312
    .end local v0    # "e":Ljava/io/IOException;
    .end local v19    # "totalChunkCount":I
    .end local v20    # "digestsOfChunks":[[B
    .end local v23    # "chunkContentPrefix":[B
    .end local v24    # "inputOffset":J
    .local v6, "totalChunkCount":I
    .local v7, "digestsOfChunks":[[B
    .local v8, "chunkContentPrefix":[B
    .restart local v18    # "chunkIndex":I
    .restart local v21    # "inputOffset":J
    :cond_159
    move/from16 v17, v0

    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v23, v8

    move/from16 v8, v18

    move-wide/from16 v24, v21

    .end local v6    # "totalChunkCount":I
    .end local v7    # "digestsOfChunks":[[B
    .end local v9    # "input":Landroid/util/apk/DataSource;
    .end local v10    # "inputRemaining":J
    .end local v18    # "chunkIndex":I
    .end local v21    # "inputOffset":J
    .local v8, "chunkIndex":I
    .restart local v19    # "totalChunkCount":I
    .restart local v20    # "digestsOfChunks":[[B
    .restart local v23    # "chunkContentPrefix":[B
    add-int/lit8 v5, v5, 0x1

    .line 274
    add-int/lit8 v0, v17, 0x1

    move-object/from16 v2, p1

    move v11, v8

    move/from16 v9, v16

    move-object/from16 v8, v23

    const/4 v10, 0x1

    goto/16 :goto_87

    .line 315
    .end local v19    # "totalChunkCount":I
    .end local v20    # "digestsOfChunks":[[B
    .end local v23    # "chunkContentPrefix":[B
    .restart local v6    # "totalChunkCount":I
    .restart local v7    # "digestsOfChunks":[[B
    .local v8, "chunkContentPrefix":[B
    .restart local v11    # "chunkIndex":I
    :cond_173
    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v23, v8

    .end local v6    # "totalChunkCount":I
    .end local v7    # "digestsOfChunks":[[B
    .end local v8    # "chunkContentPrefix":[B
    .restart local v19    # "totalChunkCount":I
    .restart local v20    # "digestsOfChunks":[[B
    .restart local v23    # "chunkContentPrefix":[B
    array-length v0, v1

    new-array v2, v0, [[B

    .line 316
    .local v2, "result":[[B
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_17e
    array-length v0, v1

    if-ge v6, v0, :cond_1af

    .line 317
    aget v7, v1, v6

    .line 318
    .local v7, "digestAlgorithm":I
    aget-object v8, v20, v6

    .line 319
    .local v8, "input":[B
    invoke-static {v7}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v9

    .line 322
    .local v9, "jcaAlgorithmName":Ljava/lang/String;
    :try_start_189
    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_18d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_189 .. :try_end_18d} :catch_197

    .line 325
    .local v0, "md":Ljava/security/MessageDigest;
    nop

    .line 326
    invoke-virtual {v0, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    .line 327
    .local v10, "output":[B
    aput-object v10, v2, v6

    .line 316
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v7    # "digestAlgorithm":I
    .end local v8    # "input":[B
    .end local v9    # "jcaAlgorithmName":Ljava/lang/String;
    .end local v10    # "output":[B
    add-int/lit8 v6, v6, 0x1

    goto :goto_17e

    .line 323
    .restart local v7    # "digestAlgorithm":I
    .restart local v8    # "input":[B
    .restart local v9    # "jcaAlgorithmName":Ljava/lang/String;
    :catch_197
    move-exception v0

    .line 324
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 329
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v6    # "i":I
    .end local v7    # "digestAlgorithm":I
    .end local v8    # "input":[B
    .end local v9    # "jcaAlgorithmName":Ljava/lang/String;
    :cond_1af
    return-object v2

    .line 238
    .end local v2    # "result":[[B
    .end local v5    # "dataSourceIndex":I
    .end local v11    # "chunkIndex":I
    .end local v12    # "mds":[Ljava/security/MessageDigest;
    .end local v13    # "digester":Landroid/util/apk/DataDigester;
    .end local v19    # "totalChunkCount":I
    .end local v20    # "digestsOfChunks":[[B
    .end local v23    # "chunkContentPrefix":[B
    :cond_1b0
    new-instance v0, Ljava/security/DigestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many chunks: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist findApkSignatureSchemeBlock(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .registers 12
    .param p0, "apkSigningBlock"    # Ljava/nio/ByteBuffer;
    .param p1, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 753
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 760
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    const/16 v1, 0x8

    invoke-static {p0, v1, v0}, Landroid/util/apk/ApkSigningBlockUtils;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 762
    .local v0, "pairs":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 763
    .local v2, "entryCount":I
    :goto_10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 764
    add-int/lit8 v2, v2, 0x1

    .line 765
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v1, :cond_9c

    .line 769
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 770
    .local v3, "lenLong":J
    const-wide/16 v5, 0x4

    cmp-long v5, v3, v5

    const-string v6, " size out of range: "

    const-string v7, "APK Signing Block entry #"

    if-ltz v5, :cond_7d

    const-wide/32 v8, 0x7fffffff

    cmp-long v5, v3, v8

    if-gtz v5, :cond_7d

    .line 775
    long-to-int v5, v3

    .line 776
    .local v5, "len":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v5

    .line 777
    .local v8, "nextEntryPos":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-gt v5, v9, :cond_50

    .line 782
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 783
    .local v6, "id":I
    if-ne v6, p1, :cond_4c

    .line 784
    add-int/lit8 v1, v5, -0x4

    invoke-static {v0, v1}, Landroid/util/apk/ApkSigningBlockUtils;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 786
    :cond_4c
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 787
    .end local v3    # "lenLong":J
    .end local v5    # "len":I
    .end local v6    # "id":I
    .end local v8    # "nextEntryPos":I
    goto :goto_10

    .line 778
    .restart local v3    # "lenLong":J
    .restart local v5    # "len":I
    .restart local v8    # "nextEntryPos":I
    :cond_50
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 780
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 771
    .end local v5    # "len":I
    .end local v8    # "nextEntryPos":I
    :cond_7d
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 766
    .end local v3    # "lenLong":J
    :cond_9c
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 789
    :cond_b5
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No block with ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in APK Signing Block."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;
    .registers 15
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "centralDirOffset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 708
    const-wide/16 v0, 0x20

    cmp-long v0, p1, v0

    if-ltz v0, :cond_f3

    .line 716
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 717
    .local v0, "footer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 718
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 719
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 720
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, 0x20676953204b5041L

    cmp-long v1, v1, v3

    if-nez v1, :cond_eb

    .line 721
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v1, v1, v3

    if-nez v1, :cond_eb

    .line 726
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 727
    .local v2, "apkSigBlockSizeInFooter":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_d2

    const-wide/32 v4, 0x7ffffff7

    cmp-long v4, v2, v4

    if-gtz v4, :cond_d2

    .line 732
    const-wide/16 v4, 0x8

    add-long/2addr v4, v2

    long-to-int v4, v4

    .line 733
    .local v4, "totalSize":I
    int-to-long v5, v4

    sub-long v5, p1, v5

    .line 734
    .local v5, "apkSigBlockOffset":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_b9

    .line 738
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 739
    .local v7, "apkSigBlock":Ljava/nio/ByteBuffer;
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 740
    invoke-virtual {p0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 741
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    invoke-virtual {p0, v8, v9, v10}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 742
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    .line 743
    .local v8, "apkSigBlockSizeInHeader":J
    cmp-long v1, v8, v2

    if-nez v1, :cond_96

    .line 748
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 744
    :cond_96
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APK Signing Block sizes in header and footer do not match: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " vs "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 735
    .end local v7    # "apkSigBlock":Ljava/nio/ByteBuffer;
    .end local v8    # "apkSigBlockSizeInHeader":J
    :cond_b9
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APK Signing Block offset out of range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 729
    .end local v4    # "totalSize":I
    .end local v5    # "apkSigBlockOffset":J
    :cond_d2
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APK Signing Block size out of range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 722
    .end local v2    # "apkSigBlockSizeInFooter":J
    :cond_eb
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    const-string v2, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v1, v2}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 709
    .end local v0    # "footer":Ljava/nio/ByteBuffer;
    :cond_f3
    new-instance v0, Landroid/util/apk/SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;
    .registers 14
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 72
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v0

    .line 73
    .local v0, "eocdAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 74
    .local v10, "eocd":Ljava/nio/ByteBuffer;
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 75
    .local v8, "eocdOffset":J
    invoke-static {p0, v8, v9}, Landroid/util/apk/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v1

    if-nez v1, :cond_37

    .line 80
    invoke-static {v10, v8, v9}, Landroid/util/apk/ApkSigningBlockUtils;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v6

    .line 81
    .local v6, "centralDirOffset":J
    nop

    .line 82
    invoke-static {p0, v6, v7}, Landroid/util/apk/ApkSigningBlockUtils;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;

    move-result-object v1

    .line 83
    .local v1, "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Ljava/nio/ByteBuffer;

    .line 84
    .local v11, "apkSigningBlock":Ljava/nio/ByteBuffer;
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 87
    .local v4, "apkSigningBlockOffset":J
    invoke-static {v11, p1}, Landroid/util/apk/ApkSigningBlockUtils;->findApkSignatureSchemeBlock(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 90
    .local v3, "apkSignatureSchemeBlock":Ljava/nio/ByteBuffer;
    new-instance v2, Landroid/util/apk/SignatureInfo;

    invoke-direct/range {v2 .. v10}, Landroid/util/apk/SignatureInfo;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V

    return-object v2

    .line 76
    .end local v1    # "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .end local v3    # "apkSignatureSchemeBlock":Ljava/nio/ByteBuffer;
    .end local v4    # "apkSigningBlockOffset":J
    .end local v6    # "centralDirOffset":J
    .end local v11    # "apkSigningBlock":Ljava/nio/ByteBuffer;
    :cond_37
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    const-string v2, "ZIP64 APK not supported"

    invoke-direct {v1, v2}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .registers 7
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .line 638
    if-ltz p1, :cond_31

    .line 641
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 642
    .local v0, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 643
    .local v1, "position":I
    add-int v2, v1, p1

    .line 644
    .local v2, "limit":I
    if-lt v2, v1, :cond_2b

    if-gt v2, v0, :cond_2b

    .line 647
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 649
    :try_start_13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 650
    .local v3, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 651
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_26

    .line 652
    nop

    .line 654
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 652
    return-object v3

    .line 654
    .end local v3    # "result":Ljava/nio/ByteBuffer;
    :catchall_26
    move-exception v3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 655
    throw v3

    .line 645
    :cond_2b
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 639
    .end local v0    # "originalLimit":I
    .end local v1    # "position":I
    .end local v2    # "limit":I
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getCentralDirOffset(Ljava/nio/ByteBuffer;J)J
    .registers 9
    .param p0, "eocd"    # Ljava/nio/ByteBuffer;
    .param p1, "eocdOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 407
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 408
    .local v0, "centralDirOffset":J
    cmp-long v2, v0, p1

    if-gtz v2, :cond_1b

    .line 413
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 414
    .local v2, "centralDirSize":J
    add-long v4, v0, v2

    cmp-long v4, v4, p1

    if-nez v4, :cond_13

    .line 419
    return-wide v0

    .line 415
    :cond_13
    new-instance v4, Landroid/util/apk/SignatureNotFoundException;

    const-string v5, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {v4, v5}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 409
    .end local v2    # "centralDirSize":J
    :cond_1b
    new-instance v2, Landroid/util/apk/SignatureNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZIP Central Directory offset out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". ZIP End of Central Directory offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist getChunkCount(J)J
    .registers 8
    .param p0, "inputSizeBytes"    # J

    .line 423
    const-wide/32 v0, 0x100000

    add-long v2, p0, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    return-wide v2
.end method

.method static blacklist getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;
    .registers 4
    .param p0, "digestAlgorithm"    # I

    .line 514
    packed-switch p0, :pswitch_data_22

    .line 521
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown content digest algorthm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :pswitch_1c
    const-string v0, "SHA-512"

    return-object v0

    .line 517
    :pswitch_1f
    const-string v0, "SHA-256"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method

.method private static blacklist getContentDigestAlgorithmOutputSizeBytes(I)I
    .registers 4
    .param p0, "digestAlgorithm"    # I

    .line 527
    packed-switch p0, :pswitch_data_22

    .line 534
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown content digest algorthm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :pswitch_1c
    const/16 v0, 0x40

    return v0

    .line 530
    :pswitch_1f
    const/16 v0, 0x20

    return v0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method

.method static blacklist getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;
    .registers 4
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 395
    nop

    .line 396
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v0

    .line 397
    .local v0, "eocdAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    if-eqz v0, :cond_8

    .line 401
    return-object v0

    .line 398
    :cond_8
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    const-string v2, "Not an APK file: ZIP End of Central Directory record not found"

    invoke-direct {v1, v2}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 5
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_47

    .line 664
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 665
    .local v0, "len":I
    if-ltz v0, :cond_3f

    .line 667
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_18

    .line 671
    invoke-static {p0, v0}, Landroid/util/apk/ApkSigningBlockUtils;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 668
    :cond_18
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length-prefixed field longer than remaining buffer. Field length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 669
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 666
    :cond_3f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    .end local v0    # "len":I
    :cond_47
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 662
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getSignatureAlgorithmContentDigestAlgorithm(I)I
    .registers 5
    .param p0, "sigAlgorithm"    # I

    .line 492
    sparse-switch p0, :sswitch_data_2a

    .line 507
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    .line 509
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :sswitch_23
    const/4 v0, 0x3

    return v0

    .line 501
    :sswitch_25
    const/4 v0, 0x2

    return v0

    .line 497
    :sswitch_27
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_2a
    .sparse-switch
        0x101 -> :sswitch_27
        0x102 -> :sswitch_25
        0x103 -> :sswitch_27
        0x104 -> :sswitch_25
        0x201 -> :sswitch_27
        0x202 -> :sswitch_25
        0x301 -> :sswitch_27
        0x421 -> :sswitch_23
        0x423 -> :sswitch_23
        0x425 -> :sswitch_23
    .end sparse-switch
.end method

.method static blacklist getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;
    .registers 5
    .param p0, "sigAlgorithm"    # I

    .line 540
    sparse-switch p0, :sswitch_data_2c

    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    .line 557
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :sswitch_23
    const-string v0, "DSA"

    return-object v0

    .line 550
    :sswitch_26
    const-string v0, "EC"

    return-object v0

    .line 546
    :sswitch_29
    const-string v0, "RSA"

    return-object v0

    :sswitch_data_2c
    .sparse-switch
        0x101 -> :sswitch_29
        0x102 -> :sswitch_29
        0x103 -> :sswitch_29
        0x104 -> :sswitch_29
        0x201 -> :sswitch_26
        0x202 -> :sswitch_26
        0x301 -> :sswitch_23
        0x421 -> :sswitch_29
        0x423 -> :sswitch_26
        0x425 -> :sswitch_23
    .end sparse-switch
.end method

.method static blacklist getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;
    .registers 8
    .param p0, "sigAlgorithm"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation

    .line 563
    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_72

    .line 588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    .line 590
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :sswitch_24
    const-string v1, "SHA256withDSA"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 583
    :sswitch_2b
    const-string v1, "SHA512withECDSA"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 581
    :sswitch_32
    const-string v1, "SHA256withECDSA"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 578
    :sswitch_39
    const-string v1, "SHA512withRSA"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 576
    :sswitch_40
    const-string v1, "SHA256withRSA"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 570
    :sswitch_47
    new-instance v1, Ljava/security/spec/PSSParameterSpec;

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v5, 0x40

    const/4 v6, 0x1

    const-string v2, "SHA-512"

    const-string v3, "MGF1"

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v0, "SHA512withRSA/PSS"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 565
    :sswitch_5c
    new-instance v1, Ljava/security/spec/PSSParameterSpec;

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v5, 0x20

    const/4 v6, 0x1

    const-string v2, "SHA-256"

    const-string v3, "MGF1"

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v0, "SHA256withRSA/PSS"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_72
    .sparse-switch
        0x101 -> :sswitch_5c
        0x102 -> :sswitch_47
        0x103 -> :sswitch_40
        0x104 -> :sswitch_39
        0x201 -> :sswitch_32
        0x202 -> :sswitch_2b
        0x301 -> :sswitch_24
        0x421 -> :sswitch_40
        0x423 -> :sswitch_32
        0x425 -> :sswitch_24
    .end sparse-switch
.end method

.method static blacklist isSupportedSignatureAlgorithm(I)Z
    .registers 2
    .param p0, "sigAlgorithm"    # I

    .line 139
    sparse-switch p0, :sswitch_data_8

    .line 152
    const/4 v0, 0x0

    return v0

    .line 150
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x101 -> :sswitch_5
        0x102 -> :sswitch_5
        0x103 -> :sswitch_5
        0x104 -> :sswitch_5
        0x201 -> :sswitch_5
        0x202 -> :sswitch_5
        0x301 -> :sswitch_5
        0x421 -> :sswitch_5
        0x423 -> :sswitch_5
        0x425 -> :sswitch_5
    .end sparse-switch
.end method

.method static blacklist parseVerityDigestAndVerifySourceLength([BJLandroid/util/apk/SignatureInfo;)[B
    .registers 13
    .param p0, "data"    # [B
    .param p1, "fileSize"    # J
    .param p3, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 346
    const/16 v0, 0x20

    .line 347
    .local v0, "kRootHashSize":I
    const/16 v1, 0x8

    .line 349
    .local v1, "kSourceLengthSize":I
    array-length v2, p0

    add-int v3, v0, v1

    if-ne v2, v3, :cond_33

    .line 352
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 353
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 354
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 356
    .local v3, "expectedSourceLength":J
    iget-wide v5, p3, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v7, p3, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long/2addr v5, v7

    .line 358
    .local v5, "signingBlockSize":J
    sub-long v7, p1, v5

    cmp-long v7, v3, v7

    if-nez v7, :cond_2b

    .line 362
    const/4 v7, 0x0

    invoke-static {p0, v7, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    return-object v7

    .line 359
    :cond_2b
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "APK content size did not verify"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 350
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "expectedSourceLength":J
    .end local v5    # "signingBlockSize":J
    :cond_33
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Verity digest size is wrong: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static blacklist readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    .registers 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 676
    .local v0, "len":I
    if-ltz v0, :cond_39

    .line 678
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_12

    .line 682
    new-array v1, v0, [B

    .line 683
    .local v1, "result":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 684
    return-object v1

    .line 679
    .end local v1    # "result":[B
    :cond_12
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Underflow while reading length-prefixed value. Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 680
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 677
    :cond_39
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Negative length"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist setUnsignedInt32LittleEndian(I[BI)V
    .registers 5
    .param p0, "value"    # I
    .param p1, "result"    # [B
    .param p2, "offset"    # I

    .line 688
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 689
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 690
    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 691
    add-int/lit8 v0, p2, 0x3

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 692
    return-void
.end method

.method static blacklist sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .registers 9
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 601
    if-ltz p1, :cond_87

    .line 604
    if-lt p2, p1, :cond_64

    .line 607
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 608
    .local v0, "capacity":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt p2, v1, :cond_41

    .line 611
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 612
    .local v1, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 614
    .local v2, "originalPosition":I
    const/4 v3, 0x0

    :try_start_17
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 615
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 616
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 617
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 618
    .local v4, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_36

    .line 619
    nop

    .line 621
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 622
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 623
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 619
    return-object v4

    .line 621
    .end local v4    # "result":Ljava/nio/ByteBuffer;
    :catchall_36
    move-exception v4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 622
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 623
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 624
    throw v4

    .line 609
    .end local v1    # "originalLimit":I
    .end local v2    # "originalPosition":I
    :cond_41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end > capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 605
    .end local v0    # "capacity":I
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end < start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist verifyIntegrity(Ljava/util/Map;Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V
    .registers 8
    .param p1, "apk"    # Ljava/io/RandomAccessFile;
    .param p2, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/io/RandomAccessFile;",
            "Landroid/util/apk/SignatureInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 102
    .local p0, "expectedDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_81

    .line 106
    const/4 v0, 0x1

    .line 108
    .local v0, "neverVerified":Z
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 109
    .local v1, "expected1MbChunkDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 110
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_28
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 114
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_44
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 119
    :try_start_4a
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/apk/ApkSigningBlockUtils;->verifyIntegrityFor1MbChunkBasedAlgorithm(Ljava/util/Map;Ljava/io/FileDescriptor;Landroid/util/apk/SignatureInfo;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_51} :catch_53

    .line 121
    const/4 v0, 0x0

    .line 124
    goto :goto_5c

    .line 122
    :catch_53
    move-exception v2

    .line 123
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Cannot get FD"

    invoke-direct {v3, v4, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 127
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5c
    :goto_5c
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 128
    nop

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 128
    invoke-static {v2, p1, p2}, Landroid/util/apk/ApkSigningBlockUtils;->verifyIntegrityForVerityBasedAlgorithm([BLjava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V

    .line 130
    const/4 v0, 0x0

    .line 133
    :cond_76
    if-nez v0, :cond_79

    .line 136
    return-void

    .line 134
    :cond_79
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "No known digest exists for integrity check"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    .end local v0    # "neverVerified":Z
    .end local v1    # "expected1MbChunkDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    :cond_81
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No digests provided"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist verifyIntegrityFor1MbChunkBasedAlgorithm(Ljava/util/Map;Ljava/io/FileDescriptor;Landroid/util/apk/SignatureInfo;)V
    .registers 13
    .param p1, "apkFileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/io/FileDescriptor;",
            "Landroid/util/apk/SignatureInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 160
    .local p0, "expectedDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 161
    .local v0, "digestAlgorithms":[I
    const/4 v1, 0x0

    .line 162
    .local v1, "digestAlgorithmCount":I
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 163
    .local v3, "digestAlgorithm":I
    aput v3, v0, v1

    .line 164
    nop

    .end local v3    # "digestAlgorithm":I
    add-int/lit8 v1, v1, 0x1

    .line 165
    goto :goto_f

    .line 168
    :cond_25
    :try_start_25
    invoke-static {v0, p1, p2}, Landroid/util/apk/ApkSigningBlockUtils;->computeContentDigestsPer1MbChunk([ILjava/io/FileDescriptor;Landroid/util/apk/SignatureInfo;)[[B

    move-result-object v2
    :try_end_29
    .catch Ljava/security/DigestException; {:try_start_25 .. :try_end_29} :catch_63

    .line 172
    .local v2, "actualDigests":[[B
    nop

    .line 173
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2b
    array-length v4, v0

    if-ge v3, v4, :cond_62

    .line 174
    aget v4, v0, v3

    .line 175
    .local v4, "digestAlgorithm":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 176
    .local v5, "expectedDigest":[B
    aget-object v6, v2, v3

    .line 177
    .local v6, "actualDigest":[B
    invoke-static {v5, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 173
    .end local v4    # "digestAlgorithm":I
    .end local v5    # "expectedDigest":[B
    .end local v6    # "actualDigest":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 178
    .restart local v4    # "digestAlgorithm":I
    .restart local v5    # "expectedDigest":[B
    .restart local v6    # "actualDigest":[B
    :cond_45
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " digest of contents did not verify"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 183
    .end local v3    # "i":I
    .end local v4    # "digestAlgorithm":I
    .end local v5    # "expectedDigest":[B
    .end local v6    # "actualDigest":[B
    :cond_62
    return-void

    .line 170
    .end local v2    # "actualDigests":[[B
    :catch_63
    move-exception v2

    .line 171
    .local v2, "e":Ljava/security/DigestException;
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Failed to compute digest(s) of contents"

    invoke-direct {v3, v4, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static blacklist verifyIntegrityForVerityBasedAlgorithm([BLjava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V
    .registers 7
    .param p0, "expectedDigest"    # [B
    .param p1, "apk"    # Ljava/io/RandomAccessFile;
    .param p2, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 370
    nop

    .line 371
    :try_start_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    .line 370
    invoke-static {p0, v0, v1, p2}, Landroid/util/apk/ApkSigningBlockUtils;->parseVerityDigestAndVerifySourceLength([BJLandroid/util/apk/SignatureInfo;)[B

    move-result-object v0

    .line 372
    .local v0, "expectedRootHash":[B
    new-instance v1, Landroid/util/apk/ApkSigningBlockUtils$1;

    invoke-direct {v1}, Landroid/util/apk/ApkSigningBlockUtils$1;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/util/apk/VerityBuilder;->generateApkVerityTree(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Landroid/util/apk/ByteBufferFactory;)Landroid/util/apk/VerityBuilder$VerityResult;

    move-result-object v1

    .line 379
    .local v1, "verity":Landroid/util/apk/VerityBuilder$VerityResult;
    iget-object v2, v1, Landroid/util/apk/VerityBuilder$VerityResult;->rootHash:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 384
    .end local v0    # "expectedRootHash":[B
    .end local v1    # "verity":Landroid/util/apk/VerityBuilder$VerityResult;
    nop

    .line 385
    return-void

    .line 380
    .restart local v0    # "expectedRootHash":[B
    .restart local v1    # "verity":Landroid/util/apk/VerityBuilder$VerityResult;
    :cond_20
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "APK verity digest of contents did not verify"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "expectedDigest":[B
    .end local p1    # "apk":Ljava/io/RandomAccessFile;
    .end local p2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    throw v2
    :try_end_28
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_28} :catch_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_28} :catch_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_28} :catch_28

    .line 382
    .end local v0    # "expectedRootHash":[B
    .end local v1    # "verity":Landroid/util/apk/VerityBuilder$VerityResult;
    .restart local p0    # "expectedDigest":[B
    .restart local p1    # "apk":Ljava/io/RandomAccessFile;
    .restart local p2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    :catch_28
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Error during verification"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist verifyProofOfRotationStruct(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .registers 21
    .param p0, "porBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "certFactory"    # Ljava/security/cert/CertificateFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 823
    const-string v1, " when verifying Proof-of-rotation record"

    const/4 v2, 0x0

    .line 824
    .local v2, "levelCount":I
    const/4 v3, -0x1

    .line 825
    .local v3, "lastSigAlgorithm":I
    const/4 v4, 0x0

    .line 826
    .local v4, "lastCert":Ljava/security/cert/X509Certificate;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 827
    .local v5, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 846
    .local v6, "flagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 847
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_1b1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_11 .. :try_end_19} :catch_1b1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_19} :catch_191
    .catch Ljava/security/InvalidKeyException; {:try_start_11 .. :try_end_19} :catch_191
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_11 .. :try_end_19} :catch_191
    .catch Ljava/security/SignatureException; {:try_start_11 .. :try_end_19} :catch_191
    .catch Ljava/security/cert/CertificateException; {:try_start_11 .. :try_end_19} :catch_171

    .line 848
    .local v0, "certHistorySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    :goto_19
    :try_start_19
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_152

    .line 849
    add-int/lit8 v2, v2, 0x1

    .line 850
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 851
    .local v7, "level":Ljava/nio/ByteBuffer;
    invoke-static {v7}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 852
    .local v8, "signedData":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 853
    .local v9, "flags":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 854
    .local v10, "sigAlgorithm":I
    invoke-static {v7}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v11
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_35} :catch_16b
    .catch Ljava/nio/BufferUnderflowException; {:try_start_19 .. :try_end_35} :catch_16b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_35} :catch_165
    .catch Ljava/security/InvalidKeyException; {:try_start_19 .. :try_end_35} :catch_165
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_19 .. :try_end_35} :catch_165
    .catch Ljava/security/SignatureException; {:try_start_19 .. :try_end_35} :catch_165
    .catch Ljava/security/cert/CertificateException; {:try_start_19 .. :try_end_35} :catch_15f

    .line 856
    .local v11, "signature":[B
    if-eqz v4, :cond_a8

    .line 858
    nop

    .line 859
    :try_start_38
    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v12

    .line 860
    .local v12, "sigAlgParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v13

    .line 861
    .local v13, "publicKey":Ljava/security/PublicKey;
    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v14

    .line 862
    .local v14, "sig":Ljava/security/Signature;
    invoke-virtual {v14, v13}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 863
    iget-object v15, v12, Landroid/util/Pair;->second:Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_4d} :catch_a1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_38 .. :try_end_4d} :catch_a1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_38 .. :try_end_4d} :catch_9a
    .catch Ljava/security/InvalidKeyException; {:try_start_38 .. :try_end_4d} :catch_9a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_38 .. :try_end_4d} :catch_9a
    .catch Ljava/security/SignatureException; {:try_start_38 .. :try_end_4d} :catch_9a
    .catch Ljava/security/cert/CertificateException; {:try_start_38 .. :try_end_4d} :catch_93

    if-eqz v15, :cond_56

    .line 864
    :try_start_4f
    iget-object v15, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v14, v15}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_56} :catch_1b1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4f .. :try_end_56} :catch_1b1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4f .. :try_end_56} :catch_191
    .catch Ljava/security/InvalidKeyException; {:try_start_4f .. :try_end_56} :catch_191
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4f .. :try_end_56} :catch_191
    .catch Ljava/security/SignatureException; {:try_start_4f .. :try_end_56} :catch_191
    .catch Ljava/security/cert/CertificateException; {:try_start_4f .. :try_end_56} :catch_171

    .line 866
    :cond_56
    :try_start_56
    invoke-virtual {v14, v8}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 867
    invoke-virtual {v14, v11}, Ljava/security/Signature;->verify([B)Z

    move-result v15

    if-eqz v15, :cond_64

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    goto :goto_ac

    .line 868
    :cond_64
    new-instance v15, Ljava/lang/SecurityException;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_66} :catch_a1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_56 .. :try_end_66} :catch_a1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_56 .. :try_end_66} :catch_9a
    .catch Ljava/security/InvalidKeyException; {:try_start_56 .. :try_end_66} :catch_9a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_56 .. :try_end_66} :catch_9a
    .catch Ljava/security/SignatureException; {:try_start_56 .. :try_end_66} :catch_9a
    .catch Ljava/security/cert/CertificateException; {:try_start_56 .. :try_end_66} :catch_93

    move-object/from16 v16, v4

    .end local v4    # "lastCert":Ljava/security/cert/X509Certificate;
    .local v16, "lastCert":Ljava/security/cert/X509Certificate;
    :try_start_68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v7

    .end local v7    # "level":Ljava/nio/ByteBuffer;
    .local v17, "level":Ljava/nio/ByteBuffer;
    const-string v7, "Unable to verify signature of certificate #"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " using "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "levelCount":I
    .end local v3    # "lastSigAlgorithm":I
    .end local v5    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v6    # "flagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "lastCert":Ljava/security/cert/X509Certificate;
    .end local p0    # "porBuf":Ljava/nio/ByteBuffer;
    .end local p1    # "certFactory":Ljava/security/cert/CertificateFactory;
    throw v15

    .line 902
    .end local v0    # "certHistorySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v8    # "signedData":Ljava/nio/ByteBuffer;
    .end local v9    # "flags":I
    .end local v10    # "sigAlgorithm":I
    .end local v11    # "signature":[B
    .end local v12    # "sigAlgParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v13    # "publicKey":Ljava/security/PublicKey;
    .end local v14    # "sig":Ljava/security/Signature;
    .end local v17    # "level":Ljava/nio/ByteBuffer;
    .restart local v2    # "levelCount":I
    .restart local v3    # "lastSigAlgorithm":I
    .restart local v4    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v6    # "flagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p0    # "porBuf":Ljava/nio/ByteBuffer;
    .restart local p1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_93
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v13, p1

    goto/16 :goto_164

    .line 897
    :catch_9a
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v13, p1

    goto/16 :goto_16a

    .line 895
    :catch_a1
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v13, p1

    goto/16 :goto_170

    .line 856
    .restart local v0    # "certHistorySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v7    # "level":Ljava/nio/ByteBuffer;
    .restart local v8    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v9    # "flags":I
    .restart local v10    # "sigAlgorithm":I
    .restart local v11    # "signature":[B
    :cond_a8
    move-object/from16 v16, v4

    move-object/from16 v17, v7

    .line 874
    .end local v4    # "lastCert":Ljava/security/cert/X509Certificate;
    .end local v7    # "level":Ljava/nio/ByteBuffer;
    .restart local v16    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local v17    # "level":Ljava/nio/ByteBuffer;
    :goto_ac
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 875
    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 876
    .local v4, "encodedCert":[B
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 877
    .local v7, "signedSigAlgorithm":I
    if-eqz v16, :cond_d9

    if-ne v3, v7, :cond_bc

    goto :goto_d9

    .line 878
    :cond_bc
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Signing algorithm ID mismatch for certificate #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "levelCount":I
    .end local v3    # "lastSigAlgorithm":I
    .end local v5    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v6    # "flagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "lastCert":Ljava/security/cert/X509Certificate;
    .end local p0    # "porBuf":Ljava/nio/ByteBuffer;
    .end local p1    # "certFactory":Ljava/security/cert/CertificateFactory;
    throw v12

    .line 881
    .restart local v2    # "levelCount":I
    .restart local v3    # "lastSigAlgorithm":I
    .restart local v5    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v6    # "flagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local p0    # "porBuf":Ljava/nio/ByteBuffer;
    .restart local p1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :cond_d9
    :goto_d9
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_de} :catch_14c
    .catch Ljava/nio/BufferUnderflowException; {:try_start_68 .. :try_end_de} :catch_14c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_68 .. :try_end_de} :catch_146
    .catch Ljava/security/InvalidKeyException; {:try_start_68 .. :try_end_de} :catch_146
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_68 .. :try_end_de} :catch_146
    .catch Ljava/security/SignatureException; {:try_start_68 .. :try_end_de} :catch_146
    .catch Ljava/security/cert/CertificateException; {:try_start_68 .. :try_end_de} :catch_140

    .line 882
    move-object/from16 v13, p1

    :try_start_e0
    invoke-virtual {v13, v12}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e6} :catch_13e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_e0 .. :try_end_e6} :catch_13e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e0 .. :try_end_e6} :catch_13c
    .catch Ljava/security/InvalidKeyException; {:try_start_e0 .. :try_end_e6} :catch_13c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_e0 .. :try_end_e6} :catch_13c
    .catch Ljava/security/SignatureException; {:try_start_e0 .. :try_end_e6} :catch_13c
    .catch Ljava/security/cert/CertificateException; {:try_start_e0 .. :try_end_e6} :catch_13a

    .line 883
    .end local v16    # "lastCert":Ljava/security/cert/X509Certificate;
    .local v12, "lastCert":Ljava/security/cert/X509Certificate;
    :try_start_e6
    new-instance v14, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v14, v12, v4}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_eb} :catch_136
    .catch Ljava/nio/BufferUnderflowException; {:try_start_e6 .. :try_end_eb} :catch_136
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e6 .. :try_end_eb} :catch_132
    .catch Ljava/security/InvalidKeyException; {:try_start_e6 .. :try_end_eb} :catch_132
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_e6 .. :try_end_eb} :catch_132
    .catch Ljava/security/SignatureException; {:try_start_e6 .. :try_end_eb} :catch_132
    .catch Ljava/security/cert/CertificateException; {:try_start_e6 .. :try_end_eb} :catch_12f

    .line 885
    .end local v12    # "lastCert":Ljava/security/cert/X509Certificate;
    .local v14, "lastCert":Ljava/security/cert/X509Certificate;
    move v3, v10

    .line 886
    :try_start_ec
    invoke-virtual {v0, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_102

    .line 891
    invoke-virtual {v0, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 892
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    move-object v4, v14

    .end local v4    # "encodedCert":[B
    .end local v7    # "signedSigAlgorithm":I
    .end local v8    # "signedData":Ljava/nio/ByteBuffer;
    .end local v9    # "flags":I
    .end local v10    # "sigAlgorithm":I
    .end local v11    # "signature":[B
    .end local v17    # "level":Ljava/nio/ByteBuffer;
    goto/16 :goto_19

    .line 887
    .restart local v4    # "encodedCert":[B
    .restart local v7    # "signedSigAlgorithm":I
    .restart local v8    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v9    # "flags":I
    .restart local v10    # "sigAlgorithm":I
    .restart local v11    # "signature":[B
    .restart local v17    # "level":Ljava/nio/ByteBuffer;
    :cond_102
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    .end local v0    # "certHistorySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .local v18, "certHistorySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    const-string v0, "Encountered duplicate entries in Proof-of-rotation record at certificate #"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, ".  All signing certificates should be unique"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "levelCount":I
    .end local v3    # "lastSigAlgorithm":I
    .end local v5    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v6    # "flagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14    # "lastCert":Ljava/security/cert/X509Certificate;
    .end local p0    # "porBuf":Ljava/nio/ByteBuffer;
    .end local p1    # "certFactory":Ljava/security/cert/CertificateFactory;
    throw v12
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_123} :catch_12b
    .catch Ljava/nio/BufferUnderflowException; {:try_start_ec .. :try_end_123} :catch_12b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ec .. :try_end_123} :catch_127
    .catch Ljava/security/InvalidKeyException; {:try_start_ec .. :try_end_123} :catch_127
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_ec .. :try_end_123} :catch_127
    .catch Ljava/security/SignatureException; {:try_start_ec .. :try_end_123} :catch_127
    .catch Ljava/security/cert/CertificateException; {:try_start_ec .. :try_end_123} :catch_123

    .line 902
    .end local v4    # "encodedCert":[B
    .end local v7    # "signedSigAlgorithm":I
    .end local v8    # "signedData":Ljava/nio/ByteBuffer;
    .end local v9    # "flags":I
    .end local v10    # "sigAlgorithm":I
    .end local v11    # "signature":[B
    .end local v17    # "level":Ljava/nio/ByteBuffer;
    .end local v18    # "certHistorySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v2    # "levelCount":I
    .restart local v3    # "lastSigAlgorithm":I
    .restart local v5    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v6    # "flagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v14    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local p0    # "porBuf":Ljava/nio/ByteBuffer;
    .restart local p1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_123
    move-exception v0

    move-object v4, v14

    goto/16 :goto_174

    .line 897
    :catch_127
    move-exception v0

    move-object v4, v14

    goto/16 :goto_194

    .line 895
    :catch_12b
    move-exception v0

    move-object v4, v14

    goto/16 :goto_1b4

    .line 902
    .end local v14    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local v12    # "lastCert":Ljava/security/cert/X509Certificate;
    :catch_12f
    move-exception v0

    move-object v4, v12

    goto :goto_174

    .line 897
    :catch_132
    move-exception v0

    move-object v4, v12

    goto/16 :goto_194

    .line 895
    :catch_136
    move-exception v0

    move-object v4, v12

    goto/16 :goto_1b4

    .line 902
    .end local v12    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local v16    # "lastCert":Ljava/security/cert/X509Certificate;
    :catch_13a
    move-exception v0

    goto :goto_143

    .line 897
    :catch_13c
    move-exception v0

    goto :goto_149

    .line 895
    :catch_13e
    move-exception v0

    goto :goto_14f

    .line 902
    :catch_140
    move-exception v0

    move-object/from16 v13, p1

    :goto_143
    move-object/from16 v4, v16

    goto :goto_174

    .line 897
    :catch_146
    move-exception v0

    move-object/from16 v13, p1

    :goto_149
    move-object/from16 v4, v16

    goto :goto_194

    .line 895
    :catch_14c
    move-exception v0

    move-object/from16 v13, p1

    :goto_14f
    move-object/from16 v4, v16

    goto :goto_1b4

    .line 848
    .end local v16    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local v0    # "certHistorySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .local v4, "lastCert":Ljava/security/cert/X509Certificate;
    :cond_152
    move-object/from16 v13, p1

    move-object/from16 v18, v0

    move-object/from16 v16, v4

    .line 905
    .end local v0    # "certHistorySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v4    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local v16    # "lastCert":Ljava/security/cert/X509Certificate;
    nop

    .line 906
    new-instance v0, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    invoke-direct {v0, v5, v6}, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 902
    .end local v16    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local v4    # "lastCert":Ljava/security/cert/X509Certificate;
    :catch_15f
    move-exception v0

    move-object/from16 v13, p1

    move-object/from16 v16, v4

    .end local v4    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local v16    # "lastCert":Ljava/security/cert/X509Certificate;
    :goto_164
    goto :goto_174

    .line 897
    .end local v16    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local v4    # "lastCert":Ljava/security/cert/X509Certificate;
    :catch_165
    move-exception v0

    move-object/from16 v13, p1

    move-object/from16 v16, v4

    .end local v4    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local v16    # "lastCert":Ljava/security/cert/X509Certificate;
    :goto_16a
    goto :goto_194

    .line 895
    .end local v16    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local v4    # "lastCert":Ljava/security/cert/X509Certificate;
    :catch_16b
    move-exception v0

    move-object/from16 v13, p1

    move-object/from16 v16, v4

    .end local v4    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local v16    # "lastCert":Ljava/security/cert/X509Certificate;
    :goto_170
    goto :goto_1b4

    .line 902
    .end local v16    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local v4    # "lastCert":Ljava/security/cert/X509Certificate;
    :catch_171
    move-exception v0

    move-object/from16 v13, p1

    .line 903
    .local v0, "e":Ljava/security/cert/CertificateException;
    :goto_174
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to decode certificate #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 897
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_191
    move-exception v0

    move-object/from16 v13, p1

    .line 899
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_194
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to verify signature over signed data for certificate #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 895
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1b1
    move-exception v0

    move-object/from16 v13, p1

    .line 896
    .local v0, "e":Ljava/lang/Exception;
    :goto_1b4
    new-instance v1, Ljava/io/IOException;

    const-string v7, "Failed to parse Proof-of-rotation record"

    invoke-direct {v1, v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
