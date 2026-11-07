.class public final Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CriticalEventProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/criticalevents/nano/CriticalEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppNotResponding"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;


# instance fields
.field public blacklist pid:I

.field public blacklist process:Ljava/lang/String;

.field public blacklist processClass:I

.field public blacklist subject:Ljava/lang/String;

.field public blacklist uid:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 428
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 429
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    .line 430
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
    .registers 2

    .line 402
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    if-nez v0, :cond_15

    .line 403
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_7
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    if-nez v1, :cond_10

    .line 406
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    .line 408
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 410
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 538
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
    .registers 2

    .line 433
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->subject:Ljava/lang/String;

    .line 434
    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    .line 435
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    .line 436
    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    .line 437
    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    .line 438
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->cachedSize:I

    .line 439
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 465
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 466
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->subject:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 467
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->subject:Ljava/lang/String;

    .line 468
    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 470
    :cond_16
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 471
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    .line 472
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 474
    :cond_26
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    if-eqz v1, :cond_32

    .line 475
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    .line 476
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 478
    :cond_32
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    if-eqz v1, :cond_3e

    .line 479
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    .line 480
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 482
    :cond_3e
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    if-eqz v1, :cond_4a

    .line 483
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    .line 484
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 486
    :cond_4a
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
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

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
    .registers 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 495
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_38

    .line 499
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_37

    .line 500
    return-object p0

    .line 521
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 522
    .local v1, "value":I
    packed-switch v1, :pswitch_data_52

    goto :goto_19

    .line 527
    :pswitch_17
    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    .line 530
    :goto_19
    goto :goto_37

    .line 517
    .end local v1    # "value":I
    :sswitch_1a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    .line 518
    goto :goto_37

    .line 513
    :sswitch_21
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    .line 514
    goto :goto_37

    .line 509
    :sswitch_28
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    .line 510
    goto :goto_37

    .line 505
    :sswitch_2f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->subject:Ljava/lang/String;

    .line 506
    goto :goto_37

    .line 497
    :sswitch_36
    return-object p0

    .line 533
    .end local v0    # "tag":I
    :cond_37
    :goto_37
    goto :goto_1

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_36
        0xa -> :sswitch_2f
        0x12 -> :sswitch_28
        0x18 -> :sswitch_21
        0x20 -> :sswitch_1a
        0x28 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->subject:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 446
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 448
    :cond_10
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 449
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 451
    :cond_1e
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    if-eqz v0, :cond_28

    .line 452
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 454
    :cond_28
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    if-eqz v0, :cond_32

    .line 455
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 457
    :cond_32
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    if-eqz v0, :cond_3c

    .line 458
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 460
    :cond_3c
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 461
    return-void
.end method
