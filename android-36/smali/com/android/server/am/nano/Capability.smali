.class public final Lcom/android/server/am/nano/Capability;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "Capability.java"


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/am/nano/Capability;


# instance fields
.field public blacklist name:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/android/server/am/nano/Capability;->clear()Lcom/android/server/am/nano/Capability;

    .line 28
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/am/nano/Capability;
    .registers 2

    .line 12
    sget-object v0, Lcom/android/server/am/nano/Capability;->_emptyArray:[Lcom/android/server/am/nano/Capability;

    if-nez v0, :cond_15

    .line 13
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_7
    sget-object v1, Lcom/android/server/am/nano/Capability;->_emptyArray:[Lcom/android/server/am/nano/Capability;

    if-nez v1, :cond_10

    .line 16
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/am/nano/Capability;

    sput-object v1, Lcom/android/server/am/nano/Capability;->_emptyArray:[Lcom/android/server/am/nano/Capability;

    .line 18
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 20
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/am/nano/Capability;->_emptyArray:[Lcom/android/server/am/nano/Capability;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/Capability;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/android/server/am/nano/Capability;

    invoke-direct {v0}, Lcom/android/server/am/nano/Capability;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/am/nano/Capability;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/Capability;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/am/nano/Capability;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/android/server/am/nano/Capability;

    invoke-direct {v0}, Lcom/android/server/am/nano/Capability;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/nano/Capability;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/am/nano/Capability;
    .registers 2

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/nano/Capability;->name:Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/nano/Capability;->cachedSize:I

    .line 33
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 47
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 48
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/am/nano/Capability;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 49
    iget-object v1, p0, Lcom/android/server/am/nano/Capability;->name:Ljava/lang/String;

    .line 50
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
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

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/am/nano/Capability;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/Capability;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/Capability;
    .registers 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 61
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_18

    .line 65
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 66
    return-object p0

    .line 71
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/nano/Capability;->name:Ljava/lang/String;

    goto :goto_17

    .line 63
    :sswitch_16
    return-object p0

    .line 75
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

    .line 39
    iget-object v0, p0, Lcom/android/server/am/nano/Capability;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 40
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/nano/Capability;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 42
    :cond_10
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 43
    return-void
.end method
