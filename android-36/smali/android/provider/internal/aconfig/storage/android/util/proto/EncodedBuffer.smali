.class public final Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;
.super Ljava/lang/Object;
.source "EncodedBuffer.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "EncodedBuffer"


# instance fields
.field private blacklist mBufferCount:I

.field private final blacklist mBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private final blacklist mChunkSize:I

.field private blacklist mReadBufIndex:I

.field private blacklist mReadBuffer:[B

.field private blacklist mReadIndex:I

.field private blacklist mReadLimit:I

.field private blacklist mReadableSize:I

.field private blacklist mWriteBufIndex:I

.field private blacklist mWriteBuffer:[B

.field private blacklist mWriteIndex:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;-><init>(I)V

    .line 100
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "chunkSize"    # I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadLimit:I

    .line 96
    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadableSize:I

    .line 109
    if-gtz p1, :cond_13

    .line 110
    const/16 p1, 0x2000

    .line 112
    :cond_13
    iput p1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    .line 113
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 114
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBuffer:[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBufferCount:I

    .line 116
    return-void
.end method

.method private static blacklist dumpByteString(Ljava/lang/String;Ljava/lang/String;I[B)I
    .registers 12
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "buf"    # [B

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p3

    .line 657
    .local v1, "length":I
    const/16 v2, 0x10

    .line 659
    .local v2, "lineLen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v1, :cond_66

    .line 660
    rem-int/lit8 v4, v3, 0x10

    const/16 v5, 0x20

    if-nez v4, :cond_36

    .line 661
    if-eqz v3, :cond_20

    .line 662
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    .line 665
    :cond_20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 667
    add-int v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 668
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 671
    :cond_36
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 673
    :goto_39
    aget-byte v4, p3, v3

    .line 674
    .local v4, "b":B
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    .line 675
    .local v5, "c":B
    const/16 v6, 0xa

    if-ge v5, v6, :cond_4b

    .line 676
    add-int/lit8 v7, v5, 0x30

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 678
    :cond_4b
    add-int/lit8 v7, v5, 0x57

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 680
    :goto_51
    and-int/lit8 v7, v4, 0xf

    int-to-byte v7, v7

    .line 681
    .local v7, "d":B
    if-ge v7, v6, :cond_5d

    .line 682
    add-int/lit8 v6, v7, 0x30

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 684
    :cond_5d
    add-int/lit8 v6, v7, 0x57

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 659
    .end local v4    # "b":B
    .end local v5    # "c":B
    .end local v7    # "d":B
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 687
    :cond_66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return v1
.end method

.method public static blacklist dumpByteString(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "buf"    # [B

    .line 648
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->dumpByteString(Ljava/lang/String;Ljava/lang/String;I[B)I

    .line 649
    return-void
.end method

.method public static blacklist getRawVarint32Size(I)I
    .registers 2
    .param p0, "val"    # I

    .line 286
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 287
    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 v0, 0x2

    return v0

    .line 288
    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 v0, 0x3

    return v0

    .line 289
    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_1a

    const/4 v0, 0x4

    return v0

    .line 290
    :cond_1a
    const/4 v0, 0x5

    return v0
.end method

.method public static blacklist getRawVarint64Size(J)I
    .registers 6
    .param p0, "val"    # J

    .line 330
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    return v0

    .line 331
    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x2

    return v0

    .line 332
    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 v0, 0x3

    return v0

    .line 333
    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const/4 v0, 0x4

    return v0

    .line 334
    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const/4 v0, 0x5

    return v0

    .line 335
    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    const/4 v0, 0x6

    return v0

    .line 336
    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    const/4 v0, 0x7

    return v0

    .line 337
    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_53

    const/16 v0, 0x8

    return v0

    .line 338
    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5d

    const/16 v0, 0x9

    return v0

    .line 339
    :cond_5d
    const/16 v0, 0xa

    return v0
.end method

.method public static blacklist getRawZigZag32Size(I)I
    .registers 2
    .param p0, "val"    # I

    .line 314
    invoke-static {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->zigZag32(I)I

    move-result v0

    invoke-static {v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getRawZigZag64Size(J)I
    .registers 4
    .param p0, "val"    # J

    .line 361
    invoke-static {p0, p1}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->zigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method private blacklist nextWriteBuffer()V
    .registers 3

    .line 261
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 262
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBufferCount:I

    if-lt v0, v1, :cond_20

    .line 263
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 264
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBuffer:[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBufferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBufferCount:I

    goto :goto_2c

    .line 267
    :cond_20
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 269
    :goto_2c
    const/4 v0, 0x0

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 270
    return-void
.end method

.method private static blacklist zigZag32(I)I
    .registers 3
    .param p0, "val"    # I

    .line 557
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method private static blacklist zigZag64(J)J
    .registers 6
    .param p0, "val"    # J

    .line 564
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public blacklist dumpBuffers(Ljava/lang/String;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;

    .line 637
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 638
    .local v0, "N":I
    const/4 v1, 0x0

    .line 639
    .local v1, "start":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_33

    .line 640
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {p1, v3, v1, v4}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->dumpByteString(Ljava/lang/String;Ljava/lang/String;I[B)I

    move-result v3

    add-int/2addr v1, v3

    .line 639
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 642
    .end local v2    # "i":I
    :cond_33
    return-void
.end method

.method public blacklist editRawFixed32(II)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "val"    # I

    .line 543
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v1, p1, v1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 544
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v1, v2

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 545
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x2

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x2

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v1, v2

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 546
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x3

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x3

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v1, v2

    shr-int/lit8 v2, p2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 547
    return-void
.end method

.method public blacklist getBytes(I)[B
    .registers 9
    .param p1, "size"    # I

    .line 579
    new-array v0, p1, [B

    .line 581
    .local v0, "result":[B
    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p1, v1

    .line 583
    .local v1, "bufCount":I
    const/4 v2, 0x0

    .line 585
    .local v2, "writeIndex":I
    const/4 v3, 0x0

    .local v3, "bufIndex":I
    :goto_8
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1c

    .line 586
    iget-object v5, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget v6, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    invoke-static {v5, v4, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    iget v4, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    add-int/2addr v2, v4

    .line 585
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 590
    :cond_1c
    iget v5, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    .line 591
    .local v5, "lastSize":I
    if-lez v5, :cond_2c

    .line 592
    iget-object v6, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    :cond_2c
    return-object v0
.end method

.method public blacklist getChunkCount()I
    .registers 2

    .line 603
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getDebugString()Ljava/lang/String;
    .registers 3

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncodedBuffer( mChunkSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBuffers.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBufferCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWriteIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWriteBufIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReadBufIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBufIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReadIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReadableSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadableSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReadLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRawFixed32At(I)I
    .registers 6
    .param p1, "pos"    # I

    .line 531
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v1, p1, v1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    div-int/2addr v2, v3

    .line 532
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x2

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    div-int/2addr v2, v3

    .line 533
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    add-int/lit8 v2, p1, 0x2

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x3

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    div-int/2addr v2, v3

    .line 534
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    add-int/lit8 v2, p1, 0x3

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 531
    return v0
.end method

.method public blacklist getReadPos()I
    .registers 3

    .line 170
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getReadableSize()I
    .registers 2

    .line 151
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadableSize:I

    return v0
.end method

.method public blacklist getSize()I
    .registers 3

    .line 159
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBufferCount:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getWriteBufIndex()I
    .registers 2

    .line 619
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    return v0
.end method

.method public blacklist getWriteIndex()I
    .registers 2

    .line 611
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    return v0
.end method

.method public blacklist getWritePos()I
    .registers 3

    .line 504
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist readRawByte()B
    .registers 4

    .line 205
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBufferCount:I

    if-gt v0, v1, :cond_3a

    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBufferCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_14

    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadIndex:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadLimit:I

    if-ge v0, v1, :cond_3a

    .line 211
    :cond_14
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadIndex:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    if-lt v0, v1, :cond_2f

    .line 212
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBufIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 213
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBufIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBuffer:[B

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadIndex:I

    .line 216
    :cond_2f
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBuffer:[B

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadIndex:I

    aget-byte v0, v0, v1

    return v0

    .line 207
    :cond_3a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to read too much data mReadBufIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBufIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBufferCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBufferCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReadIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReadLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist readRawFixed32()I
    .registers 3

    .line 242
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->readRawByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 243
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 244
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 245
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 242
    return v0
.end method

.method public blacklist readRawUnsigned()J
    .registers 8

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "bits":I
    const-wide/16 v1, 0x0

    .line 226
    .local v1, "result":J
    :goto_3
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->readRawByte()B

    move-result v3

    .line 227
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    .line 228
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_11

    .line 229
    return-wide v1

    .line 231
    :cond_11
    add-int/lit8 v0, v0, 0x7

    .line 232
    const/16 v4, 0x40

    if-gt v0, v4, :cond_18

    .line 235
    .end local v3    # "b":B
    goto :goto_3

    .line 233
    .restart local v3    # "b":B
    :cond_18
    new-instance v4, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Varint too long -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public blacklist rewindRead()V
    .registers 3

    .line 142
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBuffer:[B

    .line 143
    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 144
    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadIndex:I

    .line 145
    return-void
.end method

.method public blacklist rewindWriteTo(I)V
    .registers 5
    .param p1, "writePos"    # I

    .line 511
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->getWritePos()I

    move-result v0

    if-gt p1, v0, :cond_31

    .line 514
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v0, p1, v0

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 515
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v0, p1, v0

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 516
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    if-nez v0, :cond_24

    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    if-eqz v0, :cond_24

    .line 519
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 520
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 522
    :cond_24
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 523
    return-void

    .line 512
    :cond_31
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rewindWriteTo only can go backwards"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist skipRead(I)V
    .registers 5
    .param p1, "amount"    # I

    .line 177
    if-ltz p1, :cond_48

    .line 180
    if-nez p1, :cond_5

    .line 181
    return-void

    .line 183
    :cond_5
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadIndex:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_12

    .line 184
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadIndex:I

    goto :goto_47

    .line 186
    :cond_12
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadIndex:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 187
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v0, p1, v0

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadIndex:I

    .line 188
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadIndex:I

    if-nez v0, :cond_30

    .line 189
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadIndex:I

    .line 190
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBufIndex:I

    goto :goto_3b

    .line 192
    :cond_30
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 194
    :goto_3b
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBufIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBuffer:[B

    .line 196
    :goto_47
    return-void

    .line 178
    :cond_48
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skipRead with negative amount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startEditing()V
    .registers 3

    .line 126
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadableSize:I

    .line 127
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadLimit:I

    .line 129
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBuffer:[B

    .line 130
    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 131
    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 133
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iput-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBuffer:[B

    .line 134
    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadBufIndex:I

    .line 135
    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadIndex:I

    .line 136
    return-void
.end method

.method public blacklist writeFromThisBuffer(II)V
    .registers 11
    .param p1, "srcOffset"    # I
    .param p2, "size"    # I

    .line 435
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadLimit:I

    if-ltz v0, :cond_10a

    .line 438
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->getWritePos()I

    move-result v0

    const-string v1, " "

    const-string v2, " size="

    if-lt p1, v0, :cond_dd

    .line 442
    add-int v0, p1, p2

    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mReadableSize:I

    if-gt v0, v3, :cond_b0

    .line 446
    if-nez p2, :cond_17

    .line 447
    return-void

    .line 449
    :cond_17
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_65

    .line 453
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_2f

    .line 454
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    goto/16 :goto_af

    .line 456
    :cond_2f
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 457
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v0, p2, v0

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 458
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    if-nez v0, :cond_4d

    .line 462
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 463
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p2, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    goto :goto_58

    .line 465
    :cond_4d
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    .line 467
    :goto_58
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBufIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBuffer:[B

    goto :goto_af

    .line 473
    :cond_65
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v0, p1, v0

    .line 474
    .local v0, "readBufIndex":I
    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 475
    .local v1, "readBuffer":[B
    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v2, p1, v2

    .line 476
    .local v2, "readIndex":I
    :goto_75
    if-lez p2, :cond_af

    .line 477
    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    iget v4, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    if-lt v3, v4, :cond_80

    .line 478
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->nextWriteBuffer()V

    .line 480
    :cond_80
    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    if-lt v2, v3, :cond_90

    .line 481
    add-int/lit8 v0, v0, 0x1

    .line 482
    iget-object v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, [B

    .line 483
    const/4 v2, 0x0

    .line 485
    :cond_90
    iget v3, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    iget v4, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int/2addr v3, v4

    .line 486
    .local v3, "spaceInWriteBuffer":I
    iget v4, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    sub-int/2addr v4, v2

    .line 487
    .local v4, "availableInReadBuffer":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 488
    .local v5, "amt":I
    iget-object v6, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget v7, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    invoke-static {v1, v2, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    iget v6, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v6, v5

    iput v6, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 490
    add-int/2addr v2, v5

    .line 491
    sub-int/2addr p2, v5

    .line 492
    .end local v3    # "spaceInWriteBuffer":I
    .end local v4    # "availableInReadBuffer":I
    .end local v5    # "amt":I
    goto :goto_75

    .line 494
    .end local v0    # "readBufIndex":I
    .end local v1    # "readBuffer":[B
    .end local v2    # "readIndex":I
    :cond_af
    :goto_af
    return-void

    .line 443
    :cond_b0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to move more data than there is -- srcOffset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 444
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_dd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can only move forward in the buffer -- srcOffset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 440
    invoke-virtual {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_10a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "writeFromThisBuffer before startEditing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist writeRawBuffer([B)V
    .registers 4
    .param p1, "val"    # [B

    .line 399
    if-eqz p1, :cond_a

    array-length v0, p1

    if-lez v0, :cond_a

    .line 400
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawBuffer([BII)V

    .line 402
    :cond_a
    return-void
.end method

.method public blacklist writeRawBuffer([BII)V
    .registers 7
    .param p1, "val"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 408
    if-nez p1, :cond_3

    .line 409
    return-void

    .line 412
    :cond_3
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int/2addr v0, v1

    if-ge p3, v0, :cond_c

    move v0, p3

    goto :goto_11

    :cond_c
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int/2addr v0, v1

    .line 413
    .local v0, "amt":I
    :goto_11
    if-lez v0, :cond_21

    .line 414
    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 416
    sub-int/2addr p3, v0

    .line 417
    add-int/2addr p2, v0

    .line 419
    :cond_21
    :goto_21
    if-lez p3, :cond_3e

    .line 421
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->nextWriteBuffer()V

    .line 422
    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    if-ge p3, v1, :cond_2c

    move v1, p3

    goto :goto_2e

    :cond_2c
    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    :goto_2e
    move v0, v1

    .line 423
    iget-object v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    .line 425
    sub-int/2addr p3, v0

    .line 426
    add-int/2addr p2, v0

    goto :goto_21

    .line 428
    :cond_3e
    return-void
.end method

.method public blacklist writeRawByte(B)V
    .registers 5
    .param p1, "val"    # B

    .line 276
    iget v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mChunkSize:I

    if-lt v0, v1, :cond_9

    .line 277
    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->nextWriteBuffer()V

    .line 279
    :cond_9
    iget-object v0, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget v1, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->mWriteIndex:I

    aput-byte p1, v0, v1

    .line 280
    return-void
.end method

.method public blacklist writeRawFixed32(I)V
    .registers 3
    .param p1, "val"    # I

    .line 375
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 376
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 377
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 378
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 379
    return-void
.end method

.method public blacklist writeRawFixed64(J)V
    .registers 5
    .param p1, "val"    # J

    .line 385
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 386
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 387
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 388
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 389
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 390
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 391
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 392
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 393
    return-void
.end method

.method public blacklist writeRawVarint32(I)V
    .registers 3
    .param p1, "val"    # I

    .line 300
    nop

    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_a

    .line 301
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 302
    return-void

    .line 304
    :cond_a
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 305
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1
.end method

.method public blacklist writeRawVarint64(J)V
    .registers 7
    .param p1, "val"    # J

    .line 347
    nop

    :goto_1
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 348
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 349
    return-void

    .line 351
    :cond_10
    const-wide/16 v0, 0x7f

    and-long/2addr v0, p1

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 352
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_1
.end method

.method public blacklist writeRawZigZag32(I)V
    .registers 3
    .param p1, "val"    # I

    .line 323
    invoke-static {p1}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->zigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 324
    return-void
.end method

.method public blacklist writeRawZigZag64(J)V
    .registers 5
    .param p1, "val"    # J

    .line 368
    invoke-static {p1, p2}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->zigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/provider/internal/aconfig/storage/android/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 369
    return-void
.end method
