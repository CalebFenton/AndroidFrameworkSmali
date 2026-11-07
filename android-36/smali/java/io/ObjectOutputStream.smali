.class public Ljava/io/ObjectOutputStream;
.super Ljava/io/OutputStream;
.source "ObjectOutputStream.java"

# interfaces
.implements Ljava/io/ObjectOutput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectOutputStream$BlockDataOutputStream;,
        Ljava/io/ObjectOutputStream$HandleTable;,
        Ljava/io/ObjectOutputStream$ReplaceTable;,
        Ljava/io/ObjectOutputStream$DebugTraceInfoStack;,
        Ljava/io/ObjectOutputStream$PutFieldImpl;,
        Ljava/io/ObjectOutputStream$Caches;,
        Ljava/io/ObjectOutputStream$PutField;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o extendedDebugInfo:Z = false


# instance fields
.field private final greylist-max-o bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

.field private greylist-max-o curContext:Ljava/io/SerialCallbackContext;

.field private greylist-max-o curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

.field private final greylist-max-o debugInfoStack:Ljava/io/ObjectOutputStream$DebugTraceInfoStack;

.field private greylist-max-o depth:I

.field private final greylist-max-o enableOverride:Z

.field private greylist-max-o enableReplace:Z

.field private final greylist-max-o handles:Ljava/io/ObjectOutputStream$HandleTable;

