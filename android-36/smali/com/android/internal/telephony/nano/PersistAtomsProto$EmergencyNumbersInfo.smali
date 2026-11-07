.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo$CallRoute;,
        Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo$Source;,
        Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo$ServiceCategory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;


# instance fields
.field public blacklist assetVersion:I

.field public blacklist countryIso:Ljava/lang/String;

.field public blacklist isDbVersionIgnored:Z

.field public blacklist mnc:Ljava/lang/String;

.field public blacklist number:Ljava/lang/String;

.field public blacklist otaVersion:I

.field public blacklist route:I

.field public blacklist serviceCategories:[I

.field public blacklist sources:[I

.field public blacklist urns:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8468
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8469
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;
    .registers 2

    .line 8427
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    if-nez v0, :cond_17

    .line 8428
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 8430
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 8431
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 8433
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 8435
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8841
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 8835
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;
    .registers 3

    const/4 v0, 0x0

    .line 8473
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->isDbVersionIgnored:Z

    .line 8474
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->assetVersion:I

    .line 8475
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->otaVersion:I

    .line 8476
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->number:Ljava/lang/String;

    .line 8477
    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->countryIso:Ljava/lang/String;

    .line 8478
    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mnc:Ljava/lang/String;

    .line 8479
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->route:I

    .line 8480
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->urns:[Ljava/lang/String;

    .line 8481
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    .line 8482
    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    const/4 v0, 0x0

    .line 8483
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 8484
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 8

    .line 8535
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8536
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->isDbVersionIgnored:Z

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 8538
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8540
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->assetVersion:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 8542
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8544
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->otaVersion:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 8546
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8548
    :cond_22
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->number:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const/4 v1, 0x4

    .line 8549
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->number:Ljava/lang/String;

    .line 8550
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8552
    :cond_34
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->countryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    const/4 v1, 0x5

    .line 8553
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->countryIso:Ljava/lang/String;

    .line 8554
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8556
    :cond_44
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    const/4 v1, 0x6

    .line 8557
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mnc:Ljava/lang/String;

    .line 8558
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8560
    :cond_54
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->route:I

    if-eqz v1, :cond_5e

    const/4 v2, 0x7

    .line 8562
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8564
    :cond_5e
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->urns:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_7e

    array-length v1, v1

    if-lez v1, :cond_7e

    move v1, v2

    move v3, v1

    move v4, v3

    .line 8567
    :goto_69
    iget-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->urns:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_7c

    .line 8568
    aget-object v5, v5, v1

    if-eqz v5, :cond_79

    add-int/lit8 v4, v4, 0x1

    .line 8572
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    :cond_7c
    add-int/2addr v0, v3

    add-int/2addr v0, v4

    .line 8578
    :cond_7e
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    if-eqz v1, :cond_99

    array-length v1, v1

    if-lez v1, :cond_99

    move v1, v2

    move v3, v1

    .line 8580
    :goto_87
    iget-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    array-length v5, v4

    if-ge v1, v5, :cond_96

    .line 8581
    aget v4, v4, v1

    .line 8583
    invoke-static {v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    :cond_96
    add-int/2addr v0, v3

    .line 8586
    array-length v1, v4

    add-int/2addr v0, v1

    .line 8588
    :cond_99
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    if-eqz v1, :cond_b3

    array-length v1, v1

    if-lez v1, :cond_b3

    move v1, v2

    .line 8590
    :goto_a1
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    array-length v4, v3

    if-ge v2, v4, :cond_b0

    .line 8591
    aget v3, v3, v2

    .line 8593
    invoke-static {v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    :cond_b0
    add-int/2addr v0, v1

    .line 8596
    array-length p0, v3

    add-int/2addr v0, p0

    :cond_b3
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8606
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_1b6

    .line 8611
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1b5

    .line 8789
    :sswitch_14
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 8790
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 8793
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v6

    move v7, v5

    .line 8794
    :goto_21
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_39

    .line 8795
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    if-eqz v8, :cond_36

    if-eq v8, v4, :cond_36

    if-eq v8, v3, :cond_36

    if-eq v8, v2, :cond_36

    if-eq v8, v1, :cond_36

    goto :goto_21

    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_39
    if-eqz v7, :cond_6a

    .line 8806
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 8807
    iget-object v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    if-nez v6, :cond_44

    move v8, v5

    goto :goto_45

    :cond_44
    array-length v8, v6

    :goto_45
    add-int/2addr v7, v8

    .line 8808
    new-array v7, v7, [I

    if-eqz v8, :cond_4d

    .line 8810
    invoke-static {v6, v5, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8812
    :cond_4d
    :goto_4d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_68

    .line 8813
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    if-eqz v5, :cond_62

    if-eq v5, v4, :cond_62

    if-eq v5, v3, :cond_62

    if-eq v5, v2, :cond_62

    if-eq v5, v1, :cond_62

    goto :goto_4d

    :cond_62
    add-int/lit8 v6, v8, 0x1

    .line 8820
    aput v5, v7, v8

    move v8, v6

    goto :goto_4d

    .line 8824
    :cond_68
    iput-object v7, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    .line 8826
    :cond_6a
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    :sswitch_6e
    const/16 v0, 0x50

    .line 8755
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8756
    new-array v6, v0, [I

    move v7, v5

    move v8, v7

    :goto_78
    if-ge v7, v0, :cond_96

    if-eqz v7, :cond_7f

    .line 8760
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 8762
    :cond_7f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v9

    if-eqz v9, :cond_8e

    if-eq v9, v4, :cond_8e

    if-eq v9, v3, :cond_8e

    if-eq v9, v2, :cond_8e

    if-eq v9, v1, :cond_8e

    goto :goto_93

    :cond_8e
    add-int/lit8 v10, v8, 0x1

    .line 8769
    aput v9, v6, v8

    move v8, v10

    :goto_93
    add-int/lit8 v7, v7, 0x1

    goto :goto_78

    :cond_96
    if-eqz v8, :cond_0

    .line 8774
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    if-nez v1, :cond_9e

    move v2, v5

    goto :goto_9f

    :cond_9e
    array-length v2, v1

    :goto_9f
    if-nez v2, :cond_a7

    if-ne v8, v0, :cond_a7

    .line 8776
    iput-object v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    goto/16 :goto_0

    :cond_a7
    add-int v0, v2, v8

    .line 8778
    new-array v0, v0, [I

    if-eqz v2, :cond_b0

    .line 8780
    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8782
    :cond_b0
    invoke-static {v6, v5, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8783
    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    goto/16 :goto_0

    .line 8707
    :sswitch_b7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 8708
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 8711
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    move v2, v5

    .line 8712
    :goto_c4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_d5

    .line 8713
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    packed-switch v3, :pswitch_data_1ec

    goto :goto_c4

    :pswitch_d2
    add-int/lit8 v2, v2, 0x1

    goto :goto_c4

    :cond_d5
    if-eqz v2, :cond_ff

    .line 8727
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 8728
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    if-nez v1, :cond_e0

    move v3, v5

    goto :goto_e1

    :cond_e0
    array-length v3, v1

    :goto_e1
    add-int/2addr v2, v3

    .line 8729
    new-array v2, v2, [I

    if-eqz v3, :cond_e9

    .line 8731
    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8733
    :cond_e9
    :goto_e9
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_fd

    .line 8734
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_200

    goto :goto_e9

    :pswitch_f7
    add-int/lit8 v4, v3, 0x1

    .line 8744
    aput v1, v2, v3

    move v3, v4

    goto :goto_e9

    .line 8748
    :cond_fd
    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    .line 8750
    :cond_ff
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_104
    const/16 v0, 0x48

    .line 8670
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8671
    new-array v1, v0, [I

    move v2, v5

    move v3, v2

    :goto_10e
    if-ge v2, v0, :cond_125

    if-eqz v2, :cond_115

    .line 8675
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 8677
    :cond_115
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    packed-switch v4, :pswitch_data_214

    goto :goto_122

    :pswitch_11d
    add-int/lit8 v6, v3, 0x1

    .line 8687
    aput v4, v1, v3

    move v3, v6

    :goto_122
    add-int/lit8 v2, v2, 0x1

    goto :goto_10e

    :cond_125
    if-eqz v3, :cond_0

    .line 8692
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    if-nez v2, :cond_12d

    move v4, v5

    goto :goto_12e

    :cond_12d
    array-length v4, v2

    :goto_12e
    if-nez v4, :cond_136

    if-ne v3, v0, :cond_136

    .line 8694
    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    goto/16 :goto_0

    :cond_136
    add-int v0, v4, v3

    .line 8696
    new-array v0, v0, [I

    if-eqz v4, :cond_13f

    .line 8698
    invoke-static {v2, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8700
    :cond_13f
    invoke-static {v1, v5, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8701
    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    goto/16 :goto_0

    :sswitch_146
    const/16 v0, 0x42

    .line 8653
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8654
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->urns:[Ljava/lang/String;

    if-nez v1, :cond_152

    move v2, v5

    goto :goto_153

    :cond_152
    array-length v2, v1

    :goto_153
    add-int/2addr v0, v2

    .line 8655
    new-array v3, v0, [Ljava/lang/String;

    if-eqz v2, :cond_15b

    .line 8657
    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15b
    :goto_15b
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_16b

    .line 8660
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 8661
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_15b

    .line 8664
    :cond_16b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 8665
    iput-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->urns:[Ljava/lang/String;

    goto/16 :goto_0

    .line 8641
    :sswitch_175
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_181

    if-eq v0, v4, :cond_181

    if-eq v0, v3, :cond_181

    goto/16 :goto_0

    .line 8646
    :cond_181
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->route:I

    goto/16 :goto_0

    .line 8637
    :sswitch_185
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mnc:Ljava/lang/String;

    goto/16 :goto_0

    .line 8633
    :sswitch_18d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->countryIso:Ljava/lang/String;

    goto/16 :goto_0

    .line 8629
    :sswitch_195
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->number:Ljava/lang/String;

    goto/16 :goto_0

    .line 8625
    :sswitch_19d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->otaVersion:I

    goto/16 :goto_0

    .line 8621
    :sswitch_1a5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->assetVersion:I

    goto/16 :goto_0

    .line 8617
    :sswitch_1ad
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->isDbVersionIgnored:Z

    goto/16 :goto_0

    :goto_1b5
    :sswitch_1b5
    return-object p0

    :sswitch_data_1b6
    .sparse-switch
        0x0 -> :sswitch_1b5
        0x8 -> :sswitch_1ad
        0x10 -> :sswitch_1a5
        0x18 -> :sswitch_19d
        0x22 -> :sswitch_195
        0x2a -> :sswitch_18d
        0x32 -> :sswitch_185
        0x38 -> :sswitch_175
        0x42 -> :sswitch_146
        0x48 -> :sswitch_104
        0x4a -> :sswitch_b7
        0x50 -> :sswitch_6e
        0x52 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_1ec
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_d2
        :pswitch_d2
        :pswitch_d2
        :pswitch_d2
        :pswitch_d2
        :pswitch_d2
        :pswitch_d2
    .end packed-switch

    :pswitch_data_200
    .packed-switch 0x0
        :pswitch_f7
        :pswitch_f7
        :pswitch_f7
        :pswitch_f7
        :pswitch_f7
        :pswitch_f7
        :pswitch_f7
        :pswitch_f7
    .end packed-switch

    :pswitch_data_214
    .packed-switch 0x0
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
    .end packed-switch
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

    .line 8393
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

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

    .line 8491
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->isDbVersionIgnored:Z

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 8492
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 8494
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->assetVersion:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 8495
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8497
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->otaVersion:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 8498
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8500
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->number:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x4

    .line 8501
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8503
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->countryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    const/4 v0, 0x5

    .line 8504
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->countryIso:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8506
    :cond_36
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    const/4 v0, 0x6

    .line 8507
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8509
    :cond_44
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->route:I

    if-eqz v0, :cond_4c

    const/4 v1, 0x7

    .line 8510
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8512
    :cond_4c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->urns:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    array-length v0, v0

    if-lez v0, :cond_66

    move v0, v1

    .line 8513
    :goto_55
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->urns:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_66

    .line 8514
    aget-object v2, v2, v0

    if-eqz v2, :cond_63

    const/16 v3, 0x8

    .line 8516
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 8520
    :cond_66
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    if-eqz v0, :cond_7d

    array-length v0, v0

    if-lez v0, :cond_7d

    move v0, v1

    .line 8521
    :goto_6e
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    array-length v3, v2

    if-ge v0, v3, :cond_7d

    const/16 v3, 0x9

    .line 8522
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 8525
    :cond_7d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    if-eqz v0, :cond_93

    array-length v0, v0

    if-lez v0, :cond_93

    .line 8526
    :goto_84
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    array-length v2, v0

    if-ge v1, v2, :cond_93

    const/16 v2, 0xa

    .line 8527
    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 8530
    :cond_93
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
