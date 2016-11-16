.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpReachabilityEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;


# instance fields
.field public eventType:I

.field public ifName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 316
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    #@3
    .line 317
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@6
    .line 316
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;
    .locals 2

    #@0
    .prologue
    .line 297
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 298
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 300
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 301
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@e
    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 305
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@13
    return-object v0

    #@14
    .line 298
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 388
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;
    .locals 1

    #@0
    .prologue
    .line 321
    const-string/jumbo v0, ""

    #@3
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->ifName:Ljava/lang/String;

    #@5
    .line 322
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->eventType:I

    #@8
    .line 323
    const/4 v0, -0x1

    #@9
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->cachedSize:I

    #@b
    .line 324
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 341
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 342
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->ifName:Ljava/lang/String;

    #@6
    const-string/jumbo v2, ""

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 344
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->ifName:Ljava/lang/String;

    #@11
    const/4 v2, 0x1

    #@12
    .line 343
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    #@15
    move-result v1

    #@16
    add-int/2addr v0, v1

    #@17
    .line 346
    :cond_0
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->eventType:I

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 348
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->eventType:I

    #@1d
    const/4 v2, 0x2

    #@1e
    .line 347
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@21
    move-result v1

    #@22
    add-int/2addr v0, v1

    #@23
    .line 350
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 358
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v0

    #@4
    .line 359
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 363
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 364
    return-object p0

    #@e
    .line 361
    :sswitch_0
    return-object p0

    #@f
    .line 369
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->ifName:Ljava/lang/String;

    #@15
    goto :goto_0

    #@16
    .line 373
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->eventType:I

    #@1c
    goto :goto_0

    #@1d
    .line 359
    nop

    #@1e
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 354
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

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
    .line 330
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->ifName:Ljava/lang/String;

    #@2
    const-string/jumbo v1, ""

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 331
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->ifName:Ljava/lang/String;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    #@11
    .line 333
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->eventType:I

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 334
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->eventType:I

    #@17
    const/4 v1, 0x2

    #@18
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@1b
    .line 336
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@1e
    .line 329
    return-void
.end method
