.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;


# instance fields
.field public blacklist carrierId:I

.field public blacklist configDataSource:I

.field public blacklist countOfEntitlementStatusQueryRequest:I

.field public blacklist countOfSatelliteConfigUpdateRequest:I

.field public blacklist countOfSatelliteNotificationDisplayed:I

.field public blacklist countOfSatelliteSessions:I

.field public blacklist isDeviceEntitled:Z

.field public blacklist isMultiSim:Z

.field public blacklist isNbIotNtn:Z

.field public blacklist satelliteSessionGapAvgSec:I

.field public blacklist satelliteSessionGapMaxSec:I

.field public blacklist satelliteSessionGapMinSec:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11317
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11318
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;
    .registers 2

    .line 11270
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    if-nez v0, :cond_17

    .line 11271
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 11273
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 11274
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 11276
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 11278
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11510
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 11504
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;
    .registers 2

    const/4 v0, 0x0

    .line 11322
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->configDataSource:I

    .line 11323
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfEntitlementStatusQueryRequest:I

    .line 11324
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteConfigUpdateRequest:I

    .line 11325
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteNotificationDisplayed:I

    .line 11326
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMinSec:I

    .line 11327
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapAvgSec:I

    .line 11328
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMaxSec:I

    .line 11329
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->carrierId:I

    .line 11330
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isDeviceEntitled:Z

    .line 11331
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isMultiSim:Z

    .line 11332
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteSessions:I

    .line 11333
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isNbIotNtn:Z

    const/4 v0, 0x0

    .line 11334
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 11335
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 11383
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 11384
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->configDataSource:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 11386
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11388
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfEntitlementStatusQueryRequest:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 11390
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11392
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteConfigUpdateRequest:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 11394
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11396
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteNotificationDisplayed:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 11398
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11400
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMinSec:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 11402
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11404
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapAvgSec:I

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 11406
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11408
    :cond_40
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMaxSec:I

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 11410
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11412
    :cond_4a
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->carrierId:I

    if-eqz v1, :cond_55

    const/16 v2, 0x8

    .line 11414
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11416
    :cond_55
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isDeviceEntitled:Z

    if-eqz v1, :cond_60

    const/16 v2, 0x9

    .line 11418
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11420
    :cond_60
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isMultiSim:Z

    if-eqz v1, :cond_6b

    const/16 v2, 0xa

    .line 11422
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11424
    :cond_6b
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteSessions:I

    if-eqz v1, :cond_76

    const/16 v2, 0xb

    .line 11426
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11428
    :cond_76
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isNbIotNtn:Z

    if-eqz p0, :cond_81

    const/16 v1, 0xc

    .line 11430
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_81
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11440
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_64

    .line 11445
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_62

    .line 11495
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isNbIotNtn:Z

    goto :goto_0

    .line 11491
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteSessions:I

    goto :goto_0

    .line 11487
    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isMultiSim:Z

    goto :goto_0

    .line 11483
    :sswitch_23
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isDeviceEntitled:Z

    goto :goto_0

    .line 11479
    :sswitch_2a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->carrierId:I

    goto :goto_0

    .line 11475
    :sswitch_31
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMaxSec:I

    goto :goto_0

    .line 11471
    :sswitch_38
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapAvgSec:I

    goto :goto_0

    .line 11467
    :sswitch_3f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMinSec:I

    goto :goto_0

    .line 11463
    :sswitch_46
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteNotificationDisplayed:I

    goto :goto_0

    .line 11459
    :sswitch_4d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteConfigUpdateRequest:I

    goto :goto_0

    .line 11455
    :sswitch_54
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfEntitlementStatusQueryRequest:I

    goto :goto_0

    .line 11451
    :sswitch_5b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->configDataSource:I

    goto :goto_0

    :goto_62
    :sswitch_62
    return-object p0

    nop

    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_62
        0x8 -> :sswitch_5b
        0x10 -> :sswitch_54
        0x18 -> :sswitch_4d
        0x20 -> :sswitch_46
        0x28 -> :sswitch_3f
        0x30 -> :sswitch_38
        0x38 -> :sswitch_31
        0x40 -> :sswitch_2a
        0x48 -> :sswitch_23
        0x50 -> :sswitch_1c
        0x58 -> :sswitch_15
        0x60 -> :sswitch_e
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

    .line 11264
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

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

    .line 11342
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->configDataSource:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 11343
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11345
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfEntitlementStatusQueryRequest:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 11346
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11348
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteConfigUpdateRequest:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 11349
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11351
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteNotificationDisplayed:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 11352
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11354
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMinSec:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 11355
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11357
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapAvgSec:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 11358
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11360
    :cond_30
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMaxSec:I

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 11361
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11363
    :cond_38
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->carrierId:I

    if-eqz v0, :cond_41

    const/16 v1, 0x8

    .line 11364
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11366
    :cond_41
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isDeviceEntitled:Z

    if-eqz v0, :cond_4a

    const/16 v1, 0x9

    .line 11367
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11369
    :cond_4a
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isMultiSim:Z

    if-eqz v0, :cond_53

    const/16 v1, 0xa

    .line 11370
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11372
    :cond_53
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteSessions:I

    if-eqz v0, :cond_5c

    const/16 v1, 0xb

    .line 11373
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11375
    :cond_5c
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isNbIotNtn:Z

    if-eqz v0, :cond_65

    const/16 v1, 0xc

    .line 11376
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11378
    :cond_65
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
