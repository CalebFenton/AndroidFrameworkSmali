.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpConnectivityLog"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;


# instance fields
.field public blacklist droppedEvents:I

.field public blacklist events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

.field public blacklist version:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3917
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 3918
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;

    .line 3919
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;
    .registers 2

    .line 3897
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;

    if-nez v0, :cond_15

    .line 3898
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3900
    :try_start_7
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;

    if-nez v1, :cond_10

    .line 3901
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;

    .line 3903
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 3905
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4027
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4021
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;
    .registers 2

    .line 3922
    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 3923
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    .line 3924
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->version:I

    .line 3925
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->cachedSize:I

    .line 3926
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 3951
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 3952
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    array-length v1, v1

    if-lez v1, :cond_23

    .line 3953
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 3954
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    aget-object v2, v2, v1

    .line 3955
    .local v2, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    if-eqz v2, :cond_20

    .line 3956
    nop

    .line 3957
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 3953
    .end local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3961
    .end local v1    # "i":I
    :cond_23
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    if-eqz v1, :cond_2f

    .line 3962
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    .line 3963
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3965
    :cond_2f
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->version:I

    if-eqz v1, :cond_3b

    .line 3966
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->version:I

    .line 3967
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3969
    :cond_3b
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

    .line 3891
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;
    .registers 8
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3977
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3978
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_62

    .line 3982
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_60

    .line 3983
    return-object p0

    .line 4012
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->version:I

    goto :goto_60

    .line 4008
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    .line 4009
    goto :goto_60

    .line 3988
    :sswitch_1d
    nop

    .line 3989
    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 3990
    .local v1, "arrayLength":I
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    const/4 v3, 0x0

    if-nez v2, :cond_2b

    move v2, v3

    goto :goto_2e

    :cond_2b
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    array-length v2, v2

    .line 3991
    .local v2, "i":I
    :goto_2e
    add-int v4, v2, v1

    new-array v4, v4, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 3993
    .local v4, "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    if-eqz v2, :cond_39

    .line 3994
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3996
    :cond_39
    :goto_39
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_50

    .line 3997
    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    aput-object v3, v4, v2

    .line 3998
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3999
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3996
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 4002
    :cond_50
    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    aput-object v3, v4, v2

    .line 4003
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4004
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 4005
    goto :goto_60

    .line 3980
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    :sswitch_5f
    return-object p0

    .line 4016
    .end local v0    # "tag":I
    :cond_60
    :goto_60
    goto :goto_1

    nop

    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_5f
        0xa -> :sswitch_1d
        0x10 -> :sswitch_16
        0x18 -> :sswitch_f
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

    .line 3932
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    array-length v0, v0

    if-lez v0, :cond_1c

    .line 3933
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 3934
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    aget-object v1, v1, v0

    .line 3935
    .local v1, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    if-eqz v1, :cond_19

    .line 3936
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 3933
    .end local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3940
    .end local v0    # "i":I
    :cond_1c
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    if-eqz v0, :cond_26

    .line 3941
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3943
    :cond_26
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->version:I

    if-eqz v0, :cond_30

    .line 3944
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->version:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3946
    :cond_30
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3947
    return-void
.end method
