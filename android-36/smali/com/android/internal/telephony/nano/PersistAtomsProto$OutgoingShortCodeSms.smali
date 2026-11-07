.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;


# instance fields
.field public blacklist category:I

.field public blacklist shortCodeSmsCount:I

.field public blacklist xmlVersion:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8304
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8305
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;
    .registers 2

    .line 8284
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    if-nez v0, :cond_17

    .line 8285
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 8287
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 8288
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 8290
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 8292
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8389
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 8383
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;
    .registers 2

    const/4 v0, 0x0

    .line 8309
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->category:I

    .line 8310
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->xmlVersion:I

    .line 8311
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->shortCodeSmsCount:I

    const/4 v0, 0x0

    .line 8312
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 8313
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 8334
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8335
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->category:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 8337
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8339
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->xmlVersion:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 8341
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8343
    :cond_18
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->shortCodeSmsCount:I

    if-eqz p0, :cond_22

    const/4 v1, 0x3

    .line 8345
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_22
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8355
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

    .line 8360
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2e

    .line 8374
    :cond_19
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->shortCodeSmsCount:I

    goto :goto_0

    .line 8370
    :cond_20
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->xmlVersion:I

    goto :goto_0

    .line 8366
    :cond_27
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->category:I

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

    .line 8278
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

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

    .line 8320
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->category:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 8321
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8323
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->xmlVersion:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 8324
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8326
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->shortCodeSmsCount:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 8327
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8329
    :cond_18
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
