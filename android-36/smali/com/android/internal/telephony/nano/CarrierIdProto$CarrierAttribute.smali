.class public final Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "CarrierIdProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;


# instance fields
.field public blacklist gid1:[Ljava/lang/String;

.field public blacklist gid2:[Ljava/lang/String;

.field public blacklist iccidPrefix:[Ljava/lang/String;

.field public blacklist imsiPrefixXpattern:[Ljava/lang/String;

.field public blacklist mccmncTuple:[Ljava/lang/String;

.field public blacklist plmn:[Ljava/lang/String;

.field public blacklist preferredApn:[Ljava/lang/String;

.field public blacklist privilegeAccessRule:[Ljava/lang/String;

.field public blacklist spn:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 334
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->clear()Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    .registers 2

    .line 296
    sget-object v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    if-nez v0, :cond_17

    .line 297
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 300
    new-array v1, v1, [Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    sput-object v1, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 302
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 304
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    new-instance v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 737
    new-instance v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    .registers 2

    .line 339
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    .line 340
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    .line 341
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    .line 342
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    .line 343
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    .line 344
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    .line 345
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    .line 346
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    .line 347
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->privilegeAccessRule:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 349
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 8

    .line 433
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 434
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    array-length v1, v1

    if-lez v1, :cond_24

    move v1, v2

    move v3, v1

    move v4, v3

    .line 437
    :goto_f
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_22

    .line 438
    aget-object v5, v5, v1

    if-eqz v5, :cond_1f

    add-int/lit8 v4, v4, 0x1

    .line 442
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_22
    add-int/2addr v0, v3

    add-int/2addr v0, v4

    .line 448
    :cond_24
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    if-eqz v1, :cond_43

    array-length v1, v1

    if-lez v1, :cond_43

    move v1, v2

    move v3, v1

    move v4, v3

    .line 451
    :goto_2e
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_41

    .line 452
    aget-object v5, v5, v1

    if-eqz v5, :cond_3e

    add-int/lit8 v4, v4, 0x1

    .line 456
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_41
    add-int/2addr v0, v3

    add-int/2addr v0, v4

    .line 462
    :cond_43
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    if-eqz v1, :cond_62

    array-length v1, v1

    if-lez v1, :cond_62

    move v1, v2

    move v3, v1

    move v4, v3

    .line 465
    :goto_4d
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_60

    .line 466
    aget-object v5, v5, v1

    if-eqz v5, :cond_5d

    add-int/lit8 v4, v4, 0x1

    .line 470
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_60
    add-int/2addr v0, v3

    add-int/2addr v0, v4

    .line 476
    :cond_62
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    if-eqz v1, :cond_81

    array-length v1, v1

    if-lez v1, :cond_81

    move v1, v2

    move v3, v1

    move v4, v3

    .line 479
    :goto_6c
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_7f

    .line 480
    aget-object v5, v5, v1

    if-eqz v5, :cond_7c

    add-int/lit8 v4, v4, 0x1

    .line 484
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    :cond_7f
    add-int/2addr v0, v3

    add-int/2addr v0, v4

    .line 490
    :cond_81
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    if-eqz v1, :cond_a0

    array-length v1, v1

    if-lez v1, :cond_a0

    move v1, v2

    move v3, v1

    move v4, v3

    .line 493
    :goto_8b
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_9e

    .line 494
    aget-object v5, v5, v1

    if-eqz v5, :cond_9b

    add-int/lit8 v4, v4, 0x1

    .line 498
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_9b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    :cond_9e
    add-int/2addr v0, v3

    add-int/2addr v0, v4

    .line 504
    :cond_a0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    if-eqz v1, :cond_bf

    array-length v1, v1

    if-lez v1, :cond_bf

    move v1, v2

    move v3, v1

    move v4, v3

    .line 507
    :goto_aa
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_bd

    .line 508
    aget-object v5, v5, v1

    if-eqz v5, :cond_ba

    add-int/lit8 v4, v4, 0x1

    .line 512
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_ba
    add-int/lit8 v1, v1, 0x1

    goto :goto_aa

    :cond_bd
    add-int/2addr v0, v3

    add-int/2addr v0, v4

    .line 518
    :cond_bf
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    if-eqz v1, :cond_de

    array-length v1, v1

    if-lez v1, :cond_de

    move v1, v2

    move v3, v1

    move v4, v3

    .line 521
    :goto_c9
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_dc

    .line 522
    aget-object v5, v5, v1

    if-eqz v5, :cond_d9

    add-int/lit8 v4, v4, 0x1

    .line 526
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_d9
    add-int/lit8 v1, v1, 0x1

    goto :goto_c9

    :cond_dc
    add-int/2addr v0, v3

    add-int/2addr v0, v4

    .line 532
    :cond_de
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    if-eqz v1, :cond_fd

    array-length v1, v1

    if-lez v1, :cond_fd

    move v1, v2

    move v3, v1

    move v4, v3

    .line 535
    :goto_e8
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_fb

    .line 536
    aget-object v5, v5, v1

    if-eqz v5, :cond_f8

    add-int/lit8 v4, v4, 0x1

    .line 540
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_f8
    add-int/lit8 v1, v1, 0x1

    goto :goto_e8

    :cond_fb
    add-int/2addr v0, v3

    add-int/2addr v0, v4

    .line 546
    :cond_fd
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->privilegeAccessRule:[Ljava/lang/String;

    if-eqz v1, :cond_11b

    array-length v1, v1

    if-lez v1, :cond_11b

    move v1, v2

    move v3, v1

    .line 549
    :goto_106
    iget-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->privilegeAccessRule:[Ljava/lang/String;

    array-length v5, v4

    if-ge v2, v5, :cond_119

    .line 550
    aget-object v4, v4, v2

    if-eqz v4, :cond_116

    add-int/lit8 v3, v3, 0x1

    .line 554
    invoke-static {v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_116
    add-int/lit8 v2, v2, 0x1

    goto :goto_106

    :cond_119
    add-int/2addr v0, v1

    add-int/2addr v0, v3

    :cond_11b
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_1c7

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_19a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_16d

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_140

    const/16 v1, 0x22

    if-eq v0, v1, :cond_113

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_e6

    const/16 v1, 0x32

    if-eq v0, v1, :cond_b9

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_8c

    const/16 v1, 0x42

    if-eq v0, v1, :cond_5f

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_33

    .line 573
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1c7

    .line 716
    :cond_33
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 717
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->privilegeAccessRule:[Ljava/lang/String;

    if-nez v1, :cond_3d

    move v3, v2

    goto :goto_3e

    :cond_3d
    array-length v3, v1

    :goto_3e
    add-int/2addr v0, v3

    .line 718
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_46

    .line 720
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    :goto_46
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_56

    .line 723
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 724
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 727
    :cond_56
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 728
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->privilegeAccessRule:[Ljava/lang/String;

    goto :goto_0

    .line 699
    :cond_5f
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 700
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    if-nez v1, :cond_69

    move v3, v2

    goto :goto_6a

    :cond_69
    array-length v3, v1

    :goto_6a
    add-int/2addr v0, v3

    .line 701
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_72

    .line 703
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_72
    :goto_72
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_82

    .line 706
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 707
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 710
    :cond_82
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 711
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    goto/16 :goto_0

    .line 682
    :cond_8c
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 683
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    if-nez v1, :cond_96

    move v3, v2

    goto :goto_97

    :cond_96
    array-length v3, v1

    :goto_97
    add-int/2addr v0, v3

    .line 684
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_9f

    .line 686
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9f
    :goto_9f
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_af

    .line 689
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 690
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_9f

    .line 693
    :cond_af
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 694
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    goto/16 :goto_0

    .line 665
    :cond_b9
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 666
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    if-nez v1, :cond_c3

    move v3, v2

    goto :goto_c4

    :cond_c3
    array-length v3, v1

    :goto_c4
    add-int/2addr v0, v3

    .line 667
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_cc

    .line 669
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_cc
    :goto_cc
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_dc

    .line 672
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 673
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_cc

    .line 676
    :cond_dc
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 677
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    goto/16 :goto_0

    .line 648
    :cond_e6
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 649
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    if-nez v1, :cond_f0

    move v3, v2

    goto :goto_f1

    :cond_f0
    array-length v3, v1

    :goto_f1
    add-int/2addr v0, v3

    .line 650
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_f9

    .line 652
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f9
    :goto_f9
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_109

    .line 655
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 656
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_f9

    .line 659
    :cond_109
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 660
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    goto/16 :goto_0

    .line 631
    :cond_113
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 632
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    if-nez v1, :cond_11d

    move v3, v2

    goto :goto_11e

    :cond_11d
    array-length v3, v1

    :goto_11e
    add-int/2addr v0, v3

    .line 633
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_126

    .line 635
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_126
    :goto_126
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_136

    .line 638
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 639
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_126

    .line 642
    :cond_136
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 643
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    goto/16 :goto_0

    .line 614
    :cond_140
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 615
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    if-nez v1, :cond_14a

    move v3, v2

    goto :goto_14b

    :cond_14a
    array-length v3, v1

    :goto_14b
    add-int/2addr v0, v3

    .line 616
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_153

    .line 618
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_153
    :goto_153
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_163

    .line 621
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 622
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_153

    .line 625
    :cond_163
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 626
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    goto/16 :goto_0

    .line 597
    :cond_16d
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 598
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    if-nez v1, :cond_177

    move v3, v2

    goto :goto_178

    :cond_177
    array-length v3, v1

    :goto_178
    add-int/2addr v0, v3

    .line 599
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_180

    .line 601
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_180
    :goto_180
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_190

    .line 604
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 605
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_180

    .line 608
    :cond_190
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 609
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    goto/16 :goto_0

    .line 580
    :cond_19a
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 581
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    if-nez v1, :cond_1a4

    move v3, v2

    goto :goto_1a5

    :cond_1a4
    array-length v3, v1

    :goto_1a5
    add-int/2addr v0, v3

    .line 582
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_1ad

    .line 584
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1ad
    :goto_1ad
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_1bd

    .line 587
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 588
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1ad

    .line 591
    :cond_1bd
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 592
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_1c7
    :goto_1c7
    return-object p0
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

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

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

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    array-length v0, v0

    if-lez v0, :cond_19

    move v0, v1

    .line 357
    :goto_9
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_19

    .line 358
    aget-object v2, v2, v0

    if-eqz v2, :cond_16

    const/4 v3, 0x1

    .line 360
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 364
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    if-eqz v0, :cond_31

    array-length v0, v0

    if-lez v0, :cond_31

    move v0, v1

    .line 365
    :goto_21
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_31

    .line 366
    aget-object v2, v2, v0

    if-eqz v2, :cond_2e

    const/4 v3, 0x2

    .line 368
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 372
    :cond_31
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    if-eqz v0, :cond_49

    array-length v0, v0

    if-lez v0, :cond_49

    move v0, v1

    .line 373
    :goto_39
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_49

    .line 374
    aget-object v2, v2, v0

    if-eqz v2, :cond_46

    const/4 v3, 0x3

    .line 376
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 380
    :cond_49
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    if-eqz v0, :cond_61

    array-length v0, v0

    if-lez v0, :cond_61

    move v0, v1

    .line 381
    :goto_51
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_61

    .line 382
    aget-object v2, v2, v0

    if-eqz v2, :cond_5e

    const/4 v3, 0x4

    .line 384
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 388
    :cond_61
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    if-eqz v0, :cond_79

    array-length v0, v0

    if-lez v0, :cond_79

    move v0, v1

    .line 389
    :goto_69
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_79

    .line 390
    aget-object v2, v2, v0

    if-eqz v2, :cond_76

    const/4 v3, 0x5

    .line 392
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    .line 396
    :cond_79
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    if-eqz v0, :cond_91

    array-length v0, v0

    if-lez v0, :cond_91

    move v0, v1

    .line 397
    :goto_81
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_91

    .line 398
    aget-object v2, v2, v0

    if-eqz v2, :cond_8e

    const/4 v3, 0x6

    .line 400
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 404
    :cond_91
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    if-eqz v0, :cond_a9

    array-length v0, v0

    if-lez v0, :cond_a9

    move v0, v1

    .line 405
    :goto_99
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_a9

    .line 406
    aget-object v2, v2, v0

    if-eqz v2, :cond_a6

    const/4 v3, 0x7

    .line 408
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    .line 412
    :cond_a9
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    if-eqz v0, :cond_c2

    array-length v0, v0

    if-lez v0, :cond_c2

    move v0, v1

    .line 413
    :goto_b1
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_c2

    .line 414
    aget-object v2, v2, v0

    if-eqz v2, :cond_bf

    const/16 v3, 0x8

    .line 416
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_bf
    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    .line 420
    :cond_c2
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->privilegeAccessRule:[Ljava/lang/String;

    if-eqz v0, :cond_da

    array-length v0, v0

    if-lez v0, :cond_da

    .line 421
    :goto_c9
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->privilegeAccessRule:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_da

    .line 422
    aget-object v0, v0, v1

    if-eqz v0, :cond_d7

    const/16 v2, 0x9

    .line 424
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_d7
    add-int/lit8 v1, v1, 0x1

    goto :goto_c9

    .line 428
    :cond_da
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
