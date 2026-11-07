.class public final Lcom/android/internal/telephony/nano/TelephonyProto$Time;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$Time;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$Time;


# instance fields
.field public blacklist elapsedTimestampMillis:J

.field public blacklist systemTimestampMillis:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 559
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 560
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$Time;
    .registers 2

    .line 542
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-nez v0, :cond_17

    .line 543
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 546
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 548
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 550
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$Time;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 632
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$Time;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 626
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$Time;
    .registers 3

    const-wide/16 v0, 0x0

    .line 564
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->systemTimestampMillis:J

    .line 565
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->elapsedTimestampMillis:J

    const/4 v0, 0x0

    .line 566
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 567
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 585
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 586
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->systemTimestampMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    .line 588
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 590
    :cond_12
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->elapsedTimestampMillis:J

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1e

    const/4 p0, 0x2

    .line 592
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1e
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$Time;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_23

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x10

    if-eq v0, v1, :cond_15

    .line 607
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_23

    .line 617
    :cond_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->elapsedTimestampMillis:J

    goto :goto_0

    .line 613
    :cond_1c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->systemTimestampMillis:J

    goto :goto_0

    :cond_23
    :goto_23
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

    .line 536
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$Time;

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

    .line 574
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->systemTimestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    .line 575
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 577
    :cond_c
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->elapsedTimestampMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_16

    const/4 v2, 0x2

    .line 578
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 580
    :cond_16
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
