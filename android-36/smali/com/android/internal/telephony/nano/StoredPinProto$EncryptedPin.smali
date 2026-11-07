.class public final Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "StoredPinProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;


# instance fields
.field public blacklist encryptedStoredPin:[B

.field public blacklist iv:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 190
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->clear()Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;
    .registers 2

    .line 173
    sget-object v0, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->_emptyArray:[Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;

    if-nez v0, :cond_17

    .line 174
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->_emptyArray:[Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 177
    new-array v1, v1, [Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;

    sput-object v1, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->_emptyArray:[Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 179
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 181
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->_emptyArray:[Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    new-instance v0, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 257
    new-instance v0, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;
    .registers 2

    .line 195
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->encryptedStoredPin:[B

    .line 196
    iput-object v0, p0, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->iv:[B

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 198
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 216
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->encryptedStoredPin:[B

    sget-object v2, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    .line 218
    iget-object v3, p0, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->encryptedStoredPin:[B

    .line 219
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_16
    iget-object v1, p0, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->iv:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x2

    .line 222
    iget-object p0, p0, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->iv:[B

    .line 223
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result p0

    add-int/2addr v0, p0

    :cond_26
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_23

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x12

    if-eq v0, v1, :cond_15

    .line 238
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_23

    .line 248
    :cond_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->iv:[B

    goto :goto_0

    .line 244
    :cond_1c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->encryptedStoredPin:[B

    goto :goto_0

    :cond_23
    :goto_23
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

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->encryptedStoredPin:[B

    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 206
    iget-object v2, p0, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->encryptedStoredPin:[B

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 208
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->iv:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x2

    .line 209
    iget-object v1, p0, Lcom/android/internal/telephony/nano/StoredPinProto$EncryptedPin;->iv:[B

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 211
    :cond_1e
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
