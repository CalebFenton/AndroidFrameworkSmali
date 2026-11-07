.class public final Lcom/android/server/am/nano/VMInfo;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "VMInfo.java"


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/am/nano/VMInfo;


# instance fields
.field public blacklist name:Ljava/lang/String;

.field public blacklist version:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/android/server/am/nano/VMInfo;->clear()Lcom/android/server/am/nano/VMInfo;

    .line 31
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/am/nano/VMInfo;
    .registers 2

    .line 12
    sget-object v0, Lcom/android/server/am/nano/VMInfo;->_emptyArray:[Lcom/android/server/am/nano/VMInfo;

    if-nez v0, :cond_15

    .line 13
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_7
    sget-object v1, Lcom/android/server/am/nano/VMInfo;->_emptyArray:[Lcom/android/server/am/nano/VMInfo;

    if-nez v1, :cond_10

    .line 16
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/am/nano/VMInfo;

    sput-object v1, Lcom/android/server/am/nano/VMInfo;->_emptyArray:[Lcom/android/server/am/nano/VMInfo;

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
    sget-object v0, Lcom/android/server/am/nano/VMInfo;->_emptyArray:[Lcom/android/server/am/nano/VMInfo;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/VMInfo;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/android/server/am/nano/VMInfo;

    invoke-direct {v0}, Lcom/android/server/am/nano/VMInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/am/nano/VMInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/VMInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/am/nano/VMInfo;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/android/server/am/nano/VMInfo;

    invoke-direct {v0}, Lcom/android/server/am/nano/VMInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/nano/VMInfo;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/am/nano/VMInfo;
    .registers 2

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/nano/VMInfo;->name:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/android/server/am/nano/VMInfo;->version:Ljava/lang/String;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/nano/VMInfo;->cachedSize:I

    .line 37
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 54
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 55
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/am/nano/VMInfo;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 56
    iget-object v1, p0, Lcom/android/server/am/nano/VMInfo;->name:Ljava/lang/String;

    .line 57
    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    :cond_16
    iget-object v1, p0, Lcom/android/server/am/nano/VMInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 60
    iget-object v1, p0, Lcom/android/server/am/nano/VMInfo;->version:Ljava/lang/String;

    .line 61
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
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

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/am/nano/VMInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/VMInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/VMInfo;
    .registers 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 72
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_20

    .line 76
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 77
    return-object p0

    .line 86
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/nano/VMInfo;->version:Ljava/lang/String;

    goto :goto_1e

    .line 82
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/nano/VMInfo;->name:Ljava/lang/String;

    .line 83
    goto :goto_1e

    .line 74
    :sswitch_1d
    return-object p0

    .line 90
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

    .line 43
    iget-object v0, p0, Lcom/android/server/am/nano/VMInfo;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 44
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/am/nano/VMInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 46
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/nano/VMInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 47
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/am/nano/VMInfo;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 49
    :cond_1e
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 50
    return-void
.end method
