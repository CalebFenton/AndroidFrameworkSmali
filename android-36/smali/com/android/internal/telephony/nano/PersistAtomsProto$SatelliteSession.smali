.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;


# instance fields
.field public blacklist carrierId:I

.field public blacklist count:I

.field public blacklist countOfAutoExitDueToScreenOff:I

.field public blacklist countOfAutoExitDueToTnNetwork:I

.field public blacklist countOfIncomingDatagramFailed:I

.field public blacklist countOfIncomingDatagramSuccess:I

.field public blacklist countOfOutgoingDatagramFailed:I

.field public blacklist countOfOutgoingDatagramSuccess:I

.field public blacklist countOfSatelliteNotificationDisplayed:I

.field public blacklist initializationProcessingTimeMillis:J

.field public blacklist isDemoMode:Z

.field public blacklist isEmergency:Z

.field public blacklist isNtnOnlyCarrier:Z

.field public blacklist maxInactivityDurationSec:I

.field public blacklist maxNtnSignalStrengthLevel:I

.field public blacklist satelliteServiceInitializationResult:I

.field public blacklist satelliteServiceTerminationResult:I

.field public blacklist satelliteTechnology:I

.field public blacklist sessionDurationSeconds:I

.field public blacklist terminationProcessingTimeMillis:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9637
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9638
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;
    .registers 2

    .line 9566
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    if-nez v0, :cond_17

    .line 9567
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 9569
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 9570
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 9572
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 9574
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9926
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 9920
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;
    .registers 4

    const/4 v0, 0x0

    .line 9642
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceInitializationResult:I

    .line 9643
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteTechnology:I

    .line 9644
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->count:I

    .line 9645
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceTerminationResult:I

    const-wide/16 v1, 0x0

    .line 9646
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->initializationProcessingTimeMillis:J

    .line 9647
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->terminationProcessingTimeMillis:J

    .line 9648
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->sessionDurationSeconds:I

    .line 9649
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramSuccess:I

    .line 9650
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramFailed:I

    .line 9651
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramSuccess:I

    .line 9652
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramFailed:I

    .line 9653
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isDemoMode:Z

    .line 9654
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxNtnSignalStrengthLevel:I

    .line 9655
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->carrierId:I

    .line 9656
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfSatelliteNotificationDisplayed:I

    .line 9657
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToScreenOff:I

    .line 9658
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToTnNetwork:I

    .line 9659
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isEmergency:Z

    .line 9660
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isNtnOnlyCarrier:Z

    .line 9661
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxInactivityDurationSec:I

    const/4 v0, 0x0

    .line 9662
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 9663
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 9735
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9736
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceInitializationResult:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 9738
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9740
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteTechnology:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 9742
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9744
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->count:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 9746
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9748
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceTerminationResult:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 9750
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9752
    :cond_2c
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->initializationProcessingTimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3a

    const/4 v5, 0x5

    .line 9754
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9756
    :cond_3a
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->terminationProcessingTimeMillis:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_46

    const/4 v3, 0x6

    .line 9758
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9760
    :cond_46
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->sessionDurationSeconds:I

    if-eqz v1, :cond_50

    const/4 v2, 0x7

    .line 9762
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9764
    :cond_50
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramSuccess:I

    if-eqz v1, :cond_5b

    const/16 v2, 0x8

    .line 9766
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9768
    :cond_5b
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramFailed:I

    if-eqz v1, :cond_66

    const/16 v2, 0x9

    .line 9770
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9772
    :cond_66
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramSuccess:I

    if-eqz v1, :cond_71

    const/16 v2, 0xa

    .line 9774
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9776
    :cond_71
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramFailed:I

    if-eqz v1, :cond_7c

    const/16 v2, 0xb

    .line 9778
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9780
    :cond_7c
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isDemoMode:Z

    if-eqz v1, :cond_87

    const/16 v2, 0xc

    .line 9782
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9784
    :cond_87
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxNtnSignalStrengthLevel:I

    if-eqz v1, :cond_92

    const/16 v2, 0xd

    .line 9786
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9788
    :cond_92
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->carrierId:I

    if-eqz v1, :cond_9d

    const/16 v2, 0xe

    .line 9790
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9792
    :cond_9d
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfSatelliteNotificationDisplayed:I

    if-eqz v1, :cond_a8

    const/16 v2, 0xf

    .line 9794
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9796
    :cond_a8
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToScreenOff:I

    if-eqz v1, :cond_b3

    const/16 v2, 0x10

    .line 9798
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9800
    :cond_b3
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToTnNetwork:I

    if-eqz v1, :cond_be

    const/16 v2, 0x11

    .line 9802
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9804
    :cond_be
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isEmergency:Z

    if-eqz v1, :cond_c9

    const/16 v2, 0x12

    .line 9806
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9808
    :cond_c9
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isNtnOnlyCarrier:Z

    if-eqz v1, :cond_d4

    const/16 v2, 0x13

    .line 9810
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9812
    :cond_d4
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxInactivityDurationSec:I

    if-eqz p0, :cond_df

    const/16 v1, 0x14

    .line 9814
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_df
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9824
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_a0

    .line 9829
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9f

    .line 9911
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxInactivityDurationSec:I

    goto :goto_0

    .line 9907
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isNtnOnlyCarrier:Z

    goto :goto_0

    .line 9903
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isEmergency:Z

    goto :goto_0

    .line 9899
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToTnNetwork:I

    goto :goto_0

    .line 9895
    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToScreenOff:I

    goto :goto_0

    .line 9891
    :sswitch_32
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfSatelliteNotificationDisplayed:I

    goto :goto_0

    .line 9887
    :sswitch_39
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->carrierId:I

    goto :goto_0

    .line 9883
    :sswitch_40
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxNtnSignalStrengthLevel:I

    goto :goto_0

    .line 9879
    :sswitch_47
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isDemoMode:Z

    goto :goto_0

    .line 9875
    :sswitch_4e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramFailed:I

    goto :goto_0

    .line 9871
    :sswitch_55
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramSuccess:I

    goto :goto_0

    .line 9867
    :sswitch_5c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramFailed:I

    goto :goto_0

    .line 9863
    :sswitch_63
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramSuccess:I

    goto :goto_0

    .line 9859
    :sswitch_6a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->sessionDurationSeconds:I

    goto :goto_0

    .line 9855
    :sswitch_71
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->terminationProcessingTimeMillis:J

    goto :goto_0

    .line 9851
    :sswitch_78
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->initializationProcessingTimeMillis:J

    goto :goto_0

    .line 9847
    :sswitch_7f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceTerminationResult:I

    goto/16 :goto_0

    .line 9843
    :sswitch_87
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->count:I

    goto/16 :goto_0

    .line 9839
    :sswitch_8f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteTechnology:I

    goto/16 :goto_0

    .line 9835
    :sswitch_97
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceInitializationResult:I

    goto/16 :goto_0

    :goto_9f
    :sswitch_9f
    return-object p0

    :sswitch_data_a0
    .sparse-switch
        0x0 -> :sswitch_9f
        0x8 -> :sswitch_97
        0x10 -> :sswitch_8f
        0x18 -> :sswitch_87
        0x20 -> :sswitch_7f
        0x28 -> :sswitch_78
        0x30 -> :sswitch_71
        0x38 -> :sswitch_6a
        0x40 -> :sswitch_63
        0x48 -> :sswitch_5c
        0x50 -> :sswitch_55
        0x58 -> :sswitch_4e
        0x60 -> :sswitch_47
        0x68 -> :sswitch_40
        0x70 -> :sswitch_39
        0x78 -> :sswitch_32
        0x80 -> :sswitch_2b
        0x88 -> :sswitch_24
        0x90 -> :sswitch_1d
        0x98 -> :sswitch_16
        0xa0 -> :sswitch_f
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

    .line 9560
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

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

    .line 9670
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceInitializationResult:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 9671
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9673
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteTechnology:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 9674
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9676
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->count:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 9677
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9679
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceTerminationResult:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 9680
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9682
    :cond_20
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->initializationProcessingTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2c

    const/4 v4, 0x5

    .line 9683
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 9685
    :cond_2c
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->terminationProcessingTimeMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_36

    const/4 v2, 0x6

    .line 9686
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 9688
    :cond_36
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->sessionDurationSeconds:I

    if-eqz v0, :cond_3e

    const/4 v1, 0x7

    .line 9689
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9691
    :cond_3e
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramSuccess:I

    if-eqz v0, :cond_47

    const/16 v1, 0x8

    .line 9692
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9694
    :cond_47
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramFailed:I

    if-eqz v0, :cond_50

    const/16 v1, 0x9

    .line 9695
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9697
    :cond_50
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramSuccess:I

    if-eqz v0, :cond_59

    const/16 v1, 0xa

    .line 9698
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9700
    :cond_59
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramFailed:I

    if-eqz v0, :cond_62

    const/16 v1, 0xb

    .line 9701
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9703
    :cond_62
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isDemoMode:Z

    if-eqz v0, :cond_6b

    const/16 v1, 0xc

    .line 9704
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9706
    :cond_6b
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxNtnSignalStrengthLevel:I

    if-eqz v0, :cond_74

    const/16 v1, 0xd

    .line 9707
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9709
    :cond_74
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->carrierId:I

    if-eqz v0, :cond_7d

    const/16 v1, 0xe

    .line 9710
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9712
    :cond_7d
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfSatelliteNotificationDisplayed:I

    if-eqz v0, :cond_86

    const/16 v1, 0xf

    .line 9713
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9715
    :cond_86
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToScreenOff:I

    if-eqz v0, :cond_8f

    const/16 v1, 0x10

    .line 9716
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9718
    :cond_8f
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToTnNetwork:I

    if-eqz v0, :cond_98

    const/16 v1, 0x11

    .line 9719
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9721
    :cond_98
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isEmergency:Z

    if-eqz v0, :cond_a1

    const/16 v1, 0x12

    .line 9722
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9724
    :cond_a1
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isNtnOnlyCarrier:Z

    if-eqz v0, :cond_aa

    const/16 v1, 0x13

    .line 9725
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9727
    :cond_aa
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxInactivityDurationSec:I

    if-eqz v0, :cond_b3

    const/16 v1, 0x14

    .line 9728
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9730
    :cond_b3
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
