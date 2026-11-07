.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;


# instance fields
.field public blacklist carrierId:I

.field public blacklist endedGracefullyCount:I

.field public blacklist isEndedGracefully:Z

.field public blacklist sessionCount:I

.field public blacklist sessionMethod:I

.field public blacklist sipMessageDirection:I

.field public blacklist sipResponse:I

.field public blacklist slotId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6977
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6978
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;
    .registers 2

    .line 6942
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    if-nez v0, :cond_17

    .line 6943
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 6945
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 6946
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 6948
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 6950
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7122
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 7116
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;
    .registers 2

    const/4 v0, 0x0

    .line 6982
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->carrierId:I

    .line 6983
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->slotId:I

    .line 6984
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionMethod:I

    .line 6985
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipMessageDirection:I

    .line 6986
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipResponse:I

    .line 6987
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionCount:I

    .line 6988
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->endedGracefullyCount:I

    .line 6989
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->isEndedGracefully:Z

    const/4 v0, 0x0

    .line 6990
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 6991
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 7027
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7028
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 7030
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7032
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->slotId:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 7034
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7036
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionMethod:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 7038
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7040
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipMessageDirection:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 7042
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7044
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipResponse:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 7046
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7048
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionCount:I

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 7050
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7052
    :cond_40
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->endedGracefullyCount:I

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 7054
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7056
    :cond_4a
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->isEndedGracefully:Z

    if-eqz p0, :cond_55

    const/16 v1, 0x2711

    .line 7058
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_55
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7068
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_66

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5f

    const/16 v1, 0x10

    if-eq v0, v1, :cond_58

    const/16 v1, 0x18

    if-eq v0, v1, :cond_51

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x28

    if-eq v0, v1, :cond_43

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x38

    if-eq v0, v1, :cond_35

    const v1, 0x13888

    if-eq v0, v1, :cond_2e

    .line 7073
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_66

    .line 7107
    :cond_2e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->isEndedGracefully:Z

    goto :goto_0

    .line 7103
    :cond_35
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->endedGracefullyCount:I

    goto :goto_0

    .line 7099
    :cond_3c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionCount:I

    goto :goto_0

    .line 7095
    :cond_43
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipResponse:I

    goto :goto_0

    .line 7091
    :cond_4a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipMessageDirection:I

    goto :goto_0

    .line 7087
    :cond_51
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionMethod:I

    goto :goto_0

    .line 7083
    :cond_58
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->slotId:I

    goto :goto_0

    .line 7079
    :cond_5f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->carrierId:I

    goto :goto_0

    :cond_66
    :goto_66
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

    .line 6936
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

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

    .line 6998
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 6999
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7001
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->slotId:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 7002
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7004
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionMethod:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 7005
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7007
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipMessageDirection:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 7008
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7010
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipResponse:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 7011
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7013
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionCount:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 7014
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7016
    :cond_30
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->endedGracefullyCount:I

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 7017
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7019
    :cond_38
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->isEndedGracefully:Z

    if-eqz v0, :cond_41

    const/16 v1, 0x2711

    .line 7020
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7022
    :cond_41
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
