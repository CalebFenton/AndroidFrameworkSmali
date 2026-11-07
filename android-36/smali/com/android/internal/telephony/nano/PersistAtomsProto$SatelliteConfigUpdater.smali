.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;


# instance fields
.field public blacklist carrierConfigResult:I

.field public blacklist configVersion:I

.field public blacklist count:I

.field public blacklist oemConfigResult:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11777
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11778
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;
    .registers 2

    .line 11754
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    if-nez v0, :cond_17

    .line 11755
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 11757
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 11758
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 11760
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 11762
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11874
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 11868
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;
    .registers 2

    const/4 v0, 0x0

    .line 11782
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->configVersion:I

    .line 11783
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->oemConfigResult:I

    .line 11784
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->carrierConfigResult:I

    .line 11785
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->count:I

    const/4 v0, 0x0

    .line 11786
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 11787
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 11811
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 11812
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->configVersion:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 11814
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11816
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->oemConfigResult:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 11818
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11820
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->carrierConfigResult:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 11822
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11824
    :cond_22
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->count:I

    if-eqz p0, :cond_2c

    const/4 v1, 0x4

    .line 11826
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_2c
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11836
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_39

    const/16 v1, 0x8

    if-eq v0, v1, :cond_32

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x18

    if-eq v0, v1, :cond_24

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1d

    .line 11841
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_39

    .line 11859
    :cond_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->count:I

    goto :goto_0

    .line 11855
    :cond_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->carrierConfigResult:I

    goto :goto_0

    .line 11851
    :cond_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->oemConfigResult:I

    goto :goto_0

    .line 11847
    :cond_32
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->configVersion:I

    goto :goto_0

    :cond_39
    :goto_39
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

    .line 11748
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

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

    .line 11794
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->configVersion:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 11795
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11797
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->oemConfigResult:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 11798
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11800
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->carrierConfigResult:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 11801
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11803
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->count:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 11804
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11806
    :cond_20
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
