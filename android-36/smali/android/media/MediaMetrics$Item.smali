.class public Landroid/media/MediaMetrics$Item;
.super Ljava/lang/Object;
.source "MediaMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final blacklist BUNDLE_HEADER_SIZE:Ljava/lang/String; = "_headerSize"

.field public static final blacklist BUNDLE_KEY:Ljava/lang/String; = "_key"

.field public static final blacklist BUNDLE_KEY_SIZE:Ljava/lang/String; = "_keySize"

.field public static final blacklist BUNDLE_PID:Ljava/lang/String; = "_pid"

.field public static final blacklist BUNDLE_PROPERTY_COUNT:Ljava/lang/String; = "_propertyCount"

.field public static final blacklist BUNDLE_TIMESTAMP:Ljava/lang/String; = "_timestamp"

.field public static final blacklist BUNDLE_TOTAL_SIZE:Ljava/lang/String; = "_totalSize"

.field public static final blacklist BUNDLE_UID:Ljava/lang/String; = "_uid"

.field public static final blacklist BUNDLE_VERSION:Ljava/lang/String; = "_version"

.field private static final blacklist FORMAT_VERSION:I = 0x0

.field private static final blacklist HEADER_SIZE_OFFSET:I = 0x4

.field private static final blacklist MINIMUM_PAYLOAD_SIZE:I = 0x4

.field private static final blacklist TOTAL_SIZE_OFFSET:I


# instance fields
.field private blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private final blacklist mHeaderSize:I

.field private final blacklist mKey:Ljava/lang/String;

.field private final blacklist mPidOffset:I

.field private blacklist mPropertyCount:I

.field private final blacklist mPropertyCountOffset:I

.field private final blacklist mPropertyStartOffset:I

.field private final blacklist mTimeNsOffset:I

