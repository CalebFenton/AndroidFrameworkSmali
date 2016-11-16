.class public final Lcom/android/internal/telephony/TelephonyProto$Time;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Time"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$Time;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$Time;


# instance fields
.field private bitField0_:I

.field private elapsedTimestampMillis_:J

.field private systemTimestampMillis_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 466
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 467
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$Time;->clear()Lcom/android/internal/telephony/TelephonyProto$Time;

    #@6
    .line 466
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 2

    #@0
    .prologue
    .line 413
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$Time;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$Time;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 414
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 416
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$Time;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$Time;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 417
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$Time;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$Time;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$Time;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 421
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$Time;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$Time;

    #@13
    return-object v0

    #@14
    .line 414
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 542
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$Time;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$Time;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$Time;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$Time;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 536
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$Time;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$Time;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$Time;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 471
    const/4 v0, 0x0

    #@3
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@5
    .line 472
    iput-wide v2, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->systemTimestampMillis_:J

    #@7
    .line 473
    iput-wide v2, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->elapsedTimestampMillis_:J

    #@9
    .line 474
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@c
    .line 475
    const/4 v0, -0x1

    #@d
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->cachedSize:I

    #@f
    .line 476
    return-object p0
.end method

.method public clearElapsedTimestampMillis()Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 2

    #@0
    .prologue
    .line 459
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->elapsedTimestampMillis_:J

    #@4
    .line 460
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@6
    and-int/lit8 v0, v0, -0x3

    #@8
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@a
    .line 461
    return-object p0
.end method

.method public clearSystemTimestampMillis()Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 2

    #@0
    .prologue
    .line 440
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->systemTimestampMillis_:J

    #@4
    .line 441
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@6
    and-int/lit8 v0, v0, -0x2

    #@8
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@a
    .line 442
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    #@0
    .prologue
    .line 493
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 494
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@6
    and-int/lit8 v1, v1, 0x1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 496
    iget-wide v2, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->systemTimestampMillis_:J

    #@c
    const/4 v1, 0x1

    #@d
    .line 495
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    .line 498
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@14
    and-int/lit8 v1, v1, 0x2

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 500
    iget-wide v2, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->elapsedTimestampMillis_:J

    #@1a
    const/4 v1, 0x2

    #@1b
    .line 499
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 502
    :cond_1
    return v0
.end method

.method public getElapsedTimestampMillis()J
    .locals 2

    #@0
    .prologue
    .line 448
    iget-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->elapsedTimestampMillis_:J

    #@2
    return-wide v0
.end method

.method public getSystemTimestampMillis()J
    .locals 2

    #@0
    .prologue
    .line 429
    iget-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->systemTimestampMillis_:J

    #@2
    return-wide v0
.end method

.method public hasElapsedTimestampMillis()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 456
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasSystemTimestampMillis()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 437
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 506
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$Time;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$Time;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 510
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v0

    #@4
    .line 511
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 515
    invoke-super {p0, p1, v0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 516
    return-object p0

    #@e
    .line 513
    :sswitch_0
    return-object p0

    #@f
    .line 521
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    #@12
    move-result-wide v2

    #@13
    iput-wide v2, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->systemTimestampMillis_:J

    #@15
    .line 522
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@17
    or-int/lit8 v1, v1, 0x1

    #@19
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@1b
    goto :goto_0

    #@1c
    .line 526
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    #@1f
    move-result-wide v2

    #@20
    iput-wide v2, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->elapsedTimestampMillis_:J

    #@22
    .line 527
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@24
    or-int/lit8 v1, v1, 0x2

    #@26
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@28
    goto :goto_0

    #@29
    .line 511
    nop

    #@2a
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setElapsedTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 451
    iput-wide p1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->elapsedTimestampMillis_:J

    #@2
    .line 452
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@8
    .line 453
    return-object p0
.end method

.method public setSystemTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$Time;
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 432
    iput-wide p1, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->systemTimestampMillis_:J

    #@2
    .line 433
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@8
    .line 434
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 482
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 483
    iget-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->systemTimestampMillis_:J

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    #@c
    .line 485
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->bitField0_:I

    #@e
    and-int/lit8 v0, v0, 0x2

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 486
    iget-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$Time;->elapsedTimestampMillis_:J

    #@14
    const/4 v2, 0x2

    #@15
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    #@18
    .line 488
    :cond_1
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@1b
    .line 481
    return-void
.end method
