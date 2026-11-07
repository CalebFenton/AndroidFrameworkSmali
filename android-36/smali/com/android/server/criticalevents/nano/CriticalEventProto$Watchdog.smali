.class public final Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CriticalEventProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/criticalevents/nano/CriticalEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Watchdog"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;


# instance fields
.field public blacklist subject:Ljava/lang/String;

.field public blacklist uuid:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 236
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 237
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    .line 238
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
    .registers 2

    .line 219
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    if-nez v0, :cond_15

    .line 220
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_7
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    if-nez v1, :cond_10

    .line 223
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    .line 225
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 227
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 302
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
    .registers 2

    .line 241
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->subject:Ljava/lang/String;

    .line 242
    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->uuid:Ljava/lang/String;

    .line 243
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->cachedSize:I

    .line 244
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 261
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 262
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->subject:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 263
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->subject:Ljava/lang/String;

    .line 264
    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    :cond_16
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 267
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->uuid:Ljava/lang/String;

    .line 268
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 270
    :cond_26
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

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
    .registers 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 279
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_20

    .line 283
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 284
    return-object p0

    .line 293
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->uuid:Ljava/lang/String;

    goto :goto_1e

    .line 289
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->subject:Ljava/lang/String;

    .line 290
    goto :goto_1e

    .line 281
    :sswitch_1d
    return-object p0

    .line 297
    .end local v0    # "tag":I
    :cond_1e
    :goto_1e
    goto :goto_1

    nop

    :sswitch_data_20
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_16
        0x12 -> :sswitch_f
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->subject:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 251
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 253
    :cond_10
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 254
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 256
    :cond_1e
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 257
    return-void
.end method
