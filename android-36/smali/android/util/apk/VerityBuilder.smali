.class public abstract Landroid/util/apk/VerityBuilder;
.super Ljava/lang/Object;
.source "VerityBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/VerityBuilder$VerityResult;,
        Landroid/util/apk/VerityBuilder$BufferedDigester;
    }
.end annotation


# static fields
.field private static final blacklist CHUNK_SIZE_BYTES:I = 0x1000

.field private static final blacklist DEFAULT_SALT:[B

.field private static final blacklist DIGEST_SIZE_BYTES:I = 0x20

.field private static final blacklist FSVERITY_HEADER_SIZE_BYTES:I = 0x40

.field private static final blacklist JCA_DIGEST_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final blacklist MMAP_REGION_SIZE_BYTES:I = 0x100000

.field private static final blacklist ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET:I = 0x10

.field private static final blacklist ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_SIZE:I = 0x4


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [B

    sput-object v0, Landroid/util/apk/VerityBuilder;->DEFAULT_SALT:[B

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist assertSigningBlockAlignedAndHasFullPages(Landroid/util/apk/SignatureInfo;)V
    .registers 9
    .param p0, "signatureInfo"    # Landroid/util/apk/SignatureInfo;

    .line 514
    iget-wide v0, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    const-wide/16 v2, 0x1000

    rem-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_34

    .line 520
    iget-wide v0, p0, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v6, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long/2addr v0, v6

    rem-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_16

    .line 526
    return-void

    .line 522
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of APK Signing Block is not a multiple of 4096: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v4, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APK Signing Block does not start at the page boundary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist calculateVerityLevelOffset(J)[I
    .registers 10
    .param p0, "fileSize"    # J

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v0, "levelSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_5
    const-wide/16 v1, 0x1000

    invoke-static {p0, p1, v1, v2}, Landroid/util/apk/VerityBuilder;->divideRoundup(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x20

    mul-long/2addr v3, v5

    .line 493
    .local v3, "levelDigestSize":J
    invoke-static {v3, v4, v1, v2}, Landroid/util/apk/VerityBuilder;->divideRoundup(JJ)J

    move-result-wide v5

    mul-long/2addr v5, v1

    .line 494
    .local v5, "chunksSize":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    cmp-long v1, v3, v1

    if-gtz v1, :cond_51

    .line 496
    nop

    .line 502
    .end local v3    # "levelDigestSize":J
    .end local v5    # "chunksSize":J
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 503
    .local v1, "levelOffset":[I
    const/4 v2, 0x0

    aput v2, v1, v2

    .line 504
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_50

    .line 506
    add-int/lit8 v3, v2, 0x1

    aget v4, v1, v2

    .line 507
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toIntExact(J)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v1, v3

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 509
    .end local v2    # "i":I
    :cond_50
    return-object v1

    .line 498
    .end local v1    # "levelOffset":[I
    .restart local v3    # "levelDigestSize":J
    .restart local v5    # "chunksSize":J
    :cond_51
    move-wide p0, v3

    .line 499
    .end local v3    # "levelDigestSize":J
    .end local v5    # "chunksSize":J
    goto :goto_5
.end method

.method private static blacklist consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V
    .registers 10
    .param p0, "digester"    # Landroid/util/apk/DataDigester;
    .param p1, "source"    # Landroid/util/apk/DataSource;
    .param p2, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 257
    invoke-interface {p1}, Landroid/util/apk/DataSource;->size()J

    move-result-wide v0

    .line 258
    .local v0, "inputRemaining":J
    const-wide/16 v2, 0x0

    .line 259
    .local v2, "inputOffset":J
    :goto_6
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1a

    .line 260
    int-to-long v4, p2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 261
    .local v4, "size":I
    invoke-interface {p1, p0, v2, v3, v4}, Landroid/util/apk/DataSource;->feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V

    .line 262
    int-to-long v5, v4

    add-long/2addr v2, v5

    .line 263
    int-to-long v5, v4

    sub-long/2addr v0, v5

    .line 264
    .end local v4    # "size":I
    goto :goto_6

    .line 265
    :cond_1a
    return-void
.end method

.method private static blacklist divideRoundup(JJ)J
    .registers 8
    .param p0, "dividend"    # J
    .param p2, "divisor"    # J

    .line 544
    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    return-wide v0
.end method

.method static blacklist generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)[B
    .registers 9
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "bufferFactory"    # Landroid/util/apk/ByteBufferFactory;
    .param p2, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_8
    invoke-static {v0, p1, p2}, Landroid/util/apk/VerityBuilder;->generateVerityTreeInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)Landroid/util/apk/VerityBuilder$VerityResult;

    move-result-object v1

    .line 163
    .local v1, "result":Landroid/util/apk/VerityBuilder$VerityResult;
    iget-object v2, v1, Landroid/util/apk/VerityBuilder$VerityResult;->verityData:Ljava/nio/ByteBuffer;

    iget v3, v1, Landroid/util/apk/VerityBuilder$VerityResult;->merkleTreeSize:I

    iget-object v4, v1, Landroid/util/apk/VerityBuilder$VerityResult;->verityData:Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 163
    invoke-static {v2, v3, v4}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 165
    .local v2, "footer":Ljava/nio/ByteBuffer;
    invoke-static {v0, p2, v2}, Landroid/util/apk/VerityBuilder;->generateApkVerityFooter(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Ljava/nio/ByteBuffer;)V

    .line 167
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 168
    iget-object v3, v1, Landroid/util/apk/VerityBuilder$VerityResult;->verityData:Ljava/nio/ByteBuffer;

    iget v4, v1, Landroid/util/apk/VerityBuilder$VerityResult;->merkleTreeSize:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 169
    iget-object v3, v1, Landroid/util/apk/VerityBuilder$VerityResult;->rootHash:[B
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_38

    .line 170
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 169
    return-object v3

    .line 161
    .end local v1    # "result":Landroid/util/apk/VerityBuilder$VerityResult;
    .end local v2    # "footer":Ljava/nio/ByteBuffer;
    :catchall_38
    move-exception v1

    :try_start_39
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_41
    throw v1
.end method

.method private static blacklist generateApkVerityDigestAtLeafLevel(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;[BLjava/nio/ByteBuffer;)V
    .registers 15
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .param p2, "salt"    # [B
    .param p3, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 295
    new-instance v0, Landroid/util/apk/VerityBuilder$BufferedDigester;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder-IA;)V

    .line 298
    .local v0, "digester":Landroid/util/apk/VerityBuilder$BufferedDigester;
    nop

    .line 299
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget-wide v4, p1, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    invoke-static {v1, v2, v3, v4, v5}, Landroid/util/apk/DataSource;->create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;

    move-result-object v1

    .line 298
    const/high16 v2, 0x100000

    invoke-static {v0, v1, v2}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    .line 304
    iget-wide v3, p1, Landroid/util/apk/SignatureInfo;->eocdOffset:J

    const-wide/16 v5, 0x10

    add-long/2addr v3, v5

    .line 306
    .local v3, "eocdCdOffsetFieldPosition":J
    nop

    .line 307
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-wide v5, p1, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v7, p1, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    sub-long v7, v3, v7

    invoke-static {v1, v5, v6, v7, v8}, Landroid/util/apk/DataSource;->create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;

    move-result-object v1

    .line 306
    invoke-static {v0, v1, v2}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    .line 312
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 313
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 314
    .local v1, "alternativeCentralDirOffset":Ljava/nio/ByteBuffer;
    iget-wide v5, p1, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    invoke-static {v5, v6}, Ljava/lang/Math;->toIntExact(J)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 315
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 316
    invoke-virtual {v0, v1}, Landroid/util/apk/VerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    .line 319
    const-wide/16 v5, 0x4

    add-long/2addr v5, v3

    .line 321
    .local v5, "offsetAfterEocdCdOffsetField":J
    nop

    .line 322
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    .line 323
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    sub-long/2addr v8, v5

    .line 322
    invoke-static {v7, v5, v6, v8, v9}, Landroid/util/apk/DataSource;->create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;

    move-result-object v7

    .line 321
    invoke-static {v0, v7, v2}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    .line 327
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    const-wide/16 v9, 0x1000

    rem-long/2addr v7, v9

    long-to-int v2, v7

    .line 328
    .local v2, "lastIncompleteChunkSize":I
    if-eqz v2, :cond_78

    .line 329
    rsub-int v7, v2, 0x1000

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/apk/VerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    .line 331
    :cond_78
    invoke-virtual {v0}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    .line 334
    invoke-static {v0}, Landroid/util/apk/VerityBuilder$BufferedDigester;->-$$Nest$mfillUpLastOutputChunk(Landroid/util/apk/VerityBuilder$BufferedDigester;)V

    .line 335
    return-void
.end method

.method private static blacklist generateApkVerityExtensions(Ljava/nio/ByteBuffer;JJJ)Ljava/nio/ByteBuffer;
    .registers 12
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "signingBlockOffset"    # J
    .param p3, "signingBlockSize"    # J
    .param p5, "eocdOffset"    # J

    .line 440
    const/16 v0, 0x8

    .line 441
    .local v0, "kSizeOfFsverityExtensionHeader":I
    const/16 v1, 0x8

    .line 445
    .local v1, "kExtensionSizeAlignment":I
    const/16 v2, 0x10

    .line 448
    .local v2, "kSizeOfFsverityElidedExtension":I
    const/16 v3, 0x18

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 449
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 450
    const/4 v3, 0x2

    invoke-static {p0, v3}, Landroid/util/apk/VerityBuilder;->skip(Ljava/nio/ByteBuffer;I)V

    .line 453
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 454
    invoke-virtual {p0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 459
    .end local v2    # "kSizeOfFsverityElidedExtension":I
    const/16 v2, 0x14

    .line 463
    .local v2, "kTotalSize":I
    const/16 v4, 0x14

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 464
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 465
    invoke-static {p0, v3}, Landroid/util/apk/VerityBuilder;->skip(Ljava/nio/ByteBuffer;I)V

    .line 468
    const-wide/16 v3, 0x10

    add-long/2addr v3, p5

    invoke-virtual {p0, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 469
    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 473
    const/4 v3, 0x4

    .line 474
    .local v3, "kPadding":I
    const/16 v4, 0x8

    if-ne v3, v4, :cond_39

    .line 475
    const/4 v3, 0x0

    .line 477
    :cond_39
    invoke-static {p0, v3}, Landroid/util/apk/VerityBuilder;->skip(Ljava/nio/ByteBuffer;I)V

    .line 480
    .end local v2    # "kTotalSize":I
    .end local v3    # "kPadding":I
    return-object p0
.end method

.method static blacklist generateApkVerityFooter(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Ljava/nio/ByteBuffer;)V
    .registers 14
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .param p2, "footerOutput"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 111
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    sget-object v2, Landroid/util/apk/VerityBuilder;->DEFAULT_SALT:[B

    invoke-static {p2, v0, v1, v2}, Landroid/util/apk/VerityBuilder;->generateApkVerityHeader(Ljava/nio/ByteBuffer;J[B)Ljava/nio/ByteBuffer;

    .line 112
    iget-wide v0, p1, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v2, p1, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long v7, v0, v2

    .line 114
    .local v7, "signingBlockSize":J
    iget-wide v5, p1, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    iget-wide v9, p1, Landroid/util/apk/SignatureInfo;->eocdOffset:J

    move-object v4, p2

    .end local p2    # "footerOutput":Ljava/nio/ByteBuffer;
    .local v4, "footerOutput":Ljava/nio/ByteBuffer;
    invoke-static/range {v4 .. v10}, Landroid/util/apk/VerityBuilder;->generateApkVerityExtensions(Ljava/nio/ByteBuffer;JJJ)Ljava/nio/ByteBuffer;

    .line 116
    return-void
.end method

.method private static blacklist generateApkVerityHeader(Ljava/nio/ByteBuffer;J[B)Ljava/nio/ByteBuffer;
    .registers 7
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "fileSize"    # J
    .param p3, "salt"    # [B

    .line 398
    array-length v0, p3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3e

    .line 403
    const-string v0, "TrueBrew"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 405
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 406
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 407
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 408
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 410
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 411
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 413
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 414
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 416
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 418
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 419
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 420
    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 421
    const/16 v0, 0x16

    invoke-static {p0, v0}, Landroid/util/apk/VerityBuilder;->skip(Ljava/nio/ByteBuffer;I)V

    .line 423
    return-object p0

    .line 399
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "salt is not 8 bytes long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist generateApkVerityTree(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Landroid/util/apk/ByteBufferFactory;)Landroid/util/apk/VerityBuilder$VerityResult;
    .registers 4
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .param p2, "bufferFactory"    # Landroid/util/apk/ByteBufferFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 84
    invoke-static {p0, p2, p1}, Landroid/util/apk/VerityBuilder;->generateVerityTreeInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)Landroid/util/apk/VerityBuilder$VerityResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist generateFsVerityDigestAtLeafLevel(Ljava/io/RandomAccessFile;[BLjava/nio/ByteBuffer;)V
    .registers 9
    .param p0, "file"    # Ljava/io/RandomAccessFile;
    .param p1, "salt"    # [B
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 274
    new-instance v0, Landroid/util/apk/VerityBuilder$BufferedDigester;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder-IA;)V

    .line 277
    .local v0, "digester":Landroid/util/apk/VerityBuilder$BufferedDigester;
    nop

    .line 278
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Landroid/util/apk/DataSource;->create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;

    move-result-object v1

    .line 277
    const/high16 v2, 0x100000

    invoke-static {v0, v1, v2}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    .line 282
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x1000

    rem-long/2addr v1, v3

    long-to-int v1, v1

    .line 283
    .local v1, "lastIncompleteChunkSize":I
    if-eqz v1, :cond_2d

    .line 284
    rsub-int v2, v1, 0x1000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    .line 286
    :cond_2d
    invoke-virtual {v0}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    .line 289
    invoke-static {v0}, Landroid/util/apk/VerityBuilder$BufferedDigester;->-$$Nest$mfillUpLastOutputChunk(Landroid/util/apk/VerityBuilder$BufferedDigester;)V

    .line 290
    return-void
.end method

.method public static blacklist generateFsVerityRootHash(Ljava/lang/String;[BLandroid/util/apk/ByteBufferFactory;)[B
    .registers 9
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "salt"    # [B
    .param p2, "bufferFactory"    # Landroid/util/apk/ByteBufferFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/util/apk/VerityBuilder;->calculateVerityLevelOffset(J)[I

    move-result-object v1

    .line 136
    .local v1, "levelOffset":[I
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v2, v1, v2

    .line 138
    .local v2, "merkleTreeSize":I
    add-int/lit16 v3, v2, 0x1000

    invoke-interface {p2, v3}, Landroid/util/apk/ByteBufferFactory;->create(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 141
    .local v3, "output":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 142
    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 143
    .local v4, "tree":Ljava/nio/ByteBuffer;
    invoke-static {v0, p1, v1, v4}, Landroid/util/apk/VerityBuilder;->generateFsVerityTreeInternal(Ljava/io/RandomAccessFile;[B[ILjava/nio/ByteBuffer;)[B

    move-result-object v5
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_2d

    .line 144
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 143
    return-object v5

    .line 134
    .end local v1    # "levelOffset":[I
    .end local v2    # "merkleTreeSize":I
    .end local v3    # "output":Ljava/nio/ByteBuffer;
    .end local v4    # "tree":Ljava/nio/ByteBuffer;
    :catchall_2d
    move-exception v1

    :try_start_2e
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_36
    throw v1
.end method

.method private static blacklist generateFsVerityTreeInternal(Ljava/io/RandomAccessFile;[B[ILjava/nio/ByteBuffer;)[B
    .registers 11
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "salt"    # [B
    .param p2, "levelOffset"    # [I
    .param p3, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 342
    array-length v0, p2

    add-int/lit8 v0, v0, -0x2

    aget v0, p2, v0

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget v1, p2, v1

    .line 343
    invoke-static {p3, v0, v1}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 342
    invoke-static {p0, p1, v0}, Landroid/util/apk/VerityBuilder;->generateFsVerityDigestAtLeafLevel(Ljava/io/RandomAccessFile;[BLjava/nio/ByteBuffer;)V

    .line 347
    array-length v0, p2

    add-int/lit8 v0, v0, -0x3

    .local v0, "level":I
    :goto_14
    const/16 v1, 0x1000

    const/4 v2, 0x0

    if-ltz v0, :cond_45

    .line 348
    add-int/lit8 v3, v0, 0x1

    aget v3, p2, v3

    add-int/lit8 v4, v0, 0x2

    aget v4, p2, v4

    invoke-static {p3, v3, v4}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 349
    .local v3, "inputBuffer":Ljava/nio/ByteBuffer;
    aget v4, p2, v0

    add-int/lit8 v5, v0, 0x1

    aget v5, p2, v5

    invoke-static {p3, v4, v5}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 351
    .local v4, "outputBuffer":Ljava/nio/ByteBuffer;
    new-instance v5, Landroid/util/apk/ByteBufferDataSource;

    invoke-direct {v5, v3}, Landroid/util/apk/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    .line 352
    .local v5, "source":Landroid/util/apk/DataSource;
    new-instance v6, Landroid/util/apk/VerityBuilder$BufferedDigester;

    invoke-direct {v6, p1, v4, v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder-IA;)V

    .line 353
    .local v6, "digester":Landroid/util/apk/VerityBuilder$BufferedDigester;
    invoke-static {v6, v5, v1}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    .line 354
    invoke-virtual {v6}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    .line 355
    invoke-static {v6}, Landroid/util/apk/VerityBuilder$BufferedDigester;->-$$Nest$mfillUpLastOutputChunk(Landroid/util/apk/VerityBuilder$BufferedDigester;)V

    .line 347
    .end local v3    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "outputBuffer":Ljava/nio/ByteBuffer;
    .end local v5    # "source":Landroid/util/apk/DataSource;
    .end local v6    # "digester":Landroid/util/apk/VerityBuilder$BufferedDigester;
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 359
    .end local v0    # "level":I
    :cond_45
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 360
    .local v0, "rootHash":[B
    new-instance v3, Landroid/util/apk/VerityBuilder$BufferedDigester;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {v3, p1, v4, v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder-IA;)V

    .line 361
    .local v3, "digester":Landroid/util/apk/VerityBuilder$BufferedDigester;
    const/4 v2, 0x0

    invoke-static {p3, v2, v1}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/util/apk/VerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    .line 362
    invoke-virtual {v3}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    .line 363
    return-object v0
.end method

.method private static blacklist generateVerityTreeInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)Landroid/util/apk/VerityBuilder$VerityResult;
    .registers 14
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "bufferFactory"    # Landroid/util/apk/ByteBufferFactory;
    .param p2, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 91
    iget-wide v0, p2, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v2, p2, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long/2addr v0, v2

    .line 93
    .local v0, "signingBlockSize":J
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 94
    .local v2, "dataSize":J
    invoke-static {v2, v3}, Landroid/util/apk/VerityBuilder;->calculateVerityLevelOffset(J)[I

    move-result-object v4

    .line 95
    .local v4, "levelOffset":[I
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget v5, v4, v5

    .line 97
    .local v5, "merkleTreeSize":I
    add-int/lit16 v6, v5, 0x1000

    invoke-interface {p1, v6}, Landroid/util/apk/ByteBufferFactory;->create(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 100
    .local v6, "output":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 101
    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 102
    .local v7, "tree":Ljava/nio/ByteBuffer;
    sget-object v8, Landroid/util/apk/VerityBuilder;->DEFAULT_SALT:[B

    invoke-static {p0, p2, v8, v4, v7}, Landroid/util/apk/VerityBuilder;->generateVerityTreeInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;[B[ILjava/nio/ByteBuffer;)[B

    move-result-object v8

    .line 104
    .local v8, "apkRootHash":[B
    new-instance v9, Landroid/util/apk/VerityBuilder$VerityResult;

    const/4 v10, 0x0

    invoke-direct {v9, v6, v5, v8, v10}, Landroid/util/apk/VerityBuilder$VerityResult;-><init>(Ljava/nio/ByteBuffer;I[BLandroid/util/apk/VerityBuilder-IA;)V

    return-object v9
.end method

.method private static blacklist generateVerityTreeInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;[B[ILjava/nio/ByteBuffer;)[B
    .registers 12
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .param p2, "salt"    # [B
    .param p3, "levelOffset"    # [I
    .param p4, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 372
    invoke-static {p1}, Landroid/util/apk/VerityBuilder;->assertSigningBlockAlignedAndHasFullPages(Landroid/util/apk/SignatureInfo;)V

    .line 373
    array-length v0, p3

    add-int/lit8 v0, v0, -0x2

    aget v0, p3, v0

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    aget v1, p3, v1

    invoke-static {p4, v0, v1}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/VerityBuilder;->generateApkVerityDigestAtLeafLevel(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;[BLjava/nio/ByteBuffer;)V

    .line 377
    array-length v0, p3

    add-int/lit8 v0, v0, -0x3

    .local v0, "level":I
    :goto_17
    const/16 v1, 0x1000

    const/4 v2, 0x0

    if-ltz v0, :cond_48

    .line 378
    add-int/lit8 v3, v0, 0x1

    aget v3, p3, v3

    add-int/lit8 v4, v0, 0x2

    aget v4, p3, v4

    invoke-static {p4, v3, v4}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 379
    .local v3, "inputBuffer":Ljava/nio/ByteBuffer;
    aget v4, p3, v0

    add-int/lit8 v5, v0, 0x1

    aget v5, p3, v5

    invoke-static {p4, v4, v5}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 381
    .local v4, "outputBuffer":Ljava/nio/ByteBuffer;
    new-instance v5, Landroid/util/apk/ByteBufferDataSource;

    invoke-direct {v5, v3}, Landroid/util/apk/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    .line 382
    .local v5, "source":Landroid/util/apk/DataSource;
    new-instance v6, Landroid/util/apk/VerityBuilder$BufferedDigester;

    invoke-direct {v6, p2, v4, v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder-IA;)V

    .line 383
    .local v6, "digester":Landroid/util/apk/VerityBuilder$BufferedDigester;
    invoke-static {v6, v5, v1}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    .line 384
    invoke-virtual {v6}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    .line 385
    invoke-static {v6}, Landroid/util/apk/VerityBuilder$BufferedDigester;->-$$Nest$mfillUpLastOutputChunk(Landroid/util/apk/VerityBuilder$BufferedDigester;)V

    .line 377
    .end local v3    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "outputBuffer":Ljava/nio/ByteBuffer;
    .end local v5    # "source":Landroid/util/apk/DataSource;
    .end local v6    # "digester":Landroid/util/apk/VerityBuilder$BufferedDigester;
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 389
    .end local v0    # "level":I
    :cond_48
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 390
    .local v0, "rootHash":[B
    new-instance v3, Landroid/util/apk/VerityBuilder$BufferedDigester;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {v3, p2, v4, v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder-IA;)V

    .line 391
    .local v3, "digester":Landroid/util/apk/VerityBuilder$BufferedDigester;
    const/4 v2, 0x0

    invoke-static {p4, v2, v1}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/util/apk/VerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    .line 392
    invoke-virtual {v3}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    .line 393
    return-object v0
.end method

.method private static blacklist skip(Ljava/nio/ByteBuffer;I)V
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "bytes"    # I

    .line 539
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 540
    return-void
.end method

.method private static blacklist slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .registers 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .line 530
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 531
    .local v0, "b":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 532
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 533
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 534
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method
