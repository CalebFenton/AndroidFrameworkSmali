.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;


# instance fields
.field public blacklist alphaLong:Ljava/lang/String;

.field public blacklist alphaShort:Ljava/lang/String;

.field public blacklist numeric:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1290
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1291
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .registers 2

    .line 1270
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-nez v0, :cond_17

    .line 1271
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1273
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 1274
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 1276
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 1278
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1375
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1369
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .registers 2

    .line 1295
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong:Ljava/lang/String;

    .line 1296
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort:Ljava/lang/String;

    .line 1297
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1298
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 1299
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 1320
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1321
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    .line 1322
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong:Ljava/lang/String;

    .line 1323
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1325
    :cond_16
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x2

    .line 1326
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort:Ljava/lang/String;

    .line 1327
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1329
    :cond_26
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const/4 v1, 0x3

    .line 1330
    iget-object p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric:Ljava/lang/String;

    .line 1331
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_36
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1341
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v1, 0xa

    if-eq v0, v1, :cond_27

    const/16 v1, 0x12

    if-eq v0, v1, :cond_20

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_19

    .line 1346
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2e

    .line 1360
    :cond_19
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric:Ljava/lang/String;

    goto :goto_0

    .line 1356
    :cond_20
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort:Ljava/lang/String;

    goto :goto_0

    .line 1352
    :cond_27
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong:Ljava/lang/String;

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

    .line 1264
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

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

    .line 1306
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 1307
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1309
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x2

    .line 1310
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1312
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x3

    .line 1313
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1315
    :cond_2c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
