.class Ljava/lang/invoke/Transformers$Collector;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Collector"
.end annotation


# instance fields
.field private final blacklist arrayLength:I

.field private final greylist-max-o arrayOffset:I

.field private final blacklist arrayType:Ljava/lang/Class;

.field private final blacklist leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;

.field private final blacklist trailingRange:Ldalvik/system/EmulatedStackFrame$Range;


# direct methods
.method constructor blacklist <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;II)V
    .registers 8
    .param p1, "delegate"    # Ljava/lang/invoke/MethodHandle;
    .param p3, "start"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation

    .line 1326
    .local p2, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/lang/invoke/MethodType;->asCollectorType(Ljava/lang/Class;II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1327
    iput-object p1, p0, Ljava/lang/invoke/Transformers$Collector;->target:Ljava/lang/invoke/MethodHandle;

    .line 1328
    iput p3, p0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    .line 1329
    iput p4, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    .line 1330
    iput-object p2, p0, Ljava/lang/invoke/Transformers$Collector;->arrayType:Ljava/lang/Class;

    .line 1333
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Collector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    invoke-static {v0, v1, v2}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Collector;->leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1334
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Collector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    iget v1, p0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    iget v2, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ldalvik/system/EmulatedStackFrame$Range;->from(Ljava/lang/invoke/MethodType;I)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Collector;->trailingRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1335
    return-void
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 11
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1340
    iget-object v0, p0, Ljava/lang/invoke/Transformers$Collector;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 1343
    .local v0, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v1, p0, Ljava/lang/invoke/Transformers$Collector;->leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1346
    iget-object v1, p0, Ljava/lang/invoke/Transformers$Collector;->trailingRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget-object v2, p0, Ljava/lang/invoke/Transformers$Collector;->leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v2, v2, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ljava/lang/invoke/Transformers$Collector;->leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v3, v3, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1350
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1351
    .local v1, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    iget v2, p0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    iget-object v3, p0, Ljava/lang/invoke/Transformers$Collector;->leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v3, v3, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v4, p0, Ljava/lang/invoke/Transformers$Collector;->leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v4, v4, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {v1, v0, v2, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1352
    new-instance v2, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1353
    .local v2, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    iget-object v4, p0, Ljava/lang/invoke/Transformers$Collector;->leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v4, v4, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v5, p0, Ljava/lang/invoke/Transformers$Collector;->leadingRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v5, v5, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {v2, p1, v3, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1355
    iget-object v3, p0, Ljava/lang/invoke/Transformers$Collector;->arrayType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    .line 1356
    .local v3, "arrayTypeChar":C
    sparse-switch v3, :sswitch_data_14e

    goto/16 :goto_144

    .line 1419
    :sswitch_52
    iget v4, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    new-array v4, v4, [Z

    .line 1420
    .local v4, "array":[Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_57
    iget v6, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    if-ge v5, v6, :cond_64

    .line 1421
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v6

    aput-boolean v6, v4, v5

    .line 1420
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 1423
    .end local v5    # "i":I
    :cond_64
    const-class v5, [Z

    invoke-virtual {v1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1424
    goto/16 :goto_144

    .line 1401
    .end local v4    # "array":[Z
    :sswitch_6b
    iget v4, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    new-array v4, v4, [S

    .line 1402
    .local v4, "array":[S
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_70
    iget v6, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    if-ge v5, v6, :cond_7d

    .line 1403
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v6

    aput-short v6, v4, v5

    .line 1402
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    .line 1405
    .end local v5    # "i":I
    :cond_7d
    const-class v5, [S

    invoke-virtual {v1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1406
    goto/16 :goto_144

    .line 1362
    .end local v4    # "array":[S
    :sswitch_84
    iget-object v4, p0, Ljava/lang/invoke/Transformers$Collector;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    iget v5, p0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    aget-object v4, v4, v5

    .line 1363
    .local v4, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Ljava/lang/invoke/Transformers$Collector;->arrayType:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 1364
    .local v5, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v6, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    .line 1365
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 1366
    .local v6, "arr":[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a1
    iget v8, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    if-ge v7, v8, :cond_ae

    .line 1367
    invoke-virtual {v2, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1366
    add-int/lit8 v7, v7, 0x1

    goto :goto_a1

    .line 1369
    .end local v7    # "i":I
    :cond_ae
    invoke-virtual {v1, v6, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1370
    goto/16 :goto_144

    .line 1383
    .end local v4    # "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "arr":[Ljava/lang/Object;
    :sswitch_b3
    iget v4, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    new-array v4, v4, [J

    .line 1384
    .local v4, "array":[J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b8
    iget v6, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    if-ge v5, v6, :cond_c5

    .line 1385
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1384
    add-int/lit8 v5, v5, 0x1

    goto :goto_b8

    .line 1387
    .end local v5    # "i":I
    :cond_c5
    const-class v5, [J

    invoke-virtual {v1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1388
    goto/16 :goto_144

    .line 1374
    .end local v4    # "array":[J
    :sswitch_cc
    iget v4, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    new-array v4, v4, [I

    .line 1375
    .local v4, "array":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_d1
    iget v6, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    if-ge v5, v6, :cond_de

    .line 1376
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v6

    aput v6, v4, v5

    .line 1375
    add-int/lit8 v5, v5, 0x1

    goto :goto_d1

    .line 1378
    .end local v5    # "i":I
    :cond_de
    const-class v5, [I

    invoke-virtual {v1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1379
    goto :goto_144

    .line 1428
    .end local v4    # "array":[I
    :sswitch_e4
    iget v4, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    new-array v4, v4, [F

    .line 1429
    .local v4, "array":[F
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_e9
    iget v6, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    if-ge v5, v6, :cond_f6

    .line 1430
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v6

    aput v6, v4, v5

    .line 1429
    add-int/lit8 v5, v5, 0x1

    goto :goto_e9

    .line 1432
    .end local v5    # "i":I
    :cond_f6
    const-class v5, [F

    invoke-virtual {v1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1433
    goto :goto_144

    .line 1437
    .end local v4    # "array":[F
    :sswitch_fc
    iget v4, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    new-array v4, v4, [D

    .line 1438
    .local v4, "array":[D
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_101
    iget v6, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    if-ge v5, v6, :cond_10e

    .line 1439
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1438
    add-int/lit8 v5, v5, 0x1

    goto :goto_101

    .line 1441
    .end local v5    # "i":I
    :cond_10e
    const-class v5, [D

    invoke-virtual {v1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1442
    goto :goto_144

    .line 1410
    .end local v4    # "array":[D
    :sswitch_114
    iget v4, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    new-array v4, v4, [C

    .line 1411
    .local v4, "array":[C
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_119
    iget v6, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    if-ge v5, v6, :cond_126

    .line 1412
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v6

    aput-char v6, v4, v5

    .line 1411
    add-int/lit8 v5, v5, 0x1

    goto :goto_119

    .line 1414
    .end local v5    # "i":I
    :cond_126
    const-class v5, [C

    invoke-virtual {v1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1415
    goto :goto_144

    .line 1392
    .end local v4    # "array":[C
    :sswitch_12c
    iget v4, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    new-array v4, v4, [B

    .line 1393
    .local v4, "array":[B
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_131
    iget v6, p0, Ljava/lang/invoke/Transformers$Collector;->arrayLength:I

    if-ge v5, v6, :cond_13e

    .line 1394
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v6

    aput-byte v6, v4, v5

    .line 1393
    add-int/lit8 v5, v5, 0x1

    goto :goto_131

    .line 1396
    .end local v5    # "i":I
    :cond_13e
    const-class v5, [B

    invoke-virtual {v1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1397
    nop

    .line 1446
    .end local v4    # "array":[B
    :goto_144
    iget-object v4, p0, Ljava/lang/invoke/Transformers$Collector;->target:Ljava/lang/invoke/MethodHandle;

    invoke-static {v4, v0}, Ljava/lang/invoke/Transformers$Collector;->invokeFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 1447
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 1448
    return-void

    nop

    :sswitch_data_14e
    .sparse-switch
        0x42 -> :sswitch_12c
        0x43 -> :sswitch_114
        0x44 -> :sswitch_fc
        0x46 -> :sswitch_e4
        0x49 -> :sswitch_cc
        0x4a -> :sswitch_b3
        0x4c -> :sswitch_84
        0x53 -> :sswitch_6b
        0x5a -> :sswitch_52
    .end sparse-switch
.end method