.field private final blacklist mUidOffset:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .line 380
    const-wide/16 v4, 0x0

    const/16 v6, 0x800

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "key":Ljava/lang/String;
    .local v1, "key":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;IIJI)V

    .line 382
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIJI)V
    .registers 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "timeNs"    # J
    .param p6, "capacity"    # I

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaMetrics$Item;->mPropertyCount:I

    .line 407
    invoke-static {}, Landroid/media/MediaMetrics;->-$$Nest$sfgetMEDIAMETRICS_CHARSET()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 408
    .local v1, "keyBytes":[B
    array-length v2, v1

    .line 409
    .local v2, "keyLength":I
    const v3, 0xfffe

    if-gt v2, v3, :cond_96

    .line 414
    add-int/lit8 v3, v2, 0xc

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Landroid/media/MediaMetrics$Item;->mHeaderSize:I

    .line 415
    iget v3, p0, Landroid/media/MediaMetrics$Item;->mHeaderSize:I

    add-int/lit8 v3, v3, -0x10

    iput v3, p0, Landroid/media/MediaMetrics$Item;->mPidOffset:I

    .line 416
    iget v3, p0, Landroid/media/MediaMetrics$Item;->mHeaderSize:I

    add-int/lit8 v3, v3, -0xc

    iput v3, p0, Landroid/media/MediaMetrics$Item;->mUidOffset:I

    .line 417
    iget v3, p0, Landroid/media/MediaMetrics$Item;->mHeaderSize:I

    add-int/lit8 v3, v3, -0x8

    iput v3, p0, Landroid/media/MediaMetrics$Item;->mTimeNsOffset:I

    .line 418
    iget v3, p0, Landroid/media/MediaMetrics$Item;->mHeaderSize:I

    iput v3, p0, Landroid/media/MediaMetrics$Item;->mPropertyCountOffset:I

    .line 419
    iget v3, p0, Landroid/media/MediaMetrics$Item;->mHeaderSize:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Landroid/media/MediaMetrics$Item;->mPropertyStartOffset:I

    .line 421
    iput-object p1, p0, Landroid/media/MediaMetrics$Item;->mKey:Ljava/lang/String;

    .line 422
    iget v3, p0, Landroid/media/MediaMetrics$Item;->mHeaderSize:I

    add-int/lit8 v3, v3, 0x4

    .line 423
    invoke-static {p6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 422
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    .line 426
    iget-object v3, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 427
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Landroid/media/MediaMetrics$Item;->mHeaderSize:I

    .line 428
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 429
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    int-to-char v4, v4

    .line 430
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 431
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 432
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 433
    invoke-virtual {v3, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 434
    invoke-virtual {v3, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 435
    iget v3, p0, Landroid/media/MediaMetrics$Item;->mHeaderSize:I

    iget-object v4, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-ne v3, v4, :cond_8e

    .line 438
    iget-object v3, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 439
    return-void

    .line 436
    :cond_8e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Mismatched sizing"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Key length too large"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getStringFromBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 833
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Landroid/media/MediaMetrics$Item;->getStringFromBuffer(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getStringFromBuffer(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .registers 10
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I

    .line 838
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 839
    .local v0, "i":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 840
    .local v1, "limit":I
    const v2, 0x7fffffff

    sub-int v3, v2, v0

    if-ge p1, v3, :cond_15

    add-int v3, v0, p1

    if-ge v3, v1, :cond_15

    .line 841
    add-int v1, v0, p1

    .line 843
    :cond_15
    :goto_15
    if-ge v0, v1, :cond_a0

    .line 844
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-nez v3, :cond_9c

    .line 845
    add-int/lit8 v3, v0, 0x1

    .line 846
    .local v3, "newPosition":I
    if-eq p1, v2, :cond_5d

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v2, v3, v2

    if-ne v2, p1, :cond_2a

    goto :goto_5d

    .line 847
    :cond_2a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chars consumed at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 848
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 851
    :cond_5d
    :goto_5d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 852
    new-instance v2, Ljava/lang/String;

    .line 853
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    add-int/2addr v5, v6

    .line 854
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int v6, v0, v6

    invoke-static {}, Landroid/media/MediaMetrics;->-$$Nest$sfgetMEDIAMETRICS_CHARSET()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v2, v4, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 855
    .local v2, "found":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_9b

    .line 857
    .end local v2    # "found":Ljava/lang/String;
    :cond_83
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v2, v0, v2

    new-array v2, v2, [B

    .line 858
    .local v2, "array":[B
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 859
    new-instance v4, Ljava/lang/String;

    invoke-static {}, Landroid/media/MediaMetrics;->-$$Nest$sfgetMEDIAMETRICS_CHARSET()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 860
    .local v4, "found":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-object v2, v4

    .line 862
    .end local v4    # "found":Ljava/lang/String;
    .local v2, "found":Ljava/lang/String;
    :goto_9b
    return-object v2

    .line 843
    .end local v2    # "found":Ljava/lang/String;
    .end local v3    # "newPosition":I
    :cond_9c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_15

    .line 865
    :cond_a0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No zero termination found in string position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 867
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist reserveProperty([BI)I
    .registers 9
    .param p1, "keyBytes"    # [B
    .param p2, "payloadSize"    # I

    .line 791
    array-length v0, p1

    .line 792
    .local v0, "keyLength":I
    const v1, 0xffff

    if-gt v0, v1, :cond_98

    .line 796
    if-gt p2, v1, :cond_7f

    .line 801
    add-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p2

    .line 806
    .local v2, "size":I
    if-gt v2, v1, :cond_57

    .line 811
    iget-object v1, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v2, :cond_56

    .line 812
    iget-object v1, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    .line 813
    .local v1, "newCapacity":I
    const v3, 0x3fffffff    # 1.9999999f

    if-gt v1, v3, :cond_3d

    .line 817
    shl-int/lit8 v1, v1, 0x1

    .line 818
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 819
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 822
    iget-object v4, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 823
    iget-object v4, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 826
    iput-object v3, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    goto :goto_56

    .line 814
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :cond_3d
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item memory requirements too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 828
    .end local v1    # "newCapacity":I
    :cond_56
    :goto_56
    return v2

    .line 807
    :cond_57
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-static {}, Landroid/media/MediaMetrics;->-$$Nest$sfgetMEDIAMETRICS_CHARSET()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too large to send"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 797
    .end local v2    # "size":I
    :cond_7f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payload too large "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 793
    :cond_98
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "property key too long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-static {}, Landroid/media/MediaMetrics;->-$$Nest$sfgetMEDIAMETRICS_CHARSET()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist toBundle(Ljava/nio/ByteBuffer;)Landroid/os/Bundle;
    .registers 22
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 665
    move-object/from16 v0, p0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 667
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 668
    .local v2, "totalSize":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 669
    .local v3, "headerSize":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v4

    .line 670
    .local v4, "version":C
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v5

    .line 672
    .local v5, "keySize":C
    if-ltz v2, :cond_1d3

    if-ltz v3, :cond_1d3

    .line 676
    if-lez v5, :cond_1c9

    .line 677
    invoke-static {v0, v5}, Landroid/media/MediaMetrics$Item;->getStringFromBuffer(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v6

    .line 682
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 683
    .local v7, "pid":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 684
    .local v8, "uid":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v9

    .line 687
    .local v9, "timestamp":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    .line 688
    .local v11, "headerRead":I
    const-string v12, " headerRead:"

    const-string v13, "Item key:"

    if-nez v4, :cond_63

    .line 689
    if-ne v11, v3, :cond_3a

    goto :goto_6a

    .line 690
    :cond_3a
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " != headerSize:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v14, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 697
    :cond_63
    if-gt v11, v3, :cond_19c

    .line 701
    if-ge v11, v3, :cond_6a

    .line 702
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 707
    :cond_6a
    :goto_6a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .line 708
    .local v12, "propertyCount":I
    if-ltz v12, :cond_192

    .line 712
    const-string v13, "_totalSize"

    invoke-virtual {v1, v13, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 713
    const-string v13, "_headerSize"

    invoke-virtual {v1, v13, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 714
    const-string v13, "_version"

    invoke-virtual {v1, v13, v4}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 715
    const-string v13, "_keySize"

    invoke-virtual {v1, v13, v5}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 716
    const-string v13, "_key"

    invoke-virtual {v1, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v13, "_pid"

    invoke-virtual {v1, v13, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 718
    const-string v13, "_uid"

    invoke-virtual {v1, v13, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 719
    const-string v13, "_timestamp"

    invoke-virtual {v1, v13, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 720
    const-string v13, "_propertyCount"

    invoke-virtual {v1, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 722
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_9e
    if-ge v13, v12, :cond_15e

    .line 723
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    .line 724
    .local v14, "initialBufferPosition":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v15

    .line 725
    .local v15, "propSize":C
    move/from16 v16, v4

    .end local v4    # "version":C
    .local v16, "version":C
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 728
    .local v4, "type":B
    move/from16 v17, v5

    .end local v5    # "keySize":C
    .local v17, "keySize":C
    invoke-static {v0}, Landroid/media/MediaMetrics$Item;->getStringFromBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    .line 729
    .local v5, "propKey":Ljava/lang/String;
    packed-switch v4, :pswitch_data_1e2

    .line 751
    move/from16 v18, v7

    move/from16 v19, v8

    .end local v7    # "pid":I
    .end local v8    # "uid":I
    .local v18, "pid":I
    .local v19, "uid":I
    if-eqz v16, :cond_139

    .line 755
    add-int v7, v14, v15

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_102

    .line 745
    .end local v18    # "pid":I
    .end local v19    # "uid":I
    .restart local v7    # "pid":I
    .restart local v8    # "uid":I
    :pswitch_c3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 746
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 747
    move/from16 v18, v7

    move/from16 v19, v8

    goto :goto_102

    .line 740
    :pswitch_ce
    move/from16 v18, v7

    .end local v7    # "pid":I
    .restart local v18    # "pid":I
    invoke-static {v0}, Landroid/media/MediaMetrics$Item;->getStringFromBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    move/from16 v19, v8

    goto :goto_102

    .line 737
    .end local v18    # "pid":I
    .restart local v7    # "pid":I
    :pswitch_da
    move/from16 v18, v7

    .end local v7    # "pid":I
    .restart local v18    # "pid":I
    move/from16 v19, v8

    .end local v8    # "uid":I
    .restart local v19    # "uid":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v7

    invoke-virtual {v1, v5, v7, v8}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 738
    goto :goto_102

    .line 734
    .end local v18    # "pid":I
    .end local v19    # "uid":I
    .restart local v7    # "pid":I
    .restart local v8    # "uid":I
    :pswitch_e6
    move/from16 v18, v7

    move/from16 v19, v8

    .end local v7    # "pid":I
    .end local v8    # "uid":I
    .restart local v18    # "pid":I
    .restart local v19    # "uid":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v7

    invoke-virtual {v1, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 735
    goto :goto_102

    .line 731
    .end local v18    # "pid":I
    .end local v19    # "uid":I
    .restart local v7    # "pid":I
    .restart local v8    # "uid":I
    :pswitch_f2
    move/from16 v18, v7

    move/from16 v19, v8

    .end local v7    # "pid":I
    .end local v8    # "uid":I
    .restart local v18    # "pid":I
    .restart local v19    # "uid":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 732
    goto :goto_102

    .line 743
    .end local v18    # "pid":I
    .end local v19    # "uid":I
    .restart local v7    # "pid":I
    .restart local v8    # "uid":I
    :pswitch_fe
    move/from16 v18, v7

    move/from16 v19, v8

    .line 758
    .end local v7    # "pid":I
    .end local v8    # "uid":I
    .restart local v18    # "pid":I
    .restart local v19    # "uid":I
    :goto_102
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    sub-int/2addr v7, v14

    .line 759
    .local v7, "deltaPosition":I
    if-ne v7, v15, :cond_114

    .line 722
    .end local v4    # "type":B
    .end local v5    # "propKey":Ljava/lang/String;
    .end local v7    # "deltaPosition":I
    .end local v14    # "initialBufferPosition":I
    .end local v15    # "propSize":C
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v7, v18

    move/from16 v8, v19

    goto :goto_9e

    .line 760
    .restart local v4    # "type":B
    .restart local v5    # "propKey":Ljava/lang/String;
    .restart local v7    # "deltaPosition":I
    .restart local v14    # "initialBufferPosition":I
    .restart local v15    # "propSize":C
    :cond_114
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v1

    .end local v1    # "bundle":Landroid/os/Bundle;
    .local v20, "bundle":Landroid/os/Bundle;
    const-string v1, "propSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != deltaPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 752
    .end local v7    # "deltaPosition":I
    .end local v20    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_139
    move-object/from16 v20, v1

    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v20    # "bundle":Landroid/os/Bundle;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Property "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " has unsupported type "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    .end local v14    # "initialBufferPosition":I
    .end local v15    # "propSize":C
    .end local v16    # "version":C
    .end local v17    # "keySize":C
    .end local v18    # "pid":I
    .end local v19    # "uid":I
    .end local v20    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .local v4, "version":C
    .local v5, "keySize":C
    .local v7, "pid":I
    .restart local v8    # "uid":I
    :cond_15e
    move-object/from16 v20, v1

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v7

    move/from16 v19, v8

    .line 765
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "version":C
    .end local v5    # "keySize":C
    .end local v7    # "pid":I
    .end local v8    # "uid":I
    .end local v13    # "i":I
    .restart local v16    # "version":C
    .restart local v17    # "keySize":C
    .restart local v18    # "pid":I
    .restart local v19    # "uid":I
    .restart local v20    # "bundle":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 766
    .local v0, "finalPosition":I
    if-ne v0, v2, :cond_16f

    .line 770
    return-object v20

    .line 767
    :cond_16f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "totalSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != finalPosition:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 709
    .end local v0    # "finalPosition":I
    .end local v16    # "version":C
    .end local v17    # "keySize":C
    .end local v18    # "pid":I
    .end local v19    # "uid":I
    .end local v20    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "version":C
    .restart local v5    # "keySize":C
    .restart local v7    # "pid":I
    .restart local v8    # "uid":I
    :cond_192
    move-object/from16 v20, v1

    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v20    # "bundle":Landroid/os/Bundle;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have more than 2147483647 properties"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    .end local v12    # "propertyCount":I
    .end local v20    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_19c
    move-object/from16 v20, v1

    move/from16 v16, v4

    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "version":C
    .restart local v16    # "version":C
    .restart local v20    # "bundle":Landroid/os/Bundle;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " > headerSize:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "pid":I
    .end local v8    # "uid":I
    .end local v9    # "timestamp":J
    .end local v11    # "headerRead":I
    .end local v16    # "version":C
    .end local v20    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "version":C
    :cond_1c9
    move-object/from16 v20, v1

    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v20    # "bundle":Landroid/os/Bundle;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    .end local v20    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_1d3
    move-object/from16 v20, v1

    move/from16 v16, v4

    move/from16 v17, v5

    .line 673
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "version":C
    .end local v5    # "keySize":C
    .restart local v16    # "version":C
    .restart local v17    # "keySize":C
    .restart local v20    # "bundle":Landroid/os/Bundle;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Item size cannot be > 2147483647"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_1e2
    .packed-switch 0x0
        :pswitch_fe
        :pswitch_f2
        :pswitch_e6
        :pswitch_da
        :pswitch_ce
        :pswitch_c3
    .end packed-switch
.end method

.method private blacklist updateHeader()V
    .registers 4

    .line 876
    iget-object v0, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaMetrics$Item;->mPropertyCountOffset:I

    iget v2, p0, Landroid/media/MediaMetrics$Item;->mPropertyCount:I

    int-to-char v2, v2

    .line 877
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 878
    return-void
.end method


# virtual methods
.method public blacklist clear()Landroid/media/MediaMetrics$Item;
    .registers 5

    .line 607
    iget-object v0, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/media/MediaMetrics$Item;->mPropertyStartOffset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 608
    iget-object v0, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 609
    iget-object v0, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/media/MediaMetrics$Item;->mTimeNsOffset:I

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 610
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaMetrics$Item;->mPropertyCount:I

    .line 611
    return-object p0
.end method

.method public blacklist putDouble(Ljava/lang/String;D)Landroid/media/MediaMetrics$Item;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 517
    invoke-static {}, Landroid/media/MediaMetrics;->-$$Nest$sfgetMEDIAMETRICS_CHARSET()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 518
    .local v0, "keyBytes":[B
    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->reserveProperty([BI)I

    move-result v1

    int-to-char v1, v1

    .line 519
    .local v1, "propSize":C
    iget-object v2, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    .line 520
    .local v2, "estimatedFinalPosition":I
    iget-object v3, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 521
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 522
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 523
    invoke-virtual {v3, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 524
    iget v3, p0, Landroid/media/MediaMetrics$Item;->mPropertyCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/media/MediaMetrics$Item;->mPropertyCount:I

    .line 525
    iget-object v3, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-ne v3, v2, :cond_3c

    .line 529
    return-object p0

    .line 526
    :cond_3c
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != estimatedFinalPosition "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blacklist putInt(Ljava/lang/String;I)Landroid/media/MediaMetrics$Item;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 471
    invoke-static {}, Landroid/media/MediaMetrics;->-$$Nest$sfgetMEDIAMETRICS_CHARSET()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 472
    .local v0, "keyBytes":[B
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->reserveProperty([BI)I

    move-result v1

    int-to-char v1, v1

    .line 473
    .local v1, "propSize":C
    iget-object v2, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    .line 474
    .local v2, "estimatedFinalPosition":I
    iget-object v3, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 475
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 476
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 477
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 478
    iget v3, p0, Landroid/media/MediaMetrics$Item;->mPropertyCount:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/media/MediaMetrics$Item;->mPropertyCount:I

    .line 479
    iget-object v3, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-ne v3, v2, :cond_3a

    .line 483
    return-object p0

    .line 480
    :cond_3a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != estimatedFinalPosition "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blacklist putLong(Ljava/lang/String;J)Landroid/media/MediaMetrics$Item;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 494
    invoke-static {}, Landroid/media/MediaMetrics;->-$$Nest$sfgetMEDIAMETRICS_CHARSET()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 495
    .local v0, "keyBytes":[B
    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->reserveProperty([BI)I

    move-result v1

    int-to-char v1, v1

    .line 496
    .local v1, "propSize":C
    iget-object v2, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    .line 497
    .local v2, "estimatedFinalPosition":I
    iget-object v3, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 498
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 499
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 500
    invoke-virtual {v3, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 501
    iget v3, p0, Landroid/media/MediaMetrics$Item;->mPropertyCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/media/MediaMetrics$Item;->mPropertyCount:I

    .line 502
    iget-object v3, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-ne v3, v2, :cond_3c

    .line 506
    return-object p0

    .line 503
    :cond_3c
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != estimatedFinalPosition "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blacklist putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetrics$Item;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 540
    invoke-static {}, Landroid/media/MediaMetrics;->-$$Nest$sfgetMEDIAMETRICS_CHARSET()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 541
    .local v0, "keyBytes":[B
    invoke-static {}, Landroid/media/MediaMetrics;->-$$Nest$sfgetMEDIAMETRICS_CHARSET()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 542
    .local v1, "valueBytes":[B
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/media/MediaMetrics$Item;->reserveProperty([BI)I

    move-result v2

    int-to-char v2, v2

    .line 543
    .local v2, "propSize":C
    iget-object v3, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    .line 544
    .local v3, "estimatedFinalPosition":I
    iget-object v4, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 545
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 546
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 547
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 548
    iget v4, p0, Landroid/media/MediaMetrics$Item;->mPropertyCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/media/MediaMetrics$Item;->mPropertyCount:I

    .line 549
    iget-object v4, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-ne v4, v3, :cond_49

    .line 553
    return-object p0

    .line 550
    :cond_49
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Final position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " != estimatedFinalPosition "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public blacklist record()Z
    .registers 3

    .line 623
    invoke-direct {p0}, Landroid/media/MediaMetrics$Item;->updateHeader()V

    .line 624
    iget-object v0, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/MediaMetrics;->-$$Nest$smnative_submit_bytebuffer(Ljava/nio/ByteBuffer;I)I

    move-result v0

    if-ltz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public blacklist set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/media/MediaMetrics$Key<",
            "TT;>;TT;)",
            "Landroid/media/MediaMetrics$Item;"
        }
    .end annotation

    .line 450
    .local p1, "key":Landroid/media/MediaMetrics$Key;, "Landroid/media/MediaMetrics$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 451
    invoke-interface {p1}, Landroid/media/MediaMetrics$Key;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->putInt(Ljava/lang/String;I)Landroid/media/MediaMetrics$Item;

    goto :goto_47

    .line 452
    :cond_13
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_26

    .line 453
    invoke-interface {p1}, Landroid/media/MediaMetrics$Key;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/MediaMetrics$Item;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetrics$Item;

    goto :goto_47

    .line 454
    :cond_26
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_39

    .line 455
    invoke-interface {p1}, Landroid/media/MediaMetrics$Key;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/MediaMetrics$Item;->putDouble(Ljava/lang/String;D)Landroid/media/MediaMetrics$Item;

    goto :goto_47

    .line 456
    :cond_39
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_47

    .line 457
    invoke-interface {p1}, Landroid/media/MediaMetrics$Key;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetrics$Item;

    .line 460
    :cond_47
    :goto_47
    return-object p0
.end method

.method public blacklist setPid(I)Landroid/media/MediaMetrics$Item;
    .registers 4
    .param p1, "pid"    # I

    .line 563
    iget-object v0, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/media/MediaMetrics$Item;->mPidOffset:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 564
    return-object p0
.end method

.method public blacklist setTimestamp(J)Landroid/media/MediaMetrics$Item;
    .registers 5
    .param p1, "timeNs"    # J

    .line 595
    iget-object v0, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/media/MediaMetrics$Item;->mTimeNsOffset:I

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 596
    return-object p0
.end method

.method public blacklist setUid(I)Landroid/media/MediaMetrics$Item;
    .registers 4
    .param p1, "uid"    # I

    .line 579
    iget-object v0, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/media/MediaMetrics$Item;->mUidOffset:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 580
    return-object p0
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .registers 3

    .line 635
    invoke-direct {p0}, Landroid/media/MediaMetrics$Item;->updateHeader()V

    .line 637
    iget-object v0, p0, Landroid/media/MediaMetrics$Item;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 638
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 639
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 641
    invoke-static {v0}, Landroid/media/MediaMetrics$Item;->toBundle(Ljava/nio/ByteBuffer;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method
