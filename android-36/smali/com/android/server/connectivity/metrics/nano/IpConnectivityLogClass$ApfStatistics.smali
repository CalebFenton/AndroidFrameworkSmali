.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApfStatistics"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;


# instance fields
.field public blacklist droppedRas:I

.field public blacklist durationMs:J

.field public blacklist hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

.field public blacklist matchingRas:I

.field public blacklist maxProgramSize:I

.field public blacklist parseErrors:I

.field public blacklist programUpdates:I

.field public blacklist programUpdatesAll:I

.field public blacklist programUpdatesAllowingMulticast:I

.field public blacklist receivedRas:I

.field public blacklist totalPacketDropped:I

.field public blacklist totalPacketProcessed:I

.field public blacklist zeroLifetimeRas:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2161
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 2162
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    .line 2163
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    .registers 2

    .line 2111
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    if-nez v0, :cond_15

    .line 2112
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2114
    :try_start_7
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    if-nez v1, :cond_10

    .line 2115
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    .line 2117
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 2119
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2391
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2385
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    .registers 3

    .line 2166
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    .line 2167
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    .line 2168
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    .line 2169
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    .line 2170
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    .line 2171
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    .line 2172
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    .line 2173
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    .line 2174
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    .line 2175
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    .line 2176
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketProcessed:I

    .line 2177
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketDropped:I

    .line 2178
    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2179
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->cachedSize:I

    .line 2180
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 2235
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 2236
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_14

    .line 2237
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    .line 2238
    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2240
    :cond_14
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    if-eqz v1, :cond_20

    .line 2241
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    .line 2242
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2244
    :cond_20
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    if-eqz v1, :cond_2c

    .line 2245
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    .line 2246
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2248
    :cond_2c
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    if-eqz v1, :cond_38

    .line 2249
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    .line 2250
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2252
    :cond_38
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    if-eqz v1, :cond_44

    .line 2253
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    .line 2254
    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2256
    :cond_44
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    if-eqz v1, :cond_50

    .line 2257
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    .line 2258
    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2260
    :cond_50
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    if-eqz v1, :cond_5d

    .line 2261
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    .line 2262
    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2264
    :cond_5d
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    if-eqz v1, :cond_6a

    .line 2265
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    .line 2266
    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2268
    :cond_6a
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    if-eqz v1, :cond_77

    .line 2269
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    .line 2270
    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2272
    :cond_77
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    if-eqz v1, :cond_84

    .line 2273
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    .line 2274
    const/16 v2, 0xb

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2276
    :cond_84
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketProcessed:I

    if-eqz v1, :cond_91

    .line 2277
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketProcessed:I

    .line 2278
    const/16 v2, 0xc

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2280
    :cond_91
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketDropped:I

    if-eqz v1, :cond_9e

    .line 2281
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketDropped:I

    .line 2282
    const/16 v2, 0xd

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2284
    :cond_9e
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_be

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-lez v1, :cond_be

    .line 2285
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a8
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v2

    if-ge v1, v2, :cond_be

    .line 2286
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v2, v2, v1

    .line 2287
    .local v2, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v2, :cond_bb

    .line 2288
    nop

    .line 2289
    const/16 v3, 0xe

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2285
    .end local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_bb
    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    .line 2293
    .end local v1    # "i":I
    :cond_be
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

    .line 2105
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    .registers 8
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2301
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2302
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_a8

    .line 2306
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 2307
    return-object p0

    .line 2360
    :sswitch_f
    nop

    .line 2361
    const/16 v1, 0x72

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 2362
    .local v1, "arrayLength":I
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    const/4 v3, 0x0

    if-nez v2, :cond_1d

    move v2, v3

    goto :goto_20

    :cond_1d
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v2

    .line 2363
    .local v2, "i":I
    :goto_20
    add-int v4, v2, v1

    new-array v4, v4, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2365
    .local v4, "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v2, :cond_2b

    .line 2366
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2368
    :cond_2b
    :goto_2b
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_42

    .line 2369
    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v3, v4, v2

    .line 2370
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2371
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2368
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 2374
    :cond_42
    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v3, v4, v2

    .line 2375
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2376
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 2377
    goto :goto_a6

    .line 2356
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :sswitch_51
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketDropped:I

    .line 2357
    goto :goto_a6

    .line 2352
    :sswitch_58
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketProcessed:I

    .line 2353
    goto :goto_a6

    .line 2348
    :sswitch_5f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    .line 2349
    goto :goto_a6

    .line 2344
    :sswitch_66
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    .line 2345
    goto :goto_a6

    .line 2340
    :sswitch_6d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    .line 2341
    goto :goto_a6

    .line 2336
    :sswitch_74
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    .line 2337
    goto :goto_a6

    .line 2332
    :sswitch_7b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    .line 2333
    goto :goto_a6

    .line 2328
    :sswitch_82
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    .line 2329
    goto :goto_a6

    .line 2324
    :sswitch_89
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    .line 2325
    goto :goto_a6

    .line 2320
    :sswitch_90
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    .line 2321
    goto :goto_a6

    .line 2316
    :sswitch_97
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    .line 2317
    goto :goto_a6

    .line 2312
    :sswitch_9e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    .line 2313
    goto :goto_a6

    .line 2304
    :sswitch_a5
    return-object p0

    .line 2380
    .end local v0    # "tag":I
    :cond_a6
    :goto_a6
    goto/16 :goto_1

    :sswitch_data_a8
    .sparse-switch
        0x0 -> :sswitch_a5
        0x8 -> :sswitch_9e
        0x10 -> :sswitch_97
        0x18 -> :sswitch_90
        0x28 -> :sswitch_89
        0x30 -> :sswitch_82
        0x38 -> :sswitch_7b
        0x40 -> :sswitch_74
        0x48 -> :sswitch_6d
        0x50 -> :sswitch_66
        0x58 -> :sswitch_5f
        0x60 -> :sswitch_58
        0x68 -> :sswitch_51
        0x72 -> :sswitch_f
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2186
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 2187
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2189
    :cond_e
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    if-eqz v0, :cond_18

    .line 2190
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2192
    :cond_18
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    if-eqz v0, :cond_22

    .line 2193
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2195
    :cond_22
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    if-eqz v0, :cond_2c

    .line 2196
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2198
    :cond_2c
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    if-eqz v0, :cond_36

    .line 2199
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2201
    :cond_36
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    if-eqz v0, :cond_40

    .line 2202
    const/4 v0, 0x7

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2204
    :cond_40
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    if-eqz v0, :cond_4b

    .line 2205
    const/16 v0, 0x8

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2207
    :cond_4b
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    if-eqz v0, :cond_56

    .line 2208
    const/16 v0, 0x9

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2210
    :cond_56
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    if-eqz v0, :cond_61

    .line 2211
    const/16 v0, 0xa

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2213
    :cond_61
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    if-eqz v0, :cond_6c

    .line 2214
    const/16 v0, 0xb

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2216
    :cond_6c
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketProcessed:I

    if-eqz v0, :cond_77

    .line 2217
    const/16 v0, 0xc

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketProcessed:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2219
    :cond_77
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketDropped:I

    if-eqz v0, :cond_82

    .line 2220
    const/16 v0, 0xd

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketDropped:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2222
    :cond_82
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v0, v0

    if-lez v0, :cond_9f

    .line 2223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8c
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-ge v0, v1, :cond_9f

    .line 2224
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v1, v1, v0

    .line 2225
    .local v1, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v1, :cond_9c

    .line 2226
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2223
    .end local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_9c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 2230
    .end local v0    # "i":I
    :cond_9f
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2231
    return-void
.end method
