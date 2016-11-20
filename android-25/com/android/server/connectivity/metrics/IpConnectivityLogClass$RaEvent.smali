.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RaEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;


# instance fields
.field public dnsslLifetime:J

.field public prefixPreferredLifetime:J

.field public prefixValidLifetime:J

.field public rdnssLifetime:J

.field public routeInfoLifetime:J

.field public routerLifetime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1431
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    #@3
    .line 1432
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@6
    .line 1431
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    .locals 2

    #@0
    .prologue
    .line 1400
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1401
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 1403
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1404
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@e
    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1408
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@13
    return-object v0

    #@14
    .line 1401
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1551
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 1545
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 1436
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    #@4
    .line 1437
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    #@6
    .line 1438
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    #@8
    .line 1439
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    #@a
    .line 1440
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    #@c
    .line 1441
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    #@e
    .line 1442
    const/4 v0, -0x1

    #@f
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->cachedSize:I

    #@11
    .line 1443
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 1472
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    #@5
    move-result v0

    #@6
    .line 1473
    .local v0, "size":I
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    #@8
    cmp-long v1, v2, v4

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1475
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    #@e
    const/4 v1, 0x1

    #@f
    .line 1474
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    #@12
    move-result v1

    #@13
    add-int/2addr v0, v1

    #@14
    .line 1477
    :cond_0
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    #@16
    cmp-long v1, v2, v4

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1479
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    #@1c
    const/4 v1, 0x2

    #@1d
    .line 1478
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    #@20
    move-result v1

    #@21
    add-int/2addr v0, v1

    #@22
    .line 1481
    :cond_1
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    #@24
    cmp-long v1, v2, v4

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 1483
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    #@2a
    const/4 v1, 0x3

    #@2b
    .line 1482
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    #@2e
    move-result v1

    #@2f
    add-int/2addr v0, v1

    #@30
    .line 1485
    :cond_2
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    #@32
    cmp-long v1, v2, v4

    #@34
    if-eqz v1, :cond_3

    #@36
    .line 1487
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    #@38
    const/4 v1, 0x4

    #@39
    .line 1486
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    #@3c
    move-result v1

    #@3d
    add-int/2addr v0, v1

    #@3e
    .line 1489
    :cond_3
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    #@40
    cmp-long v1, v2, v4

    #@42
    if-eqz v1, :cond_4

    #@44
    .line 1491
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    #@46
    const/4 v1, 0x5

    #@47
    .line 1490
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    #@4a
    move-result v1

    #@4b
    add-int/2addr v0, v1

    #@4c
    .line 1493
    :cond_4
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    #@4e
    cmp-long v1, v2, v4

    #@50
    if-eqz v1, :cond_5

    #@52
    .line 1495
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    #@54
    const/4 v1, 0x6

    #@55
    .line 1494
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    #@58
    move-result v1

    #@59
    add-int/2addr v0, v1

    #@5a
    .line 1497
    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1505
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v0

    #@4
    .line 1506
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 1510
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1511
    return-object p0

    #@e
    .line 1508
    :sswitch_0
    return-object p0

    #@f
    .line 1516
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    #@12
    move-result-wide v2

    #@13
    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    #@15
    goto :goto_0

    #@16
    .line 1520
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    #@19
    move-result-wide v2

    #@1a
    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    #@1c
    goto :goto_0

    #@1d
    .line 1524
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    #@20
    move-result-wide v2

    #@21
    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    #@23
    goto :goto_0

    #@24
    .line 1528
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    #@27
    move-result-wide v2

    #@28
    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    #@2a
    goto :goto_0

    #@2b
    .line 1532
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    #@2e
    move-result-wide v2

    #@2f
    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    #@31
    goto :goto_0

    #@32
    .line 1536
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    #@35
    move-result-wide v2

    #@36
    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    #@38
    goto :goto_0

    #@39
    .line 1506
    nop

    #@3a
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
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
    .line 1501
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 1449
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    #@4
    cmp-long v0, v0, v4

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1450
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    #@a
    const/4 v2, 0x1

    #@b
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    #@e
    .line 1452
    :cond_0
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    #@10
    cmp-long v0, v0, v4

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 1453
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    #@16
    const/4 v2, 0x2

    #@17
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    #@1a
    .line 1455
    :cond_1
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    #@1c
    cmp-long v0, v0, v4

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 1456
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    #@22
    const/4 v2, 0x3

    #@23
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    #@26
    .line 1458
    :cond_2
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    #@28
    cmp-long v0, v0, v4

    #@2a
    if-eqz v0, :cond_3

    #@2c
    .line 1459
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    #@2e
    const/4 v2, 0x4

    #@2f
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    #@32
    .line 1461
    :cond_3
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    #@34
    cmp-long v0, v0, v4

    #@36
    if-eqz v0, :cond_4

    #@38
    .line 1462
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    #@3a
    const/4 v2, 0x5

    #@3b
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    #@3e
    .line 1464
    :cond_4
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    #@40
    cmp-long v0, v0, v4

    #@42
    if-eqz v0, :cond_5

    #@44
    .line 1465
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    #@46
    const/4 v2, 0x6

    #@47
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    #@4a
    .line 1467
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@4d
    .line 1448
    return-void
.end method
