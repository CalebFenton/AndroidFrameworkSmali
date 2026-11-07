.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$RoamingType;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$FrequencyRange;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NrState;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$Transport;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$Domain;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;


# instance fields
.field public blacklist channelNumber:I

.field public blacklist dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

.field public blacklist dataRat:I

.field public blacklist dataRoamingType:I

.field public blacklist networkRegistrationInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

.field public blacklist nrFrequencyRange:I

.field public blacklist nrState:I

.field public blacklist voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

.field public blacklist voiceRat:I

.field public blacklist voiceRoamingType:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1578
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1579
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .registers 2

    .line 1537
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-nez v0, :cond_17

    .line 1538
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1540
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 1541
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 1543
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 1545
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1866
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1860
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .registers 4

    const/4 v0, 0x0

    .line 1583
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 1584
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    const/4 v1, -0x1

    .line 1585
    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRoamingType:I

    .line 1586
    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRoamingType:I

    .line 1587
    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRat:I

    .line 1588
    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    const/4 v2, 0x0

    .line 1589
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->channelNumber:I

    .line 1590
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->nrFrequencyRange:I

    .line 1591
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->nrState:I

    .line 1592
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->networkRegistrationInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    .line 1593
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    .line 1594
    iput v1, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 1641
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1642
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 1644
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1646
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 1648
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1650
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRoamingType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    const/4 v3, 0x3

    .line 1652
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1654
    :cond_23
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRoamingType:I

    if-eq v1, v2, :cond_2d

    const/4 v3, 0x4

    .line 1656
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1658
    :cond_2d
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRat:I

    if-eq v1, v2, :cond_37

    const/4 v3, 0x5

    .line 1660
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1662
    :cond_37
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    if-eq v1, v2, :cond_41

    const/4 v2, 0x6

    .line 1664
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1666
    :cond_41
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->channelNumber:I

    if-eqz v1, :cond_4b

    const/4 v2, 0x7

    .line 1668
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1670
    :cond_4b
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->nrFrequencyRange:I

    if-eqz v1, :cond_56

    const/16 v2, 0x8

    .line 1672
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1674
    :cond_56
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->nrState:I

    if-eqz v1, :cond_61

    const/16 v2, 0x9

    .line 1676
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1678
    :cond_61
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->networkRegistrationInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    if-eqz v1, :cond_7c

    array-length v1, v1

    if-lez v1, :cond_7c

    const/4 v1, 0x0

    .line 1679
    :goto_69
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->networkRegistrationInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_7c

    .line 1680
    aget-object v2, v2, v1

    if-eqz v2, :cond_79

    const/16 v3, 0xa

    .line 1683
    invoke-static {v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    :cond_7c
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1695
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_da

    .line 1700
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_d8

    :sswitch_13
    const/16 v0, 0x52

    .line 1836
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1837
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->networkRegistrationInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_20

    move v3, v2

    goto :goto_21

    :cond_20
    array-length v3, v1

    :goto_21
    add-int/2addr v0, v3

    .line 1838
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    if-eqz v3, :cond_29

    .line 1841
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_29
    :goto_29
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3d

    .line 1844
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;-><init>()V

    aput-object v1, v4, v3

    .line 1845
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1846
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 1849
    :cond_3d
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;-><init>()V

    aput-object v0, v4, v3

    .line 1850
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1851
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->networkRegistrationInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    goto :goto_0

    .line 1823
    :sswitch_4a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_57

    if-eq v0, v4, :cond_57

    if-eq v0, v3, :cond_57

    if-eq v0, v2, :cond_57

    goto :goto_0

    .line 1829
    :cond_57
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->nrState:I

    goto :goto_0

    .line 1810
    :sswitch_5a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_6a

    if-eq v0, v4, :cond_6a

    if-eq v0, v3, :cond_6a

    if-eq v0, v2, :cond_6a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6a

    goto :goto_0

    .line 1817
    :cond_6a
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->nrFrequencyRange:I

    goto :goto_0

    .line 1806
    :sswitch_6d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->channelNumber:I

    goto :goto_0

    .line 1776
    :sswitch_74
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_108

    goto :goto_0

    .line 1800
    :pswitch_7c
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    goto :goto_0

    .line 1746
    :sswitch_7f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_138

    goto/16 :goto_0

    .line 1770
    :pswitch_88
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRat:I

    goto/16 :goto_0

    .line 1733
    :sswitch_8c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eq v0, v1, :cond_9c

    if-eqz v0, :cond_9c

    if-eq v0, v4, :cond_9c

    if-eq v0, v3, :cond_9c

    if-eq v0, v2, :cond_9c

    goto/16 :goto_0

    .line 1740
    :cond_9c
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRoamingType:I

    goto/16 :goto_0

    .line 1720
    :sswitch_a0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eq v0, v1, :cond_b0

    if-eqz v0, :cond_b0

    if-eq v0, v4, :cond_b0

    if-eq v0, v3, :cond_b0

    if-eq v0, v2, :cond_b0

    goto/16 :goto_0

    .line 1727
    :cond_b0
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRoamingType:I

    goto/16 :goto_0

    .line 1713
    :sswitch_b4
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-nez v0, :cond_bf

    .line 1714
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 1716
    :cond_bf
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1706
    :sswitch_c6
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-nez v0, :cond_d1

    .line 1707
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 1709
    :cond_d1
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :goto_d8
    :sswitch_d8
    return-object p0

    nop

    :sswitch_data_da
    .sparse-switch
        0x0 -> :sswitch_d8
        0xa -> :sswitch_c6
        0x12 -> :sswitch_b4
        0x18 -> :sswitch_a0
        0x20 -> :sswitch_8c
        0x28 -> :sswitch_7f
        0x30 -> :sswitch_74
        0x38 -> :sswitch_6d
        0x40 -> :sswitch_5a
        0x48 -> :sswitch_4a
        0x52 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_108
    .packed-switch -0x1
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
    .end packed-switch

    :pswitch_data_138
    .packed-switch -0x1
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
    .end packed-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
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

    .line 1221
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1601
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 1602
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1604
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 1605
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1607
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRoamingType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    const/4 v2, 0x3

    .line 1608
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1610
    :cond_19
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRoamingType:I

    if-eq v0, v1, :cond_21

    const/4 v2, 0x4

    .line 1611
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1613
    :cond_21
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRat:I

    if-eq v0, v1, :cond_29

    const/4 v2, 0x5

    .line 1614
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1616
    :cond_29
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    if-eq v0, v1, :cond_31

    const/4 v1, 0x6

    .line 1617
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1619
    :cond_31
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->channelNumber:I

    if-eqz v0, :cond_39

    const/4 v1, 0x7

    .line 1620
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1622
    :cond_39
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->nrFrequencyRange:I

    if-eqz v0, :cond_42

    const/16 v1, 0x8

    .line 1623
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1625
    :cond_42
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->nrState:I

    if-eqz v0, :cond_4b

    const/16 v1, 0x9

    .line 1626
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1628
    :cond_4b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->networkRegistrationInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    if-eqz v0, :cond_64

    array-length v0, v0

    if-lez v0, :cond_64

    const/4 v0, 0x0

    .line 1629
    :goto_53
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->networkRegistrationInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_64

    .line 1630
    aget-object v1, v1, v0

    if-eqz v1, :cond_61

    const/16 v2, 0xa

    .line 1632
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 1636
    :cond_64
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
