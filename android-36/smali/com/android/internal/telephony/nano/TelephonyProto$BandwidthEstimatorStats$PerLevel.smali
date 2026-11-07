.class public final Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PerLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;


# instance fields
.field public blacklist avgBwKbps:I

.field public blacklist bwEstErrorPercent:I

.field public blacklist count:I

.field public blacklist signalLevel:I

.field public blacklist staticBwErrorPercent:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9205
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9206
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;
    .registers 2

    .line 9179
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    if-nez v0, :cond_17

    .line 9180
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 9182
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 9183
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 9185
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 9187
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9314
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 9308
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;
    .registers 2

    const/4 v0, 0x0

    .line 9210
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->signalLevel:I

    .line 9211
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->count:I

    .line 9212
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->avgBwKbps:I

    .line 9213
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->staticBwErrorPercent:I

    .line 9214
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->bwEstErrorPercent:I

    const/4 v0, 0x0

    .line 9215
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 9216
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 9243
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9244
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->signalLevel:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 9246
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9248
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->count:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 9250
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9252
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->avgBwKbps:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 9254
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9256
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->staticBwErrorPercent:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 9258
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9260
    :cond_2c
    iget p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->bwEstErrorPercent:I

    if-eqz p0, :cond_36

    const/4 v1, 0x5

    .line 9262
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_36
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9272
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_44

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3d

    const/16 v1, 0x10

    if-eq v0, v1, :cond_36

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x20

    if-eq v0, v1, :cond_28

    const/16 v1, 0x28

    if-eq v0, v1, :cond_21

    .line 9277
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_44

    .line 9299
    :cond_21
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->bwEstErrorPercent:I

    goto :goto_0

    .line 9295
    :cond_28
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->staticBwErrorPercent:I

    goto :goto_0

    .line 9291
    :cond_2f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->avgBwKbps:I

    goto :goto_0

    .line 9287
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->count:I

    goto :goto_0

    .line 9283
    :cond_3d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->signalLevel:I

    goto :goto_0

    :cond_44
    :goto_44
    return-object p0
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

    .line 9173
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9223
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->signalLevel:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 9224
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 9226
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->count:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 9227
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 9229
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->avgBwKbps:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 9230
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 9232
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->staticBwErrorPercent:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 9233
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 9235
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->bwEstErrorPercent:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 9236
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 9238
    :cond_28
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
