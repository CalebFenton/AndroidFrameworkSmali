.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DNSLatencies"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;


# instance fields
.field public blacklist aCount:I

.field public blacklist aaaaCount:I

.field public blacklist latenciesMs:[I

.field public blacklist queryCount:I

.field public blacklist returnCode:I

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1318
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 1319
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    .line 1320
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;
    .registers 2

    .line 1289
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    if-nez v0, :cond_15

    .line 1290
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1292
    :try_start_7
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    if-nez v1, :cond_10

    .line 1293
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    .line 1295
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 1297
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1482
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1476
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;
    .registers 2

    .line 1323
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->type:I

    .line 1324
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    .line 1325
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    .line 1326
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aCount:I

    .line 1327
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    .line 1328
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    .line 1329
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->cachedSize:I

    .line 1330
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 1361
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1362
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->type:I

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    .line 1363
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->type:I

    .line 1364
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1366
    :cond_10
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    if-eqz v1, :cond_1c

    .line 1367
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    .line 1368
    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1370
    :cond_1c
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    if-eqz v1, :cond_28

    .line 1371
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    .line 1372
    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1374
    :cond_28
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aCount:I

    if-eqz v1, :cond_34

    .line 1375
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aCount:I

    .line 1376
    const/4 v3, 0x4

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1378
    :cond_34
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    if-eqz v1, :cond_40

    .line 1379
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    .line 1380
    const/4 v3, 0x5

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1382
    :cond_40
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v1, v1

    if-lez v1, :cond_63

    .line 1383
    const/4 v1, 0x0

    .line 1384
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4b
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v4, v4

    if-ge v3, v4, :cond_5d

    .line 1385
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    aget v4, v4, v3

    .line 1386
    .local v4, "element":I
    nop

    .line 1387
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 1384
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 1389
    .end local v3    # "i":I
    :cond_5d
    add-int/2addr v0, v1

    .line 1390
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v3, v3

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 1392
    .end local v1    # "dataSize":I
    :cond_63
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

    .line 1283
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;
    .registers 11
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1400
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1401
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_ae

    .line 1405
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 1406
    return-object p0

    .line 1448
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1449
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1451
    .local v3, "limit":I
    const/4 v4, 0x0

    .line 1452
    .local v4, "arrayLength":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1453
    .local v5, "startPos":I
    :goto_1d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_29

    .line 1454
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 1455
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 1457
    :cond_29
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1458
    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    if-nez v6, :cond_32

    move v6, v1

    goto :goto_35

    :cond_32
    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v6, v6

    .line 1459
    .local v6, "i":I
    :goto_35
    add-int v7, v6, v4

    new-array v7, v7, [I

    .line 1460
    .local v7, "newArray":[I
    if-eqz v6, :cond_40

    .line 1461
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    invoke-static {v8, v1, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1463
    :cond_40
    :goto_40
    array-length v1, v7

    if-ge v6, v1, :cond_4c

    .line 1464
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v7, v6

    .line 1463
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 1466
    :cond_4c
    iput-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    .line 1467
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 1468
    goto :goto_ab

    .line 1431
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "arrayLength":I
    .end local v5    # "startPos":I
    .end local v6    # "i":I
    .end local v7    # "newArray":[I
    :sswitch_52
    nop

    .line 1432
    const/16 v2, 0x30

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1433
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    if-nez v3, :cond_5f

    move v3, v1

    goto :goto_62

    :cond_5f
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v3, v3

    .line 1434
    .local v3, "i":I
    :goto_62
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1435
    .local v4, "newArray":[I
    if-eqz v3, :cond_6d

    .line 1436
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1438
    :cond_6d
    :goto_6d
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_7e

    .line 1439
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 1440
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1438
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 1443
    :cond_7e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 1444
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    .line 1445
    goto :goto_ab

    .line 1427
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_87
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    .line 1428
    goto :goto_ab

    .line 1423
    :sswitch_8e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aCount:I

    .line 1424
    goto :goto_ab

    .line 1419
    :sswitch_95
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    .line 1420
    goto :goto_ab

    .line 1415
    :sswitch_9c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    .line 1416
    goto :goto_ab

    .line 1411
    :sswitch_a3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->type:I

    .line 1412
    goto :goto_ab

    .line 1403
    :sswitch_aa
    return-object p0

    .line 1471
    .end local v0    # "tag":I
    :cond_ab
    :goto_ab
    goto/16 :goto_1

    nop

    :sswitch_data_ae
    .sparse-switch
        0x0 -> :sswitch_aa
        0x8 -> :sswitch_a3
        0x10 -> :sswitch_9c
        0x18 -> :sswitch_95
        0x20 -> :sswitch_8e
        0x28 -> :sswitch_87
        0x30 -> :sswitch_52
        0x32 -> :sswitch_10
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1336
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->type:I

    if-eqz v0, :cond_a

    .line 1337
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1339
    :cond_a
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    if-eqz v0, :cond_14

    .line 1340
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1342
    :cond_14
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    if-eqz v0, :cond_1e

    .line 1343
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1345
    :cond_1e
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aCount:I

    if-eqz v0, :cond_28

    .line 1346
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aCount:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1348
    :cond_28
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    if-eqz v0, :cond_32

    .line 1349
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1351
    :cond_32
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v0, v0

    if-lez v0, :cond_4c

    .line 1352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3c
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4c

    .line 1353
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    aget v1, v1, v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1352
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 1356
    .end local v0    # "i":I
    :cond_4c
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1357
    return-void
.end method
