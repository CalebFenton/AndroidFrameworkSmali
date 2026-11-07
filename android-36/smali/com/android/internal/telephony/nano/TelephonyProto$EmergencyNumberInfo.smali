.class public final Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;


# instance fields
.field public blacklist address:Ljava/lang/String;

.field public blacklist countryIso:Ljava/lang/String;

.field public blacklist mnc:Ljava/lang/String;

.field public blacklist numberSourcesBitmask:I

.field public blacklist routing:I

.field public blacklist serviceCategoriesBitmask:I

.field public blacklist urns:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2476
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2477
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;
    .registers 2

    .line 2444
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    if-nez v0, :cond_17

    .line 2445
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2447
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 2448
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 2450
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 2452
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2637
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2631
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;
    .registers 3

    .line 2481
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->address:Ljava/lang/String;

    .line 2482
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->countryIso:Ljava/lang/String;

    .line 2483
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->mnc:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2484
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->serviceCategoriesBitmask:I

    .line 2485
    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->urns:[Ljava/lang/String;

    .line 2486
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->numberSourcesBitmask:I

    .line 2487
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->routing:I

    const/4 v0, 0x0

    .line 2488
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 2489
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 2527
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2528
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->address:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 2529
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->address:Ljava/lang/String;

    const/4 v3, 0x1

    .line 2530
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2532
    :cond_16
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->countryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x2

    .line 2533
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->countryIso:Ljava/lang/String;

    .line 2534
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2536
    :cond_26
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->mnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const/4 v1, 0x3

    .line 2537
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->mnc:Ljava/lang/String;

    .line 2538
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2540
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->serviceCategoriesBitmask:I

    if-eqz v1, :cond_40

    const/4 v2, 0x4

    .line 2542
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2544
    :cond_40
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->urns:[Ljava/lang/String;

    if-eqz v1, :cond_5f

    array-length v1, v1

    if-lez v1, :cond_5f

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 2547
    :goto_4a
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->urns:[Ljava/lang/String;

    array-length v5, v4

    if-ge v1, v5, :cond_5d

    .line 2548
    aget-object v4, v4, v1

    if-eqz v4, :cond_5a

    add-int/lit8 v3, v3, 0x1

    .line 2552
    invoke-static {v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_5d
    add-int/2addr v0, v2

    add-int/2addr v0, v3

    .line 2558
    :cond_5f
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->numberSourcesBitmask:I

    if-eqz v1, :cond_69

    const/4 v2, 0x6

    .line 2560
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2562
    :cond_69
    iget p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->routing:I

    if-eqz p0, :cond_73

    const/4 v1, 0x7

    .line 2564
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_73
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2574
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_80

    const/16 v1, 0xa

    if-eq v0, v1, :cond_79

    const/16 v1, 0x12

    if-eq v0, v1, :cond_72

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_6b

    const/16 v1, 0x20

    if-eq v0, v1, :cond_64

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_37

    const/16 v1, 0x30

    if-eq v0, v1, :cond_30

    const/16 v1, 0x38

    if-eq v0, v1, :cond_29

    .line 2579
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_80

    .line 2622
    :cond_29
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->routing:I

    goto :goto_0

    .line 2618
    :cond_30
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->numberSourcesBitmask:I

    goto :goto_0

    .line 2602
    :cond_37
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2603
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->urns:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_42

    move v3, v2

    goto :goto_43

    :cond_42
    array-length v3, v1

    :goto_43
    add-int/2addr v0, v3

    .line 2604
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_4b

    .line 2606
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4b
    :goto_4b
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_5b

    .line 2609
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 2610
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 2613
    :cond_5b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 2614
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->urns:[Ljava/lang/String;

    goto :goto_0

    .line 2597
    :cond_64
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->serviceCategoriesBitmask:I

    goto :goto_0

    .line 2593
    :cond_6b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->mnc:Ljava/lang/String;

    goto :goto_0

    .line 2589
    :cond_72
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->countryIso:Ljava/lang/String;

    goto :goto_0

    .line 2585
    :cond_79
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->address:Ljava/lang/String;

    goto :goto_0

    :cond_80
    :goto_80
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

    .line 2438
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2496
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->address:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2497
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->address:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2499
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->countryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x2

    .line 2500
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->countryIso:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2502
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x3

    .line 2503
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->mnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2505
    :cond_2c
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->serviceCategoriesBitmask:I

    if-eqz v0, :cond_34

    const/4 v1, 0x4

    .line 2506
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2508
    :cond_34
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->urns:[Ljava/lang/String;

    if-eqz v0, :cond_4c

    array-length v0, v0

    if-lez v0, :cond_4c

    const/4 v0, 0x0

    .line 2509
    :goto_3c
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->urns:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_4c

    .line 2510
    aget-object v1, v1, v0

    if-eqz v1, :cond_49

    const/4 v2, 0x5

    .line 2512
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 2516
    :cond_4c
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->numberSourcesBitmask:I

    if-eqz v0, :cond_54

    const/4 v1, 0x6

    .line 2517
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2519
    :cond_54
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;->routing:I

    if-eqz v0, :cond_5c

    const/4 v1, 0x7

    .line 2520
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2522
    :cond_5c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
