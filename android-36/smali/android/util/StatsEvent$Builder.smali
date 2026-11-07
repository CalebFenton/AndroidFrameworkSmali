.class public final Landroid/util/StatsEvent$Builder;
.super Ljava/lang/Object;
.source "StatsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/StatsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist POS_ATOM_ID:I = 0xb

.field private static final blacklist POS_NUM_ELEMENTS:I = 0x1

.field private static final blacklist POS_TIMESTAMP_NS:I = 0x2


# instance fields
.field private blacklist mAtomId:I

.field private final blacklist mBuffer:Landroid/util/StatsEvent$Buffer;

.field private blacklist mCurrentAnnotationCount:B

.field private blacklist mErrorMask:I

.field private blacklist mLastType:B

.field private blacklist mNumElements:I

.field private blacklist mPos:I

.field private blacklist mPosLastField:I

.field private blacklist mTimestampNs:J

.field private blacklist mUsePooledBuffer:Z


# direct methods
.method private constructor blacklist <init>(Landroid/util/StatsEvent$Buffer;)V
    .registers 5
    .param p1, "buffer"    # Landroid/util/StatsEvent$Buffer;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/StatsEvent$Builder;->mUsePooledBuffer:Z

    .line 369
    iput-object p1, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    .line 370
    iput-byte v0, p0, Landroid/util/StatsEvent$Builder;->mCurrentAnnotationCount:B

    .line 371
    iput v0, p0, Landroid/util/StatsEvent$Builder;->mAtomId:I

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/util/StatsEvent$Builder;->mTimestampNs:J

    .line 373
    iput v0, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    .line 376
    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 377
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/util/StatsEvent$Builder;->writeTypeId(B)V

    .line 380
    const/4 v0, 0x2

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 381
    iget-wide v0, p0, Landroid/util/StatsEvent$Builder;->mTimestampNs:J

    invoke-virtual {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 382
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/util/StatsEvent$Buffer;Landroid/util/StatsEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/util/StatsEvent$Builder;-><init>(Landroid/util/StatsEvent$Buffer;)V

    return-void
.end method

.method private static blacklist stringToBytes(Ljava/lang/String;)[B
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .line 830
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_6

    :cond_5
    move-object v0, p0

    :goto_6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method private blacklist writeAnnotationCount()V
    .registers 4

    .line 824
    iget-byte v0, p0, Landroid/util/StatsEvent$Builder;->mCurrentAnnotationCount:B

    shl-int/lit8 v0, v0, 0x4

    iget-byte v1, p0, Landroid/util/StatsEvent$Builder;->mLastType:B

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 825
    .local v0, "encodedId":B
    iget-object v1, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v2, p0, Landroid/util/StatsEvent$Builder;->mPosLastField:I

    invoke-static {v1, v2, v0}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByte(Landroid/util/StatsEvent$Buffer;IB)I

    .line 826
    return-void
.end method

.method private blacklist writeArrayInfo(BB)Z
    .registers 7
    .param p1, "numElements"    # B
    .param p2, "elementTypeId"    # B

    .line 835
    const/16 v0, 0x7f

    if-le p1, v0, :cond_c

    .line 836
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    .line 837
    const/4 v0, 0x0

    return v0

    .line 841
    :cond_c
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/util/StatsEvent$Builder;->writeTypeId(B)V

    .line 842
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v1, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v1, v2, p1}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByte(Landroid/util/StatsEvent$Buffer;IB)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 845
    and-int/lit8 v0, p2, 0xf

    int-to-byte v0, v0

    .line 846
    .local v0, "encodedId":B
    iget v1, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v2, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v3, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v2, v3, v0}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByte(Landroid/util/StatsEvent$Buffer;IB)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 847
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist writeByteArray([BB)V
    .registers 7
    .param p1, "value"    # [B
    .param p2, "typeId"    # B

    .line 480
    invoke-direct {p0, p2}, Landroid/util/StatsEvent$Builder;->writeTypeId(B)V

    .line 481
    array-length v0, p1

    .line 482
    .local v0, "numBytes":I
    iget v1, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v2, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v3, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v2, v3, v0}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputInt(Landroid/util/StatsEvent$Buffer;II)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 483
    iget v1, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v2, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v3, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v2, v3, p1}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByteArray(Landroid/util/StatsEvent$Buffer;I[B)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 484
    iget v1, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    .line 485
    return-void
.end method

.method private blacklist writeTypeId(B)V
    .registers 6
    .param p1, "typeId"    # B

    .line 815
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPosLastField:I

    .line 816
    iput-byte p1, p0, Landroid/util/StatsEvent$Builder;->mLastType:B

    .line 817
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/util/StatsEvent$Builder;->mCurrentAnnotationCount:B

    .line 818
    and-int/lit8 v0, p1, 0xf

    int-to-byte v0, v0

    .line 819
    .local v0, "encodedId":B
    iget v1, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v2, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v3, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v2, v3, v0}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByte(Landroid/util/StatsEvent$Buffer;IB)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 820
    return-void
