.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;


# instance fields
.field public blacklist avgDurationOfSatelliteConnectionSec:I

.field public blacklist carrierId:I

.field public blacklist countOfIncomingMms:I

.field public blacklist countOfIncomingSms:I

.field public blacklist countOfOutgoingMms:I

.field public blacklist countOfOutgoingSms:I

.field public blacklist isMultiSim:Z

.field public blacklist isNbIotNtn:Z

.field public blacklist isNtnRoamingInHomeCountry:Z

.field public blacklist numberOfSatelliteConnections:I

.field public blacklist rsrpAvg:I

.field public blacklist rsrpMedian:I

.field public blacklist rssnrAvg:I

.field public blacklist rssnrMedian:I

.field public blacklist satelliteConnectionGapAvgSec:I

.field public blacklist satelliteConnectionGapMaxSec:I

.field public blacklist satelliteConnectionGapMinSec:I

.field public blacklist satelliteDataConsumedBytes:J

.field public blacklist serviceDataPolicy:I

.field public blacklist supportedSatelliteServices:[I

.field public blacklist totalSatelliteModeTimeSec:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10915
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10916
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;
    .registers 2

    .line 10841
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    if-nez v0, :cond_17

    .line 10842
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 10844
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 10845
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 10847
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 10849
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11260
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 11254
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;
    .registers 4

    const/4 v0, 0x0

    .line 10920
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->carrierId:I

    .line 10921
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNtnRoamingInHomeCountry:Z

    .line 10922
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->totalSatelliteModeTimeSec:I

    .line 10923
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->numberOfSatelliteConnections:I

    .line 10924
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->avgDurationOfSatelliteConnectionSec:I

    .line 10925
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMinSec:I

    .line 10926
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapAvgSec:I

    .line 10927
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMaxSec:I

    .line 10928
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpAvg:I

    .line 10929
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpMedian:I

    .line 10930
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrAvg:I

    .line 10931
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrMedian:I

    .line 10932
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingSms:I

    .line 10933
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingSms:I

    .line 10934
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingMms:I

    .line 10935
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingMms:I

    .line 10936
    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    .line 10937
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->serviceDataPolicy:I

    const-wide/16 v1, 0x0

    .line 10938
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteDataConsumedBytes:J

    .line 10939
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isMultiSim:Z

    .line 10940
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNbIotNtn:Z

    const/4 v0, 0x0

    .line 10941
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 10942
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 11019
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 11020
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 11022
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11024
    :cond_e
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNtnRoamingInHomeCountry:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_18

    .line 11026
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11028
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->totalSatelliteModeTimeSec:I

    if-eqz v1, :cond_22

    const/4 v3, 0x3

    .line 11030
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11032
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->numberOfSatelliteConnections:I

    if-eqz v1, :cond_2c

    const/4 v3, 0x4

    .line 11034
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11036
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->avgDurationOfSatelliteConnectionSec:I

    if-eqz v1, :cond_36

    const/4 v3, 0x5

    .line 11038
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11040
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMinSec:I

    if-eqz v1, :cond_40

    const/4 v3, 0x6

    .line 11042
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11044
    :cond_40
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapAvgSec:I

    if-eqz v1, :cond_4a

    const/4 v3, 0x7

    .line 11046
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11048
    :cond_4a
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMaxSec:I

    if-eqz v1, :cond_55

    const/16 v3, 0x8

    .line 11050
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11052
    :cond_55
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpAvg:I

    if-eqz v1, :cond_60

    const/16 v3, 0x9

    .line 11054
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11056
    :cond_60
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpMedian:I

    if-eqz v1, :cond_6b

    const/16 v3, 0xa

    .line 11058
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11060
    :cond_6b
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrAvg:I

    if-eqz v1, :cond_76

    const/16 v3, 0xb

    .line 11062
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11064
    :cond_76
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrMedian:I

    if-eqz v1, :cond_81

    const/16 v3, 0xc

    .line 11066
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11068
    :cond_81
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingSms:I

    if-eqz v1, :cond_8c

    const/16 v3, 0xd

    .line 11070
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11072
    :cond_8c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingSms:I

    if-eqz v1, :cond_97

    const/16 v3, 0xe

    .line 11074
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11076
    :cond_97
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingMms:I

    if-eqz v1, :cond_a2

    const/16 v3, 0xf

    .line 11078
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11080
    :cond_a2
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingMms:I

    if-eqz v1, :cond_ad

    const/16 v3, 0x10

    .line 11082
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11084
    :cond_ad
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    if-eqz v1, :cond_c9

    array-length v1, v1

    if-lez v1, :cond_c9

    const/4 v1, 0x0

    move v3, v1

    .line 11086
    :goto_b6
    iget-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    array-length v5, v4

    if-ge v1, v5, :cond_c5

    .line 11087
    aget v4, v4, v1

    .line 11089
    invoke-static {v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_b6

    :cond_c5
    add-int/2addr v0, v3

    .line 11092
    array-length v1, v4

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 11094
    :cond_c9
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->serviceDataPolicy:I

    if-eqz v1, :cond_d4

    const/16 v2, 0x12

    .line 11096
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11098
    :cond_d4
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteDataConsumedBytes:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_e3

    const/16 v3, 0x13

    .line 11100
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11102
    :cond_e3
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isMultiSim:Z

    if-eqz v1, :cond_ee

    const/16 v2, 0x14

    .line 11104
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11106
    :cond_ee
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNbIotNtn:Z

    if-eqz p0, :cond_f9

    const/16 v1, 0x15

    .line 11108
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_f9
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11118
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_118

    .line 11123
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_117

    .line 11245
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNbIotNtn:Z

    goto :goto_0

    .line 11241
    :sswitch_17
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isMultiSim:Z

    goto :goto_0

    .line 11237
    :sswitch_1e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteDataConsumedBytes:J

    goto :goto_0

    .line 11233
    :sswitch_25
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->serviceDataPolicy:I

    goto :goto_0

    .line 11210
    :sswitch_2c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 11211
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 11214
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 11215
    :goto_39
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_45

    .line 11216
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 11219
    :cond_45
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 11220
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    if-nez v2, :cond_4e

    move v4, v1

    goto :goto_4f

    :cond_4e
    array-length v4, v2

    :goto_4f
    add-int/2addr v3, v4

    .line 11221
    new-array v5, v3, [I

    if-eqz v4, :cond_57

    .line 11223
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_57
    :goto_57
    if-ge v4, v3, :cond_62

    .line 11226
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 11228
    :cond_62
    iput-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    .line 11229
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    :sswitch_68
    const/16 v0, 0x88

    .line 11194
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 11195
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    if-nez v2, :cond_74

    move v3, v1

    goto :goto_75

    :cond_74
    array-length v3, v2

    :goto_75
    add-int/2addr v0, v3

    .line 11196
    new-array v4, v0, [I

    if-eqz v3, :cond_7d

    .line 11198
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7d
    :goto_7d
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_8d

    .line 11201
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 11202
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    .line 11205
    :cond_8d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    aput v0, v4, v3

    .line 11206
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    goto/16 :goto_0

    .line 11189
    :sswitch_97
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingMms:I

    goto/16 :goto_0

    .line 11185
    :sswitch_9f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingMms:I

    goto/16 :goto_0

    .line 11181
    :sswitch_a7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingSms:I

    goto/16 :goto_0

    .line 11177
    :sswitch_af
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingSms:I

    goto/16 :goto_0

    .line 11173
    :sswitch_b7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrMedian:I

    goto/16 :goto_0

    .line 11169
    :sswitch_bf
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrAvg:I

    goto/16 :goto_0

    .line 11165
    :sswitch_c7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpMedian:I

    goto/16 :goto_0

    .line 11161
    :sswitch_cf
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpAvg:I

    goto/16 :goto_0

    .line 11157
    :sswitch_d7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMaxSec:I

    goto/16 :goto_0

    .line 11153
    :sswitch_df
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapAvgSec:I

    goto/16 :goto_0

    .line 11149
    :sswitch_e7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMinSec:I

    goto/16 :goto_0

    .line 11145
    :sswitch_ef
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->avgDurationOfSatelliteConnectionSec:I

    goto/16 :goto_0

    .line 11141
    :sswitch_f7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->numberOfSatelliteConnections:I

    goto/16 :goto_0

    .line 11137
    :sswitch_ff
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->totalSatelliteModeTimeSec:I

    goto/16 :goto_0

    .line 11133
    :sswitch_107
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNtnRoamingInHomeCountry:Z

    goto/16 :goto_0

    .line 11129
    :sswitch_10f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->carrierId:I

    goto/16 :goto_0

    :goto_117
    :sswitch_117
    return-object p0

    :sswitch_data_118
    .sparse-switch
        0x0 -> :sswitch_117
        0x8 -> :sswitch_10f
        0x10 -> :sswitch_107
        0x18 -> :sswitch_ff
        0x20 -> :sswitch_f7
        0x28 -> :sswitch_ef
        0x30 -> :sswitch_e7
        0x38 -> :sswitch_df
        0x40 -> :sswitch_d7
        0x48 -> :sswitch_cf
        0x50 -> :sswitch_c7
        0x58 -> :sswitch_bf
        0x60 -> :sswitch_b7
        0x68 -> :sswitch_af
        0x70 -> :sswitch_a7
        0x78 -> :sswitch_9f
        0x80 -> :sswitch_97
        0x88 -> :sswitch_68
        0x8a -> :sswitch_2c
        0x90 -> :sswitch_25
        0x98 -> :sswitch_1e
        0xa0 -> :sswitch_17
        0xa8 -> :sswitch_10
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

    .line 10835
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10949
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 10950
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10952
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNtnRoamingInHomeCountry:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 10953
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10955
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->totalSatelliteModeTimeSec:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 10956
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10958
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->numberOfSatelliteConnections:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 10959
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10961
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->avgDurationOfSatelliteConnectionSec:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 10962
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10964
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMinSec:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 10965
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10967
    :cond_30
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapAvgSec:I

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 10968
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10970
    :cond_38
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMaxSec:I

    if-eqz v0, :cond_41

    const/16 v1, 0x8

    .line 10971
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10973
    :cond_41
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpAvg:I

    if-eqz v0, :cond_4a

    const/16 v1, 0x9

    .line 10974
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10976
    :cond_4a
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpMedian:I

    if-eqz v0, :cond_53

    const/16 v1, 0xa

    .line 10977
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10979
    :cond_53
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrAvg:I

    if-eqz v0, :cond_5c

    const/16 v1, 0xb

    .line 10980
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10982
    :cond_5c
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrMedian:I

    if-eqz v0, :cond_65

    const/16 v1, 0xc

    .line 10983
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10985
    :cond_65
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingSms:I

    if-eqz v0, :cond_6e

    const/16 v1, 0xd

    .line 10986
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10988
    :cond_6e
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingSms:I

    if-eqz v0, :cond_77

    const/16 v1, 0xe

    .line 10989
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10991
    :cond_77
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingMms:I

    if-eqz v0, :cond_80

    const/16 v1, 0xf

    .line 10992
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10994
    :cond_80
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingMms:I

    if-eqz v0, :cond_89

    const/16 v1, 0x10

    .line 10995
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10997
    :cond_89
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    if-eqz v0, :cond_a0

    array-length v0, v0

    if-lez v0, :cond_a0

    const/4 v0, 0x0

    .line 10998
    :goto_91
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    array-length v2, v1

    if-ge v0, v2, :cond_a0

    const/16 v2, 0x11

    .line 10999
    aget v1, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 11002
    :cond_a0
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->serviceDataPolicy:I

    if-eqz v0, :cond_a9

    const/16 v1, 0x12

    .line 11003
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11005
    :cond_a9
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteDataConsumedBytes:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b6

    const/16 v2, 0x13

    .line 11006
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 11008
    :cond_b6
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isMultiSim:Z

    if-eqz v0, :cond_bf

    const/16 v1, 0x14

    .line 11009
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11011
    :cond_bf
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNbIotNtn:Z

    if-eqz v0, :cond_c8

    const/16 v1, 0x15

    .line 11012
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11014
    :cond_c8
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
