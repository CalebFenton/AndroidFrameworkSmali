.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpConnectivityLog"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;


# instance fields
.field public droppedEvents:I

.field public events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1962
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    #@3
    .line 1963
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    #@6
    .line 1962
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;
    .locals 2

    #@0
    .prologue
    .line 1943
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1944
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 1946
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1947
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    #@e
    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1951
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    #@13
    return-object v0

    #@14
    .line 1944
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2060
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 2054
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;
    .locals 1

    #@0
    .prologue
    .line 1967
    invoke-static {}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@6
    .line 1968
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    #@9
    .line 1969
    const/4 v0, -0x1

    #@a
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->cachedSize:I

    #@c
    .line 1970
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    #@0
    .prologue
    .line 1992
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    #@3
    move-result v2

    #@4
    .line 1993
    .local v2, "size":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@6
    if-eqz v3, :cond_1

    #@8
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@a
    array-length v3, v3

    #@b
    if-lez v3, :cond_1

    #@d
    .line 1994
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@10
    array-length v3, v3

    #@11
    if-ge v1, v3, :cond_1

    #@13
    .line 1995
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@15
    aget-object v0, v3, v1

    #@17
    .line 1996
    .local v0, "element":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    if-eqz v0, :cond_0

    #@19
    .line 1998
    const/4 v3, 0x1

    #@1a
    .line 1997
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@1d
    move-result v3

    #@1e
    add-int/2addr v2, v3

    #@1f
    .line 1994
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 2002
    .end local v0    # "element":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 2004
    iget v3, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    #@28
    const/4 v4, 0x2

    #@29
    .line 2003
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@2c
    move-result v3

    #@2d
    add-int/2addr v2, v3

    #@2e
    .line 2006
    :cond_2
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2014
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@4
    move-result v3

    #@5
    .line 2015
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    #@8
    .line 2019
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@b
    move-result v5

    #@c
    if-nez v5, :cond_0

    #@e
    .line 2020
    return-object p0

    #@f
    .line 2017
    :sswitch_0
    return-object p0

    #@10
    .line 2026
    :sswitch_1
    const/16 v5, 0xa

    #@12
    .line 2025
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@15
    move-result v0

    #@16
    .line 2027
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@18
    if-nez v5, :cond_2

    #@1a
    move v1, v4

    #@1b
    .line 2029
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    #@1d
    new-array v2, v5, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@1f
    .line 2030
    .local v2, "newArray":[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    if-eqz v1, :cond_1

    #@21
    .line 2031
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@23
    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@26
    .line 2033
    :cond_1
    :goto_2
    array-length v5, v2

    #@27
    add-int/lit8 v5, v5, -0x1

    #@29
    if-ge v1, v5, :cond_3

    #@2b
    .line 2034
    new-instance v5, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@2d
    invoke-direct {v5}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    #@30
    aput-object v5, v2, v1

    #@32
    .line 2035
    aget-object v5, v2, v1

    #@34
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@37
    .line 2036
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3a
    .line 2033
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_2

    #@3d
    .line 2027
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    :cond_2
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@3f
    array-length v1, v5

    #@40
    goto :goto_1

    #@41
    .line 2039
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    :cond_3
    new-instance v5, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@43
    invoke-direct {v5}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    #@46
    aput-object v5, v2, v1

    #@48
    .line 2040
    aget-object v5, v2, v1

    #@4a
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@4d
    .line 2041
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@4f
    goto :goto_0

    #@50
    .line 2045
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@53
    move-result v5

    #@54
    iput v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    #@56
    goto :goto_0

    #@57
    .line 2015
    nop

    #@58
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
    .line 2010
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1976
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@2
    if-eqz v2, :cond_1

    #@4
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@6
    array-length v2, v2

    #@7
    if-lez v2, :cond_1

    #@9
    .line 1977
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@c
    array-length v2, v2

    #@d
    if-ge v1, v2, :cond_1

    #@f
    .line 1978
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    #@11
    aget-object v0, v2, v1

    #@13
    .line 1979
    .local v0, "element":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    if-eqz v0, :cond_0

    #@15
    .line 1980
    const/4 v2, 0x1

    #@16
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@19
    .line 1977
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1984
    .end local v0    # "element":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 1985
    iget v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    #@22
    const/4 v3, 0x2

    #@23
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@26
    .line 1987
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@29
    .line 1975
    return-void
.end method
