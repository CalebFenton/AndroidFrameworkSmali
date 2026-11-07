.class public final Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PerRat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;


# instance fields
.field public blacklist nrMode:I

.field public blacklist perLevel:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

.field public blacklist rat:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9344
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9345
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;
    .registers 2

    .line 9324
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    if-nez v0, :cond_17

    .line 9325
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 9327
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 9328
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 9330
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 9332
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9490
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 9484
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;
    .registers 3

    const/4 v0, -0x1

    .line 9349
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->rat:I

    const/4 v1, 0x1

    .line 9350
    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->nrMode:I

    .line 9351
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->perLevel:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    const/4 v1, 0x0

    .line 9352
    iput-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    .line 9353
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 9379
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9380
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->rat:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_f

    .line 9382
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9384
    :cond_f
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->nrMode:I

    if-eq v1, v3, :cond_19

    const/4 v2, 0x2

    .line 9386
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9388
    :cond_19
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->perLevel:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    if-eqz v1, :cond_33

    array-length v1, v1

    if-lez v1, :cond_33

    const/4 v1, 0x0

    .line 9389
    :goto_21
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->perLevel:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    array-length v3, v2

    if-ge v1, v3, :cond_33

    .line 9390
    aget-object v2, v2, v1

    if-eqz v2, :cond_30

    const/4 v3, 0x3

    .line 9393
    invoke-static {v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_33
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9405
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_70

    const/16 v1, 0x8

    if-eq v0, v1, :cond_65

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4e

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_19

    .line 9410
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_70

    .line 9460
    :cond_19
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9461
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->perLevel:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    const/4 v2, 0x0

    if-nez v1, :cond_24

    move v3, v2

    goto :goto_25

    :cond_24
    array-length v3, v1

    :goto_25
    add-int/2addr v0, v3

    .line 9462
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    if-eqz v3, :cond_2d

    .line 9465
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_41

    .line 9468
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;-><init>()V

    aput-object v1, v4, v3

    .line 9469
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 9470
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 9473
    :cond_41
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;-><init>()V

    aput-object v0, v4, v3

    .line 9474
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 9475
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->perLevel:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    goto :goto_0

    .line 9446
    :cond_4e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_62

    const/4 v1, 0x2

    if-eq v0, v1, :cond_62

    const/4 v1, 0x3

    if-eq v0, v1, :cond_62

    const/4 v1, 0x4

    if-eq v0, v1, :cond_62

    const/4 v1, 0x5

    if-eq v0, v1, :cond_62

    goto :goto_0

    .line 9453
    :cond_62
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->nrMode:I

    goto :goto_0

    .line 9416
    :cond_65
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_72

    goto :goto_0

    .line 9440
    :pswitch_6d
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->rat:I

    goto :goto_0

    :cond_70
    :goto_70
    return-object p0

    nop

    :pswitch_data_72
    .packed-switch -0x1
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
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

    .line 9318
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;

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

    .line 9360
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->rat:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_9

    .line 9361
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9363
    :cond_9
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->nrMode:I

    if-eq v0, v2, :cond_11

    const/4 v1, 0x2

    .line 9364
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9366
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->perLevel:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    if-eqz v0, :cond_29

    array-length v0, v0

    if-lez v0, :cond_29

    const/4 v0, 0x0

    .line 9367
    :goto_19
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerRat;->perLevel:[Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats$PerLevel;

    array-length v2, v1

    if-ge v0, v2, :cond_29

    .line 9368
    aget-object v1, v1, v0

    if-eqz v1, :cond_26

    const/4 v2, 0x3

    .line 9370
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 9374
    :cond_29
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
