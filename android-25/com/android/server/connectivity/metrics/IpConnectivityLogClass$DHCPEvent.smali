.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DHCPEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;


# instance fields
.field public durationMs:I

.field public errorCode:I

.field public ifName:Ljava/lang/String;

.field public stateTransition:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 942
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    #@3
    .line 943
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@6
    .line 942
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;
    .locals 2

    #@0
    .prologue
    .line 917
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 918
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 920
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 921
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@e
    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 925
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@13
    return-object v0

    #@14
    .line 918
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1038
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 1032
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 947
    const-string/jumbo v0, ""

    #@4
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    #@6
    .line 948
    const-string/jumbo v0, ""

    #@9
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->stateTransition:Ljava/lang/String;

    #@b
    .line 949
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->errorCode:I

    #@d
    .line 950
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    #@f
    .line 951
    const/4 v0, -0x1

    #@10
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->cachedSize:I

    #@12
    .line 952
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 975
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 976
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    #@6
    const-string/jumbo v2, ""

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 978
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    #@11
    const/4 v2, 0x1

    #@12
    .line 977
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    #@15
    move-result v1

    #@16
    add-int/2addr v0, v1

    #@17
    .line 980
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->stateTransition:Ljava/lang/String;

    #@19
    const-string/jumbo v2, ""

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_1

    #@22
    .line 982
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->stateTransition:Ljava/lang/String;

    #@24
    const/4 v2, 0x2

    #@25
    .line 981
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    #@28
    move-result v1

    #@29
    add-int/2addr v0, v1

    #@2a
    .line 984
    :cond_1
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->errorCode:I

    #@2c
    if-eqz v1, :cond_2

    #@2e
    .line 986
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->errorCode:I

    #@30
    const/4 v2, 0x3

    #@31
    .line 985
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@34
    move-result v1

    #@35
    add-int/2addr v0, v1

    #@36
    .line 988
    :cond_2
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 990
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    #@3c
    const/4 v2, 0x4

    #@3d
    .line 989
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@40
    move-result v1

    #@41
    add-int/2addr v0, v1

    #@42
    .line 992
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v0

    #@4
    .line 1001
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 1005
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1006
    return-object p0

    #@e
    .line 1003
    :sswitch_0
    return-object p0

    #@f
    .line 1011
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    #@15
    goto :goto_0

    #@16
    .line 1015
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->stateTransition:Ljava/lang/String;

    #@1c
    goto :goto_0

    #@1d
    .line 1019
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@20
    move-result v1

    #@21
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->errorCode:I

    #@23
    goto :goto_0

    #@24
    .line 1023
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@27
    move-result v1

    #@28
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    #@2a
    goto :goto_0

    #@2b
    .line 1001
    nop

    #@2c
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 996
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

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
    .line 958
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    #@2
    const-string/jumbo v1, ""

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 959
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    #@11
    .line 961
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->stateTransition:Ljava/lang/String;

    #@13
    const-string/jumbo v1, ""

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 962
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->stateTransition:Ljava/lang/String;

    #@1e
    const/4 v1, 0x2

    #@1f
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    #@22
    .line 964
    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->errorCode:I

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 965
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->errorCode:I

    #@28
    const/4 v1, 0x3

    #@29
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@2c
    .line 967
    :cond_2
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 968
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    #@32
    const/4 v1, 0x4

    #@33
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@36
    .line 970
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@39
    .line 957
    return-void
.end method
