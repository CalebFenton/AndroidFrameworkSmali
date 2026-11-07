.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkRegistrationInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;


# instance fields
.field public blacklist domain:I

.field public blacklist rat:I

.field public blacklist transport:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1405
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1406
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;
    .registers 2

    .line 1385
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    if-nez v0, :cond_17

    .line 1386
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1388
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 1389
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 1391
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 1393
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1530
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1524
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;
    .registers 3

    const/4 v0, 0x0

    .line 1410
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->domain:I

    .line 1411
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->transport:I

    const/4 v0, -0x1

    .line 1412
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->rat:I

    const/4 v1, 0x0

    .line 1413
    iput-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    .line 1414
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 1435
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1436
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->domain:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 1438
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1440
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->transport:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 1442
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1444
    :cond_18
    iget p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->rat:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_23

    const/4 v1, 0x3

    .line 1446
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_23
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1456
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_42

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_34

    const/16 v1, 0x10

    if-eq v0, v1, :cond_26

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1b

    .line 1461
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_42

    .line 1489
    :cond_1b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    goto :goto_0

    .line 1513
    :pswitch_23
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->rat:I

    goto :goto_0

    .line 1478
    :cond_26
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_31

    if-eq v0, v3, :cond_31

    if-eq v0, v2, :cond_31

    goto :goto_0

    .line 1483
    :cond_31
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->transport:I

    goto :goto_0

    .line 1467
    :cond_34
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_3f

    if-eq v0, v3, :cond_3f

    if-eq v0, v2, :cond_3f

    goto :goto_0

    .line 1472
    :cond_3f
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->domain:I

    goto :goto_0

    :cond_42
    :goto_42
    return-object p0

    nop

    :pswitch_data_44
    .packed-switch -0x1
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
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

    .line 1379
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;

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

    .line 1421
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->domain:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 1422
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1424
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->transport:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 1425
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1427
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$NetworkRegistrationInfo;->rat:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x3

    .line 1428
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1430
    :cond_19
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
