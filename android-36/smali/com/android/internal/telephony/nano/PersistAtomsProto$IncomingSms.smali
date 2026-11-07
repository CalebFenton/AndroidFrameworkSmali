.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;


# instance fields
.field public blacklist blocked:Z

.field public blacklist carrierId:I

.field public blacklist count:I

.field public blacklist error:I

.field public blacklist hashCode:I

.field public blacklist isEmergency:Z

.field public blacklist isEsim:Z

.field public blacklist isManagedProfile:Z

.field public blacklist isMultiSim:Z

.field public blacklist isNbIotNtn:Z

.field public blacklist isNtn:Z

.field public blacklist isRoaming:Z

.field public blacklist messageId:J

.field public blacklist rat:I

.field public blacklist receivedParts:I

.field public blacklist simSlotIndex:I

.field public blacklist smsFormat:I

.field public blacklist smsTech:I

.field public blacklist smsType:I

.field public blacklist totalParts:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3270
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3271
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .registers 2

    .line 3199
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    if-nez v0, :cond_17

    .line 3200
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3202
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 3203
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 3205
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 3207
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3559
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3553
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .registers 4

    const/4 v0, 0x0

    .line 3275
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

    .line 3276
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    .line 3277
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    .line 3278
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    .line 3279
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    .line 3280
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    .line 3281
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    .line 3282
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 3283
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    .line 3284
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    .line 3285
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    .line 3286
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    .line 3287
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    const-wide/16 v1, 0x0

    .line 3288
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    .line 3289
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    .line 3290
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isManagedProfile:Z

    .line 3291
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNtn:Z

    .line 3292
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEmergency:Z

    .line 3293
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNbIotNtn:Z

    .line 3294
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->hashCode:I

    const/4 v0, 0x0

    .line 3295
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 3296
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 3368
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3369
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 3371
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3373
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 3375
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3377
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 3379
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3381
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 3383
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3385
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 3387
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3389
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 3391
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3393
    :cond_40
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 3395
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3397
    :cond_4a
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    if-eqz v1, :cond_55

    const/16 v2, 0x8

    .line 3399
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3401
    :cond_55
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    if-eqz v1, :cond_60

    const/16 v2, 0x9

    .line 3403
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3405
    :cond_60
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    if-eqz v1, :cond_6b

    const/16 v2, 0xa

    .line 3407
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3409
    :cond_6b
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    if-eqz v1, :cond_76

    const/16 v2, 0xb

    .line 3411
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3413
    :cond_76
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    if-eqz v1, :cond_81

    const/16 v2, 0xc

    .line 3415
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3417
    :cond_81
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    if-eqz v1, :cond_8c

    const/16 v2, 0xd

    .line 3419
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3421
    :cond_8c
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_9b

    const/16 v3, 0xe

    .line 3423
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3425
    :cond_9b
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    if-eqz v1, :cond_a6

    const/16 v2, 0xf

    .line 3427
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3429
    :cond_a6
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isManagedProfile:Z

    if-eqz v1, :cond_b1

    const/16 v2, 0x10

    .line 3431
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3433
    :cond_b1
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNtn:Z

    if-eqz v1, :cond_bc

    const/16 v2, 0x11

    .line 3435
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3437
    :cond_bc
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEmergency:Z

    if-eqz v1, :cond_c7

    const/16 v2, 0x12

    .line 3439
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3441
    :cond_c7
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNbIotNtn:Z

    if-eqz v1, :cond_d2

    const/16 v2, 0x13

    .line 3443
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3445
    :cond_d2
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->hashCode:I

    if-eqz p0, :cond_dd

    const/16 v1, 0x2711

    .line 3447
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_dd
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3457
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_a0

    .line 3462
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9f

    .line 3544
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->hashCode:I

    goto :goto_0

    .line 3540
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNbIotNtn:Z

    goto :goto_0

    .line 3536
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEmergency:Z

    goto :goto_0

    .line 3532
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNtn:Z

    goto :goto_0

    .line 3528
    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isManagedProfile:Z

    goto :goto_0

    .line 3524
    :sswitch_32
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    goto :goto_0

    .line 3520
    :sswitch_39
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    goto :goto_0

    .line 3516
    :sswitch_40
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    goto :goto_0

    .line 3512
    :sswitch_47
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    goto :goto_0

    .line 3508
    :sswitch_4e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    goto :goto_0

    .line 3504
    :sswitch_55
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    goto :goto_0

    .line 3500
    :sswitch_5c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    goto :goto_0

    .line 3496
    :sswitch_63
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    goto :goto_0

    .line 3492
    :sswitch_6a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    goto :goto_0

    .line 3488
    :sswitch_71
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    goto :goto_0

    .line 3484
    :sswitch_78
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    goto :goto_0

    .line 3480
    :sswitch_7f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    goto/16 :goto_0

    .line 3476
    :sswitch_87
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    goto/16 :goto_0

    .line 3472
    :sswitch_8f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    goto/16 :goto_0

    .line 3468
    :sswitch_97
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

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

    .line 3193
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

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

    .line 3303
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 3304
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3306
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 3307
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3309
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 3310
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3312
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 3313
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3315
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 3316
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3318
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 3319
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3321
    :cond_30
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 3322
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3324
    :cond_38
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    if-eqz v0, :cond_41

    const/16 v1, 0x8

    .line 3325
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3327
    :cond_41
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    if-eqz v0, :cond_4a

    const/16 v1, 0x9

    .line 3328
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3330
    :cond_4a
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    if-eqz v0, :cond_53

    const/16 v1, 0xa

    .line 3331
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3333
    :cond_53
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    if-eqz v0, :cond_5c

    const/16 v1, 0xb

    .line 3334
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3336
    :cond_5c
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    if-eqz v0, :cond_65

    const/16 v1, 0xc

    .line 3337
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3339
    :cond_65
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    if-eqz v0, :cond_6e

    const/16 v1, 0xd

    .line 3340
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3342
    :cond_6e
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_7b

    const/16 v2, 0xe

    .line 3343
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3345
    :cond_7b
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    if-eqz v0, :cond_84

    const/16 v1, 0xf

    .line 3346
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3348
    :cond_84
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isManagedProfile:Z

    if-eqz v0, :cond_8d

    const/16 v1, 0x10

    .line 3349
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3351
    :cond_8d
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNtn:Z

    if-eqz v0, :cond_96

    const/16 v1, 0x11

    .line 3352
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3354
    :cond_96
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEmergency:Z

    if-eqz v0, :cond_9f

    const/16 v1, 0x12

    .line 3355
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3357
    :cond_9f
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNbIotNtn:Z

    if-eqz v0, :cond_a8

    const/16 v1, 0x13

    .line 3358
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3360
    :cond_a8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->hashCode:I

    if-eqz v0, :cond_b1

    const/16 v1, 0x2711

    .line 3361
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3363
    :cond_b1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
