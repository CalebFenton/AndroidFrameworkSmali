.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierIdMatchingResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;


# instance fields
.field public blacklist carrierId:I

.field public blacklist gid1:Ljava/lang/String;

.field public blacklist gid2:Ljava/lang/String;

.field public blacklist iccidPrefix:Ljava/lang/String;

.field public blacklist imsiPrefix:Ljava/lang/String;

.field public blacklist mccmnc:Ljava/lang/String;

.field public blacklist pnn:Ljava/lang/String;

.field public blacklist preferApn:Ljava/lang/String;

.field public blacklist privilegeAccessRule:[Ljava/lang/String;

.field public blacklist spn:Ljava/lang/String;

.field public blacklist unknownGid1:Ljava/lang/String;

.field public blacklist unknownMccmnc:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4409
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4410
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;
    .registers 2

    .line 4362
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    if-nez v0, :cond_17

    .line 4363
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4365
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 4366
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 4368
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 4370
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4630
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4624
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;
    .registers 3

    const/4 v0, 0x0

    .line 4414
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->carrierId:I

    .line 4415
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownGid1:Ljava/lang/String;

    .line 4416
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownMccmnc:Ljava/lang/String;

    .line 4417
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    .line 4418
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid1:Ljava/lang/String;

    .line 4419
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid2:Ljava/lang/String;

    .line 4420
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->spn:Ljava/lang/String;

    .line 4421
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->pnn:Ljava/lang/String;

    .line 4422
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->iccidPrefix:Ljava/lang/String;

    .line 4423
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->imsiPrefix:Ljava/lang/String;

    .line 4424
    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->privilegeAccessRule:[Ljava/lang/String;

    .line 4425
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->preferApn:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4426
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4427
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 8

    .line 4480
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4481
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 4483
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4485
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownGid1:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const/4 v1, 0x2

    .line 4486
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownGid1:Ljava/lang/String;

    .line 4487
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4489
    :cond_20
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownMccmnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const/4 v1, 0x3

    .line 4490
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownMccmnc:Ljava/lang/String;

    .line 4491
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4493
    :cond_30
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const/4 v1, 0x4

    .line 4494
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    .line 4495
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4497
    :cond_40
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    const/4 v1, 0x5

    .line 4498
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid1:Ljava/lang/String;

    .line 4499
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4501
    :cond_50
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    const/4 v1, 0x6

    .line 4502
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid2:Ljava/lang/String;

    .line 4503
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4505
    :cond_60
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    const/4 v1, 0x7

    .line 4506
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->spn:Ljava/lang/String;

    .line 4507
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4509
    :cond_70
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->pnn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_81

    const/16 v1, 0x8

    .line 4510
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->pnn:Ljava/lang/String;

    .line 4511
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4513
    :cond_81
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->iccidPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_92

    const/16 v1, 0x9

    .line 4514
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->iccidPrefix:Ljava/lang/String;

    .line 4515
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4517
    :cond_92
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->imsiPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a3

    const/16 v1, 0xa

    .line 4518
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->imsiPrefix:Ljava/lang/String;

    .line 4519
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4521
    :cond_a3
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->privilegeAccessRule:[Ljava/lang/String;

    if-eqz v1, :cond_c2

    array-length v1, v1

    if-lez v1, :cond_c2

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    .line 4524
    :goto_ad
    iget-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->privilegeAccessRule:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_c0

    .line 4525
    aget-object v5, v5, v1

    if-eqz v5, :cond_bd

    add-int/lit8 v4, v4, 0x1

    .line 4529
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_bd
    add-int/lit8 v1, v1, 0x1

    goto :goto_ad

    :cond_c0
    add-int/2addr v0, v3

    add-int/2addr v0, v4

    .line 4535
    :cond_c2
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->preferApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d3

    const/16 v1, 0xc

    .line 4536
    iget-object p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->preferApn:Ljava/lang/String;

    .line 4537
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_d3
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4547
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_8e

    .line 4552
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8d

    .line 4615
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->preferApn:Ljava/lang/String;

    goto :goto_0

    :sswitch_16
    const/16 v0, 0x5a

    .line 4599
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4600
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->privilegeAccessRule:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_23

    move v3, v2

    goto :goto_24

    :cond_23
    array-length v3, v1

    :goto_24
    add-int/2addr v0, v3

    .line 4601
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_2c

    .line 4603
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2c
    :goto_2c
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3c

    .line 4606
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 4607
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 4610
    :cond_3c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 4611
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->privilegeAccessRule:[Ljava/lang/String;

    goto :goto_0

    .line 4594
    :sswitch_45
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->imsiPrefix:Ljava/lang/String;

    goto :goto_0

    .line 4590
    :sswitch_4c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->iccidPrefix:Ljava/lang/String;

    goto :goto_0

    .line 4586
    :sswitch_53
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->pnn:Ljava/lang/String;

    goto :goto_0

    .line 4582
    :sswitch_5a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->spn:Ljava/lang/String;

    goto :goto_0

    .line 4578
    :sswitch_61
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid2:Ljava/lang/String;

    goto :goto_0

    .line 4574
    :sswitch_68
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid1:Ljava/lang/String;

    goto :goto_0

    .line 4570
    :sswitch_6f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    goto :goto_0

    .line 4566
    :sswitch_76
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownMccmnc:Ljava/lang/String;

    goto :goto_0

    .line 4562
    :sswitch_7d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownGid1:Ljava/lang/String;

    goto/16 :goto_0

    .line 4558
    :sswitch_85
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->carrierId:I

    goto/16 :goto_0

    :goto_8d
    :sswitch_8d
    return-object p0

    :sswitch_data_8e
    .sparse-switch
        0x0 -> :sswitch_8d
        0x8 -> :sswitch_85
        0x12 -> :sswitch_7d
        0x1a -> :sswitch_76
        0x22 -> :sswitch_6f
        0x2a -> :sswitch_68
        0x32 -> :sswitch_61
        0x3a -> :sswitch_5a
        0x42 -> :sswitch_53
        0x4a -> :sswitch_4c
        0x52 -> :sswitch_45
        0x5a -> :sswitch_16
        0x62 -> :sswitch_f
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

    .line 4356
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

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

    .line 4434
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 4435
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4437
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownGid1:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x2

    .line 4438
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownGid1:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4440
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownMccmnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x3

    .line 4441
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->unknownMccmnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4443
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x4

    .line 4444
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4446
    :cond_34
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x5

    .line 4447
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid1:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4449
    :cond_42
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    const/4 v0, 0x6

    .line 4450
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid2:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4452
    :cond_50
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->spn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    const/4 v0, 0x7

    .line 4453
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->spn:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4455
    :cond_5e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->pnn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    const/16 v0, 0x8

    .line 4456
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->pnn:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4458
    :cond_6d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->iccidPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    const/16 v0, 0x9

    .line 4459
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->iccidPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4461
    :cond_7c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->imsiPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0xa

    .line 4462
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->imsiPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4464
    :cond_8b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->privilegeAccessRule:[Ljava/lang/String;

    if-eqz v0, :cond_a4

    array-length v0, v0

    if-lez v0, :cond_a4

    const/4 v0, 0x0

    .line 4465
    :goto_93
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->privilegeAccessRule:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_a4

    .line 4466
    aget-object v2, v2, v0

    if-eqz v2, :cond_a1

    const/16 v3, 0xb

    .line 4468
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_a1
    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    .line 4472
    :cond_a4
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->preferApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const/16 v0, 0xc

    .line 4473
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->preferApn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4475
    :cond_b3
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
