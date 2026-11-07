.class public final Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;


# instance fields
.field public blacklist events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

.field public blacklist eventsDropped:Z

.field public blacklist phoneId:I

.field public blacklist startTimeMinutes:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8612
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8613
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    .registers 2

    .line 8589
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    if-nez v0, :cond_17

    .line 8590
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 8592
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 8593
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 8595
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 8597
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8735
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 8729
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    .registers 3

    const/4 v0, 0x0

    .line 8617
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->startTimeMinutes:I

    .line 8618
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->phoneId:I

    .line 8619
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    .line 8620
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    const/4 v0, 0x0

    .line 8621
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 8622
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 8651
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8652
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->startTimeMinutes:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 8654
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8656
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->phoneId:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 8658
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8660
    :cond_18
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    if-eqz v1, :cond_32

    array-length v1, v1

    if-lez v1, :cond_32

    const/4 v1, 0x0

    .line 8661
    :goto_20
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    array-length v3, v2

    if-ge v1, v3, :cond_32

    .line 8662
    aget-object v2, v2, v1

    if-eqz v2, :cond_2f

    const/4 v3, 0x3

    .line 8665
    invoke-static {v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 8669
    :cond_32
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    if-eqz p0, :cond_3c

    const/4 v1, 0x4

    .line 8671
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_3c
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8681
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_67

    const/16 v1, 0x8

    if-eq v0, v1, :cond_60

    const/16 v1, 0x10

    if-eq v0, v1, :cond_59

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_24

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1d

    .line 8686
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_67

    .line 8720
    :cond_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    goto :goto_0

    .line 8701
    :cond_24
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8702
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    const/4 v2, 0x0

    if-nez v1, :cond_2f

    move v3, v2

    goto :goto_30

    :cond_2f
    array-length v3, v1

    :goto_30
    add-int/2addr v0, v3

    .line 8703
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    if-eqz v3, :cond_38

    .line 8706
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_38
    :goto_38
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4c

    .line 8709
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;-><init>()V

    aput-object v1, v4, v3

    .line 8710
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8711
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 8714
    :cond_4c
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;-><init>()V

    aput-object v0, v4, v3

    .line 8715
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8716
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    goto :goto_0

    .line 8696
    :cond_59
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->phoneId:I

    goto :goto_0

    .line 8692
    :cond_60
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->startTimeMinutes:I

    goto :goto_0

    :cond_67
    :goto_67
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

    .line 7722
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

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

    .line 8629
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->startTimeMinutes:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 8630
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8632
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->phoneId:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 8633
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8635
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    if-eqz v0, :cond_28

    array-length v0, v0

    if-lez v0, :cond_28

    const/4 v0, 0x0

    .line 8636
    :goto_18
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    array-length v2, v1

    if-ge v0, v2, :cond_28

    .line 8637
    aget-object v1, v1, v0

    if-eqz v1, :cond_25

    const/4 v2, 0x3

    .line 8639
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 8643
    :cond_28
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    if-eqz v0, :cond_30

    const/4 v1, 0x4

    .line 8644
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 8646
    :cond_30
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