.end method


# virtual methods
.method public whitelist addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;
    .registers 7
    .param p1, "annotationId"    # B
    .param p2, "value"    # Z

    .line 721
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    .line 722
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    goto :goto_4b

    .line 723
    :cond_c
    iget-byte v0, p0, Landroid/util/StatsEvent$Builder;->mCurrentAnnotationCount:B

    const/16 v1, 0xf

    if-lt v0, v1, :cond_19

    .line 724
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    goto :goto_4b

    .line 726
    :cond_19
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v1, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v1, v2, p1}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByte(Landroid/util/StatsEvent$Buffer;IB)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 727
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v1, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByte(Landroid/util/StatsEvent$Buffer;IB)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 728
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v1, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v1, v2, p2}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputBoolean(Landroid/util/StatsEvent$Buffer;IZ)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 729
    iget-byte v0, p0, Landroid/util/StatsEvent$Builder;->mCurrentAnnotationCount:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/StatsEvent$Builder;->mCurrentAnnotationCount:B

    .line 730
    invoke-direct {p0}, Landroid/util/StatsEvent$Builder;->writeAnnotationCount()V

    .line 733
    :goto_4b
    return-object p0
.end method

.method public whitelist addIntAnnotation(BI)Landroid/util/StatsEvent$Builder;
    .registers 7
    .param p1, "annotationId"    # B
    .param p2, "value"    # I

    .line 741
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    .line 742
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    goto :goto_4b

    .line 743
    :cond_c
    iget-byte v0, p0, Landroid/util/StatsEvent$Builder;->mCurrentAnnotationCount:B

    const/16 v1, 0xf

    if-lt v0, v1, :cond_19

    .line 744
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    goto :goto_4b

    .line 746
    :cond_19
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v1, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v1, v2, p1}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByte(Landroid/util/StatsEvent$Buffer;IB)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 747
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v1, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByte(Landroid/util/StatsEvent$Buffer;IB)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 748
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v1, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v1, v2, p2}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputInt(Landroid/util/StatsEvent$Buffer;II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 749
    iget-byte v0, p0, Landroid/util/StatsEvent$Builder;->mCurrentAnnotationCount:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/StatsEvent$Builder;->mCurrentAnnotationCount:B

    .line 750
    invoke-direct {p0}, Landroid/util/StatsEvent$Builder;->writeAnnotationCount()V

    .line 753
    :goto_4b
    return-object p0
.end method

.method public whitelist build()Landroid/util/StatsEvent;
    .registers 11

    .line 773
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroid/util/StatsEvent$Builder;->mTimestampNs:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 774
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    .line 776
    :cond_e
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mAtomId:I

    if-nez v0, :cond_18

    .line 777
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    .line 779
    :cond_18
    iget-object v0, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    invoke-static {v0}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mhasOverflowed(Landroid/util/StatsEvent$Buffer;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 780
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    .line 782
    :cond_26
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    const/16 v2, 0x7f

    if-le v0, v2, :cond_32

    .line 783
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    .line 786
    :cond_32
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    const/4 v2, 0x0

    if-nez v0, :cond_40

    .line 787
    iget-object v0, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v3, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    int-to-byte v3, v3

    invoke-static {v0, v1, v3}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByte(Landroid/util/StatsEvent$Buffer;IB)I

    goto :goto_84

    .line 790
    :cond_40
    const/16 v0, 0xb

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 791
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v3, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v4, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v3, v4, v2}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByte(Landroid/util/StatsEvent$Buffer;IB)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 792
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v3, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v4, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget v5, p0, Landroid/util/StatsEvent$Builder;->mAtomId:I

    invoke-static {v3, v4, v5}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputInt(Landroid/util/StatsEvent$Buffer;II)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 793
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v3, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v4, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    const/16 v5, 0xf

    invoke-static {v3, v4, v5}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByte(Landroid/util/StatsEvent$Buffer;IB)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 794
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v3, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v4, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget v5, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    invoke-static {v3, v4, v5}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputInt(Landroid/util/StatsEvent$Buffer;II)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 795
    iget-object v0, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    const/4 v3, 0x3

    invoke-static {v0, v1, v3}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByte(Landroid/util/StatsEvent$Buffer;IB)I

    .line 798
    :goto_84
    iget v8, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 800
    .local v8, "size":I
    iget-boolean v0, p0, Landroid/util/StatsEvent$Builder;->mUsePooledBuffer:Z

    if-eqz v0, :cond_9b

    .line 801
    new-instance v4, Landroid/util/StatsEvent;

    iget v5, p0, Landroid/util/StatsEvent$Builder;->mAtomId:I

    iget-object v6, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget-object v0, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    invoke-static {v0}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mgetBytes(Landroid/util/StatsEvent$Buffer;)[B

    move-result-object v7

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/util/StatsEvent;-><init>(ILandroid/util/StatsEvent$Buffer;[BILandroid/util/StatsEvent-IA;)V

    return-object v4

    .line 804
    :cond_9b
    new-array v7, v8, [B

    .line 805
    .local v7, "payload":[B
    iget-object v0, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    invoke-static {v0}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mgetBytes(Landroid/util/StatsEvent$Buffer;)[B

    move-result-object v0

    invoke-static {v0, v2, v7, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 808
    iget-object v0, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    invoke-static {v0}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mrelease(Landroid/util/StatsEvent$Buffer;)V

    .line 810
    new-instance v4, Landroid/util/StatsEvent;

    iget v5, p0, Landroid/util/StatsEvent$Builder;->mAtomId:I

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/util/StatsEvent;-><init>(ILandroid/util/StatsEvent$Buffer;[BILandroid/util/StatsEvent-IA;)V

    return-object v4
.end method

.method public whitelist setAtomId(I)Landroid/util/StatsEvent$Builder;
    .registers 4
    .param p1, "atomId"    # I

    .line 394
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mAtomId:I

    if-nez v0, :cond_15

    .line 395
    iput p1, p0, Landroid/util/StatsEvent$Builder;->mAtomId:I

    .line 397
    const/4 v0, 0x1

    iget v1, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    if-ne v0, v1, :cond_f

    .line 398
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto :goto_15

    .line 401
    :cond_f
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    .line 405
    :cond_15
    :goto_15
    return-object p0
.end method

.method public whitelist usePooledBuffer()Landroid/util/StatsEvent$Builder;
    .registers 4

    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/StatsEvent$Builder;->mUsePooledBuffer:Z

    .line 764
    iget-object v0, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    const/16 v1, 0xfe0

    iget v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v0, v1, v2}, Landroid/util/StatsEvent$Buffer;->-$$Nest$msetMaxSize(Landroid/util/StatsEvent$Buffer;II)V

    .line 765
    return-object p0
.end method

.method public whitelist writeAttributionChain([I[Ljava/lang/String;)Landroid/util/StatsEvent$Builder;
    .registers 11
    .param p1, "uids"    # [I
    .param p2, "tags"    # [Ljava/lang/String;

    .line 499
    array-length v0, p1

    int-to-byte v0, v0

    .line 500
    .local v0, "numUids":B
    array-length v1, p2

    int-to-byte v1, v1

    .line 502
    .local v1, "numTags":B
    if-eq v0, v1, :cond_d

    .line 503
    iget v2, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    goto :goto_66

    .line 504
    :cond_d
    const/16 v2, 0x7f

    if-le v0, v2, :cond_18

    .line 505
    iget v2, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    goto :goto_66

    .line 509
    :cond_18
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Landroid/util/StatsEvent$Builder;->writeTypeId(B)V

    .line 510
    iget v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v3, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v4, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v3, v4, v0}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByte(Landroid/util/StatsEvent$Buffer;IB)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 511
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v0, :cond_60

    .line 513
    iget v3, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v4, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v5, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    aget v6, p1, v2

    invoke-static {v4, v5, v6}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputInt(Landroid/util/StatsEvent$Buffer;II)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 517
    aget-object v3, p2, v2

    invoke-static {v3}, Landroid/util/StatsEvent$Builder;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 518
    .local v3, "tagBytes":[B
    iget v4, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v5, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v6, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    array-length v7, v3

    invoke-static {v5, v6, v7}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputInt(Landroid/util/StatsEvent$Buffer;II)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 519
    iget v4, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v5, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v6, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v5, v6, v3}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByteArray(Landroid/util/StatsEvent$Buffer;I[B)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 511
    .end local v3    # "tagBytes":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 521
    .end local v2    # "i":I
    :cond_60
    iget v2, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    .line 523
    :goto_66
    return-object p0
.end method

.method public whitelist writeBoolean(Z)Landroid/util/StatsEvent$Builder;
    .registers 5
    .param p1, "value"    # Z

    .line 414
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/util/StatsEvent$Builder;->writeTypeId(B)V

    .line 415
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v1, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v1, v2, p1}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputBoolean(Landroid/util/StatsEvent$Buffer;IZ)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 416
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    .line 417
    return-object p0
.end method

.method public whitelist writeBooleanArray([Z)Landroid/util/StatsEvent$Builder;
    .registers 8
    .param p1, "elements"    # [Z

    .line 604
    array-length v0, p1

    int-to-byte v0, v0

    .line 606
    .local v0, "numElements":B
    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeArrayInfo(BB)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 608
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1e

    .line 609
    iget v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v3, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v4, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    aget-boolean v5, p1, v1

    invoke-static {v3, v4, v5}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputBoolean(Landroid/util/StatsEvent$Buffer;IZ)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 608
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 611
    .end local v1    # "i":I
    :cond_1e
    iget v1, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    .line 613
    :cond_24
    return-object p0
.end method

.method public whitelist writeByteArray([B)Landroid/util/StatsEvent$Builder;
    .registers 3
    .param p1, "value"    # [B

    .line 475
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Landroid/util/StatsEvent$Builder;->writeByteArray([BB)V

    .line 476
    return-object p0
.end method

.method public whitelist writeFloat(F)Landroid/util/StatsEvent$Builder;
    .registers 5
    .param p1, "value"    # F

    .line 450
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/util/StatsEvent$Builder;->writeTypeId(B)V

    .line 451
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v1, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v1, v2, p1}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputFloat(Landroid/util/StatsEvent$Buffer;IF)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 452
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    .line 453
    return-object p0
.end method

.method public whitelist writeFloatArray([F)Landroid/util/StatsEvent$Builder;
    .registers 8
    .param p1, "elements"    # [F

    .line 676
    array-length v0, p1

    int-to-byte v0, v0

    .line 678
    .local v0, "numElements":B
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeArrayInfo(BB)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 680
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1e

    .line 681
    iget v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v3, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v4, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    aget v5, p1, v1

    invoke-static {v3, v4, v5}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputFloat(Landroid/util/StatsEvent$Buffer;IF)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 683
    .end local v1    # "i":I
    :cond_1e
    iget v1, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    .line 685
    :cond_24
    return-object p0
.end method

.method public whitelist writeInt(I)Landroid/util/StatsEvent$Builder;
    .registers 5
    .param p1, "value"    # I

    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/StatsEvent$Builder;->writeTypeId(B)V

    .line 427
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v1, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v1, v2, p1}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputInt(Landroid/util/StatsEvent$Buffer;II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 428
    iget v0, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    .line 429
    return-object p0
.end method

.method public whitelist writeIntArray([I)Landroid/util/StatsEvent$Builder;
    .registers 8
    .param p1, "elements"    # [I

    .line 628
    array-length v0, p1

    int-to-byte v0, v0

    .line 630
    .local v0, "numElements":B
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeArrayInfo(BB)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 632
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1e

    .line 633
    iget v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v3, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v4, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    aget v5, p1, v1

    invoke-static {v3, v4, v5}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputInt(Landroid/util/StatsEvent$Buffer;II)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 635
    .end local v1    # "i":I
    :cond_1e
    iget v1, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    .line 637
    :cond_24
    return-object p0
.end method

.method public whitelist writeKeyValuePairs(Landroid/util/SparseIntArray;Landroid/util/SparseLongArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/util/StatsEvent$Builder;
    .registers 23
    .param p1, "intMap"    # Landroid/util/SparseIntArray;
    .param p2, "longMap"    # Landroid/util/SparseLongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/SparseLongArray;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/util/StatsEvent$Builder;"
        }
    .end annotation

    .line 540
    .local p3, "stringMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p4, "floatMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    if-nez v1, :cond_e

    const/4 v6, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    .line 541
    .local v6, "intMapSize":I
    :goto_12
    if-nez v2, :cond_16

    const/4 v7, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v7

    .line 542
    .local v7, "longMapSize":I
    :goto_1a
    if-nez v3, :cond_1e

    const/4 v8, 0x0

    goto :goto_22

    :cond_1e
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 543
    .local v8, "stringMapSize":I
    :goto_22
    if-nez v4, :cond_26

    const/4 v9, 0x0

    goto :goto_2a

    :cond_26
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 544
    .local v9, "floatMapSize":I
    :goto_2a
    add-int v10, v6, v7

    add-int/2addr v10, v8

    add-int/2addr v10, v9

    .line 546
    .local v10, "totalCount":I
    const/16 v11, 0x7f

    if-le v10, v11, :cond_3a

    .line 547
    iget v5, v0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v0, Landroid/util/StatsEvent$Builder;->mErrorMask:I

    goto/16 :goto_125

    .line 549
    :cond_3a
    const/16 v11, 0x8

    invoke-direct {v0, v11}, Landroid/util/StatsEvent$Builder;->writeTypeId(B)V

    .line 550
    iget v11, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v12, v0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v13, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    int-to-byte v14, v10

    invoke-static {v12, v13, v14}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByte(Landroid/util/StatsEvent$Buffer;IB)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 552
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4e
    if-ge v11, v6, :cond_79

    .line 553
    invoke-virtual {v1, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    .line 554
    .local v12, "key":I
    invoke-virtual {v1, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    .line 555
    .local v13, "value":I
    iget v14, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v15, v0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v5, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v15, v5, v12}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputInt(Landroid/util/StatsEvent$Buffer;II)I

    move-result v5

    add-int/2addr v14, v5

    iput v14, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 556
    const/4 v5, 0x0

    invoke-direct {v0, v5}, Landroid/util/StatsEvent$Builder;->writeTypeId(B)V

    .line 557
    iget v14, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v15, v0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v5, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v15, v5, v13}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputInt(Landroid/util/StatsEvent$Buffer;II)I

    move-result v5

    add-int/2addr v14, v5

    iput v14, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 552
    .end local v12    # "key":I
    .end local v13    # "value":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_4e

    .line 560
    .end local v11    # "i":I
    :cond_79
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7a
    if-ge v5, v7, :cond_a7

    .line 561
    invoke-virtual {v2, v5}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v12

    .line 562
    .restart local v12    # "key":I
    invoke-virtual {v2, v5}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v13

    .line 563
    .local v13, "value":J
    iget v15, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v11, v0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v1, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v11, v1, v12}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputInt(Landroid/util/StatsEvent$Buffer;II)I

    move-result v1

    add-int/2addr v15, v1

    iput v15, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 564
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/StatsEvent$Builder;->writeTypeId(B)V

    .line 565
    iget v1, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v11, v0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v15, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v11, v15, v13, v14}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputLong(Landroid/util/StatsEvent$Buffer;IJ)I

    move-result v11

    add-int/2addr v1, v11

    iput v1, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 560
    .end local v12    # "key":I
    .end local v13    # "value":J
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    goto :goto_7a

    .line 568
    .end local v5    # "i":I
    :cond_a7
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a8
    if-ge v1, v8, :cond_e9

    .line 569
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 570
    .local v5, "key":I
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 571
    .local v11, "value":Ljava/lang/String;
    iget v12, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v13, v0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v14, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v13, v14, v5}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputInt(Landroid/util/StatsEvent$Buffer;II)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 572
    const/4 v12, 0x2

    invoke-direct {v0, v12}, Landroid/util/StatsEvent$Builder;->writeTypeId(B)V

    .line 573
    invoke-static {v11}, Landroid/util/StatsEvent$Builder;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 574
    .local v12, "valueBytes":[B
    iget v13, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v14, v0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v15, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    move/from16 v17, v1

    .end local v1    # "i":I
    .local v17, "i":I
    array-length v1, v12

    invoke-static {v14, v15, v1}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputInt(Landroid/util/StatsEvent$Buffer;II)I

    move-result v1

    add-int/2addr v13, v1

    iput v13, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 575
    iget v1, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v13, v0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v14, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v13, v14, v12}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByteArray(Landroid/util/StatsEvent$Buffer;I[B)I

    move-result v13

    add-int/2addr v1, v13

    iput v1, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 568
    .end local v5    # "key":I
    .end local v11    # "value":Ljava/lang/String;
    .end local v12    # "valueBytes":[B
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "i":I
    .restart local v1    # "i":I
    goto :goto_a8

    :cond_e9
    move/from16 v17, v1

    .line 578
    .end local v1    # "i":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_ec
    if-ge v1, v9, :cond_11d

    .line 579
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 580
    .restart local v5    # "key":I
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 581
    .local v11, "value":F
    iget v12, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v13, v0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v14, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v13, v14, v5}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputInt(Landroid/util/StatsEvent$Buffer;II)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 582
    const/4 v12, 0x4

    invoke-direct {v0, v12}, Landroid/util/StatsEvent$Builder;->writeTypeId(B)V

    .line 583
    iget v12, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v13, v0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v14, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v13, v14, v11}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputFloat(Landroid/util/StatsEvent$Buffer;IF)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 578
    .end local v5    # "key":I
    .end local v11    # "value":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_ec

    .line 586
    .end local v1    # "i":I
    :cond_11d
    iget v1, v0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    .line 589
    :goto_125
    return-object v0
.end method

.method public whitelist writeLong(J)Landroid/util/StatsEvent$Builder;
    .registers 7
    .param p1, "value"    # J

    .line 438
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/StatsEvent$Builder;->writeTypeId(B)V

    .line 439
    iget v1, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v2, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v3, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v2, v3, p1, p2}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputLong(Landroid/util/StatsEvent$Buffer;IJ)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 440
    iget v1, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    .line 441
    return-object p0
.end method

.method public whitelist writeLongArray([J)Landroid/util/StatsEvent$Builder;
    .registers 10
    .param p1, "elements"    # [J

    .line 652
    array-length v0, p1

    int-to-byte v0, v0

    .line 654
    .local v0, "numElements":B
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeArrayInfo(BB)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 656
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1e

    .line 657
    iget v3, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v4, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v5, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    aget-wide v6, p1, v2

    invoke-static {v4, v5, v6, v7}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputLong(Landroid/util/StatsEvent$Buffer;IJ)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 656
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 659
    .end local v2    # "i":I
    :cond_1e
    iget v2, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    .line 661
    :cond_23
    return-object p0
.end method

.method public whitelist writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 463
    invoke-static {p1}, Landroid/util/StatsEvent$Builder;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 464
    .local v0, "valueBytes":[B
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeByteArray([BB)V

    .line 465
    return-object p0
.end method

.method public whitelist writeStringArray([Ljava/lang/String;)Landroid/util/StatsEvent$Builder;
    .registers 9
    .param p1, "elements"    # [Ljava/lang/String;

    .line 700
    array-length v0, p1

    int-to-byte v0, v0

    .line 702
    .local v0, "numElements":B
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeArrayInfo(BB)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 704
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_30

    .line 705
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/util/StatsEvent$Builder;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 706
    .local v2, "elementBytes":[B
    iget v3, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v4, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v5, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    array-length v6, v2

    invoke-static {v4, v5, v6}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputInt(Landroid/util/StatsEvent$Buffer;II)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 707
    iget v3, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    iget-object v4, p0, Landroid/util/StatsEvent$Builder;->mBuffer:Landroid/util/StatsEvent$Buffer;

    iget v5, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    invoke-static {v4, v5, v2}, Landroid/util/StatsEvent$Buffer;->-$$Nest$mputByteArray(Landroid/util/StatsEvent$Buffer;I[B)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/util/StatsEvent$Builder;->mPos:I

    .line 704
    .end local v2    # "elementBytes":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 709
    .end local v1    # "i":I
    :cond_30
    iget v1, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/StatsEvent$Builder;->mNumElements:I

    .line 711
    :cond_36
    return-object p0
.end method
