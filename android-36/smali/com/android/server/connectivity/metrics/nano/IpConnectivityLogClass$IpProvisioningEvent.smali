.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpProvisioningEvent"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;


# instance fields
.field public blacklist eventType:I

.field public blacklist ifName:Ljava/lang/String;

.field public blacklist latencyMs:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2580
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 2581
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    .line 2582
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;
    .registers 2

    .line 2560
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    if-nez v0, :cond_15

    .line 2561
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2563
    :try_start_7
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    if-nez v1, :cond_10

    .line 2564
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    .line 2566
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 2568
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2664
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2658
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;
    .registers 2

    .line 2585
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->ifName:Ljava/lang/String;

    .line 2586
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    .line 2587
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    .line 2588
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->cachedSize:I

    .line 2589
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 2609
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 2610
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->ifName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 2611
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->ifName:Ljava/lang/String;

    .line 2612
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2614
    :cond_16
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    if-eqz v1, :cond_22

    .line 2615
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    .line 2616
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2618
    :cond_22
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    if-eqz v1, :cond_2e

    .line 2619
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    .line 2620
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2622
    :cond_2e
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

    .line 2554
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;
    .registers 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2630
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2631
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_26

    .line 2635
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 2636
    return-object p0

    .line 2649
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    goto :goto_25

    .line 2645
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    .line 2646
    goto :goto_25

    .line 2641
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->ifName:Ljava/lang/String;

    .line 2642
    goto :goto_25

    .line 2633
    :sswitch_24
    return-object p0

    .line 2653
    .end local v0    # "tag":I
    :cond_25
    :goto_25
    goto :goto_1

    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_24
        0xa -> :sswitch_1d
        0x10 -> :sswitch_16
        0x18 -> :sswitch_f
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2595
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->ifName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2596
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->ifName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2598
    :cond_10
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    if-eqz v0, :cond_1a

    .line 2599
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2601
    :cond_1a
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    if-eqz v0, :cond_24

    .line 2602
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2604
    :cond_24
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2605
    return-void
.end method
