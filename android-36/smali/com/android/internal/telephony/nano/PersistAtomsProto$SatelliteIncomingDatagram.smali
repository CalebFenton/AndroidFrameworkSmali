.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;


# instance fields
.field public blacklist carrierId:I

.field public blacklist datagramSizeBytes:I

.field public blacklist datagramTransferTimeMillis:J

.field public blacklist isDemoMode:Z

.field public blacklist isNtnOnlyCarrier:Z

.field public blacklist resultCode:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9965
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9966
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;
    .registers 2

    .line 9936
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    if-nez v0, :cond_17

    .line 9937
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 9939
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 9940
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 9942
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 9944
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10086
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 10080
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;
    .registers 4

    const/4 v0, 0x0

    .line 9970
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->resultCode:I

    .line 9971
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramSizeBytes:I

    const-wide/16 v1, 0x0

    .line 9972
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramTransferTimeMillis:J

    .line 9973
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isDemoMode:Z

    .line 9974
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->carrierId:I

    .line 9975
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isNtnOnlyCarrier:Z

    const/4 v0, 0x0

    .line 9976
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 9977
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 10007
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10008
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->resultCode:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 10010
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10012
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramSizeBytes:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 10014
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10016
    :cond_18
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramTransferTimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_26

    const/4 v3, 0x3

    .line 10018
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10020
    :cond_26
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isDemoMode:Z

    if-eqz v1, :cond_30

    const/4 v2, 0x4

    .line 10022
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10024
    :cond_30
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->carrierId:I

    if-eqz v1, :cond_3a

    const/4 v2, 0x5

    .line 10026
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10028
    :cond_3a
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isNtnOnlyCarrier:Z

    if-eqz p0, :cond_44

    const/4 v1, 0x6

    .line 10030
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_44
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10040
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_4f

    const/16 v1, 0x8

    if-eq v0, v1, :cond_48

    const/16 v1, 0x10

    if-eq v0, v1, :cond_41

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x20

    if-eq v0, v1, :cond_33

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x30

    if-eq v0, v1, :cond_25

    .line 10045
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4f

    .line 10071
    :cond_25
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isNtnOnlyCarrier:Z

    goto :goto_0

    .line 10067
    :cond_2c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->carrierId:I

    goto :goto_0

    .line 10063
    :cond_33
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isDemoMode:Z

    goto :goto_0

    .line 10059
    :cond_3a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramTransferTimeMillis:J

    goto :goto_0

    .line 10055
    :cond_41
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramSizeBytes:I

    goto :goto_0

    .line 10051
    :cond_48
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->resultCode:I

    goto :goto_0

    :cond_4f
    :goto_4f
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

    .line 9930
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

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

    .line 9984
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->resultCode:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 9985
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9987
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramSizeBytes:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 9988
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9990
    :cond_10
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramTransferTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x3

    .line 9991
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 9993
    :cond_1c
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isDemoMode:Z

    if-eqz v0, :cond_24

    const/4 v1, 0x4

    .line 9994
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9996
    :cond_24
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->carrierId:I

    if-eqz v0, :cond_2c

    const/4 v1, 0x5

    .line 9997
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9999
    :cond_2c
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isNtnOnlyCarrier:Z

    if-eqz v0, :cond_34

    const/4 v1, 0x6

    .line 10000
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10002
    :cond_34
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
