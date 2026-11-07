.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;


# instance fields
.field public blacklist carrierId:I

.field public blacklist count:I

.field public blacklist failedReason:I

.field public blacklist slotId:I

.field public blacklist successful:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8050
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8051
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .registers 2

    .line 8024
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    if-nez v0, :cond_17

    .line 8025
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 8027
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 8028
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 8030
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 8032
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8159
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 8153
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .registers 2

    const/4 v0, 0x0

    .line 8055
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    .line 8056
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    .line 8057
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    .line 8058
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    .line 8059
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    const/4 v0, 0x0

    .line 8060
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 8061
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 8088
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8089
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 8091
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8093
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 8095
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8097
    :cond_18
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 8099
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8101
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 8103
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8105
    :cond_2c
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    if-eqz p0, :cond_36

    const/4 v1, 0x5

    .line 8107
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_36
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8117
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

    .line 8122
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_44

    .line 8144
    :cond_21
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    goto :goto_0

    .line 8140
    :cond_28
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    goto :goto_0

    .line 8136
    :cond_2f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    goto :goto_0

    .line 8132
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    goto :goto_0

    .line 8128
    :cond_3d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

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

    .line 8018
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

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

    .line 8068
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 8069
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8071
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 8072
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8074
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 8075
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 8077
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 8078
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8080
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 8081
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8083
    :cond_28
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
