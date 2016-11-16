.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkId"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;


# instance fields
.field public networkId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    #@3
    .line 33
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@6
    .line 32
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    .locals 2

    #@0
    .prologue
    .line 16
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 17
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 19
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 20
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@e
    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 24
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@13
    return-object v0

    #@14
    .line 17
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    .locals 1

    #@0
    .prologue
    .line 37
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->networkId:I

    #@3
    .line 38
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->cachedSize:I

    #@6
    .line 39
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 53
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 54
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->networkId:I

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 56
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->networkId:I

    #@a
    const/4 v2, 0x1

    #@b
    .line 55
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@e
    move-result v1

    #@f
    add-int/2addr v0, v1

    #@10
    .line 58
    :cond_0
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v0

    #@4
    .line 67
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 71
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 72
    return-object p0

    #@e
    .line 69
    :sswitch_0
    return-object p0

    #@f
    .line 77
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@12
    move-result v1

    #@13
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->networkId:I

    #@15
    goto :goto_0

    #@16
    .line 67
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->networkId:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 46
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->networkId:I

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@a
    .line 48
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@d
    .line 44
    return-void
.end method
