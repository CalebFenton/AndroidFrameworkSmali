.class public final Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CriticalEventProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/criticalevents/nano/CriticalEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExcessiveBinderCalls"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;


# instance fields
.field public blacklist uid:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;->clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    .line 37
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;
    .registers 2

    .line 21
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    if-nez v0, :cond_15

    .line 22
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_7
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    if-nez v1, :cond_10

    .line 25
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    .line 27
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 29
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;
    .registers 2

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;->uid:I

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;->cachedSize:I

    .line 42
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 56
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 57
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;->uid:I

    if-eqz v1, :cond_10

    .line 58
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;->uid:I

    .line 59
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_10
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

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;
    .registers 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 70
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_18

    .line 74
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 75
    return-object p0

    .line 80
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;->uid:I

    goto :goto_17

    .line 72
    :sswitch_16
    return-object p0

    .line 84
    .end local v0    # "tag":I
    :cond_17
    :goto_17
    goto :goto_1

    :sswitch_data_18
    .sparse-switch
        0x0 -> :sswitch_16
        0x8 -> :sswitch_f
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

    .line 48
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;->uid:I

    if-eqz v0, :cond_a

    .line 49
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;->uid:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 51
    :cond_a
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 52
    return-void
.end method
