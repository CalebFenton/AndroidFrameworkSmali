.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyHistogram"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;


# instance fields
.field private avgTimeMillis_:I

.field private bitField0_:I

.field private bucketCount_:I

.field public bucketCounters:[I

.field public bucketEndPoints:[I

.field private category_:I

.field private count_:I

.field private id_:I

.field private maxTimeMillis_:I

.field private minTimeMillis_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 706
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 707
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@6
    .line 706
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 2

    #@0
    .prologue
    .line 552
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 553
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 555
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 556
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 560
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@13
    return-object v0

    #@14
    .line 553
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 959
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 953
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 711
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@3
    .line 712
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->category_:I

    #@5
    .line 713
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->id_:I

    #@7
    .line 714
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->minTimeMillis_:I

    #@9
    .line 715
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->maxTimeMillis_:I

    #@b
    .line 716
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->avgTimeMillis_:I

    #@d
    .line 717
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->count_:I

    #@f
    .line 718
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCount_:I

    #@11
    .line 719
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    #@13
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@15
    .line 720
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    #@17
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@19
    .line 721
    const/4 v0, 0x0

    #@1a
    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@1c
    .line 722
    const/4 v0, -0x1

    #@1d
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->cachedSize:I

    #@1f
    .line 723
    return-object p0
.end method

.method public clearAvgTimeMillis()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1

    #@0
    .prologue
    .line 655
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->avgTimeMillis_:I

    #@3
    .line 656
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x11

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@9
    .line 657
    return-object p0
.end method

.method public clearBucketCount()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1

    #@0
    .prologue
    .line 693
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCount_:I

    #@3
    .line 694
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x41

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@9
    .line 695
    return-object p0
.end method

.method public clearCategory()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1

    #@0
    .prologue
    .line 579
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->category_:I

    #@3
    .line 580
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x2

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@9
    .line 581
    return-object p0
.end method

.method public clearCount()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1

    #@0
    .prologue
    .line 674
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->count_:I

    #@3
    .line 675
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x21

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@9
    .line 676
    return-object p0
.end method

.method public clearId()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1

    #@0
    .prologue
    .line 598
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->id_:I

    #@3
    .line 599
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x3

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@9
    .line 600
    return-object p0
.end method

.method public clearMaxTimeMillis()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1

    #@0
    .prologue
    .line 636
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->maxTimeMillis_:I

    #@3
    .line 637
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x9

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@9
    .line 638
    return-object p0
.end method

.method public clearMinTimeMillis()Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1

    #@0
    .prologue
    .line 617
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->minTimeMillis_:I

    #@3
    .line 618
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x5

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@9
    .line 619
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 765
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@4
    move-result v3

    #@5
    .line 766
    .local v3, "size":I
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@7
    and-int/lit8 v4, v4, 0x1

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 768
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->category_:I

    #@d
    .line 767
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@10
    move-result v4

    #@11
    add-int/2addr v3, v4

    #@12
    .line 770
    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@14
    and-int/lit8 v4, v4, 0x2

    #@16
    if-eqz v4, :cond_1

    #@18
    .line 772
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->id_:I

    #@1a
    const/4 v5, 0x2

    #@1b
    .line 771
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1e
    move-result v4

    #@1f
    add-int/2addr v3, v4

    #@20
    .line 774
    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@22
    and-int/lit8 v4, v4, 0x4

    #@24
    if-eqz v4, :cond_2

    #@26
    .line 776
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->minTimeMillis_:I

    #@28
    const/4 v5, 0x3

    #@29
    .line 775
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@2c
    move-result v4

    #@2d
    add-int/2addr v3, v4

    #@2e
    .line 778
    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@30
    and-int/lit8 v4, v4, 0x8

    #@32
    if-eqz v4, :cond_3

    #@34
    .line 780
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->maxTimeMillis_:I

    #@36
    const/4 v5, 0x4

    #@37
    .line 779
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@3a
    move-result v4

    #@3b
    add-int/2addr v3, v4

    #@3c
    .line 782
    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@3e
    and-int/lit8 v4, v4, 0x10

    #@40
    if-eqz v4, :cond_4

    #@42
    .line 784
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->avgTimeMillis_:I

    #@44
    const/4 v5, 0x5

    #@45
    .line 783
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@48
    move-result v4

    #@49
    add-int/2addr v3, v4

    #@4a
    .line 786
    :cond_4
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@4c
    and-int/lit8 v4, v4, 0x20

    #@4e
    if-eqz v4, :cond_5

    #@50
    .line 788
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->count_:I

    #@52
    const/4 v5, 0x6

    #@53
    .line 787
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@56
    move-result v4

    #@57
    add-int/2addr v3, v4

    #@58
    .line 790
    :cond_5
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@5a
    and-int/lit8 v4, v4, 0x40

    #@5c
    if-eqz v4, :cond_6

    #@5e
    .line 792
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCount_:I

    #@60
    const/4 v5, 0x7

    #@61
    .line 791
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@64
    move-result v4

    #@65
    add-int/2addr v3, v4

    #@66
    .line 794
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@68
    if-eqz v4, :cond_8

    #@6a
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@6c
    array-length v4, v4

    #@6d
    if-lez v4, :cond_8

    #@6f
    .line 795
    const/4 v0, 0x0

    #@70
    .line 796
    .local v0, "dataSize":I
    const/4 v2, 0x0

    #@71
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@73
    array-length v4, v4

    #@74
    if-ge v2, v4, :cond_7

    #@76
    .line 797
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@78
    aget v1, v4, v2

    #@7a
    .line 798
    .local v1, "element":I
    invoke-static {v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    #@7d
    move-result v4

    #@7e
    add-int/2addr v0, v4

    #@7f
    .line 796
    add-int/lit8 v2, v2, 0x1

    #@81
    goto :goto_0

    #@82
    .line 801
    .end local v1    # "element":I
    :cond_7
    add-int/2addr v3, v0

    #@83
    .line 802
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@85
    array-length v4, v4

    #@86
    mul-int/lit8 v4, v4, 0x1

    #@88
    add-int/2addr v3, v4

    #@89
    .line 804
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@8b
    if-eqz v4, :cond_a

    #@8d
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@8f
    array-length v4, v4

    #@90
    if-lez v4, :cond_a

    #@92
    .line 805
    const/4 v0, 0x0

    #@93
    .line 806
    .restart local v0    # "dataSize":I
    const/4 v2, 0x0

    #@94
    .restart local v2    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@96
    array-length v4, v4

    #@97
    if-ge v2, v4, :cond_9

    #@99
    .line 807
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@9b
    aget v1, v4, v2

    #@9d
    .line 808
    .restart local v1    # "element":I
    invoke-static {v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    #@a0
    move-result v4

    #@a1
    add-int/2addr v0, v4

    #@a2
    .line 806
    add-int/lit8 v2, v2, 0x1

    #@a4
    goto :goto_1

    #@a5
    .line 811
    .end local v1    # "element":I
    :cond_9
    add-int/2addr v3, v0

    #@a6
    .line 812
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@a8
    array-length v4, v4

    #@a9
    mul-int/lit8 v4, v4, 0x1

    #@ab
    add-int/2addr v3, v4

    #@ac
    .line 814
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_a
    return v3
.end method

.method public getAvgTimeMillis()I
    .locals 1

    #@0
    .prologue
    .line 644
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->avgTimeMillis_:I

    #@2
    return v0
.end method

.method public getBucketCount()I
    .locals 1

    #@0
    .prologue
    .line 682
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCount_:I

    #@2
    return v0
.end method

.method public getCategory()I
    .locals 1

    #@0
    .prologue
    .line 568
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->category_:I

    #@2
    return v0
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 663
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->count_:I

    #@2
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 587
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->id_:I

    #@2
    return v0
.end method

.method public getMaxTimeMillis()I
    .locals 1

    #@0
    .prologue
    .line 625
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->maxTimeMillis_:I

    #@2
    return v0
.end method

.method public getMinTimeMillis()I
    .locals 1

    #@0
    .prologue
    .line 606
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->minTimeMillis_:I

    #@2
    return v0
.end method

.method public hasAvgTimeMillis()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 652
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x10

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasBucketCount()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 690
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x40

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasCategory()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 576
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasCount()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 671
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x20

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasId()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 595
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasMaxTimeMillis()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 633
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x8

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasMinTimeMillis()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 614
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 818
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 9
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 822
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@4
    move-result v6

    #@5
    .line 823
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    #@8
    .line 827
    invoke-super {p0, p1, v6}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@b
    move-result v8

    #@c
    if-nez v8, :cond_0

    #@e
    .line 828
    return-object p0

    #@f
    .line 825
    :sswitch_0
    return-object p0

    #@10
    .line 833
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@13
    move-result v8

    #@14
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->category_:I

    #@16
    .line 834
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@18
    or-int/lit8 v8, v8, 0x1

    #@1a
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@1c
    goto :goto_0

    #@1d
    .line 838
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@20
    move-result v8

    #@21
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->id_:I

    #@23
    .line 839
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@25
    or-int/lit8 v8, v8, 0x2

    #@27
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@29
    goto :goto_0

    #@2a
    .line 843
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@2d
    move-result v8

    #@2e
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->minTimeMillis_:I

    #@30
    .line 844
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@32
    or-int/lit8 v8, v8, 0x4

    #@34
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@36
    goto :goto_0

    #@37
    .line 848
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@3a
    move-result v8

    #@3b
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->maxTimeMillis_:I

    #@3d
    .line 849
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@3f
    or-int/lit8 v8, v8, 0x8

    #@41
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@43
    goto :goto_0

    #@44
    .line 853
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@47
    move-result v8

    #@48
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->avgTimeMillis_:I

    #@4a
    .line 854
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@4c
    or-int/lit8 v8, v8, 0x10

    #@4e
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@50
    goto :goto_0

    #@51
    .line 858
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@54
    move-result v8

    #@55
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->count_:I

    #@57
    .line 859
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@59
    or-int/lit8 v8, v8, 0x20

    #@5b
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@5d
    goto :goto_0

    #@5e
    .line 863
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@61
    move-result v8

    #@62
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCount_:I

    #@64
    .line 864
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@66
    or-int/lit8 v8, v8, 0x40

    #@68
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@6a
    goto :goto_0

    #@6b
    .line 869
    :sswitch_8
    const/16 v8, 0x40

    #@6d
    .line 868
    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    #@70
    move-result v0

    #@71
    .line 870
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@73
    if-nez v8, :cond_2

    #@75
    move v1, v7

    #@76
    .line 871
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    #@78
    new-array v4, v8, [I

    #@7a
    .line 872
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    #@7c
    .line 873
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@7e
    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@81
    .line 875
    :cond_1
    :goto_2
    array-length v8, v4

    #@82
    add-int/lit8 v8, v8, -0x1

    #@84
    if-ge v1, v8, :cond_3

    #@86
    .line 876
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@89
    move-result v8

    #@8a
    aput v8, v4, v1

    #@8c
    .line 877
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@8f
    .line 875
    add-int/lit8 v1, v1, 0x1

    #@91
    goto :goto_2

    #@92
    .line 870
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@94
    array-length v1, v8

    #@95
    goto :goto_1

    #@96
    .line 880
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@99
    move-result v8

    #@9a
    aput v8, v4, v1

    #@9c
    .line 881
    iput-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@9e
    goto/16 :goto_0

    #@a0
    .line 885
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    #@a3
    move-result v2

    #@a4
    .line 886
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    #@a7
    move-result v3

    #@a8
    .line 888
    .local v3, "limit":I
    const/4 v0, 0x0

    #@a9
    .line 889
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@ac
    move-result v5

    #@ad
    .line 890
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    #@b0
    move-result v8

    #@b1
    if-lez v8, :cond_4

    #@b3
    .line 891
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@b6
    .line 892
    add-int/lit8 v0, v0, 0x1

    #@b8
    goto :goto_3

    #@b9
    .line 894
    :cond_4
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@bc
    .line 895
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@be
    if-nez v8, :cond_6

    #@c0
    move v1, v7

    #@c1
    .line 896
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    #@c3
    new-array v4, v8, [I

    #@c5
    .line 897
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    #@c7
    .line 898
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@c9
    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@cc
    .line 900
    :cond_5
    :goto_5
    array-length v8, v4

    #@cd
    if-ge v1, v8, :cond_7

    #@cf
    .line 901
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@d2
    move-result v8

    #@d3
    aput v8, v4, v1

    #@d5
    .line 900
    add-int/lit8 v1, v1, 0x1

    #@d7
    goto :goto_5

    #@d8
    .line 895
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@da
    array-length v1, v8

    #@db
    goto :goto_4

    #@dc
    .line 903
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@de
    .line 904
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    #@e1
    goto/16 :goto_0

    #@e3
    .line 909
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_a
    const/16 v8, 0x48

    #@e5
    .line 908
    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    #@e8
    move-result v0

    #@e9
    .line 910
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@eb
    if-nez v8, :cond_9

    #@ed
    move v1, v7

    #@ee
    .line 911
    .restart local v1    # "i":I
    :goto_6
    add-int v8, v1, v0

    #@f0
    new-array v4, v8, [I

    #@f2
    .line 912
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_8

    #@f4
    .line 913
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@f6
    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@f9
    .line 915
    :cond_8
    :goto_7
    array-length v8, v4

    #@fa
    add-int/lit8 v8, v8, -0x1

    #@fc
    if-ge v1, v8, :cond_a

    #@fe
    .line 916
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@101
    move-result v8

    #@102
    aput v8, v4, v1

    #@104
    .line 917
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@107
    .line 915
    add-int/lit8 v1, v1, 0x1

    #@109
    goto :goto_7

    #@10a
    .line 910
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_9
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@10c
    array-length v1, v8

    #@10d
    goto :goto_6

    #@10e
    .line 920
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@111
    move-result v8

    #@112
    aput v8, v4, v1

    #@114
    .line 921
    iput-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@116
    goto/16 :goto_0

    #@118
    .line 925
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    #@11b
    move-result v2

    #@11c
    .line 926
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    #@11f
    move-result v3

    #@120
    .line 928
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    #@121
    .line 929
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@124
    move-result v5

    #@125
    .line 930
    .restart local v5    # "startPos":I
    :goto_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    #@128
    move-result v8

    #@129
    if-lez v8, :cond_b

    #@12b
    .line 931
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@12e
    .line 932
    add-int/lit8 v0, v0, 0x1

    #@130
    goto :goto_8

    #@131
    .line 934
    :cond_b
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@134
    .line 935
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@136
    if-nez v8, :cond_d

    #@138
    move v1, v7

    #@139
    .line 936
    .restart local v1    # "i":I
    :goto_9
    add-int v8, v1, v0

    #@13b
    new-array v4, v8, [I

    #@13d
    .line 937
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_c

    #@13f
    .line 938
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@141
    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@144
    .line 940
    :cond_c
    :goto_a
    array-length v8, v4

    #@145
    if-ge v1, v8, :cond_e

    #@147
    .line 941
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@14a
    move-result v8

    #@14b
    aput v8, v4, v1

    #@14d
    .line 940
    add-int/lit8 v1, v1, 0x1

    #@14f
    goto :goto_a

    #@150
    .line 935
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_d
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@152
    array-length v1, v8

    #@153
    goto :goto_9

    #@154
    .line 943
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_e
    iput-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@156
    .line 944
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    #@159
    goto/16 :goto_0

    #@15b
    .line 823
    nop

    #@15c
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x42 -> :sswitch_9
        0x48 -> :sswitch_a
        0x4a -> :sswitch_b
    .end sparse-switch
.end method

.method public setAvgTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 647
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->avgTimeMillis_:I

    #@2
    .line 648
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x10

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@8
    .line 649
    return-object p0
.end method

.method public setBucketCount(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 685
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCount_:I

    #@2
    .line 686
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x40

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@8
    .line 687
    return-object p0
.end method

.method public setCategory(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 571
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->category_:I

    #@2
    .line 572
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@8
    .line 573
    return-object p0
.end method

.method public setCount(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 666
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->count_:I

    #@2
    .line 667
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x20

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@8
    .line 668
    return-object p0
.end method

.method public setId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 590
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->id_:I

    #@2
    .line 591
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@8
    .line 592
    return-object p0
.end method

.method public setMaxTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 628
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->maxTimeMillis_:I

    #@2
    .line 629
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x8

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@8
    .line 630
    return-object p0
.end method

.method public setMinTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 609
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->minTimeMillis_:I

    #@2
    .line 610
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x4

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@8
    .line 611
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 729
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@2
    and-int/lit8 v1, v1, 0x1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 730
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->category_:I

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@c
    .line 732
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@e
    and-int/lit8 v1, v1, 0x2

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 733
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->id_:I

    #@14
    const/4 v2, 0x2

    #@15
    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@18
    .line 735
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@1a
    and-int/lit8 v1, v1, 0x4

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 736
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->minTimeMillis_:I

    #@20
    const/4 v2, 0x3

    #@21
    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@24
    .line 738
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@26
    and-int/lit8 v1, v1, 0x8

    #@28
    if-eqz v1, :cond_3

    #@2a
    .line 739
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->maxTimeMillis_:I

    #@2c
    const/4 v2, 0x4

    #@2d
    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@30
    .line 741
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@32
    and-int/lit8 v1, v1, 0x10

    #@34
    if-eqz v1, :cond_4

    #@36
    .line 742
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->avgTimeMillis_:I

    #@38
    const/4 v2, 0x5

    #@39
    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@3c
    .line 744
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@3e
    and-int/lit8 v1, v1, 0x20

    #@40
    if-eqz v1, :cond_5

    #@42
    .line 745
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->count_:I

    #@44
    const/4 v2, 0x6

    #@45
    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@48
    .line 747
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bitField0_:I

    #@4a
    and-int/lit8 v1, v1, 0x40

    #@4c
    if-eqz v1, :cond_6

    #@4e
    .line 748
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCount_:I

    #@50
    const/4 v2, 0x7

    #@51
    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@54
    .line 750
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@56
    if-eqz v1, :cond_7

    #@58
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@5a
    array-length v1, v1

    #@5b
    if-lez v1, :cond_7

    #@5d
    .line 751
    const/4 v0, 0x0

    #@5e
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@60
    array-length v1, v1

    #@61
    if-ge v0, v1, :cond_7

    #@63
    .line 752
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@65
    aget v1, v1, v0

    #@67
    const/16 v2, 0x8

    #@69
    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@6c
    .line 751
    add-int/lit8 v0, v0, 0x1

    #@6e
    goto :goto_0

    #@6f
    .line 755
    .end local v0    # "i":I
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@71
    if-eqz v1, :cond_8

    #@73
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@75
    array-length v1, v1

    #@76
    if-lez v1, :cond_8

    #@78
    .line 756
    const/4 v0, 0x0

    #@79
    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@7b
    array-length v1, v1

    #@7c
    if-ge v0, v1, :cond_8

    #@7e
    .line 757
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@80
    aget v1, v1, v0

    #@82
    const/16 v2, 0x9

    #@84
    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@87
    .line 756
    add-int/lit8 v0, v0, 0x1

    #@89
    goto :goto_1

    #@8a
    .line 760
    .end local v0    # "i":I
    :cond_8
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@8d
    .line 728
    return-void
.end method
