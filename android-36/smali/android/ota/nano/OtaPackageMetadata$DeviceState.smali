.class public final Landroid/ota/nano/OtaPackageMetadata$DeviceState;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "OtaPackageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ota/nano/OtaPackageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceState"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;


# instance fields
.field public blacklist build:[Ljava/lang/String;

.field public blacklist buildIncremental:Ljava/lang/String;

.field public blacklist device:[Ljava/lang/String;

.field public blacklist partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

.field public blacklist sdkLevel:Ljava/lang/String;

.field public blacklist securityPatchLevel:Ljava/lang/String;

.field public blacklist timestamp:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 231
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 232
    invoke-virtual {p0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->clear()Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 233
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .registers 2

    .line 199
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-nez v0, :cond_15

    .line 200
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_7
    sget-object v1, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    if-nez v1, :cond_10

    .line 203
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    sput-object v1, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    .line 205
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 207
    :cond_15
    :goto_15
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;-><init>()V

    invoke-virtual {v0, p0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 439
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .registers 4

    .line 236
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    .line 237
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    .line 238
    const-string v0, ""

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    .line 239
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    .line 240
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    .line 241
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    .line 242
    invoke-static {}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->emptyArray()[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    move-result-object v0

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 243
    const/4 v0, -0x1

    iput v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->cachedSize:I

    .line 244
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 8

    .line 291
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 292
    .local v0, "size":I
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2a

    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, "dataCount":I
    const/4 v2, 0x0

    .line 295
    .local v2, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    iget-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_26

    .line 296
    iget-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 297
    .local v4, "element":Ljava/lang/String;
    if-eqz v4, :cond_23

    .line 298
    add-int/lit8 v1, v1, 0x1

    .line 299
    nop

    .line 300
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 295
    .end local v4    # "element":Ljava/lang/String;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 303
    .end local v3    # "i":I
    :cond_26
    add-int/2addr v0, v2

    .line 304
    mul-int/lit8 v3, v1, 0x1

    add-int/2addr v0, v3

    .line 306
    .end local v1    # "dataCount":I
    .end local v2    # "dataSize":I
    :cond_2a
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    if-eqz v1, :cond_50

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_50

    .line 307
    const/4 v1, 0x0

    .line 308
    .restart local v1    # "dataCount":I
    const/4 v2, 0x0

    .line 309
    .restart local v2    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_36
    iget-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_4c

    .line 310
    iget-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 311
    .restart local v4    # "element":Ljava/lang/String;
    if-eqz v4, :cond_49

    .line 312
    add-int/lit8 v1, v1, 0x1

    .line 313
    nop

    .line 314
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 309
    .end local v4    # "element":Ljava/lang/String;
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 317
    .end local v3    # "i":I
    :cond_4c
    add-int/2addr v0, v2

    .line 318
    mul-int/lit8 v3, v1, 0x1

    add-int/2addr v0, v3

    .line 320
    .end local v1    # "dataCount":I
    .end local v2    # "dataSize":I
    :cond_50
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 321
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    .line 322
    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 324
    :cond_62
    iget-wide v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_72

    .line 325
    iget-wide v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    .line 326
    const/4 v1, 0x4

    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    :cond_72
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 329
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    .line 330
    const/4 v3, 0x5

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    :cond_82
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_92

    .line 333
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    .line 334
    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    :cond_92
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-eqz v1, :cond_b1

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    array-length v1, v1

    if-lez v1, :cond_b1

    .line 337
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9c
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    array-length v2, v2

    if-ge v1, v2, :cond_b1

    .line 338
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    aget-object v2, v2, v1

    .line 339
    .local v2, "element":Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    if-eqz v2, :cond_ae

    .line 340
    nop

    .line 341
    const/4 v3, 0x7

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 337
    .end local v2    # "element":Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    :cond_ae
    add-int/lit8 v1, v1, 0x1

    goto :goto_9c

    .line 345
    .end local v1    # "i":I
    :cond_b1
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$DeviceState;
    .registers 8
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 354
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_e0

    .line 358
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_dd

    .line 359
    return-object p0

    .line 414
    :sswitch_10
    nop

    .line 415
    const/16 v2, 0x3a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 416
    .local v2, "arrayLength":I
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-nez v3, :cond_1d

    move v3, v1

    goto :goto_20

    :cond_1d
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    array-length v3, v3

    .line 417
    .local v3, "i":I
    :goto_20
    add-int v4, v3, v2

    new-array v4, v4, [Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 419
    .local v4, "newArray":[Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    if-eqz v3, :cond_2b

    .line 420
    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    :cond_2b
    :goto_2b
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_42

    .line 423
    new-instance v1, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    invoke-direct {v1}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;-><init>()V

    aput-object v1, v4, v3

    .line 424
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 425
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 422
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 428
    :cond_42
    new-instance v1, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    invoke-direct {v1}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;-><init>()V

    aput-object v1, v4, v3

    .line 429
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 430
    iput-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 431
    goto/16 :goto_dd

    .line 410
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    :sswitch_52
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    .line 411
    goto/16 :goto_dd

    .line 406
    :sswitch_5a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    .line 407
    goto/16 :goto_dd

    .line 402
    :sswitch_62
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    .line 403
    goto/16 :goto_dd

    .line 398
    :sswitch_6a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    .line 399
    goto/16 :goto_dd

    .line 381
    :sswitch_72
    nop

    .line 382
    const/16 v2, 0x12

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 383
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    if-nez v3, :cond_7f

    move v3, v1

    goto :goto_82

    :cond_7f
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    array-length v3, v3

    .line 384
    .restart local v3    # "i":I
    :goto_82
    add-int v4, v3, v2

    new-array v4, v4, [Ljava/lang/String;

    .line 385
    .local v4, "newArray":[Ljava/lang/String;
    if-eqz v3, :cond_8d

    .line 386
    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    :cond_8d
    :goto_8d
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_9e

    .line 389
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 390
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 388
    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    .line 393
    :cond_9e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 394
    iput-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    .line 395
    goto :goto_dd

    .line 364
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :sswitch_a7
    nop

    .line 365
    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 366
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    if-nez v3, :cond_b4

    move v3, v1

    goto :goto_b7

    :cond_b4
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    array-length v3, v3

    .line 367
    .restart local v3    # "i":I
    :goto_b7
    add-int v4, v3, v2

    new-array v4, v4, [Ljava/lang/String;

    .line 368
    .restart local v4    # "newArray":[Ljava/lang/String;
    if-eqz v3, :cond_c2

    .line 369
    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    :cond_c2
    :goto_c2
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_d3

    .line 372
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 373
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 371
    add-int/lit8 v3, v3, 0x1

    goto :goto_c2

    .line 376
    :cond_d3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 377
    iput-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    .line 378
    goto :goto_dd

    .line 356
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :sswitch_dc
    return-object p0

    .line 434
    .end local v0    # "tag":I
    :cond_dd
    :goto_dd
    goto/16 :goto_1

    nop

    :sswitch_data_e0
    .sparse-switch
        0x0 -> :sswitch_dc
        0xa -> :sswitch_a7
        0x12 -> :sswitch_72
        0x1a -> :sswitch_6a
        0x20 -> :sswitch_62
        0x2a -> :sswitch_5a
        0x32 -> :sswitch_52
        0x3a -> :sswitch_10
    .end sparse-switch
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

    .line 193
    invoke-virtual {p0, p1}, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$DeviceState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1c

    .line 251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 252
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->device:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 253
    .local v1, "element":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 254
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 251
    .end local v1    # "element":Ljava/lang/String;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 258
    .end local v0    # "i":I
    :cond_1c
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_38

    .line 259
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_26
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_38

    .line 260
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->build:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 261
    .restart local v1    # "element":Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 262
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 259
    .end local v1    # "element":Ljava/lang/String;
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 266
    .end local v0    # "i":I
    :cond_38
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 267
    const/4 v0, 0x3

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->buildIncremental:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 269
    :cond_48
    iget-wide v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_56

    .line 270
    const/4 v0, 0x4

    iget-wide v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->timestamp:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 272
    :cond_56
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 273
    const/4 v0, 0x5

    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->sdkLevel:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 275
    :cond_64
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 276
    const/4 v0, 0x6

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->securityPatchLevel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 278
    :cond_72
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-eqz v0, :cond_8e

    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    array-length v0, v0

    if-lez v0, :cond_8e

    .line 279
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7c
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    array-length v1, v1

    if-ge v0, v1, :cond_8e

    .line 280
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$DeviceState;->partitionState:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    aget-object v1, v1, v0

    .line 281
    .local v1, "element":Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    if-eqz v1, :cond_8b

    .line 282
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 279
    .end local v1    # "element":Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 286
    .end local v0    # "i":I
    :cond_8e
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 287
    return-void
.end method
