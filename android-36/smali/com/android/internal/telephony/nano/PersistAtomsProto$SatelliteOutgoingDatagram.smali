.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;


# instance fields
.field public blacklist carrierId:I

.field public blacklist datagramSizeBytes:I

.field public blacklist datagramTransferTimeMillis:J

.field public blacklist datagramType:I

.field public blacklist isDemoMode:Z

.field public blacklist isNtnOnlyCarrier:Z

.field public blacklist resultCode:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10128
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10129
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;
    .registers 2

    .line 10096
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    if-nez v0, :cond_17

    .line 10097
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 10099
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 10100
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 10102
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 10104
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10261
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 10255
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;
    .registers 4

    const/4 v0, 0x0

    .line 10133
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramType:I

    .line 10134
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->resultCode:I

    .line 10135
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramSizeBytes:I

    const-wide/16 v1, 0x0

    .line 10136
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramTransferTimeMillis:J

    .line 10137
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isDemoMode:Z

    .line 10138
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->carrierId:I

    .line 10139
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isNtnOnlyCarrier:Z

    const/4 v0, 0x0

    .line 10140
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 10141
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 10174
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10175
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramType:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 10177
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10179
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->resultCode:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 10181
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10183
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramSizeBytes:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 10185
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10187
    :cond_22
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramTransferTimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_30

    const/4 v3, 0x4

    .line 10189
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10191
    :cond_30
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isDemoMode:Z

    if-eqz v1, :cond_3a

    const/4 v2, 0x5

    .line 10193
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10195
    :cond_3a
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->carrierId:I

    if-eqz v1, :cond_44

    const/4 v2, 0x6

    .line 10197
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10199
    :cond_44
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isNtnOnlyCarrier:Z

    if-eqz p0, :cond_4e

    const/4 v1, 0x7

    .line 10201
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_4e
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10211
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_53

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4c

    const/16 v1, 0x18

    if-eq v0, v1, :cond_45

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3e

    const/16 v1, 0x28

    if-eq v0, v1, :cond_37

    const/16 v1, 0x30

    if-eq v0, v1, :cond_30

    const/16 v1, 0x38

    if-eq v0, v1, :cond_29

    .line 10216
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_5a

    .line 10246
    :cond_29
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isNtnOnlyCarrier:Z

    goto :goto_0

    .line 10242
    :cond_30
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->carrierId:I

    goto :goto_0

    .line 10238
    :cond_37
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isDemoMode:Z

    goto :goto_0

    .line 10234
    :cond_3e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramTransferTimeMillis:J

    goto :goto_0

    .line 10230
    :cond_45
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramSizeBytes:I

    goto :goto_0

    .line 10226
    :cond_4c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->resultCode:I

    goto :goto_0

    .line 10222
    :cond_53
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramType:I

    goto :goto_0

    :cond_5a
    :goto_5a
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

    .line 10090
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10148
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramType:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 10149
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10151
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->resultCode:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 10152
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10154
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramSizeBytes:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 10155
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10157
    :cond_18
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramTransferTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_24

    const/4 v2, 0x4

    .line 10158
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 10160
    :cond_24
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isDemoMode:Z

    if-eqz v0, :cond_2c

    const/4 v1, 0x5

    .line 10161
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10163
    :cond_2c
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->carrierId:I

    if-eqz v0, :cond_34

    const/4 v1, 0x6

    .line 10164
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10166
    :cond_34
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isNtnOnlyCarrier:Z

    if-eqz v0, :cond_3c

    const/4 v1, 0x7

    .line 10167
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10169
    :cond_3c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
