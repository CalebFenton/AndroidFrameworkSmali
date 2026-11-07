.class public final Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CriticalEventProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/criticalevents/nano/CriticalEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemServerStarted"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 174
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;->clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    .line 175
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;
    .registers 2

    .line 162
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    if-nez v0, :cond_15

    .line 163
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_7
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    if-nez v1, :cond_10

    .line 166
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    .line 168
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 170
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 203
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;
    .registers 2

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;->cachedSize:I

    .line 179
    return-object p0
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

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;
    .registers 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 188
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_12

    .line 192
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 193
    return-object p0

    .line 190
    :pswitch_f
    return-object p0

    .line 198
    .end local v0    # "tag":I
    :cond_10
    goto :goto_1

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch
.end method
