.class public final Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;


# instance fields
.field public blacklist cellularKernelActiveTimeMs:J

.field public blacklist energyConsumedMah:D

.field public blacklist idleTimeMs:J

.field public blacklist loggingDurationMs:J

.field public blacklist monitoredRailEnergyConsumedMah:D

.field public blacklist numBytesRx:J

.field public blacklist numBytesTx:J

.field public blacklist numPacketsRx:J

.field public blacklist numPacketsTx:J

.field public blacklist rxTimeMs:J

.field public blacklist sleepTimeMs:J

.field public blacklist timeInRatMs:[J

.field public blacklist timeInRxSignalStrengthLevelMs:[J

.field public blacklist timeInVeryPoorRxSignalLevelMs:J

.field public blacklist txTimeMs:[J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8801
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8802
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .registers 2

    .line 8745
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    if-nez v0, :cond_17

    .line 8746
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 8748
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 8749
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 8751
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 8753
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9166
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 9160
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .registers 6

    const-wide/16 v0, 0x0

    .line 8806
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    const-wide/16 v2, 0x0

    .line 8807
    iput-wide v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    .line 8808
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    .line 8809
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    .line 8810
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    .line 8811
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    .line 8812
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    .line 8813
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    .line 8814
    sget-object v4, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    .line 8815
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesTx:J

    .line 8816
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsRx:J

    .line 8817
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesRx:J

    .line 8818
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    .line 8819
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    .line 8820
    iput-wide v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    const/4 v0, 0x0

    .line 8821
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 8822
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 11

    .line 8887
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8888
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    .line 8890
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8892
    :cond_12
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    .line 8893
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    cmp-long v1, v1, v7

    if-eqz v1, :cond_2a

    const/4 v1, 0x2

    .line 8894
    iget-wide v7, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    .line 8895
    invoke-static {v1, v7, v8}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 8897
    :cond_2a
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    cmp-long v7, v1, v3

    if-eqz v7, :cond_36

    const/4 v7, 0x3

    .line 8899
    invoke-static {v7, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8901
    :cond_36
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    cmp-long v7, v1, v3

    if-eqz v7, :cond_42

    const/4 v7, 0x4

    .line 8903
    invoke-static {v7, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8905
    :cond_42
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    cmp-long v7, v1, v3

    if-eqz v7, :cond_4e

    const/4 v7, 0x5

    .line 8907
    invoke-static {v7, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8909
    :cond_4e
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    cmp-long v7, v1, v3

    if-eqz v7, :cond_5a

    const/4 v7, 0x6

    .line 8911
    invoke-static {v7, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8913
    :cond_5a
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    cmp-long v7, v1, v3

    if-eqz v7, :cond_66

    const/4 v7, 0x7

    .line 8915
    invoke-static {v7, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8917
    :cond_66
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    cmp-long v7, v1, v3

    if-eqz v7, :cond_73

    const/16 v7, 0x8

    .line 8919
    invoke-static {v7, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8921
    :cond_73
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    const/4 v2, 0x0

    if-eqz v1, :cond_8f

    array-length v1, v1

    if-lez v1, :cond_8f

    move v1, v2

    move v7, v1

    .line 8923
    :goto_7d
    iget-object v8, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    array-length v9, v8

    if-ge v1, v9, :cond_8c

    .line 8924
    aget-wide v8, v8, v1

    .line 8926
    invoke-static {v8, v9}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    :cond_8c
    add-int/2addr v0, v7

    .line 8929
    array-length v1, v8

    add-int/2addr v0, v1

    .line 8931
    :cond_8f
    iget-wide v7, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesTx:J

    cmp-long v1, v7, v3

    if-eqz v1, :cond_9c

    const/16 v1, 0xa

    .line 8933
    invoke-static {v1, v7, v8}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8935
    :cond_9c
    iget-wide v7, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsRx:J

    cmp-long v1, v7, v3

    if-eqz v1, :cond_a9

    const/16 v1, 0xb

    .line 8937
    invoke-static {v1, v7, v8}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8939
    :cond_a9
    iget-wide v7, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesRx:J

    cmp-long v1, v7, v3

    if-eqz v1, :cond_b6

    const/16 v1, 0xc

    .line 8941
    invoke-static {v1, v7, v8}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8943
    :cond_b6
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    if-eqz v1, :cond_d1

    array-length v1, v1

    if-lez v1, :cond_d1

    move v1, v2

    move v3, v1

    .line 8945
    :goto_bf
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    array-length v7, v4

    if-ge v1, v7, :cond_ce

    .line 8946
    aget-wide v7, v4, v1

    .line 8948
    invoke-static {v7, v8}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_bf

    :cond_ce
    add-int/2addr v0, v3

    .line 8951
    array-length v1, v4

    add-int/2addr v0, v1

    .line 8953
    :cond_d1
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    if-eqz v1, :cond_eb

    array-length v1, v1

    if-lez v1, :cond_eb

    move v1, v2

    .line 8955
    :goto_d9
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    array-length v4, v3

    if-ge v2, v4, :cond_e8

    .line 8956
    aget-wide v3, v3, v2

    .line 8958
    invoke-static {v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_d9

    :cond_e8
    add-int/2addr v0, v1

    .line 8961
    array-length v1, v3

    add-int/2addr v0, v1

    .line 8963
    :cond_eb
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 8964
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_102

    const/16 v1, 0xf

    .line 8965
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    .line 8966
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result p0

    add-int/2addr v0, p0

    :cond_102
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8976
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_1b4

    .line 8981
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1b2

    .line 9151
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    goto :goto_0

    .line 9128
    :sswitch_17
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 9129
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 9132
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 9133
    :goto_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_30

    .line 9134
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 9137
    :cond_30
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 9138
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    if-nez v2, :cond_39

    move v4, v1

    goto :goto_3a

    :cond_39
    array-length v4, v2

    :goto_3a
    add-int/2addr v3, v4

    .line 9139
    new-array v5, v3, [J

    if-eqz v4, :cond_42

    .line 9141
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_42
    :goto_42
    if-ge v4, v3, :cond_4d

    .line 9144
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    aput-wide v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 9146
    :cond_4d
    iput-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    .line 9147
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    :sswitch_53
    const/16 v0, 0x70

    .line 9112
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9113
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    if-nez v2, :cond_5f

    move v3, v1

    goto :goto_60

    :cond_5f
    array-length v3, v2

    :goto_60
    add-int/2addr v0, v3

    .line 9114
    new-array v4, v0, [J

    if-eqz v3, :cond_68

    .line 9116
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_68
    :goto_68
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_78

    .line 9119
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    aput-wide v1, v4, v3

    .line 9120
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 9123
    :cond_78
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    aput-wide v0, v4, v3

    .line 9124
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    goto/16 :goto_0

    .line 9088
    :sswitch_82
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 9089
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 9092
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 9093
    :goto_8f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_9b

    .line 9094
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_8f

    .line 9097
    :cond_9b
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 9098
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    if-nez v2, :cond_a4

    move v4, v1

    goto :goto_a5

    :cond_a4
    array-length v4, v2

    :goto_a5
    add-int/2addr v3, v4

    .line 9099
    new-array v5, v3, [J

    if-eqz v4, :cond_ad

    .line 9101
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_ad
    :goto_ad
    if-ge v4, v3, :cond_b8

    .line 9104
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    aput-wide v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_ad

    .line 9106
    :cond_b8
    iput-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    .line 9107
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_bf
    const/16 v0, 0x68

    .line 9072
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9073
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    if-nez v2, :cond_cb

    move v3, v1

    goto :goto_cc

    :cond_cb
    array-length v3, v2

    :goto_cc
    add-int/2addr v0, v3

    .line 9074
    new-array v4, v0, [J

    if-eqz v3, :cond_d4

    .line 9076
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d4
    :goto_d4
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_e4

    .line 9079
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    aput-wide v1, v4, v3

    .line 9080
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_d4

    .line 9083
    :cond_e4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    aput-wide v0, v4, v3

    .line 9084
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    goto/16 :goto_0

    .line 9067
    :sswitch_ee
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesRx:J

    goto/16 :goto_0

    .line 9063
    :sswitch_f6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsRx:J

    goto/16 :goto_0

    .line 9059
    :sswitch_fe
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesTx:J

    goto/16 :goto_0

    .line 9036
    :sswitch_106
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 9037
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 9040
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 9041
    :goto_113
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_11f

    .line 9042
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_113

    .line 9045
    :cond_11f
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 9046
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    if-nez v2, :cond_128

    move v4, v1

    goto :goto_129

    :cond_128
    array-length v4, v2

    :goto_129
    add-int/2addr v3, v4

    .line 9047
    new-array v5, v3, [J

    if-eqz v4, :cond_131

    .line 9049
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_131
    :goto_131
    if-ge v4, v3, :cond_13c

    .line 9052
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    aput-wide v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_131

    .line 9054
    :cond_13c
    iput-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    .line 9055
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_143
    const/16 v0, 0x48

    .line 9020
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9021
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    if-nez v2, :cond_14f

    move v3, v1

    goto :goto_150

    :cond_14f
    array-length v3, v2

    :goto_150
    add-int/2addr v0, v3

    .line 9022
    new-array v4, v0, [J

    if-eqz v3, :cond_158

    .line 9024
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_158
    :goto_158
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_168

    .line 9027
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    aput-wide v1, v4, v3

    .line 9028
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_158

    .line 9031
    :cond_168
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    aput-wide v0, v4, v3

    .line 9032
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    goto/16 :goto_0

    .line 9015
    :sswitch_172
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    goto/16 :goto_0

    .line 9011
    :sswitch_17a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    goto/16 :goto_0

    .line 9007
    :sswitch_182
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    goto/16 :goto_0

    .line 9003
    :sswitch_18a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    goto/16 :goto_0

    .line 8999
    :sswitch_192
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    goto/16 :goto_0

    .line 8995
    :sswitch_19a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    goto/16 :goto_0

    .line 8991
    :sswitch_1a2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    goto/16 :goto_0

    .line 8987
    :sswitch_1aa
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    goto/16 :goto_0

    :goto_1b2
    :sswitch_1b2
    return-object p0

    nop

    :sswitch_data_1b4
    .sparse-switch
        0x0 -> :sswitch_1b2
        0x8 -> :sswitch_1aa
        0x11 -> :sswitch_1a2
        0x18 -> :sswitch_19a
        0x20 -> :sswitch_192
        0x28 -> :sswitch_18a
        0x30 -> :sswitch_182
        0x38 -> :sswitch_17a
        0x40 -> :sswitch_172
        0x48 -> :sswitch_143
        0x4a -> :sswitch_106
        0x50 -> :sswitch_fe
        0x58 -> :sswitch_f6
        0x60 -> :sswitch_ee
        0x68 -> :sswitch_bf
        0x6a -> :sswitch_82
        0x70 -> :sswitch_53
        0x72 -> :sswitch_17
        0x79 -> :sswitch_10
    .end sparse-switch
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

    .line 8739
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8829
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    .line 8830
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8832
    :cond_c
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    .line 8833
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-eqz v0, :cond_22

    const/4 v0, 0x2

    .line 8834
    iget-wide v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    invoke-virtual {p1, v0, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 8836
    :cond_22
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_2c

    const/4 v6, 0x3

    .line 8837
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8839
    :cond_2c
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_36

    const/4 v6, 0x4

    .line 8840
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8842
    :cond_36
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_40

    const/4 v6, 0x5

    .line 8843
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8845
    :cond_40
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_4a

    const/4 v6, 0x6

    .line 8846
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8848
    :cond_4a
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_54

    const/4 v6, 0x7

    .line 8849
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8851
    :cond_54
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_5f

    const/16 v6, 0x8

    .line 8852
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8854
    :cond_5f
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_77

    array-length v0, v0

    if-lez v0, :cond_77

    move v0, v1

    .line 8855
    :goto_68
    iget-object v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    array-length v7, v6

    if-ge v0, v7, :cond_77

    const/16 v7, 0x9

    .line 8856
    aget-wide v8, v6, v0

    invoke-virtual {p1, v7, v8, v9}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 8859
    :cond_77
    iget-wide v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesTx:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_82

    const/16 v0, 0xa

    .line 8860
    invoke-virtual {p1, v0, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8862
    :cond_82
    iget-wide v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsRx:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_8d

    const/16 v0, 0xb

    .line 8863
    invoke-virtual {p1, v0, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8865
    :cond_8d
    iget-wide v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesRx:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_98

    const/16 v0, 0xc

    .line 8866
    invoke-virtual {p1, v0, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8868
    :cond_98
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    if-eqz v0, :cond_af

    array-length v0, v0

    if-lez v0, :cond_af

    move v0, v1

    .line 8869
    :goto_a0
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    array-length v3, v2

    if-ge v0, v3, :cond_af

    const/16 v3, 0xd

    .line 8870
    aget-wide v6, v2, v0

    invoke-virtual {p1, v3, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a0

    .line 8873
    :cond_af
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    if-eqz v0, :cond_c5

    array-length v0, v0

    if-lez v0, :cond_c5

    .line 8874
    :goto_b6
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    array-length v2, v0

    if-ge v1, v2, :cond_c5

    const/16 v2, 0xe

    .line 8875
    aget-wide v6, v0, v1

    invoke-virtual {p1, v2, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b6

    .line 8878
    :cond_c5
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 8879
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_da

    const/16 v0, 0xf

    .line 8880
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 8882
    :cond_da
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
