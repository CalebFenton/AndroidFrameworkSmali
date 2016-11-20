.class public final Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionEvent"
.end annotation


# static fields
.field public static final HLF_DHCP:I = 0x2

.field public static final HLF_NONE:I = 0x1

.field public static final HLF_NO_INTERNET:I = 0x3

.field public static final HLF_UNKNOWN:I = 0x0

.field public static final HLF_UNWANTED:I = 0x4

.field public static final ROAM_DBDC:I = 0x2

.field public static final ROAM_ENTERPRISE:I = 0x3

.field public static final ROAM_NONE:I = 0x1

.field public static final ROAM_UNKNOWN:I = 0x0

.field public static final ROAM_UNRELATED:I = 0x5

.field public static final ROAM_USER_SELECTED:I = 0x4

.field private static volatile _emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;


# instance fields
.field public automaticBugReportTaken:Z

.field public connectionResult:I

.field public connectivityLevelFailureCode:I

.field public durationTakenToConnectMillis:I

.field public level2FailureCode:I

.field public roamType:I

.field public routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

.field public signalStrength:I

.field public startTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1556
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    #@3
    .line 1557
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->clear()Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@6
    .line 1556
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .locals 2

    #@0
    .prologue
    .line 1516
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1517
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 1519
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1520
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@e
    sput-object v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1524
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@13
    return-object v0

    #@14
    .line 1517
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1734
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 1728
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1561
    const-wide/16 v0, 0x0

    #@3
    iput-wide v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    #@5
    .line 1562
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    #@7
    .line 1563
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@a
    .line 1564
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    #@c
    .line 1565
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    #@e
    .line 1566
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    #@10
    .line 1567
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    #@12
    .line 1568
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    #@14
    .line 1569
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    #@16
    .line 1570
    const/4 v0, -0x1

    #@17
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->cachedSize:I

    #@19
    .line 1571
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    #@0
    .prologue
    .line 1609
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 1610
    .local v0, "size":I
    iget-wide v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    #@6
    const-wide/16 v4, 0x0

    #@8
    cmp-long v1, v2, v4

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1612
    iget-wide v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    #@e
    const/4 v1, 0x1

    #@f
    .line 1611
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    #@12
    move-result v1

    #@13
    add-int/2addr v0, v1

    #@14
    .line 1614
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 1616
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    #@1a
    const/4 v2, 0x2

    #@1b
    .line 1615
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 1618
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@22
    if-eqz v1, :cond_2

    #@24
    .line 1620
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@26
    const/4 v2, 0x3

    #@27
    .line 1619
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@2a
    move-result v1

    #@2b
    add-int/2addr v0, v1

    #@2c
    .line 1622
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 1624
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    #@32
    const/4 v2, 0x4

    #@33
    .line 1623
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@36
    move-result v1

    #@37
    add-int/2addr v0, v1

    #@38
    .line 1626
    :cond_3
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    #@3a
    if-eqz v1, :cond_4

    #@3c
    .line 1628
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    #@3e
    const/4 v2, 0x5

    #@3f
    .line 1627
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@42
    move-result v1

    #@43
    add-int/2addr v0, v1

    #@44
    .line 1630
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    #@46
    if-eqz v1, :cond_5

    #@48
    .line 1632
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    #@4a
    const/4 v2, 0x6

    #@4b
    .line 1631
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@4e
    move-result v1

    #@4f
    add-int/2addr v0, v1

    #@50
    .line 1634
    :cond_5
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    #@52
    if-eqz v1, :cond_6

    #@54
    .line 1636
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    #@56
    const/4 v2, 0x7

    #@57
    .line 1635
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@5a
    move-result v1

    #@5b
    add-int/2addr v0, v1

    #@5c
    .line 1638
    :cond_6
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    #@5e
    if-eqz v1, :cond_7

    #@60
    .line 1640
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    #@62
    const/16 v2, 0x8

    #@64
    .line 1639
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@67
    move-result v1

    #@68
    add-int/2addr v0, v1

    #@69
    .line 1642
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    #@6b
    if-eqz v1, :cond_8

    #@6d
    .line 1644
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    #@6f
    const/16 v2, 0x9

    #@71
    .line 1643
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@74
    move-result v1

    #@75
    add-int/2addr v0, v1

    #@76
    .line 1646
    :cond_8
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1654
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v0

    #@4
    .line 1655
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 1659
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 1660
    return-object p0

    #@e
    .line 1657
    :sswitch_0
    return-object p0

    #@f
    .line 1665
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    #@12
    move-result-wide v2

    #@13
    iput-wide v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    #@15
    goto :goto_0

    #@16
    .line 1669
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@19
    move-result v2

    #@1a
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    #@1c
    goto :goto_0

    #@1d
    .line 1673
    :sswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@1f
    if-nez v2, :cond_1

    #@21
    .line 1674
    new-instance v2, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@23
    invoke-direct {v2}, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;-><init>()V

    #@26
    iput-object v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@28
    .line 1676
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@2a
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@2d
    goto :goto_0

    #@2e
    .line 1680
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@31
    move-result v2

    #@32
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    #@34
    goto :goto_0

    #@35
    .line 1684
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@38
    move-result v1

    #@39
    .line 1685
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    #@3c
    goto :goto_0

    #@3d
    .line 1692
    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    #@3f
    goto :goto_0

    #@40
    .line 1698
    .end local v1    # "value":I
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@43
    move-result v2

    #@44
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    #@46
    goto :goto_0

    #@47
    .line 1702
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@4a
    move-result v2

    #@4b
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    #@4d
    goto :goto_0

    #@4e
    .line 1706
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@51
    move-result v1

    #@52
    .line 1707
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_1

    #@55
    goto :goto_0

    #@56
    .line 1713
    :pswitch_1
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    #@58
    goto :goto_0

    #@59
    .line 1719
    .end local v1    # "value":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@5c
    move-result v2

    #@5d
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    #@5f
    goto :goto_0

    #@60
    .line 1655
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch

    #@8a
    .line 1685
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@9a
    .line 1707
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
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
    .line 1650
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1577
    iget-wide v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1578
    iget-wide v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    #@a
    const/4 v2, 0x1

    #@b
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    #@e
    .line 1580
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1581
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    #@14
    const/4 v1, 0x2

    #@15
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@18
    .line 1583
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 1584
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@1e
    const/4 v1, 0x3

    #@1f
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@22
    .line 1586
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    #@24
    if-eqz v0, :cond_3

    #@26
    .line 1587
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    #@28
    const/4 v1, 0x4

    #@29
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@2c
    .line 1589
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    #@2e
    if-eqz v0, :cond_4

    #@30
    .line 1590
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    #@32
    const/4 v1, 0x5

    #@33
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@36
    .line 1592
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    #@38
    if-eqz v0, :cond_5

    #@3a
    .line 1593
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    #@3c
    const/4 v1, 0x6

    #@3d
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@40
    .line 1595
    :cond_5
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    #@42
    if-eqz v0, :cond_6

    #@44
    .line 1596
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    #@46
    const/4 v1, 0x7

    #@47
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@4a
    .line 1598
    :cond_6
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    #@4c
    if-eqz v0, :cond_7

    #@4e
    .line 1599
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    #@50
    const/16 v1, 0x8

    #@52
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@55
    .line 1601
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    #@57
    if-eqz v0, :cond_8

    #@59
    .line 1602
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    #@5b
    const/16 v1, 0x9

    #@5d
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@60
    .line 1604
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@63
    .line 1576
    return-void
.end method
