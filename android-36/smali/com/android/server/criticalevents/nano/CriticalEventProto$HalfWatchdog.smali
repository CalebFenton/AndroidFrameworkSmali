.class public final Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CriticalEventProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/criticalevents/nano/CriticalEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HalfWatchdog"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;


# instance fields
.field public blacklist subject:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 332
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 333
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    .line 334
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;
    .registers 2

    .line 318
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    if-nez v0, :cond_15

    .line 319
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_7
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    if-nez v1, :cond_10

    .line 322
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    .line 324
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 326
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 386
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;
    .registers 2

    .line 337
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->subject:Ljava/lang/String;

    .line 338
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->cachedSize:I

    .line 339
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 353
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 354
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->subject:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 355
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->subject:Ljava/lang/String;

    .line 356
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 358
    :cond_16
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

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;
    .registers 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 367
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_18

    .line 371
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 372
    return-object p0

    .line 377
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->subject:Ljava/lang/String;

    goto :goto_17

    .line 369
    :sswitch_16
    return-object p0

    .line 381
    .end local v0    # "tag":I
    :cond_17
    :goto_17
    goto :goto_1

    :sswitch_data_18
    .sparse-switch
        0x0 -> :sswitch_16
        0xa -> :sswitch_f
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->subject:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 346
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 348
    :cond_10
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 349
    return-void
.end method
