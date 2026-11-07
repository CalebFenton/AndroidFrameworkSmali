.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkStats"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;


# instance fields
.field public blacklist durationMs:J

.field public blacklist everValidated:Z

.field public blacklist ipSupport:I

.field public blacklist noConnectivityReports:I

.field public blacklist portalFound:Z

.field public blacklist validationAttempts:I

.field public blacklist validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

.field public blacklist validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2709
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 2710
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    .line 2711
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .registers 2

    .line 2674
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    if-nez v0, :cond_15

    .line 2675
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2677
    :try_start_7
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    if-nez v1, :cond_10

    .line 2678
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    .line 2680
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 2682
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2913
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2907
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .registers 3

    .line 2714
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    .line 2715
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    .line 2716
    iput-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    .line 2717
    iput-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    .line 2718
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    .line 2719
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    .line 2720
    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2721
    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2722
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->cachedSize:I

    .line 2723
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 2768
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 2769
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_14

    .line 2770
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    .line 2771
    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2773
    :cond_14
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    if-eqz v1, :cond_20

    .line 2774
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    .line 2775
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2777
    :cond_20
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    if-eqz v1, :cond_2c

    .line 2778
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    .line 2779
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2781
    :cond_2c
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    if-eqz v1, :cond_38

    .line 2782
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    .line 2783
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2785
    :cond_38
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    if-eqz v1, :cond_44

    .line 2786
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    .line 2787
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2789
    :cond_44
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    if-eqz v1, :cond_50

    .line 2790
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    .line 2791
    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2793
    :cond_50
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-lez v1, :cond_6f

    .line 2794
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5a
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v2

    if-ge v1, v2, :cond_6f

    .line 2795
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v2, v2, v1

    .line 2796
    .local v2, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v2, :cond_6c

    .line 2797
    nop

    .line 2798
    const/4 v3, 0x7

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2794
    .end local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 2802
    .end local v1    # "i":I
    :cond_6f
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-lez v1, :cond_8f

    .line 2803
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_79
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v2

    if-ge v1, v2, :cond_8f

    .line 2804
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v2, v2, v1

    .line 2805
    .restart local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v2, :cond_8c

    .line 2806
    nop

    .line 2807
    const/16 v3, 0x8

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2803
    .end local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    .line 2811
    .end local v1    # "i":I
    :cond_8f
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2668
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .registers 8
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2819
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2820
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_c4

    .line 2824
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_c2

    .line 2825
    return-object p0

    .line 2882
    :sswitch_10
    nop

    .line 2883
    const/16 v2, 0x42

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2884
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v3, :cond_1d

    move v3, v1

    goto :goto_20

    :cond_1d
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v3

    .line 2885
    .local v3, "i":I
    :goto_20
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2887
    .local v4, "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v3, :cond_2b

    .line 2888
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2890
    :cond_2b
    :goto_2b
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_42

    .line 2891
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v4, v3

    .line 2892
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2893
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2890
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 2896
    :cond_42
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v4, v3

    .line 2897
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2898
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2899
    goto/16 :goto_c2

    .line 2862
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :sswitch_52
    nop

    .line 2863
    const/16 v2, 0x3a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2864
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v3, :cond_5f

    move v3, v1

    goto :goto_62

    :cond_5f
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v3

    .line 2865
    .restart local v3    # "i":I
    :goto_62
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2867
    .restart local v4    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v3, :cond_6d

    .line 2868
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2870
    :cond_6d
    :goto_6d
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_84

    .line 2871
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v4, v3

    .line 2872
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2873
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2870
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 2876
    :cond_84
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v4, v3

    .line 2877
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2878
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2879
    goto :goto_c2

    .line 2858
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :sswitch_93
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    .line 2859
    goto :goto_c2

    .line 2854
    :sswitch_9a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    .line 2855
    goto :goto_c2

    .line 2850
    :sswitch_a1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    .line 2851
    goto :goto_c2

    .line 2846
    :sswitch_a8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    .line 2847
    goto :goto_c2

    .line 2834
    :sswitch_af
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 2835
    .local v1, "value":I
    packed-switch v1, :pswitch_data_ea

    goto :goto_b9

    .line 2840
    :pswitch_b7
    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    .line 2843
    :goto_b9
    goto :goto_c2

    .line 2830
    .end local v1    # "value":I
    :sswitch_ba
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    .line 2831
    goto :goto_c2

    .line 2822
    :sswitch_c1
    return-object p0

    .line 2902
    .end local v0    # "tag":I
    :cond_c2
    :goto_c2
    goto/16 :goto_1

    :sswitch_data_c4
    .sparse-switch
        0x0 -> :sswitch_c1
        0x8 -> :sswitch_ba
        0x10 -> :sswitch_af
        0x18 -> :sswitch_a8
        0x20 -> :sswitch_a1
        0x28 -> :sswitch_9a
        0x30 -> :sswitch_93
        0x3a -> :sswitch_52
        0x42 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_b7
        :pswitch_b7
        :pswitch_b7
        :pswitch_b7
    .end packed-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2729
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 2730
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2732
    :cond_e
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    if-eqz v0, :cond_18

    .line 2733
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2735
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    if-eqz v0, :cond_22

    .line 2736
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2738
    :cond_22
    iget-boolean v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    if-eqz v0, :cond_2c

    .line 2739
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2741
    :cond_2c
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    if-eqz v0, :cond_36

    .line 2742
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2744
    :cond_36
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    if-eqz v0, :cond_40

    .line 2745
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2747
    :cond_40
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v0, v0

    if-lez v0, :cond_5c

    .line 2748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4a
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-ge v0, v1, :cond_5c

    .line 2749
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v1, v1, v0

    .line 2750
    .local v1, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v1, :cond_59

    .line 2751
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2748
    .end local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 2755
    .end local v0    # "i":I
    :cond_5c
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v0, v0

    if-lez v0, :cond_79

    .line 2756
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_66
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-ge v0, v1, :cond_79

    .line 2757
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v1, v1, v0

    .line 2758
    .restart local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v1, :cond_76

    .line 2759
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2756
    .end local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 2763
    .end local v0    # "i":I
    :cond_79
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2764
    return-void
.end method
