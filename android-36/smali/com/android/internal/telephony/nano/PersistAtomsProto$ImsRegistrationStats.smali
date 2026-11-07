.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;


# instance fields
.field public blacklist carrierId:I

.field public blacklist isIwlanCrossSim:Z

.field public blacklist lastUsedMillis:J

.field public blacklist rat:I

.field public blacklist registeredMillis:J

.field public blacklist registeredTimes:I

.field public blacklist registeringMillis:J

.field public blacklist simSlotIndex:I

.field public blacklist smsAvailableMillis:J

.field public blacklist smsCapableMillis:J

.field public blacklist unregisteredMillis:J

.field public blacklist utAvailableMillis:J

.field public blacklist utCapableMillis:J

.field public blacklist videoAvailableMillis:J

.field public blacklist videoCapableMillis:J

.field public blacklist voiceAvailableMillis:J

.field public blacklist voiceCapableMillis:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5489
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5490
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 2

    .line 5427
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    if-nez v0, :cond_17

    .line 5428
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 5430
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 5431
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 5433
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 5435
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5742
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 5736
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 4

    const/4 v0, 0x0

    .line 5494
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    .line 5495
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    .line 5496
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    const-wide/16 v1, 0x0

    .line 5497
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    .line 5498
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    .line 5499
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    .line 5500
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    .line 5501
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    .line 5502
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    .line 5503
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    .line 5504
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    .line 5505
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    .line 5506
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeringMillis:J

    .line 5507
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->unregisteredMillis:J

    .line 5508
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->isIwlanCrossSim:Z

    .line 5509
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredTimes:I

    .line 5510
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    const/4 v0, 0x0

    .line 5511
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 5512
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 5575
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5576
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 5578
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5580
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 5582
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5584
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 5586
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5588
    :cond_22
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_30

    const/4 v5, 0x4

    .line 5590
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5592
    :cond_30
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3c

    const/4 v5, 0x5

    .line 5594
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5596
    :cond_3c
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_48

    const/4 v5, 0x6

    .line 5598
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5600
    :cond_48
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_54

    const/4 v5, 0x7

    .line 5602
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5604
    :cond_54
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_61

    const/16 v5, 0x8

    .line 5606
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5608
    :cond_61
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6e

    const/16 v5, 0x9

    .line 5610
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5612
    :cond_6e
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7b

    const/16 v5, 0xa

    .line 5614
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5616
    :cond_7b
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_88

    const/16 v5, 0xb

    .line 5618
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5620
    :cond_88
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_95

    const/16 v5, 0xc

    .line 5622
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5624
    :cond_95
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeringMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_a2

    const/16 v5, 0xd

    .line 5626
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5628
    :cond_a2
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->unregisteredMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_af

    const/16 v5, 0xe

    .line 5630
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5632
    :cond_af
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->isIwlanCrossSim:Z

    if-eqz v1, :cond_ba

    const/16 v2, 0xf

    .line 5634
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5636
    :cond_ba
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredTimes:I

    if-eqz v1, :cond_c5

    const/16 v2, 0x11

    .line 5638
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5640
    :cond_c5
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    cmp-long p0, v1, v3

    if-eqz p0, :cond_d2

    const/16 p0, 0x2711

    .line 5642
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_d2
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5652
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_88

    .line 5657
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_87

    .line 5727
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    goto :goto_0

    .line 5723
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredTimes:I

    goto :goto_0

    .line 5719
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->isIwlanCrossSim:Z

    goto :goto_0

    .line 5715
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->unregisteredMillis:J

    goto :goto_0

    .line 5711
    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeringMillis:J

    goto :goto_0

    .line 5707
    :sswitch_32
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    goto :goto_0

    .line 5703
    :sswitch_39
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    goto :goto_0

    .line 5699
    :sswitch_40
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    goto :goto_0

    .line 5695
    :sswitch_47
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    goto :goto_0

    .line 5691
    :sswitch_4e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    goto :goto_0

    .line 5687
    :sswitch_55
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    goto :goto_0

    .line 5683
    :sswitch_5c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    goto :goto_0

    .line 5679
    :sswitch_63
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    goto :goto_0

    .line 5675
    :sswitch_6a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    goto :goto_0

    .line 5671
    :sswitch_71
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    goto :goto_0

    .line 5667
    :sswitch_78
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    goto :goto_0

    .line 5663
    :sswitch_7f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    goto/16 :goto_0

    :goto_87
    :sswitch_87
    return-object p0

    :sswitch_data_88
    .sparse-switch
        0x0 -> :sswitch_87
        0x8 -> :sswitch_7f
        0x10 -> :sswitch_78
        0x18 -> :sswitch_71
        0x20 -> :sswitch_6a
        0x28 -> :sswitch_63
        0x30 -> :sswitch_5c
        0x38 -> :sswitch_55
        0x40 -> :sswitch_4e
        0x48 -> :sswitch_47
        0x50 -> :sswitch_40
        0x58 -> :sswitch_39
        0x60 -> :sswitch_32
        0x68 -> :sswitch_2b
        0x70 -> :sswitch_24
        0x78 -> :sswitch_1d
        0x88 -> :sswitch_16
        0x13888 -> :sswitch_f
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

    .line 5421
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5519
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 5520
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5522
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 5523
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5525
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 5526
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5528
    :cond_18
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_24

    const/4 v4, 0x4

    .line 5529
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5531
    :cond_24
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2e

    const/4 v4, 0x5

    .line 5532
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5534
    :cond_2e
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_38

    const/4 v4, 0x6

    .line 5535
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5537
    :cond_38
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_42

    const/4 v4, 0x7

    .line 5538
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5540
    :cond_42
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4d

    const/16 v4, 0x8

    .line 5541
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5543
    :cond_4d
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_58

    const/16 v4, 0x9

    .line 5544
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5546
    :cond_58
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_63

    const/16 v4, 0xa

    .line 5547
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5549
    :cond_63
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6e

    const/16 v4, 0xb

    .line 5550
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5552
    :cond_6e
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_79

    const/16 v4, 0xc

    .line 5553
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5555
    :cond_79
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeringMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_84

    const/16 v4, 0xd

    .line 5556
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5558
    :cond_84
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->unregisteredMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_8f

    const/16 v4, 0xe

    .line 5559
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5561
    :cond_8f
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->isIwlanCrossSim:Z

    if-eqz v0, :cond_98

    const/16 v1, 0xf

    .line 5562
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5564
    :cond_98
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredTimes:I

    if-eqz v0, :cond_a1

    const/16 v1, 0x11

    .line 5565
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5567
    :cond_a1
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_ac

    const/16 v2, 0x2711

    .line 5568
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5570
    :cond_ac
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
