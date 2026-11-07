.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;


# instance fields
.field public blacklist carrierId:I

.field public blacklist phoneId:I

.field public blacklist unmeteredNetworksBitmask:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8189
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8190
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;
    .registers 2

    .line 8169
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    if-nez v0, :cond_17

    .line 8170
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 8172
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 8173
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 8175
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 8177
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8274
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 8268
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;
    .registers 3

    const/4 v0, 0x0

    .line 8194
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->phoneId:I

    .line 8195
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->carrierId:I

    const-wide/16 v0, 0x0

    .line 8196
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    const/4 v0, 0x0

    .line 8197
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 8198
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 8219
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8220
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->phoneId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 8222
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8224
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->carrierId:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 8226
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8228
    :cond_18
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_26

    const/4 p0, 0x3

    .line 8230
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_26
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8240
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_27

    const/16 v1, 0x10

    if-eq v0, v1, :cond_20

    const/16 v1, 0x18

    if-eq v0, v1, :cond_19

    .line 8245
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2e

    .line 8259
    :cond_19
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    goto :goto_0

    .line 8255
    :cond_20
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->carrierId:I

    goto :goto_0

    .line 8251
    :cond_27
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->phoneId:I

    goto :goto_0

    :cond_2e
    :goto_2e
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

    .line 8163
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

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

    .line 8205
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->phoneId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 8206
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8208
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->carrierId:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 8209
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8211
    :cond_10
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x3

    .line 8212
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8214
    :cond_1c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
