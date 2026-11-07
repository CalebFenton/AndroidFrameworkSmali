.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;


# instance fields
.field public blacklist apnTypeBitmask:I

.field public blacklist bandAtEnd:I

.field public blacklist carrierId:I

.field public blacklist deactivateReason:I

.field public blacklist dimension:I

.field public blacklist durationMinutes:J

.field public blacklist failureCause:I

.field public blacklist handoverFailureCauses:[I

.field public blacklist handoverFailureRat:[I

.field public blacklist ipType:I

.field public blacklist isEsim:Z

.field public blacklist isIwlanCrossSim:Z

.field public blacklist isMultiSim:Z

.field public blacklist isNbIotNtn:Z

.field public blacklist isNonDds:Z

.field public blacklist isNtn:Z

.field public blacklist isOpportunistic:Z

.field public blacklist isProvisioningProfile:Z

.field public blacklist isRoaming:Z

.field public blacklist isSatelliteTransport:Z

.field public blacklist ongoing:Z

.field public blacklist oosAtEnd:Z

.field public blacklist ratAtEnd:I

.field public blacklist ratSwitchCount:J

.field public blacklist setupFailed:Z

.field public blacklist suggestedRetryMillis:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4203
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4204
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;
    .registers 2

    .line 4114
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    if-nez v0, :cond_17

    .line 4115
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4117
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 4118
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 4120
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 4122
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4652
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4646
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;
    .registers 4

    const/4 v0, 0x0

    .line 4208
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    .line 4209
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isMultiSim:Z

    .line 4210
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isEsim:Z

    .line 4211
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->apnTypeBitmask:I

    .line 4212
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->carrierId:I

    .line 4213
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isRoaming:Z

    .line 4214
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratAtEnd:I

    .line 4215
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->oosAtEnd:Z

    const-wide/16 v1, 0x0

    .line 4216
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    .line 4217
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isOpportunistic:Z

    .line 4218
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ipType:I

    .line 4219
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->setupFailed:Z

    .line 4220
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->failureCause:I

    .line 4221
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->suggestedRetryMillis:I

    .line 4222
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->deactivateReason:I

    .line 4223
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    .line 4224
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ongoing:Z

    .line 4225
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->bandAtEnd:I

    .line 4226
    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    .line 4227
    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    .line 4228
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNonDds:Z

    .line 4229
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isIwlanCrossSim:Z

    .line 4230
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNtn:Z

    .line 4231
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isSatelliteTransport:Z

    .line 4232
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isProvisioningProfile:Z

    .line 4233
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNbIotNtn:Z

    const/4 v0, 0x0

    .line 4234
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4235
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 8

    .line 4329
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4330
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 4332
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4334
    :cond_e
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isMultiSim:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_18

    .line 4336
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4338
    :cond_18
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isEsim:Z

    if-eqz v1, :cond_22

    const/4 v3, 0x3

    .line 4340
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4342
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->apnTypeBitmask:I

    if-eqz v1, :cond_2c

    const/4 v3, 0x5

    .line 4344
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4346
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->carrierId:I

    if-eqz v1, :cond_36

    const/4 v3, 0x6

    .line 4348
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4350
    :cond_36
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isRoaming:Z

    if-eqz v1, :cond_40

    const/4 v3, 0x7

    .line 4352
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4354
    :cond_40
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratAtEnd:I

    if-eqz v1, :cond_4b

    const/16 v3, 0x8

    .line 4356
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4358
    :cond_4b
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->oosAtEnd:Z

    if-eqz v1, :cond_56

    const/16 v3, 0x9

    .line 4360
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4362
    :cond_56
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_65

    const/16 v1, 0xa

    .line 4364
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4366
    :cond_65
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isOpportunistic:Z

    if-eqz v1, :cond_70

    const/16 v3, 0xb

    .line 4368
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4370
    :cond_70
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ipType:I

    if-eqz v1, :cond_7b

    const/16 v3, 0xc

    .line 4372
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4374
    :cond_7b
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->setupFailed:Z

    if-eqz v1, :cond_86

    const/16 v3, 0xd

    .line 4376
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4378
    :cond_86
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->failureCause:I

    if-eqz v1, :cond_91

    const/16 v3, 0xe

    .line 4380
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4382
    :cond_91
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->suggestedRetryMillis:I

    if-eqz v1, :cond_9c

    const/16 v3, 0xf

    .line 4384
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4386
    :cond_9c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->deactivateReason:I

    if-eqz v1, :cond_a7

    const/16 v3, 0x10

    .line 4388
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4390
    :cond_a7
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b4

    const/16 v1, 0x11

    .line 4392
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4394
    :cond_b4
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ongoing:Z

    if-eqz v1, :cond_bf

    const/16 v3, 0x12

    .line 4396
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4398
    :cond_bf
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->bandAtEnd:I

    if-eqz v1, :cond_ca

    const/16 v3, 0x13

    .line 4400
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4402
    :cond_ca
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_e7

    array-length v1, v1

    if-lez v1, :cond_e7

    move v1, v3

    move v4, v1

    .line 4404
    :goto_d4
    iget-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    array-length v6, v5

    if-ge v1, v6, :cond_e3

    .line 4405
    aget v5, v5, v1

    .line 4407
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_d4

    :cond_e3
    add-int/2addr v0, v4

    .line 4410
    array-length v1, v5

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 4412
    :cond_e7
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    if-eqz v1, :cond_102

    array-length v1, v1

    if-lez v1, :cond_102

    move v1, v3

    .line 4414
    :goto_ef
    iget-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    array-length v5, v4

    if-ge v3, v5, :cond_fe

    .line 4415
    aget v4, v4, v3

    .line 4417
    invoke-static {v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_ef

    :cond_fe
    add-int/2addr v0, v1

    .line 4420
    array-length v1, v4

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 4422
    :cond_102
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNonDds:Z

    if-eqz v1, :cond_10d

    const/16 v2, 0x16

    .line 4424
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4426
    :cond_10d
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isIwlanCrossSim:Z

    if-eqz v1, :cond_118

    const/16 v2, 0x17

    .line 4428
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4430
    :cond_118
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNtn:Z

    if-eqz v1, :cond_123

    const/16 v2, 0x18

    .line 4432
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4434
    :cond_123
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isSatelliteTransport:Z

    if-eqz v1, :cond_12e

    const/16 v2, 0x19

    .line 4436
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4438
    :cond_12e
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isProvisioningProfile:Z

    if-eqz v1, :cond_139

    const/16 v2, 0x1a

    .line 4440
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4442
    :cond_139
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNbIotNtn:Z

    if-eqz p0, :cond_144

    const/16 v1, 0x1b

    .line 4444
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_144
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4454
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_1a2

    .line 4459
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1a1

    .line 4637
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNbIotNtn:Z

    goto :goto_0

    .line 4633
    :sswitch_17
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isProvisioningProfile:Z

    goto :goto_0

    .line 4629
    :sswitch_1e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isSatelliteTransport:Z

    goto :goto_0

    .line 4625
    :sswitch_25
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNtn:Z

    goto :goto_0

    .line 4621
    :sswitch_2c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isIwlanCrossSim:Z

    goto :goto_0

    .line 4617
    :sswitch_33
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNonDds:Z

    goto :goto_0

    .line 4594
    :sswitch_3a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 4595
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 4598
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 4599
    :goto_47
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_53

    .line 4600
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 4603
    :cond_53
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4604
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    if-nez v2, :cond_5c

    move v4, v1

    goto :goto_5d

    :cond_5c
    array-length v4, v2

    :goto_5d
    add-int/2addr v3, v4

    .line 4605
    new-array v5, v3, [I

    if-eqz v4, :cond_65

    .line 4607
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_65
    :goto_65
    if-ge v4, v3, :cond_70

    .line 4610
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 4612
    :cond_70
    iput-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    .line 4613
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    :sswitch_76
    const/16 v0, 0xa8

    .line 4578
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4579
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    if-nez v2, :cond_82

    move v3, v1

    goto :goto_83

    :cond_82
    array-length v3, v2

    :goto_83
    add-int/2addr v0, v3

    .line 4580
    new-array v4, v0, [I

    if-eqz v3, :cond_8b

    .line 4582
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8b
    :goto_8b
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_9b

    .line 4585
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 4586
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 4589
    :cond_9b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    aput v0, v4, v3

    .line 4590
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    goto/16 :goto_0

    .line 4554
    :sswitch_a5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 4555
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 4558
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 4559
    :goto_b2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_be

    .line 4560
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_b2

    .line 4563
    :cond_be
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4564
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    if-nez v2, :cond_c7

    move v4, v1

    goto :goto_c8

    :cond_c7
    array-length v4, v2

    :goto_c8
    add-int/2addr v3, v4

    .line 4565
    new-array v5, v3, [I

    if-eqz v4, :cond_d0

    .line 4567
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d0
    :goto_d0
    if-ge v4, v3, :cond_db

    .line 4570
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d0

    .line 4572
    :cond_db
    iput-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    .line 4573
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_e2
    const/16 v0, 0xa0

    .line 4538
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4539
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    if-nez v2, :cond_ee

    move v3, v1

    goto :goto_ef

    :cond_ee
    array-length v3, v2

    :goto_ef
    add-int/2addr v0, v3

    .line 4540
    new-array v4, v0, [I

    if-eqz v3, :cond_f7

    .line 4542
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f7
    :goto_f7
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_107

    .line 4545
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 4546
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_f7

    .line 4549
    :cond_107
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    aput v0, v4, v3

    .line 4550
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    goto/16 :goto_0

    .line 4533
    :sswitch_111
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->bandAtEnd:I

    goto/16 :goto_0

    .line 4529
    :sswitch_119
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ongoing:Z

    goto/16 :goto_0

    .line 4525
    :sswitch_121
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    goto/16 :goto_0

    .line 4521
    :sswitch_129
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->deactivateReason:I

    goto/16 :goto_0

    .line 4517
    :sswitch_131
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->suggestedRetryMillis:I

    goto/16 :goto_0

    .line 4513
    :sswitch_139
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->failureCause:I

    goto/16 :goto_0

    .line 4509
    :sswitch_141
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->setupFailed:Z

    goto/16 :goto_0

    .line 4505
    :sswitch_149
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ipType:I

    goto/16 :goto_0

    .line 4501
    :sswitch_151
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isOpportunistic:Z

    goto/16 :goto_0

    .line 4497
    :sswitch_159
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    goto/16 :goto_0

    .line 4493
    :sswitch_161
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->oosAtEnd:Z

    goto/16 :goto_0

    .line 4489
    :sswitch_169
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratAtEnd:I

    goto/16 :goto_0

    .line 4485
    :sswitch_171
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isRoaming:Z

    goto/16 :goto_0

    .line 4481
    :sswitch_179
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->carrierId:I

    goto/16 :goto_0

    .line 4477
    :sswitch_181
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->apnTypeBitmask:I

    goto/16 :goto_0

    .line 4473
    :sswitch_189
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isEsim:Z

    goto/16 :goto_0

    .line 4469
    :sswitch_191
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isMultiSim:Z

    goto/16 :goto_0

    .line 4465
    :sswitch_199
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    goto/16 :goto_0

    :goto_1a1
    :sswitch_1a1
    return-object p0

    :sswitch_data_1a2
    .sparse-switch
        0x0 -> :sswitch_1a1
        0x8 -> :sswitch_199
        0x10 -> :sswitch_191
        0x18 -> :sswitch_189
        0x28 -> :sswitch_181
        0x30 -> :sswitch_179
        0x38 -> :sswitch_171
        0x40 -> :sswitch_169
        0x48 -> :sswitch_161
        0x50 -> :sswitch_159
        0x58 -> :sswitch_151
        0x60 -> :sswitch_149
        0x68 -> :sswitch_141
        0x70 -> :sswitch_139
        0x78 -> :sswitch_131
        0x80 -> :sswitch_129
        0x88 -> :sswitch_121
        0x90 -> :sswitch_119
        0x98 -> :sswitch_111
        0xa0 -> :sswitch_e2
        0xa2 -> :sswitch_a5
        0xa8 -> :sswitch_76
        0xaa -> :sswitch_3a
        0xb0 -> :sswitch_33
        0xb8 -> :sswitch_2c
        0xc0 -> :sswitch_25
        0xc8 -> :sswitch_1e
        0xd0 -> :sswitch_17
        0xd8 -> :sswitch_10
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

    .line 4108
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

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

    .line 4242
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 4243
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4245
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isMultiSim:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 4246
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4248
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isEsim:Z

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 4249
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4251
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->apnTypeBitmask:I

    if-eqz v0, :cond_20

    const/4 v1, 0x5

    .line 4252
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4254
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->carrierId:I

    if-eqz v0, :cond_28

    const/4 v1, 0x6

    .line 4255
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4257
    :cond_28
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isRoaming:Z

    if-eqz v0, :cond_30

    const/4 v1, 0x7

    .line 4258
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4260
    :cond_30
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratAtEnd:I

    if-eqz v0, :cond_39

    const/16 v1, 0x8

    .line 4261
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4263
    :cond_39
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->oosAtEnd:Z

    if-eqz v0, :cond_42

    const/16 v1, 0x9

    .line 4264
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4266
    :cond_42
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4f

    const/16 v4, 0xa

    .line 4267
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4269
    :cond_4f
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isOpportunistic:Z

    if-eqz v0, :cond_58

    const/16 v1, 0xb

    .line 4270
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4272
    :cond_58
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ipType:I

    if-eqz v0, :cond_61

    const/16 v1, 0xc

    .line 4273
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4275
    :cond_61
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->setupFailed:Z

    if-eqz v0, :cond_6a

    const/16 v1, 0xd

    .line 4276
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4278
    :cond_6a
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->failureCause:I

    if-eqz v0, :cond_73

    const/16 v1, 0xe

    .line 4279
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4281
    :cond_73
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->suggestedRetryMillis:I

    if-eqz v0, :cond_7c

    const/16 v1, 0xf

    .line 4282
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4284
    :cond_7c
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->deactivateReason:I

    if-eqz v0, :cond_85

    const/16 v1, 0x10

    .line 4285
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4287
    :cond_85
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_90

    const/16 v2, 0x11

    .line 4288
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4290
    :cond_90
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ongoing:Z

    if-eqz v0, :cond_99

    const/16 v1, 0x12

    .line 4291
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4293
    :cond_99
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->bandAtEnd:I

    if-eqz v0, :cond_a2

    const/16 v1, 0x13

    .line 4294
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4296
    :cond_a2
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_ba

    array-length v0, v0

    if-lez v0, :cond_ba

    move v0, v1

    .line 4297
    :goto_ab
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    array-length v3, v2

    if-ge v0, v3, :cond_ba

    const/16 v3, 0x14

    .line 4298
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_ab

    .line 4301
    :cond_ba
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    if-eqz v0, :cond_d0

    array-length v0, v0

    if-lez v0, :cond_d0

    .line 4302
    :goto_c1
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    array-length v2, v0

    if-ge v1, v2, :cond_d0

    const/16 v2, 0x15

    .line 4303
    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c1

    .line 4306
    :cond_d0
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNonDds:Z

    if-eqz v0, :cond_d9

    const/16 v1, 0x16

    .line 4307
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4309
    :cond_d9
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isIwlanCrossSim:Z

    if-eqz v0, :cond_e2

    const/16 v1, 0x17

    .line 4310
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4312
    :cond_e2
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNtn:Z

    if-eqz v0, :cond_eb

    const/16 v1, 0x18

    .line 4313
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4315
    :cond_eb
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isSatelliteTransport:Z

    if-eqz v0, :cond_f4

    const/16 v1, 0x19

    .line 4316
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4318
    :cond_f4
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isProvisioningProfile:Z

    if-eqz v0, :cond_fd

    const/16 v1, 0x1a

    .line 4319
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4321
    :cond_fd
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNbIotNtn:Z

    if-eqz v0, :cond_106

    const/16 v1, 0x1b

    .line 4322
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4324
    :cond_106
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
