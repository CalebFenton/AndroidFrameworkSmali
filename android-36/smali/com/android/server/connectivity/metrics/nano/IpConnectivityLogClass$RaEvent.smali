.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RaEvent"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;


# instance fields
.field public blacklist dnsslLifetime:J

.field public blacklist prefixPreferredLifetime:J

.field public blacklist prefixValidLifetime:J

.field public blacklist rdnssLifetime:J

.field public blacklist routeInfoLifetime:J

.field public blacklist routerLifetime:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2430
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 2431
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    .line 2432
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;
    .registers 2

    .line 2401
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    if-nez v0, :cond_15

    .line 2402
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2404
    :try_start_7
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    if-nez v1, :cond_10

    .line 2405
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    .line 2407
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 2409
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2550
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2544
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;
    .registers 3

    .line 2435
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    .line 2436
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    .line 2437
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    .line 2438
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    .line 2439
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    .line 2440
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    .line 2441
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->cachedSize:I

    .line 2442
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 2471
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 2472
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_14

    .line 2473
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    .line 2474
    const/4 v5, 0x1

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2476
    :cond_14
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_22

    .line 2477
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    .line 2478
    const/4 v5, 0x2

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2480
    :cond_22
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_30

    .line 2481
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    .line 2482
    const/4 v5, 0x3

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2484
    :cond_30
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3e

    .line 2485
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    .line 2486
    const/4 v5, 0x4

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2488
    :cond_3e
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4c

    .line 2489
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    .line 2490
    const/4 v5, 0x5

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2492
    :cond_4c
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5a

    .line 2493
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    .line 2494
    const/4 v3, 0x6

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2496
    :cond_5a
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

    .line 2395
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;
    .registers 5
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2504
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2505
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_3c

    .line 2509
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 2510
    return-object p0

    .line 2535
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    goto :goto_3a

    .line 2531
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    .line 2532
    goto :goto_3a

    .line 2527
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    .line 2528
    goto :goto_3a

    .line 2523
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    .line 2524
    goto :goto_3a

    .line 2519
    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    .line 2520
    goto :goto_3a

    .line 2515
    :sswitch_32
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    .line 2516
    goto :goto_3a

    .line 2507
    :sswitch_39
    return-object p0

    .line 2539
    .end local v0    # "tag":I
    :cond_3a
    :goto_3a
    goto :goto_1

    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_39
        0x8 -> :sswitch_32
        0x10 -> :sswitch_2b
        0x18 -> :sswitch_24
        0x20 -> :sswitch_1d
        0x28 -> :sswitch_16
        0x30 -> :sswitch_f
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

    .line 2448
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 2449
    const/4 v0, 0x1

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2451
    :cond_e
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 2452
    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2454
    :cond_1a
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    .line 2455
    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2457
    :cond_26
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    .line 2458
    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2460
    :cond_32
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3e

    .line 2461
    const/4 v0, 0x5

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2463
    :cond_3e
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4a

    .line 2464
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2466
    :cond_4a
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2467
    return-void
.end method
