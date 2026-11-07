.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultNetworkEvent"
.end annotation


# static fields
.field public static final blacklist DISCONNECT:I = 0x3

.field public static final blacklist DUAL:I = 0x3

.field public static final blacklist INVALIDATION:I = 0x2

.field public static final blacklist IPV4:I = 0x1

.field public static final blacklist IPV6:I = 0x2

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist OUTSCORED:I = 0x1

.field public static final blacklist UNKNOWN:I

.field private static volatile blacklist _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;


# instance fields
.field public blacklist defaultNetworkDurationMs:J

.field public blacklist finalScore:J

.field public blacklist initialScore:J

.field public blacklist ipSupport:I

.field public blacklist networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

.field public blacklist noDefaultNetworkDurationMs:J

.field public blacklist previousDefaultNetworkLinkLayer:I

.field public blacklist previousNetworkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

.field public blacklist previousNetworkIpSupport:I

.field public blacklist transportTypes:[I

.field public blacklist validationDurationMs:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 266
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    .line 267
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;
    .registers 2

    .line 221
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    if-nez v0, :cond_15

    .line 222
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_7
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    if-nez v1, :cond_10

    .line 225
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    .line 227
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 229
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 519
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;
    .registers 5

    .line 270
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->defaultNetworkDurationMs:J

    .line 271
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->validationDurationMs:J

    .line 272
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->initialScore:J

    .line 273
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->finalScore:J

    .line 274
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->ipSupport:I

    .line 275
    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousDefaultNetworkLinkLayer:I

    .line 276
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    .line 277
    iput-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    .line 278
    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    .line 279
    sget-object v2, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    .line 280
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->noDefaultNetworkDurationMs:J

    .line 281
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->cachedSize:I

    .line 282
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 328
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 329
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    .line 330
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    .line 331
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 333
    :cond_10
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    if-eqz v1, :cond_1c

    .line 334
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    .line 335
    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    :cond_1c
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    if-eqz v1, :cond_28

    .line 338
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    .line 339
    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_28
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    array-length v1, v1

    if-lez v1, :cond_4b

    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    array-length v4, v4

    if-ge v3, v4, :cond_45

    .line 344
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    aget v4, v4, v3

    .line 345
    .local v4, "element":I
    nop

    .line 346
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 343
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 348
    .end local v3    # "i":I
    :cond_45
    add-int/2addr v0, v1

    .line 349
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    array-length v3, v3

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 351
    .end local v1    # "dataSize":I
    :cond_4b
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->defaultNetworkDurationMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5b

    .line 352
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->defaultNetworkDurationMs:J

    .line 353
    const/4 v5, 0x5

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 355
    :cond_5b
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->noDefaultNetworkDurationMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_69

    .line 356
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->noDefaultNetworkDurationMs:J

    .line 357
    const/4 v5, 0x6

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 359
    :cond_69
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->initialScore:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_77

    .line 360
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->initialScore:J

    .line 361
    const/4 v5, 0x7

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 363
    :cond_77
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->finalScore:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_86

    .line 364
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->finalScore:J

    .line 365
    const/16 v5, 0x8

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 367
    :cond_86
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->ipSupport:I

    if-eqz v1, :cond_93

    .line 368
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->ipSupport:I

    .line 369
    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    :cond_93
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousDefaultNetworkLinkLayer:I

    if-eqz v1, :cond_a0

    .line 372
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousDefaultNetworkLinkLayer:I

    .line 373
    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 375
    :cond_a0
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->validationDurationMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_af

    .line 376
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->validationDurationMs:J

    .line 377
    const/16 v3, 0xb

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 379
    :cond_af
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
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

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;
    .registers 11
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 388
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_f8

    .line 392
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_f5

    .line 393
    return-object p0

    .line 510
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->validationDurationMs:J

    goto/16 :goto_f5

    .line 492
    :sswitch_18
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 493
    .local v1, "value":I
    packed-switch v1, :pswitch_data_12e

    goto :goto_22

    .line 504
    :pswitch_20
    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousDefaultNetworkLinkLayer:I

    .line 507
    :goto_22
    goto/16 :goto_f5

    .line 480
    .end local v1    # "value":I
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 481
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_146

    goto :goto_2e

    .line 486
    :pswitch_2c
    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->ipSupport:I

    .line 489
    :goto_2e
    goto/16 :goto_f5

    .line 476
    .end local v1    # "value":I
    :sswitch_30
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->finalScore:J

    .line 477
    goto/16 :goto_f5

    .line 472
    :sswitch_38
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->initialScore:J

    .line 473
    goto/16 :goto_f5

    .line 468
    :sswitch_40
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->noDefaultNetworkDurationMs:J

    .line 469
    goto/16 :goto_f5

    .line 464
    :sswitch_48
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->defaultNetworkDurationMs:J

    .line 465
    goto/16 :goto_f5

    .line 441
    :sswitch_50
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 442
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 444
    .local v3, "limit":I
    const/4 v4, 0x0

    .line 445
    .local v4, "arrayLength":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 446
    .local v5, "startPos":I
    :goto_5d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_69

    .line 447
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 448
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 450
    :cond_69
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 451
    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    if-nez v6, :cond_72

    move v6, v1

    goto :goto_75

    :cond_72
    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    array-length v6, v6

    .line 452
    .local v6, "i":I
    :goto_75
    add-int v7, v6, v4

    new-array v7, v7, [I

    .line 453
    .local v7, "newArray":[I
    if-eqz v6, :cond_80

    .line 454
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    invoke-static {v8, v1, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    :cond_80
    :goto_80
    array-length v1, v7

    if-ge v6, v1, :cond_8c

    .line 457
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v7, v6

    .line 456
    add-int/lit8 v6, v6, 0x1

    goto :goto_80

    .line 459
    :cond_8c
    iput-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    .line 460
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 461
    goto :goto_f5

    .line 424
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "arrayLength":I
    .end local v5    # "startPos":I
    .end local v6    # "i":I
    .end local v7    # "newArray":[I
    :sswitch_92
    nop

    .line 425
    const/16 v2, 0x20

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 426
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    if-nez v3, :cond_9f

    move v3, v1

    goto :goto_a2

    :cond_9f
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    array-length v3, v3

    .line 427
    .local v3, "i":I
    :goto_a2
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 428
    .local v4, "newArray":[I
    if-eqz v3, :cond_ad

    .line 429
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    :cond_ad
    :goto_ad
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_be

    .line 432
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 433
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 431
    add-int/lit8 v3, v3, 0x1

    goto :goto_ad

    .line 436
    :cond_be
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 437
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    .line 438
    goto :goto_f5

    .line 412
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_c7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 413
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_152

    goto :goto_d1

    .line 418
    :pswitch_cf
    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    .line 421
    :goto_d1
    goto :goto_f5

    .line 405
    .end local v1    # "value":I
    :sswitch_d2
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    if-nez v1, :cond_dd

    .line 406
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    .line 408
    :cond_dd
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 409
    goto :goto_f5

    .line 398
    :sswitch_e3
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    if-nez v1, :cond_ee

    .line 399
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    .line 401
    :cond_ee
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 402
    goto :goto_f5

    .line 390
    :sswitch_f4
    return-object p0

    .line 514
    .end local v0    # "tag":I
    :cond_f5
    :goto_f5
    goto/16 :goto_1

    nop

    :sswitch_data_f8
    .sparse-switch
        0x0 -> :sswitch_f4
        0xa -> :sswitch_e3
        0x12 -> :sswitch_d2
        0x18 -> :sswitch_c7
        0x20 -> :sswitch_92
        0x22 -> :sswitch_50
        0x28 -> :sswitch_48
        0x30 -> :sswitch_40
        0x38 -> :sswitch_38
        0x40 -> :sswitch_30
        0x48 -> :sswitch_24
        0x50 -> :sswitch_18
        0x58 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
    .end packed-switch

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_cf
        :pswitch_cf
        :pswitch_cf
        :pswitch_cf
    .end packed-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    if-eqz v0, :cond_a

    .line 289
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 291
    :cond_a
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    if-eqz v0, :cond_14

    .line 292
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 294
    :cond_14
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    if-eqz v0, :cond_1e

    .line 295
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 297
    :cond_1e
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    array-length v0, v0

    if-lez v0, :cond_38

    .line 298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_38

    .line 299
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    aget v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 302
    .end local v0    # "i":I
    :cond_38
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->defaultNetworkDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_46

    .line 303
    const/4 v0, 0x5

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->defaultNetworkDurationMs:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 305
    :cond_46
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->noDefaultNetworkDurationMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_52

    .line 306
    const/4 v0, 0x6

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->noDefaultNetworkDurationMs:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 308
    :cond_52
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->initialScore:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5e

    .line 309
    const/4 v0, 0x7

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->initialScore:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 311
    :cond_5e
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->finalScore:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6b

    .line 312
    const/16 v0, 0x8

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->finalScore:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 314
    :cond_6b
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->ipSupport:I

    if-eqz v0, :cond_76

    .line 315
    const/16 v0, 0x9

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->ipSupport:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 317
    :cond_76
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousDefaultNetworkLinkLayer:I

    if-eqz v0, :cond_81

    .line 318
    const/16 v0, 0xa

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousDefaultNetworkLinkLayer:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 320
    :cond_81
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->validationDurationMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8e

    .line 321
    const/16 v0, 0xb

    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->validationDurationMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 323
    :cond_8e
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 324
    return-void
.end method