.field private greylist-max-o primVals:[B

.field private greylist-max-r protocol:I

.field private final greylist-max-o subs:Ljava/io/ObjectOutputStream$ReplaceTable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbout(Ljava/io/ObjectOutputStream;)Ljava/io/ObjectOutputStream$BlockDataOutputStream;
    .registers 1

    iget-object p0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteObject0(Ljava/io/ObjectOutputStream;Ljava/lang/Object;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smdoublesToBytes([DI[BII)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectOutputStream;->doublesToBytes([DI[BII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smfloatsToBytes([FI[BII)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectOutputStream;->floatsToBytes([FI[BII)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 163
    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 278
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 184
    const/4 v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream;->protocol:I

    .line 279
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 280
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_11

    .line 281
    sget-object v1, Ljava/io/ObjectOutputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 283
    :cond_11
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    .line 284
    iput-object v1, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    .line 285
    iput-object v1, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    .line 286
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    .line 287
    iput-object v1, p0, Ljava/io/ObjectOutputStream;->debugInfoStack:Ljava/io/ObjectOutputStream$DebugTraceInfoStack;

    .line 288
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 184
    const/4 v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream;->protocol:I

    .line 247
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->verifySubclass()V

    .line 248
    new-instance v0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    .line 249
    new-instance v0, Ljava/io/ObjectOutputStream$HandleTable;

    const/16 v1, 0xa

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v0, v1, v2}, Ljava/io/ObjectOutputStream$HandleTable;-><init>(IF)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    .line 250
    new-instance v0, Ljava/io/ObjectOutputStream$ReplaceTable;

    invoke-direct {v0, v1, v2}, Ljava/io/ObjectOutputStream$ReplaceTable;-><init>(IF)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    .line 252
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->writeStreamHeader()V

    .line 253
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->debugInfoStack:Ljava/io/ObjectOutputStream$DebugTraceInfoStack;

    .line 259
    return-void
.end method

.method private static greylist-max-o auditSubclass(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1091
    .local p0, "subcl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/io/ObjectOutputStream$1;

    invoke-direct {v0, p0}, Ljava/io/ObjectOutputStream$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1114
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private greylist-max-o clear()V
    .registers 2

    .line 1121
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$ReplaceTable;->clear()V

    .line 1122
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->clear()V

    .line 1123
    return-void
.end method

.method private greylist-max-o defaultWriteFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1594
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1595
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_15

    .line 1596
    :cond_f
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    .line 1599
    :cond_15
    :goto_15
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->checkDefaultSerialize()V

    .line 1601
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result v1

    .line 1602
    .local v1, "primDataSize":I
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    if-eqz v2, :cond_25

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    array-length v2, v2

    if-ge v2, v1, :cond_29

    .line 1603
    :cond_25
    new-array v2, v1, [B

    iput-object v2, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    .line 1605
    :cond_29
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    invoke-virtual {p2, p1, v2}, Ljava/io/ObjectStreamClass;->getPrimFieldValues(Ljava/lang/Object;[B)V

    .line 1606
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    iget-object v3, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 1608
    invoke-virtual {p2, v4}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v2

    .line 1609
    .local v2, "fields":[Ljava/io/ObjectStreamField;
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    .line 1610
    .local v3, "objVals":[Ljava/lang/Object;
    array-length v4, v2

    array-length v5, v3

    sub-int/2addr v4, v5

    .line 1611
    .local v4, "numPrimFields":I
    invoke-virtual {p2, p1, v3}, Ljava/io/ObjectStreamClass;->getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1612
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_47
    array-length v6, v3

    if-ge v5, v6, :cond_5d

    .line 1620
    :try_start_4a
    aget-object v6, v3, v5

    add-int v7, v4, v5

    aget-object v7, v2, v7

    .line 1621
    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v7

    .line 1620
    invoke-direct {p0, v6, v7}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_57
    .catchall {:try_start_4a .. :try_end_57} :catchall_5b

    .line 1626
    nop

    .line 1612
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 1623
    :catchall_5b
    move-exception v6

    .line 1626
    throw v6

    .line 1628
    .end local v5    # "i":I
    :cond_5d
    return-void
.end method

.method private static native greylist-max-o doublesToBytes([DI[BII)V
.end method

.method private static native greylist-max-o floatsToBytes([FI[BII)V
.end method

.method private greylist-max-o isCustomSubclass()Z
    .registers 3

    .line 1293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1294
    const-class v1, Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 1293
    :goto_13
    return v0
.end method

.method private greylist-max-o verifySubclass()V
    .registers 6

    .line 1064
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1065
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/io/ObjectOutputStream;

    if-ne v0, v1, :cond_9

    .line 1066
    return-void

    .line 1068
    :cond_9
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 1069
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-nez v1, :cond_10

    .line 1070
    return-void

    .line 1072
    :cond_10
    sget-object v2, Ljava/io/ObjectOutputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v3, Ljava/io/ObjectOutputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2, v3}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 1073
    new-instance v2, Ljava/io/ObjectStreamClass$WeakClassKey;

    sget-object v3, Ljava/io/ObjectOutputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, v0, v3}, Ljava/io/ObjectStreamClass$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    .line 1074
    .local v2, "key":Ljava/io/ObjectStreamClass$WeakClassKey;
    sget-object v3, Ljava/io/ObjectOutputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1075
    .local v3, "result":Ljava/lang/Boolean;
    if-nez v3, :cond_35

    .line 1076
    invoke-static {v0}, Ljava/io/ObjectOutputStream;->auditSubclass(Ljava/lang/Class;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1077
    sget-object v4, Ljava/io/ObjectOutputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    :cond_35
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1080
    return-void

    .line 1082
    :cond_3c
    sget-object v4, Ljava/io/ObjectOutputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v1, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1083
    return-void
.end method

.method private greylist-max-o writeArray(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V
    .registers 10
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1377
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1378
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1379
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p3, :cond_11

    const/4 v2, 0x0

    goto :goto_12

    :cond_11
    move-object v2, p1

    :goto_12
    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1381
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1382
    .local v1, "ccl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 1383
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_38

    .line 1384
    move-object v2, p1

    check-cast v2, [I

    .line 1385
    .local v2, "ia":[I
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1386
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInts([III)V

    .line 1387
    .end local v2    # "ia":[I
    goto/16 :goto_e9

    :cond_38
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_4e

    .line 1388
    move-object v2, p1

    check-cast v2, [B

    .line 1389
    .local v2, "ba":[B
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1390
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v0, v4, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 1391
    .end local v2    # "ba":[B
    goto/16 :goto_e9

    :cond_4e
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_63

    .line 1392
    move-object v2, p1

    check-cast v2, [J

    .line 1393
    .local v2, "ja":[J
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1394
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLongs([JII)V

    .line 1395
    .end local v2    # "ja":[J
    goto/16 :goto_e9

    :cond_63
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_78

    .line 1396
    move-object v2, p1

    check-cast v2, [F

    .line 1397
    .local v2, "fa":[F
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1398
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeFloats([FII)V

    .line 1399
    .end local v2    # "fa":[F
    goto/16 :goto_e9

    :cond_78
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_8c

    .line 1400
    move-object v2, p1

    check-cast v2, [D

    .line 1401
    .local v2, "da":[D
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1402
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeDoubles([DII)V

    .line 1403
    .end local v2    # "da":[D
    goto :goto_e9

    :cond_8c
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_a0

    .line 1404
    move-object v2, p1

    check-cast v2, [S

    .line 1405
    .local v2, "sa":[S
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1406
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShorts([SII)V

    .line 1407
    .end local v2    # "sa":[S
    goto :goto_e9

    :cond_a0
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_b4

    .line 1408
    move-object v2, p1

    check-cast v2, [C

    .line 1409
    .local v2, "ca":[C
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1410
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChars([CII)V

    .line 1411
    .end local v2    # "ca":[C
    goto :goto_e9

    :cond_b4
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_c8

    .line 1412
    move-object v2, p1

    check-cast v2, [Z

    .line 1413
    .local v2, "za":[Z
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1414
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBooleans([ZII)V

    .line 1415
    .end local v2    # "za":[Z
    goto :goto_e9

    .line 1416
    :cond_c8
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 1419
    :cond_ce
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    .line 1420
    .local v2, "objs":[Ljava/lang/Object;
    array-length v3, v2

    .line 1421
    .local v3, "len":I
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1428
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d8
    if-ge v4, v3, :cond_e8

    .line 1434
    :try_start_da
    aget-object v5, v2, v4

    invoke-direct {p0, v5, v0}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_df
    .catchall {:try_start_da .. :try_end_df} :catchall_e3

    .line 1439
    nop

    .line 1428
    add-int/lit8 v4, v4, 0x1

    goto :goto_d8

    .line 1436
    :catchall_e3
    move-exception v0

    .line 1439
    nop

    .end local v1    # "ccl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "objs":[Ljava/lang/Object;
    .end local v3    # "len":I
    .end local p0    # "this":Ljava/io/ObjectOutputStream;
    .end local p1    # "array":Ljava/lang/Object;
    .end local p2    # "desc":Ljava/io/ObjectStreamClass;
    .end local p3    # "unshared":Z
    :try_start_e5
    throw v0
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e6

    .line 1442
    .end local v4    # "i":I
    .restart local v1    # "ccl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "objs":[Ljava/lang/Object;
    .restart local v3    # "len":I
    .restart local p0    # "this":Ljava/io/ObjectOutputStream;
    .restart local p1    # "array":Ljava/lang/Object;
    .restart local p2    # "desc":Ljava/io/ObjectStreamClass;
    .restart local p3    # "unshared":Z
    :catchall_e6
    move-exception v0

    .line 1445
    throw v0

    :cond_e8
    nop

    .line 1447
    .end local v2    # "objs":[Ljava/lang/Object;
    .end local v3    # "len":I
    :goto_e9
    return-void
.end method

.method private greylist-max-o writeClass(Ljava/lang/Class;Z)V
    .registers 5
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1268
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1269
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1270
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p2, :cond_16

    const/4 v1, 0x0

    goto :goto_17

    :cond_16
    move-object v1, p1

    :goto_17
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1271
    return-void
.end method

.method private greylist-max-o writeClassDesc(Ljava/io/ObjectStreamClass;Z)V
    .registers 6
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1280
    if-nez p1, :cond_6

    .line 1281
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    goto :goto_23

    .line 1282
    :cond_6
    if-nez p2, :cond_16

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v0

    move v1, v0

    .local v1, "handle":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    .line 1283
    invoke-direct {p0, v1}, Ljava/io/ObjectOutputStream;->writeHandle(I)V

    goto :goto_23

    .line 1284
    .end local v1    # "handle":I
    :cond_16
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->isProxy()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1285
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeProxyDesc(Ljava/io/ObjectStreamClass;Z)V

    goto :goto_23

    .line 1287
    :cond_20
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeNonProxyDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1289
    :goto_23
    return-void
.end method

.method private greylist-max-o writeEnum(Ljava/lang/Enum;Ljava/io/ObjectStreamClass;Z)V
    .registers 8
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/io/ObjectStreamClass;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1457
    .local p1, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1458
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getSuperDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1459
    .local v0, "sdesc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Enum;

    if-ne v1, v2, :cond_15

    move-object v1, p2

    goto :goto_16

    :cond_15
    move-object v1, v0

    :goto_16
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1460
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p3, :cond_20

    const/4 v3, 0x0

    goto :goto_21

    :cond_20
    move-object v3, p1

    :goto_21
    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1461
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Ljava/io/ObjectOutputStream;->writeString(Ljava/lang/String;Z)V

    .line 1462
    return-void
.end method

.method private greylist-max-o writeExternalData(Ljava/io/Externalizable;)V
    .registers 6
    .param p1, "obj"    # Ljava/io/Externalizable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1504
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1505
    .local v0, "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1510
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1512
    .local v2, "oldContext":Ljava/io/SerialCallbackContext;
    :try_start_7
    iput-object v1, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1513
    iget v1, p0, Ljava/io/ObjectOutputStream;->protocol:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    .line 1514
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_27

    .line 1516
    :cond_12
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1517
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 1518
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1519
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v3, 0x78

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_2d

    .line 1522
    :goto_27
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1526
    nop

    .line 1528
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1529
    return-void

    .line 1522
    :catchall_2d
    move-exception v1

    iput-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1526
    throw v1
.end method

.method private greylist-max-o writeFatalException(Ljava/io/IOException;)V
    .registers 6
    .param p1, "ex"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1645
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->clear()V

    .line 1646
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    move-result v0

    .line 1648
    .local v0, "oldMode":Z
    :try_start_a
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1649
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V

    .line 1650
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->clear()V
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1e

    .line 1652
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1653
    nop

    .line 1654
    return-void

    .line 1652
    :catchall_1e
    move-exception v1

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1653
    throw v1
.end method

.method private greylist-max-o writeHandle(I)V
    .registers 4
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1260
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1261
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/high16 v1, 0x7e0000

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1262
    return-void
.end method

.method private greylist-max-o writeNonProxyDesc(Ljava/io/ObjectStreamClass;Z)V
    .registers 7
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1331
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1332
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p2, :cond_d

    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    move-object v1, p1

    :goto_e
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1334
    iget v0, p0, Ljava/io/ObjectOutputStream;->protocol:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 1336
    invoke-virtual {p1, p0}, Ljava/io/ObjectStreamClass;->writeNonProxy(Ljava/io/ObjectOutputStream;)V

    goto :goto_1d

    .line 1338
    :cond_1a
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    .line 1341
    :goto_1d
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1342
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1343
    if-eqz v0, :cond_31

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->isCustomSubclass()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1344
    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 1346
    :cond_31
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateClass(Ljava/lang/Class;)V

    .line 1347
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1348
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v3, 0x78

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1350
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperDesc()Ljava/io/ObjectStreamClass;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1351
    return-void
.end method

.method private greylist-max-o writeNull()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1253
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1254
    return-void
.end method

.method private greylist-max-o writeObject0(Ljava/lang/Object;Z)V
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1131
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    move-result v0

    .line 1132
    .local v0, "oldMode":Z
    iget v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1136
    :try_start_d
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream$ReplaceTable;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object p1, v1

    if-nez v1, :cond_24

    .line 1137
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_fb

    .line 1244
    iget v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1245
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1138
    return-void

    .line 1139
    :cond_24
    const/4 v1, -0x1

    if-nez p2, :cond_3e

    :try_start_27
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v3

    move v4, v3

    .local v4, "h":I
    if-eq v3, v1, :cond_3e

    .line 1140
    invoke-direct {p0, v4}, Ljava/io/ObjectOutputStream;->writeHandle(I)V
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_fb

    .line 1244
    iget v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1245
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1141
    return-void

    .line 1155
    .end local v4    # "h":I
    :cond_3e
    move-object v3, p1

    .line 1156
    .local v3, "orig":Ljava/lang/Object;
    :try_start_3f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 1179
    .local v4, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v4, v2}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v5

    .line 1180
    .local v5, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v5}, Ljava/io/ObjectStreamClass;->hasWriteReplaceMethod()Z

    move-result v6

    if-eqz v6, :cond_61

    .line 1181
    invoke-virtual {v5, p1}, Ljava/io/ObjectStreamClass;->invokeWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object p1, v6

    if-eqz v6, :cond_61

    .line 1182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v7, v6

    .local v7, "repCl":Ljava/lang/Class;
    if-eq v6, v4, :cond_61

    .line 1184
    move-object v4, v7

    .line 1185
    invoke-static {v4, v2}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v6

    move-object v5, v6

    .line 1189
    .end local v7    # "repCl":Ljava/lang/Class;
    :cond_61
    iget-boolean v6, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    if-eqz v6, :cond_78

    .line 1190
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->replaceObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1191
    .local v6, "rep":Ljava/lang/Object;
    if-eq v6, p1, :cond_77

    if-eqz v6, :cond_77

    .line 1192
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 1193
    .end local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v7, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v7, v2}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v4

    move-object v5, v4

    move-object v4, v7

    .line 1195
    .end local v7    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_77
    move-object p1, v6

    .line 1199
    .end local v6    # "rep":Ljava/lang/Object;
    :cond_78
    if-eq p1, v3, :cond_a8

    .line 1200
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    invoke-virtual {v6, v3, p1}, Ljava/io/ObjectOutputStream$ReplaceTable;->assign(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1201
    if-nez p1, :cond_8f

    .line 1202
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V
    :try_end_84
    .catchall {:try_start_3f .. :try_end_84} :catchall_fb

    .line 1244
    iget v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1245
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1203
    return-void

    .line 1204
    :cond_8f
    if-nez p2, :cond_a8

    :try_start_91
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v6, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v6

    move v7, v6

    .local v7, "h":I
    if-eq v6, v1, :cond_a8

    .line 1205
    invoke-direct {p0, v7}, Ljava/io/ObjectOutputStream;->writeHandle(I)V
    :try_end_9d
    .catchall {:try_start_91 .. :try_end_9d} :catchall_fb

    .line 1244
    iget v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1245
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1206
    return-void

    .line 1222
    .end local v7    # "h":I
    :cond_a8
    :try_start_a8
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_b3

    .line 1223
    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, v1, p2}, Ljava/io/ObjectOutputStream;->writeClass(Ljava/lang/Class;Z)V

    goto :goto_e5

    .line 1224
    :cond_b3
    instance-of v1, p1, Ljava/io/ObjectStreamClass;

    if-eqz v1, :cond_be

    .line 1225
    move-object v1, p1

    check-cast v1, Ljava/io/ObjectStreamClass;

    invoke-direct {p0, v1, p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    goto :goto_e5

    .line 1227
    :cond_be
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_c9

    .line 1228
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Ljava/io/ObjectOutputStream;->writeString(Ljava/lang/String;Z)V

    goto :goto_e5

    .line 1229
    :cond_c9
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 1230
    invoke-direct {p0, p1, v5, p2}, Ljava/io/ObjectOutputStream;->writeArray(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V

    goto :goto_e5

    .line 1231
    :cond_d3
    instance-of v1, p1, Ljava/lang/Enum;

    if-eqz v1, :cond_de

    .line 1232
    move-object v1, p1

    check-cast v1, Ljava/lang/Enum;

    invoke-direct {p0, v1, v5, p2}, Ljava/io/ObjectOutputStream;->writeEnum(Ljava/lang/Enum;Ljava/io/ObjectStreamClass;Z)V

    goto :goto_e5

    .line 1233
    :cond_de
    instance-of v1, p1, Ljava/io/Serializable;

    if-eqz v1, :cond_f1

    .line 1234
    invoke-direct {p0, p1, v5, p2}, Ljava/io/ObjectOutputStream;->writeOrdinaryObject(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V
    :try_end_e5
    .catchall {:try_start_a8 .. :try_end_e5} :catchall_fb

    .line 1244
    .end local v3    # "orig":Ljava/lang/Object;
    .end local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "desc":Ljava/io/ObjectStreamClass;
    :goto_e5
    iget v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1245
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1246
    nop

    .line 1247
    return-void

    .line 1240
    .restart local v3    # "orig":Ljava/lang/Object;
    .restart local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "desc":Ljava/io/ObjectStreamClass;
    :cond_f1
    :try_start_f1
    new-instance v1, Ljava/io/NotSerializableException;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldMode":Z
    .end local p0    # "this":Ljava/io/ObjectOutputStream;
    .end local p1    # "obj":Ljava/lang/Object;
    .end local p2    # "unshared":Z
    throw v1
    :try_end_fb
    .catchall {:try_start_f1 .. :try_end_fb} :catchall_fb

    .line 1244
    .end local v3    # "orig":Ljava/lang/Object;
    .end local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "desc":Ljava/io/ObjectStreamClass;
    .restart local v0    # "oldMode":Z
    .restart local p0    # "this":Ljava/io/ObjectOutputStream;
    .restart local p1    # "obj":Ljava/lang/Object;
    .restart local p2    # "unshared":Z
    :catchall_fb
    move-exception v1

    iget v3, p0, Ljava/io/ObjectOutputStream;->depth:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1245
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1246
    throw v1
.end method

.method private greylist-max-o writeOrdinaryObject(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1480
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->checkSerialize()V

    .line 1482
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1483
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1484
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p3, :cond_14

    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    move-object v1, p1

    :goto_15
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1485
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->isRecord()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1486
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeRecordData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    goto :goto_38

    .line 1487
    :cond_22
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->isProxy()Z

    move-result v0

    if-nez v0, :cond_35

    .line 1488
    move-object v0, p1

    check-cast v0, Ljava/io/Externalizable;

    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeExternalData(Ljava/io/Externalizable;)V

    goto :goto_38

    .line 1490
    :cond_35
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_3a

    .line 1496
    :goto_38
    nop

    .line 1497
    return-void

    .line 1493
    :catchall_3a
    move-exception v0

    .line 1496
    throw v0
.end method

.method private greylist-max-o writeProxyDesc(Ljava/io/ObjectStreamClass;Z)V
    .registers 8
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1303
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1304
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p2, :cond_d

    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    move-object v1, p1

    :goto_e
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1306
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1307
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 1308
    .local v1, "ifaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1309
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    array-length v3, v1

    if-ge v2, v3, :cond_31

    .line 1310
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1309
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1313
    .end local v2    # "i":I
    :cond_31
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1314
    if-eqz v0, :cond_42

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->isCustomSubclass()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1315
    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 1317
    :cond_42
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateProxyClass(Ljava/lang/Class;)V

    .line 1318
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1319
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v4, 0x78

    invoke-virtual {v2, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1321
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperDesc()Ljava/io/ObjectStreamClass;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1322
    return-void
.end method

.method private blacklist writeRecordData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1535
    nop

    .line 1536
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getClassDataLayout()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    move-result-object v0

    .line 1537
    .local v0, "slots":[Ljava/io/ObjectStreamClass$ClassDataSlot;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 1542
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->defaultWriteFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 1543
    return-void

    .line 1538
    :cond_d
    new-instance v1, Ljava/io/InvalidClassException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected a single record slot length, but found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o writeSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1552
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getClassDataLayout()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    move-result-object v0

    .line 1553
    .local v0, "slots":[Ljava/io/ObjectStreamClass$ClassDataSlot;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_50

    .line 1554
    aget-object v2, v0, v1

    iget-object v2, v2, Ljava/io/ObjectStreamClass$ClassDataSlot;->desc:Ljava/io/ObjectStreamClass;

    .line 1555
    .local v2, "slotDesc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasWriteObjectMethod()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1556
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1557
    .local v3, "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1558
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1566
    .local v4, "oldContext":Ljava/io/SerialCallbackContext;
    :try_start_19
    new-instance v5, Ljava/io/SerialCallbackContext;

    invoke-direct {v5, p1, v2}, Ljava/io/SerialCallbackContext;-><init>(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1567
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1568
    invoke-virtual {v2, p1, p0}, Ljava/io/ObjectStreamClass;->invokeWriteObject(Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V

    .line 1569
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1570
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_41

    .line 1572
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    .line 1573
    iput-object v4, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1577
    nop

    .line 1579
    iput-object v3, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1580
    .end local v3    # "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    .end local v4    # "oldContext":Ljava/io/SerialCallbackContext;
    goto :goto_4d

    .line 1572
    .restart local v3    # "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    .restart local v4    # "oldContext":Ljava/io/SerialCallbackContext;
    :catchall_41
    move-exception v5

    iget-object v6, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v6}, Ljava/io/SerialCallbackContext;->setUsed()V

    .line 1573
    iput-object v4, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1577
    throw v5

    .line 1581
    .end local v3    # "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    .end local v4    # "oldContext":Ljava/io/SerialCallbackContext;
    :cond_4a
    invoke-direct {p0, p1, v2}, Ljava/io/ObjectOutputStream;->defaultWriteFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 1553
    .end local v2    # "slotDesc":Ljava/io/ObjectStreamClass;
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1584
    .end local v1    # "i":I
    :cond_50
    return-void
.end method

.method private greylist-max-o writeString(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1358
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p2, :cond_6

    const/4 v1, 0x0

    goto :goto_7

    :cond_6
    move-object v1, p1

    :goto_7
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1359
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->getUTFLength(Ljava/lang/String;)J

    move-result-wide v0

    .line 1360
    .local v0, "utflen":J
    const-wide/32 v2, 0xffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_24

    .line 1361
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v3, 0x74

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1362
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v2, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;J)V

    goto :goto_30

    .line 1364
    :cond_24
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1365
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v2, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLongUTF(Ljava/lang/String;J)V

    .line 1367
    :goto_30
    return-void
.end method


# virtual methods
.method protected whitelist test-api annotateClass(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method protected whitelist test-api annotateProxyClass(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 762
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 765
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->close()V

    .line 766
    return-void
.end method

.method public whitelist test-api defaultWriteObject()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 457
    .local v0, "ctx":Ljava/io/SerialCallbackContext;
    if-eqz v0, :cond_1c

    .line 460
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v1

    .line 461
    .local v1, "curObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 462
    .local v2, "curDesc":Ljava/io/ObjectStreamClass;
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 463
    invoke-direct {p0, v1, v2}, Ljava/io/ObjectOutputStream;->defaultWriteFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 464
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 465
    return-void

    .line 458
    .end local v1    # "curObj":Ljava/lang/Object;
    .end local v2    # "curDesc":Ljava/io/ObjectStreamClass;
    :cond_1c
    new-instance v1, Ljava/io/NotActiveException;

    const-string v2, "not in call to writeObject"

    invoke-direct {v1, v2}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api drain()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 753
    return-void
.end method

.method protected whitelist test-api enableReplaceObject(Z)Z
    .registers 4
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 636
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    if-ne p1, v0, :cond_5

    .line 637
    return p1

    .line 639
    :cond_5
    if-eqz p1, :cond_12

    .line 640
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 641
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_12

    .line 642
    sget-object v1, Ljava/io/ObjectOutputStream;->SUBSTITUTION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 645
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_12
    iput-boolean p1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    .line 646
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 741
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->flush()V

    .line 742
    return-void
.end method

.method greylist-max-o getProtocolVersion()I
    .registers 2

    .line 1039
    iget v0, p0, Ljava/io/ObjectOutputStream;->protocol:I

    return v0
.end method

.method public whitelist test-api putFields()Ljava/io/ObjectOutputStream$PutField;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    if-nez v0, :cond_20

    .line 479
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 480
    .local v0, "ctx":Ljava/io/SerialCallbackContext;
    if-eqz v0, :cond_18

    .line 483
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v1

    .line 484
    .local v1, "curObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 485
    .local v2, "curDesc":Ljava/io/ObjectStreamClass;
    new-instance v3, Ljava/io/ObjectOutputStream$PutFieldImpl;

    invoke-direct {v3, p0, v2}, Ljava/io/ObjectOutputStream$PutFieldImpl;-><init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V

    iput-object v3, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    goto :goto_20

    .line 481
    .end local v1    # "curObj":Ljava/lang/Object;
    .end local v2    # "curDesc":Ljava/io/ObjectStreamClass;
    :cond_18
    new-instance v1, Ljava/io/NotActiveException;

    const-string v2, "not in call to writeObject"

    invoke-direct {v1, v2}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    .end local v0    # "ctx":Ljava/io/SerialCallbackContext;
    :cond_20
    :goto_20
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    return-object v0
.end method

.method protected whitelist test-api replaceObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    return-object p1
.end method

.method public whitelist test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    iget v0, p0, Ljava/io/ObjectOutputStream;->depth:I

    if-nez v0, :cond_1b

    .line 522
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 523
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 524
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->clear()V

    .line 525
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 526
    return-void

    .line 520
    :cond_1b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream active"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api useProtocolVersion(I)V
    .registers 5
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->size()I

    move-result v0

    if-nez v0, :cond_28

    .line 315
    packed-switch p1, :pswitch_data_30

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :pswitch_24
    iput p1, p0, Ljava/io/ObjectOutputStream;->protocol:I

    .line 319
    nop

    .line 325
    return-void

    .line 313
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method public whitelist test-api write(I)V
    .registers 3
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    .line 702
    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 5
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 713
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 724
    if-eqz p1, :cond_1a

    .line 727
    add-int v0, p2, p3

    .line 728
    .local v0, "endoff":I
    if-ltz p2, :cond_14

    if-ltz p3, :cond_14

    array-length v1, p1

    if-gt v0, v1, :cond_14

    if-ltz v0, :cond_14

    .line 731
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 732
    return-void

    .line 729
    :cond_14
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 725
    .end local v0    # "endoff":I
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api writeBoolean(Z)V
    .registers 3
    .param p1, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBoolean(Z)V

    .line 777
    return-void
.end method

.method public whitelist test-api writeByte(I)V
    .registers 3
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 787
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 788
    return-void
.end method

.method public whitelist test-api writeBytes(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method public whitelist test-api writeChar(I)V
    .registers 3
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChar(I)V

    .line 810
    return-void
.end method

.method public whitelist test-api writeChars(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 875
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChars(Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method protected whitelist test-api writeClassDescriptor(Ljava/io/ObjectStreamClass;)V
    .registers 2
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    invoke-virtual {p1, p0}, Ljava/io/ObjectStreamClass;->writeNonProxy(Ljava/io/ObjectOutputStream;)V

    .line 691
    return-void
.end method

.method public whitelist test-api writeDouble(D)V
    .registers 4
    .param p1, "val"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 853
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeDouble(D)V

    .line 854
    return-void
.end method

.method public whitelist test-api writeFields()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    if-eqz v0, :cond_16

    .line 503
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 504
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$PutFieldImpl;->writeFields()V

    .line 505
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 506
    return-void

    .line 501
    :cond_16
    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "no current PutField object"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api writeFloat(F)V
    .registers 3
    .param p1, "val"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 842
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeFloat(F)V

    .line 843
    return-void
.end method

.method public whitelist test-api writeInt(I)V
    .registers 3
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 821
    return-void
.end method

.method public whitelist test-api writeLong(J)V
    .registers 4
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 831
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLong(J)V

    .line 832
    return-void
.end method

.method public final whitelist test-api writeObject(Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    if-eqz v0, :cond_8

    .line 350
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeObjectOverride(Ljava/lang/Object;)V

    .line 351
    return-void

    .line 354
    :cond_8
    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_e

    .line 370
    nop

    .line 371
    return-void

    .line 355
    :catch_e
    move-exception v0

    .line 356
    .local v0, "ex":Ljava/io/IOException;
    iget v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    if-nez v1, :cond_18

    .line 360
    :try_start_13
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeFatalException(Ljava/io/IOException;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    .line 366
    goto :goto_18

    .line 362
    :catch_17
    move-exception v1

    .line 369
    :cond_18
    :goto_18
    throw v0
.end method

.method protected whitelist test-api writeObjectOverride(Ljava/lang/Object;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    if-eqz v0, :cond_5

    .line 394
    return-void

    .line 391
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public whitelist test-api writeShort(I)V
    .registers 3
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 798
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    .line 799
    return-void
.end method

.method protected whitelist test-api writeStreamHeader()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, -0x5313

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    .line 659
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    .line 660
    return-void
.end method

.method greylist-max-o writeTypeString(Ljava/lang/String;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1048
    if-nez p1, :cond_6

    .line 1049
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    goto :goto_18

    .line 1050
    :cond_6
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v0

    move v1, v0

    .local v1, "handle":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_14

    .line 1051
    invoke-direct {p0, v1}, Ljava/io/ObjectOutputStream;->writeHandle(I)V

    goto :goto_18

    .line 1053
    :cond_14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeString(Ljava/lang/String;Z)V

    .line 1055
    .end local v1    # "handle":I
    :goto_18
    return-void
.end method

.method public whitelist test-api writeUTF(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 892
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 893
    return-void
.end method

.method public whitelist test-api writeUnshared(Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    .line 443
    nop

    .line 444
    return-void

    .line 438
    :catch_6
    move-exception v0

    .line 439
    .local v0, "ex":Ljava/io/IOException;
    iget v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    if-nez v1, :cond_e

    .line 440
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeFatalException(Ljava/io/IOException;)V

    .line 442
    :cond_e
    throw v0
.end method
