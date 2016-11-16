.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValidationProbeEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;


# instance fields
.field public latencyMs:I

.field public networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

.field public probeResult:I

.field public probeType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 542
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    #@3
    .line 543
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@6
    .line 542
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;
    .locals 2

    #@0
    .prologue
    .line 517
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 518
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 520
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 521
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@e
    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 525
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@13
    return-object v0

    #@14
    .line 518
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 641
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 635
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 547
    const/4 v0, 0x0

    #@2
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@4
    .line 548
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->latencyMs:I

    #@6
    .line 549
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeType:I

    #@8
    .line 550
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeResult:I

    #@a
    .line 551
    const/4 v0, -0x1

    #@b
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->cachedSize:I

    #@d
    .line 552
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 575
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 576
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 578
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@a
    const/4 v2, 0x1

    #@b
    .line 577
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@e
    move-result v1

    #@f
    add-int/2addr v0, v1

    #@10
    .line 580
    :cond_0
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->latencyMs:I

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 582
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->latencyMs:I

    #@16
    const/4 v2, 0x2

    #@17
    .line 581
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1a
    move-result v1

    #@1b
    add-int/2addr v0, v1

    #@1c
    .line 584
    :cond_1
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeType:I

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 586
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeType:I

    #@22
    const/4 v2, 0x3

    #@23
    .line 585
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@26
    move-result v1

    #@27
    add-int/2addr v0, v1

    #@28
    .line 588
    :cond_2
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeResult:I

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 590
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeResult:I

    #@2e
    const/4 v2, 0x4

    #@2f
    .line 589
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@32
    move-result v1

    #@33
    add-int/2addr v0, v1

    #@34
    .line 592
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 600
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v0

    #@4
    .line 601
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 605
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 606
    return-object p0

    #@e
    .line 603
    :sswitch_0
    return-object p0

    #@f
    .line 611
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@11
    if-nez v1, :cond_1

    #@13
    .line 612
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@15
    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;-><init>()V

    #@18
    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@1a
    .line 614
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@1c
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@1f
    goto :goto_0

    #@20
    .line 618
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@23
    move-result v1

    #@24
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->latencyMs:I

    #@26
    goto :goto_0

    #@27
    .line 622
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@2a
    move-result v1

    #@2b
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeType:I

    #@2d
    goto :goto_0

    #@2e
    .line 626
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@31
    move-result v1

    #@32
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeResult:I

    #@34
    goto :goto_0

    #@35
    .line 601
    nop

    #@36
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 596
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 559
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@a
    .line 561
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->latencyMs:I

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 562
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->latencyMs:I

    #@10
    const/4 v1, 0x2

    #@11
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@14
    .line 564
    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeType:I

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 565
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeType:I

    #@1a
    const/4 v1, 0x3

    #@1b
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@1e
    .line 567
    :cond_2
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeResult:I

    #@20
    if-eqz v0, :cond_3

    #@22
    .line 568
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeResult:I

    #@24
    const/4 v1, 0x4

    #@25
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@28
    .line 570
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@2b
    .line 557
    return-void
.end method
