.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DNSLookupBatch"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;


# instance fields
.field public eventTypes:[I

.field public latenciesMs:[I

.field public networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

.field public returnCodes:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 676
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    #@3
    .line 677
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@6
    .line 676
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;
    .locals 2

    #@0
    .prologue
    .line 651
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 652
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 654
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 655
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@e
    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 659
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@13
    return-object v0

    #@14
    .line 652
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 907
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 901
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;
    .locals 1

    #@0
    .prologue
    .line 681
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@3
    .line 682
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    #@5
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@7
    .line 683
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    #@9
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@b
    .line 684
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    #@d
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@f
    .line 685
    const/4 v0, -0x1

    #@10
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->cachedSize:I

    #@12
    .line 686
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 715
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    #@4
    move-result v3

    #@5
    .line 716
    .local v3, "size":I
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 718
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@b
    .line 717
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@e
    move-result v4

    #@f
    add-int/2addr v3, v4

    #@10
    .line 720
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@12
    if-eqz v4, :cond_2

    #@14
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@16
    array-length v4, v4

    #@17
    if-lez v4, :cond_2

    #@19
    .line 721
    const/4 v0, 0x0

    #@1a
    .line 722
    .local v0, "dataSize":I
    const/4 v2, 0x0

    #@1b
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@1d
    array-length v4, v4

    #@1e
    if-ge v2, v4, :cond_1

    #@20
    .line 723
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@22
    aget v1, v4, v2

    #@24
    .line 724
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    #@27
    move-result v4

    #@28
    add-int/2addr v0, v4

    #@29
    .line 722
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 727
    .end local v1    # "element":I
    :cond_1
    add-int/2addr v3, v0

    #@2d
    .line 728
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@2f
    array-length v4, v4

    #@30
    mul-int/lit8 v4, v4, 0x1

    #@32
    add-int/2addr v3, v4

    #@33
    .line 730
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@35
    if-eqz v4, :cond_4

    #@37
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@39
    array-length v4, v4

    #@3a
    if-lez v4, :cond_4

    #@3c
    .line 731
    const/4 v0, 0x0

    #@3d
    .line 732
    .restart local v0    # "dataSize":I
    const/4 v2, 0x0

    #@3e
    .restart local v2    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@40
    array-length v4, v4

    #@41
    if-ge v2, v4, :cond_3

    #@43
    .line 733
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@45
    aget v1, v4, v2

    #@47
    .line 734
    .restart local v1    # "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    #@4a
    move-result v4

    #@4b
    add-int/2addr v0, v4

    #@4c
    .line 732
    add-int/lit8 v2, v2, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 737
    .end local v1    # "element":I
    :cond_3
    add-int/2addr v3, v0

    #@50
    .line 738
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@52
    array-length v4, v4

    #@53
    mul-int/lit8 v4, v4, 0x1

    #@55
    add-int/2addr v3, v4

    #@56
    .line 740
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@58
    if-eqz v4, :cond_6

    #@5a
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@5c
    array-length v4, v4

    #@5d
    if-lez v4, :cond_6

    #@5f
    .line 741
    const/4 v0, 0x0

    #@60
    .line 742
    .restart local v0    # "dataSize":I
    const/4 v2, 0x0

    #@61
    .restart local v2    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@63
    array-length v4, v4

    #@64
    if-ge v2, v4, :cond_5

    #@66
    .line 743
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@68
    aget v1, v4, v2

    #@6a
    .line 744
    .restart local v1    # "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    #@6d
    move-result v4

    #@6e
    add-int/2addr v0, v4

    #@6f
    .line 742
    add-int/lit8 v2, v2, 0x1

    #@71
    goto :goto_2

    #@72
    .line 747
    .end local v1    # "element":I
    :cond_5
    add-int/2addr v3, v0

    #@73
    .line 748
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@75
    array-length v4, v4

    #@76
    mul-int/lit8 v4, v4, 0x1

    #@78
    add-int/2addr v3, v4

    #@79
    .line 750
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_6
    return v3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;
    .locals 9
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 758
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@4
    move-result v6

    #@5
    .line 759
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    #@8
    .line 763
    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@b
    move-result v8

    #@c
    if-nez v8, :cond_0

    #@e
    .line 764
    return-object p0

    #@f
    .line 761
    :sswitch_0
    return-object p0

    #@10
    .line 769
    :sswitch_1
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@12
    if-nez v8, :cond_1

    #@14
    .line 770
    new-instance v8, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@16
    invoke-direct {v8}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;-><init>()V

    #@19
    iput-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@1b
    .line 772
    :cond_1
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@1d
    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@20
    goto :goto_0

    #@21
    .line 777
    :sswitch_2
    const/16 v8, 0x10

    #@23
    .line 776
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@26
    move-result v0

    #@27
    .line 778
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@29
    if-nez v8, :cond_3

    #@2b
    move v1, v7

    #@2c
    .line 779
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    #@2e
    new-array v4, v8, [I

    #@30
    .line 780
    .local v4, "newArray":[I
    if-eqz v1, :cond_2

    #@32
    .line 781
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@34
    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@37
    .line 783
    :cond_2
    :goto_2
    array-length v8, v4

    #@38
    add-int/lit8 v8, v8, -0x1

    #@3a
    if-ge v1, v8, :cond_4

    #@3c
    .line 784
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@3f
    move-result v8

    #@40
    aput v8, v4, v1

    #@42
    .line 785
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@45
    .line 783
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_2

    #@48
    .line 778
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_3
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@4a
    array-length v1, v8

    #@4b
    goto :goto_1

    #@4c
    .line 788
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@4f
    move-result v8

    #@50
    aput v8, v4, v1

    #@52
    .line 789
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@54
    goto :goto_0

    #@55
    .line 793
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    #@58
    move-result v2

    #@59
    .line 794
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    #@5c
    move-result v3

    #@5d
    .line 796
    .local v3, "limit":I
    const/4 v0, 0x0

    #@5e
    .line 797
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@61
    move-result v5

    #@62
    .line 798
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    #@65
    move-result v8

    #@66
    if-lez v8, :cond_5

    #@68
    .line 799
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@6b
    .line 800
    add-int/lit8 v0, v0, 0x1

    #@6d
    goto :goto_3

    #@6e
    .line 802
    :cond_5
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@71
    .line 803
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@73
    if-nez v8, :cond_7

    #@75
    move v1, v7

    #@76
    .line 804
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    #@78
    new-array v4, v8, [I

    #@7a
    .line 805
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_6

    #@7c
    .line 806
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@7e
    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@81
    .line 808
    :cond_6
    :goto_5
    array-length v8, v4

    #@82
    if-ge v1, v8, :cond_8

    #@84
    .line 809
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@87
    move-result v8

    #@88
    aput v8, v4, v1

    #@8a
    .line 808
    add-int/lit8 v1, v1, 0x1

    #@8c
    goto :goto_5

    #@8d
    .line 803
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_7
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@8f
    array-length v1, v8

    #@90
    goto :goto_4

    #@91
    .line 811
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_8
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@93
    .line 812
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    #@96
    goto/16 :goto_0

    #@98
    .line 817
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_4
    const/16 v8, 0x18

    #@9a
    .line 816
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@9d
    move-result v0

    #@9e
    .line 818
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@a0
    if-nez v8, :cond_a

    #@a2
    move v1, v7

    #@a3
    .line 819
    .restart local v1    # "i":I
    :goto_6
    add-int v8, v1, v0

    #@a5
    new-array v4, v8, [I

    #@a7
    .line 820
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_9

    #@a9
    .line 821
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@ab
    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@ae
    .line 823
    :cond_9
    :goto_7
    array-length v8, v4

    #@af
    add-int/lit8 v8, v8, -0x1

    #@b1
    if-ge v1, v8, :cond_b

    #@b3
    .line 824
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@b6
    move-result v8

    #@b7
    aput v8, v4, v1

    #@b9
    .line 825
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@bc
    .line 823
    add-int/lit8 v1, v1, 0x1

    #@be
    goto :goto_7

    #@bf
    .line 818
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_a
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@c1
    array-length v1, v8

    #@c2
    goto :goto_6

    #@c3
    .line 828
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@c6
    move-result v8

    #@c7
    aput v8, v4, v1

    #@c9
    .line 829
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@cb
    goto/16 :goto_0

    #@cd
    .line 833
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    #@d0
    move-result v2

    #@d1
    .line 834
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    #@d4
    move-result v3

    #@d5
    .line 836
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    #@d6
    .line 837
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@d9
    move-result v5

    #@da
    .line 838
    .restart local v5    # "startPos":I
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    #@dd
    move-result v8

    #@de
    if-lez v8, :cond_c

    #@e0
    .line 839
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@e3
    .line 840
    add-int/lit8 v0, v0, 0x1

    #@e5
    goto :goto_8

    #@e6
    .line 842
    :cond_c
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@e9
    .line 843
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@eb
    if-nez v8, :cond_e

    #@ed
    move v1, v7

    #@ee
    .line 844
    .restart local v1    # "i":I
    :goto_9
    add-int v8, v1, v0

    #@f0
    new-array v4, v8, [I

    #@f2
    .line 845
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_d

    #@f4
    .line 846
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@f6
    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@f9
    .line 848
    :cond_d
    :goto_a
    array-length v8, v4

    #@fa
    if-ge v1, v8, :cond_f

    #@fc
    .line 849
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@ff
    move-result v8

    #@100
    aput v8, v4, v1

    #@102
    .line 848
    add-int/lit8 v1, v1, 0x1

    #@104
    goto :goto_a

    #@105
    .line 843
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_e
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@107
    array-length v1, v8

    #@108
    goto :goto_9

    #@109
    .line 851
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_f
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@10b
    .line 852
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    #@10e
    goto/16 :goto_0

    #@110
    .line 857
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_6
    const/16 v8, 0x20

    #@112
    .line 856
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@115
    move-result v0

    #@116
    .line 858
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@118
    if-nez v8, :cond_11

    #@11a
    move v1, v7

    #@11b
    .line 859
    .restart local v1    # "i":I
    :goto_b
    add-int v8, v1, v0

    #@11d
    new-array v4, v8, [I

    #@11f
    .line 860
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_10

    #@121
    .line 861
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@123
    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@126
    .line 863
    :cond_10
    :goto_c
    array-length v8, v4

    #@127
    add-int/lit8 v8, v8, -0x1

    #@129
    if-ge v1, v8, :cond_12

    #@12b
    .line 864
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@12e
    move-result v8

    #@12f
    aput v8, v4, v1

    #@131
    .line 865
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@134
    .line 863
    add-int/lit8 v1, v1, 0x1

    #@136
    goto :goto_c

    #@137
    .line 858
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_11
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@139
    array-length v1, v8

    #@13a
    goto :goto_b

    #@13b
    .line 868
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@13e
    move-result v8

    #@13f
    aput v8, v4, v1

    #@141
    .line 869
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@143
    goto/16 :goto_0

    #@145
    .line 873
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    #@148
    move-result v2

    #@149
    .line 874
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    #@14c
    move-result v3

    #@14d
    .line 876
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    #@14e
    .line 877
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@151
    move-result v5

    #@152
    .line 878
    .restart local v5    # "startPos":I
    :goto_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    #@155
    move-result v8

    #@156
    if-lez v8, :cond_13

    #@158
    .line 879
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@15b
    .line 880
    add-int/lit8 v0, v0, 0x1

    #@15d
    goto :goto_d

    #@15e
    .line 882
    :cond_13
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@161
    .line 883
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@163
    if-nez v8, :cond_15

    #@165
    move v1, v7

    #@166
    .line 884
    .restart local v1    # "i":I
    :goto_e
    add-int v8, v1, v0

    #@168
    new-array v4, v8, [I

    #@16a
    .line 885
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_14

    #@16c
    .line 886
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@16e
    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@171
    .line 888
    :cond_14
    :goto_f
    array-length v8, v4

    #@172
    if-ge v1, v8, :cond_16

    #@174
    .line 889
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@177
    move-result v8

    #@178
    aput v8, v4, v1

    #@17a
    .line 888
    add-int/lit8 v1, v1, 0x1

    #@17c
    goto :goto_f

    #@17d
    .line 883
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_15
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@17f
    array-length v1, v8

    #@180
    goto :goto_e

    #@181
    .line 891
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_16
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@183
    .line 892
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    #@186
    goto/16 :goto_0

    #@188
    .line 759
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
        0x18 -> :sswitch_4
        0x1a -> :sswitch_5
        0x20 -> :sswitch_6
        0x22 -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 754
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 692
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 693
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@6
    const/4 v2, 0x1

    #@7
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@a
    .line 695
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@c
    if-eqz v1, :cond_1

    #@e
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@10
    array-length v1, v1

    #@11
    if-lez v1, :cond_1

    #@13
    .line 696
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@16
    array-length v1, v1

    #@17
    if-ge v0, v1, :cond_1

    #@19
    .line 697
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    #@1b
    aget v1, v1, v0

    #@1d
    const/4 v2, 0x2

    #@1e
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@21
    .line 696
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 700
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@26
    if-eqz v1, :cond_2

    #@28
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@2a
    array-length v1, v1

    #@2b
    if-lez v1, :cond_2

    #@2d
    .line 701
    const/4 v0, 0x0

    #@2e
    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@30
    array-length v1, v1

    #@31
    if-ge v0, v1, :cond_2

    #@33
    .line 702
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    #@35
    aget v1, v1, v0

    #@37
    const/4 v2, 0x3

    #@38
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@3b
    .line 701
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 705
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@40
    if-eqz v1, :cond_3

    #@42
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@44
    array-length v1, v1

    #@45
    if-lez v1, :cond_3

    #@47
    .line 706
    const/4 v0, 0x0

    #@48
    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@4a
    array-length v1, v1

    #@4b
    if-ge v0, v1, :cond_3

    #@4d
    .line 707
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    #@4f
    aget v1, v1, v0

    #@51
    const/4 v2, 0x4

    #@52
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@55
    .line 706
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_2

    #@58
    .line 710
    .end local v0    # "i":I
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@5b
    .line 691
    return-void
.end method
