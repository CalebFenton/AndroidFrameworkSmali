.class public final Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;


# instance fields
.field public blacklist carrierId:I

.field public blacklist isOpportunistic:I

.field public blacklist simMccmnc:Ljava/lang/String;

.field public blacklist slotIndex:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5490
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5491
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;
    .registers 2

    .line 5467
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-nez v0, :cond_17

    .line 5468
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 5470
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 5471
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 5473
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 5475
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5587
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 5581
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;
    .registers 2

    const/4 v0, 0x0

    .line 5495
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->slotIndex:I

    .line 5496
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->carrierId:I

    .line 5497
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->isOpportunistic:I

    .line 5498
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->simMccmnc:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5499
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 5500
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 5524
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5525
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->slotIndex:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 5527
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5529
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->carrierId:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 5531
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5533
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->isOpportunistic:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 5535
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5537
    :cond_22
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->simMccmnc:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const/4 v1, 0x4

    .line 5538
    iget-object p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->simMccmnc:Ljava/lang/String;

    .line 5539
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_34
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5549
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_39

    const/16 v1, 0x8

    if-eq v0, v1, :cond_32

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x18

    if-eq v0, v1, :cond_24

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1d

    .line 5554
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_39

    .line 5572
    :cond_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->simMccmnc:Ljava/lang/String;

    goto :goto_0

    .line 5568
    :cond_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->isOpportunistic:I

    goto :goto_0

    .line 5564
    :cond_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->carrierId:I

    goto :goto_0

    .line 5560
    :cond_32
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->slotIndex:I

    goto :goto_0

    :cond_39
    :goto_39
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

    .line 5461
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

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

    .line 5507
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->slotIndex:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 5508
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5510
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->carrierId:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 5511
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5513
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->isOpportunistic:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 5514
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5516
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->simMccmnc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x4

    .line 5517
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->simMccmnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5519
    :cond_28
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
