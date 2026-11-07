.class public final Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;,
        Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;


# instance fields
.field public blacklist perRatRx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

.field public blacklist perRatTx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9514
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9515
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;
    .registers 2

    .line 9497
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    if-nez v0, :cond_17

    .line 9498
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 9500
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 9501
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 9503
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 9505
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9639
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 9633
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;
    .registers 2

    .line 9519
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatTx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    .line 9520
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatRx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    const/4 v0, 0x0

    .line 9521
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 9522
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 9550
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9551
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatTx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    array-length v1, v1

    if-lez v1, :cond_1f

    move v1, v2

    .line 9552
    :goto_d
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatTx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    array-length v4, v3

    if-ge v1, v4, :cond_1f

    .line 9553
    aget-object v3, v3, v1

    if-eqz v3, :cond_1c

    const/4 v4, 0x1

    .line 9556
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 9560
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatRx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    if-eqz v1, :cond_38

    array-length v1, v1

    if-lez v1, :cond_38

    .line 9561
    :goto_26
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatRx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    array-length v3, v1

    if-ge v2, v3, :cond_38

    .line 9562
    aget-object v1, v1, v2

    if-eqz v1, :cond_35

    const/4 v3, 0x2

    .line 9565
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_38
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9577
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7f

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4b

    const/16 v1, 0x12

    if-eq v0, v1, :cond_17

    .line 9582
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7f

    .line 9609
    :cond_17
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9610
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatRx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    if-nez v1, :cond_21

    move v3, v2

    goto :goto_22

    :cond_21
    array-length v3, v1

    :goto_22
    add-int/2addr v0, v3

    .line 9611
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    if-eqz v3, :cond_2a

    .line 9614
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2a
    :goto_2a
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3e

    .line 9617
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;-><init>()V

    aput-object v1, v4, v3

    .line 9618
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 9619
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 9622
    :cond_3e
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;-><init>()V

    aput-object v0, v4, v3

    .line 9623
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 9624
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatRx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    goto :goto_0

    .line 9589
    :cond_4b
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9590
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatTx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    if-nez v1, :cond_55

    move v3, v2

    goto :goto_56

    :cond_55
    array-length v3, v1

    :goto_56
    add-int/2addr v0, v3

    .line 9591
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    if-eqz v3, :cond_5e

    .line 9594
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5e
    :goto_5e
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_72

    .line 9597
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;-><init>()V

    aput-object v1, v4, v3

    .line 9598
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 9599
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 9602
    :cond_72
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;-><init>()V

    aput-object v0, v4, v3

    .line 9603
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 9604
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatTx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    goto :goto_0

    :cond_7f
    :goto_7f
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

    .line 9170
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

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

    .line 9529
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatTx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    array-length v0, v0

    if-lez v0, :cond_19

    move v0, v1

    .line 9530
    :goto_9
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatTx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    array-length v3, v2

    if-ge v0, v3, :cond_19

    .line 9531
    aget-object v2, v2, v0

    if-eqz v2, :cond_16

    const/4 v3, 0x1

    .line 9533
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 9537
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatRx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    if-eqz v0, :cond_30

    array-length v0, v0

    if-lez v0, :cond_30

    .line 9538
    :goto_20
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;->perRatRx:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    array-length v2, v0

    if-ge v1, v2, :cond_30

    .line 9539
    aget-object v0, v0, v1

    if-eqz v0, :cond_2d

    const/4 v2, 0x2

    .line 9541
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 9545
    :cond_30
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
