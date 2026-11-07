.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WakeupStats"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;


# instance fields
.field public blacklist applicationWakeups:J

.field public blacklist durationSec:J

.field public blacklist ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

.field public blacklist ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

.field public blacklist l2BroadcastCount:J

.field public blacklist l2MulticastCount:J

.field public blacklist l2UnicastCount:J

.field public blacklist noUidWakeups:J

.field public blacklist nonApplicationWakeups:J

.field public blacklist rootWakeups:J

.field public blacklist systemWakeups:J

.field public blacklist totalWakeups:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2970
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 2971
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    .line 2972
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;
    .registers 2

    .line 2923
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    if-nez v0, :cond_15

    .line 2924
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2926
    :try_start_7
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    if-nez v1, :cond_10

    .line 2927
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    .line 2929
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 2931
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3214
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3208
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;
    .registers 4

    .line 2975
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    .line 2976
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    .line 2977
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    .line 2978
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    .line 2979
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    .line 2980
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    .line 2981
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    .line 2982
    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2983
    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2984
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2UnicastCount:J

    .line 2985
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2MulticastCount:J

    .line 2986
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2BroadcastCount:J

    .line 2987
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->cachedSize:I

    .line 2988
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 3045
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 3046
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_14

    .line 3047
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    .line 3048
    const/4 v5, 0x1

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3050
    :cond_14
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_22

    .line 3051
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    .line 3052
    const/4 v5, 0x2

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3054
    :cond_22
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_30

    .line 3055
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    .line 3056
    const/4 v5, 0x3

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3058
    :cond_30
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3e

    .line 3059
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    .line 3060
    const/4 v5, 0x4

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3062
    :cond_3e
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4c

    .line 3063
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    .line 3064
    const/4 v5, 0x5

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3066
    :cond_4c
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5a

    .line 3067
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    .line 3068
    const/4 v5, 0x6

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3070
    :cond_5a
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_68

    .line 3071
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    .line 3072
    const/4 v5, 0x7

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3074
    :cond_68
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-lez v1, :cond_88

    .line 3075
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_72
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v2

    if-ge v1, v2, :cond_88

    .line 3076
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v2, v2, v1

    .line 3077
    .local v2, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v2, :cond_85

    .line 3078
    nop

    .line 3079
    const/16 v5, 0x8

    invoke-static {v5, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 3075
    .end local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 3083
    .end local v1    # "i":I
    :cond_88
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_a8

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-lez v1, :cond_a8

    .line 3084
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_92
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v2

    if-ge v1, v2, :cond_a8

    .line 3085
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v2, v2, v1

    .line 3086
    .restart local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v2, :cond_a5

    .line 3087
    nop

    .line 3088
    const/16 v5, 0x9

    invoke-static {v5, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 3084
    .end local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_a5
    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    .line 3092
    .end local v1    # "i":I
    :cond_a8
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2UnicastCount:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_b7

    .line 3093
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2UnicastCount:J

    .line 3094
    const/16 v5, 0xa

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3096
    :cond_b7
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2MulticastCount:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c6

    .line 3097
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2MulticastCount:J

    .line 3098
    const/16 v5, 0xb

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3100
    :cond_c6
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2BroadcastCount:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_d5

    .line 3101
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2BroadcastCount:J

    .line 3102
    const/16 v3, 0xc

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3104
    :cond_d5
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

    .line 2917
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;
    .registers 8
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3112
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3113
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_e0

    .line 3117
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_dd

    .line 3118
    return-object p0

    .line 3199
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2BroadcastCount:J

    goto/16 :goto_dd

    .line 3195
    :sswitch_18
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2MulticastCount:J

    .line 3196
    goto/16 :goto_dd

    .line 3191
    :sswitch_20
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2UnicastCount:J

    .line 3192
    goto/16 :goto_dd

    .line 3171
    :sswitch_28
    nop

    .line 3172
    const/16 v2, 0x4a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 3173
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v3, :cond_35

    move v3, v1

    goto :goto_38

    :cond_35
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v3

    .line 3174
    .local v3, "i":I
    :goto_38
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 3176
    .local v4, "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v3, :cond_43

    .line 3177
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3179
    :cond_43
    :goto_43
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_5a

    .line 3180
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v4, v3

    .line 3181
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3182
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3179
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 3185
    :cond_5a
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v4, v3

    .line 3186
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3187
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 3188
    goto/16 :goto_dd

    .line 3151
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :sswitch_6a
    nop

    .line 3152
    const/16 v2, 0x42

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 3153
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v3, :cond_77

    move v3, v1

    goto :goto_7a

    :cond_77
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v3

    .line 3154
    .restart local v3    # "i":I
    :goto_7a
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 3156
    .restart local v4    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v3, :cond_85

    .line 3157
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3159
    :cond_85
    :goto_85
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_9c

    .line 3160
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v4, v3

    .line 3161
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3162
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3159
    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    .line 3165
    :cond_9c
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v4, v3

    .line 3166
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3167
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 3168
    goto :goto_dd

    .line 3147
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :sswitch_ab
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    .line 3148
    goto :goto_dd

    .line 3143
    :sswitch_b2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    .line 3144
    goto :goto_dd

    .line 3139
    :sswitch_b9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    .line 3140
    goto :goto_dd

    .line 3135
    :sswitch_c0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    .line 3136
    goto :goto_dd

    .line 3131
    :sswitch_c7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    .line 3132
    goto :goto_dd

    .line 3127
    :sswitch_ce
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    .line 3128
    goto :goto_dd

    .line 3123
    :sswitch_d5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    .line 3124
    goto :goto_dd

    .line 3115
    :sswitch_dc
    return-object p0

    .line 3203
    .end local v0    # "tag":I
    :cond_dd
    :goto_dd
    goto/16 :goto_1

    nop

    :sswitch_data_e0
    .sparse-switch
        0x0 -> :sswitch_dc
        0x8 -> :sswitch_d5
        0x10 -> :sswitch_ce
        0x18 -> :sswitch_c7
        0x20 -> :sswitch_c0
        0x28 -> :sswitch_b9
        0x30 -> :sswitch_b2
        0x38 -> :sswitch_ab
        0x42 -> :sswitch_6a
        0x4a -> :sswitch_28
        0x50 -> :sswitch_20
        0x58 -> :sswitch_18
        0x60 -> :sswitch_10
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2994
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 2995
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2997
    :cond_e
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 2998
    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3000
    :cond_1a
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    .line 3001
    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3003
    :cond_26
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    .line 3004
    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3006
    :cond_32
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3e

    .line 3007
    const/4 v0, 0x5

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3009
    :cond_3e
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4a

    .line 3010
    const/4 v0, 0x6

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3012
    :cond_4a
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_56

    .line 3013
    const/4 v0, 0x7

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3015
    :cond_56
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v0, v0

    if-lez v0, :cond_73

    .line 3016
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_60
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-ge v0, v1, :cond_73

    .line 3017
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v1, v1, v0

    .line 3018
    .local v1, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v1, :cond_70

    .line 3019
    const/16 v4, 0x8

    invoke-virtual {p1, v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3016
    .end local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 3023
    .end local v0    # "i":I
    :cond_73
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v0, v0

    if-lez v0, :cond_90

    .line 3024
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7d
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-ge v0, v1, :cond_90

    .line 3025
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v1, v1, v0

    .line 3026
    .restart local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v1, :cond_8d

    .line 3027
    const/16 v4, 0x9

    invoke-virtual {p1, v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3024
    .end local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_8d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 3031
    .end local v0    # "i":I
    :cond_90
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2UnicastCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9d

    .line 3032
    const/16 v0, 0xa

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2UnicastCount:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3034
    :cond_9d
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2MulticastCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_aa

    .line 3035
    const/16 v0, 0xb

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2MulticastCount:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3037
    :cond_aa
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2BroadcastCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b7

    .line 3038
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2BroadcastCount:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3040
    :cond_b7
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3041
    return-void
.end method
