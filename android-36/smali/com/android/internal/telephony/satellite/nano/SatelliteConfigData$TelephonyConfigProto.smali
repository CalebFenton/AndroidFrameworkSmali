.class public final Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "SatelliteConfigData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;


# instance fields
.field public blacklist satellite:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;->clear()Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;
    .registers 2

    .line 14
    sget-object v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;

    if-nez v0, :cond_17

    .line 15
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 18
    new-array v1, v1, [Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;

    sput-object v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 20
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 22
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;
    .registers 2

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;->satellite:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    .line 34
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 3

    .line 50
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;->satellite:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    if-eqz p0, :cond_e

    const/4 v1, 0x1

    .line 53
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_e
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
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

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;

    move-result-object p0

    return-object p0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_22

    const/16 v1, 0xa

    if-eq v0, v1, :cond_11

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_22

    .line 74
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;->satellite:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    if-nez v0, :cond_1c

    .line 75
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;->satellite:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    .line 77
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;->satellite:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_22
    :goto_22
    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;->satellite:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 43
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 45
    :cond_8
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
