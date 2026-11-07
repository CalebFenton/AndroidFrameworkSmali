.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;


# instance fields
.field public blacklist carrierId:I

.field public blacklist cellularServiceState:I

.field public blacklist count:I

.field public blacklist countOfTimerStarted:I

.field public blacklist isDisplaySosMessageSent:Z

.field public blacklist isImsRegistered:Z

.field public blacklist isMultiSim:Z

.field public blacklist isNtnOnlyCarrier:Z

.field public blacklist isSatelliteAllowedInCurrentLocation:Z

.field public blacklist isWifiConnected:Z

.field public blacklist recommendingHandoverType:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10475
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10476
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;
    .registers 2

    .line 10431
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    if-nez v0, :cond_17

    .line 10432
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 10434
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 10435
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 10437
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 10439
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10656
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 10650
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;
    .registers 2

    const/4 v0, 0x0

    .line 10480
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isDisplaySosMessageSent:Z

    .line 10481
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->countOfTimerStarted:I

    .line 10482
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isImsRegistered:Z

    .line 10483
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->cellularServiceState:I

    .line 10484
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->count:I

    .line 10485
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isMultiSim:Z

    .line 10486
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->recommendingHandoverType:I

    .line 10487
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isSatelliteAllowedInCurrentLocation:Z

    .line 10488
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isWifiConnected:Z

    .line 10489
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->carrierId:I

    .line 10490
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isNtnOnlyCarrier:Z

    const/4 v0, 0x0

    .line 10491
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 10492
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 10537
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10538
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isDisplaySosMessageSent:Z

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 10540
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10542
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->countOfTimerStarted:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 10544
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10546
    :cond_18
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isImsRegistered:Z

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 10548
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10550
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->cellularServiceState:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 10552
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10554
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->count:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 10556
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10558
    :cond_36
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isMultiSim:Z

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 10560
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10562
    :cond_40
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->recommendingHandoverType:I

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 10564
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10566
    :cond_4a
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isSatelliteAllowedInCurrentLocation:Z

    if-eqz v1, :cond_55

    const/16 v2, 0x8

    .line 10568
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10570
    :cond_55
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isWifiConnected:Z

    if-eqz v1, :cond_60

    const/16 v2, 0x9

    .line 10572
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10574
    :cond_60
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->carrierId:I

    if-eqz v1, :cond_6b

    const/16 v2, 0xa

    .line 10576
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10578
    :cond_6b
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isNtnOnlyCarrier:Z

    if-eqz p0, :cond_76

    const/16 v1, 0xb

    .line 10580
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_76
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10590
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_5c

    .line 10595
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_5b

    .line 10641
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isNtnOnlyCarrier:Z

    goto :goto_0

    .line 10637
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->carrierId:I

    goto :goto_0

    .line 10633
    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isWifiConnected:Z

    goto :goto_0

    .line 10629
    :sswitch_23
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isSatelliteAllowedInCurrentLocation:Z

    goto :goto_0

    .line 10625
    :sswitch_2a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->recommendingHandoverType:I

    goto :goto_0

    .line 10621
    :sswitch_31
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isMultiSim:Z

    goto :goto_0

    .line 10617
    :sswitch_38
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->count:I

    goto :goto_0

    .line 10613
    :sswitch_3f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->cellularServiceState:I

    goto :goto_0

    .line 10609
    :sswitch_46
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isImsRegistered:Z

    goto :goto_0

    .line 10605
    :sswitch_4d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->countOfTimerStarted:I

    goto :goto_0

    .line 10601
    :sswitch_54
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isDisplaySosMessageSent:Z

    goto :goto_0

    :goto_5b
    :sswitch_5b
    return-object p0

    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_5b
        0x8 -> :sswitch_54
        0x10 -> :sswitch_4d
        0x18 -> :sswitch_46
        0x20 -> :sswitch_3f
        0x28 -> :sswitch_38
        0x30 -> :sswitch_31
        0x38 -> :sswitch_2a
        0x40 -> :sswitch_23
        0x48 -> :sswitch_1c
        0x50 -> :sswitch_15
        0x58 -> :sswitch_e
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

    .line 10425
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10499
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isDisplaySosMessageSent:Z

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 10500
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10502
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->countOfTimerStarted:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 10503
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10505
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isImsRegistered:Z

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 10506
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10508
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->cellularServiceState:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 10509
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10511
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->count:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 10512
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10514
    :cond_28
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isMultiSim:Z

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 10515
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10517
    :cond_30
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->recommendingHandoverType:I

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 10518
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10520
    :cond_38
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isSatelliteAllowedInCurrentLocation:Z

    if-eqz v0, :cond_41

    const/16 v1, 0x8

    .line 10521
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10523
    :cond_41
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isWifiConnected:Z

    if-eqz v0, :cond_4a

    const/16 v1, 0x9

    .line 10524
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10526
    :cond_4a
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->carrierId:I

    if-eqz v0, :cond_53

    const/16 v1, 0xa

    .line 10527
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10529
    :cond_53
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isNtnOnlyCarrier:Z

    if-eqz v0, :cond_5c

    const/16 v1, 0xb

    .line 10530
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10532
    :cond_5c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
