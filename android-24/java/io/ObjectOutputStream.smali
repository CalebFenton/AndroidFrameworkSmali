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
        Ljava/io/ObjectOutputStream$Caches;,
        Ljava/io/ObjectOutputStream$DebugTraceInfoStack;,
        Ljava/io/ObjectOutputStream$HandleTable;,
        Ljava/io/ObjectOutputStream$PutField;,
        Ljava/io/ObjectOutputStream$PutFieldImpl;,
        Ljava/io/ObjectOutputStream$ReplaceTable;
    }
.end annotation


# static fields
.field private static final extendedDebugInfo:Z


# instance fields
.field private final bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

.field private curContext:Ljava/io/SerialCallbackContext;

.field private curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

.field private final debugInfoStack:Ljava/io/ObjectOutputStream$DebugTraceInfoStack;

.field private depth:I

.field private final enableOverride:Z

.field private enableReplace:Z

.field private final handles:Ljava/io/ObjectOutputStream$HandleTable;

.field private primVals:[B

.field private protocol:I

.field private final subs:Ljava/io/ObjectOutputStream$ReplaceTable;


# direct methods
.method static synthetic -get0(Ljava/io/ObjectOutputStream;)Ljava/io/ObjectOutputStream$BlockDataOutputStream;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0([DI[BII)V
    .locals 0
    .param p0, "src"    # [D
    .param p1, "srcpos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstpos"    # I
    .param p4, "ndoubles"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectOutputStream;->doublesToBytes([DI[BII)V

    #@3
    return-void
.end method

.method static synthetic -wrap1([FI[BII)V
    .locals 0
    .param p0, "src"    # [F
    .param p1, "srcpos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstpos"    # I
    .param p4, "nfloats"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectOutputStream;->floatsToBytes([FI[BII)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Ljava/io/ObjectOutputStream;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "unshared"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V

    #@3
    return-void
.end method

.method protected constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 270
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@4
    .line 185
    const/4 v1, 0x2

    #@5
    iput v1, p0, Ljava/io/ObjectOutputStream;->protocol:I

    #@7
    .line 271
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@a
    move-result-object v0

    #@b
    .line 272
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@d
    .line 273
    sget-object v1, Ljava/io/ObjectOutputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@12
    .line 275
    :cond_0
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@14
    .line 276
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    #@16
    .line 277
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    #@18
    .line 278
    const/4 v1, 0x1

    #@19
    iput-boolean v1, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    #@1b
    .line 279
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->debugInfoStack:Ljava/io/ObjectOutputStream$DebugTraceInfoStack;

    #@1d
    .line 270
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0xa

    #@2
    const/high16 v1, 0x40400000    # 3.0f

    #@4
    .line 239
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@7
    .line 185
    const/4 v0, 0x2

    #@8
    iput v0, p0, Ljava/io/ObjectOutputStream;->protocol:I

    #@a
    .line 240
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->verifySubclass()V

    #@d
    .line 241
    new-instance v0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@f
    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@12
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@14
    .line 242
    new-instance v0, Ljava/io/ObjectOutputStream$HandleTable;

    #@16
    invoke-direct {v0, v2, v1}, Ljava/io/ObjectOutputStream$HandleTable;-><init>(IF)V

    #@19
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    #@1b
    .line 243
    new-instance v0, Ljava/io/ObjectOutputStream$ReplaceTable;

    #@1d
    invoke-direct {v0, v2, v1}, Ljava/io/ObjectOutputStream$ReplaceTable;-><init>(IF)V

    #@20
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    #@22
    .line 244
    const/4 v0, 0x0

    #@23
    iput-boolean v0, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    #@25
    .line 245
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->writeStreamHeader()V

    #@28
    .line 246
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2a
    const/4 v1, 0x1

    #@2b
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@2e
    .line 250
    const/4 v0, 0x0

    #@2f
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->debugInfoStack:Ljava/io/ObjectOutputStream$DebugTraceInfoStack;

    #@31
    .line 239
    return-void
.end method

.method private static auditSubclass(Ljava/lang/Class;)Z
    .locals 2
    .param p0, "subcl"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 1082
    new-instance v1, Ljava/io/ObjectOutputStream$1;

    #@2
    invoke-direct {v1, p0}, Ljava/io/ObjectOutputStream$1;-><init>(Ljava/lang/Class;)V

    #@5
    .line 1081
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Boolean;

    #@b
    .line 1104
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@e
    move-result v1

    #@f
    return v1
.end method

.method private clear()V
    .locals 1

    #@0
    .prologue
    .line 1111
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$ReplaceTable;->clear()V

    #@5
    .line 1112
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    #@7
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->clear()V

    #@a
    .line 1110
    return-void
.end method

.method private defaultWriteFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1563
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->checkDefaultSerialize()V

    #@4
    .line 1565
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    #@7
    move-result v4

    #@8
    .line 1566
    .local v4, "primDataSize":I
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    #@a
    if-eqz v5, :cond_0

    #@c
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    #@e
    array-length v5, v5

    #@f
    if-ge v5, v4, :cond_1

    #@11
    .line 1567
    :cond_0
    new-array v5, v4, [B

    #@13
    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    #@15
    .line 1569
    :cond_1
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    #@17
    invoke-virtual {p2, p1, v5}, Ljava/io/ObjectStreamClass;->getPrimFieldValues(Ljava/lang/Object;[B)V

    #@1a
    .line 1570
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@1c
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    #@1e
    invoke-virtual {v5, v6, v7, v4, v7}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    #@21
    .line 1572
    invoke-virtual {p2, v7}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    #@24
    move-result-object v0

    #@25
    .line 1573
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    #@28
    move-result v5

    #@29
    new-array v3, v5, [Ljava/lang/Object;

    #@2b
    .line 1574
    .local v3, "objVals":[Ljava/lang/Object;
    array-length v5, v0

    #@2c
    array-length v6, v3

    #@2d
    sub-int v2, v5, v6

    #@2f
    .line 1575
    .local v2, "numPrimFields":I
    invoke-virtual {p2, p1, v3}, Ljava/io/ObjectStreamClass;->getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@32
    .line 1576
    const/4 v1, 0x0

    #@33
    .local v1, "i":I
    :goto_0
    array-length v5, v3

    #@34
    if-ge v1, v5, :cond_2

    #@36
    .line 1584
    :try_start_0
    aget-object v5, v3, v1

    #@38
    .line 1585
    add-int v6, v2, v1

    #@3a
    aget-object v6, v0, v6

    #@3c
    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->isUnshared()Z

    #@3f
    move-result v6

    #@40
    .line 1584
    invoke-direct {p0, v5, v6}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 1576
    add-int/lit8 v1, v1, 0x1

    #@45
    goto :goto_0

    #@46
    .line 1586
    :catchall_0
    move-exception v5

    #@47
    throw v5

    #@48
    .line 1560
    :cond_2
    return-void
.end method

.method private static native doublesToBytes([DI[BII)V
.end method

.method private static native floatsToBytes([FI[BII)V
.end method

.method private isCustomSubclass()Z
    .locals 2

    #@0
    .prologue
    .line 1277
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    .line 1278
    const-class v1, Ljava/io/ObjectOutputStream;

    #@a
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@d
    move-result-object v1

    #@e
    .line 1277
    if-eq v0, v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method private verifySubclass()V
    .locals 6

    #@0
    .prologue
    .line 1054
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 1055
    .local v0, "cl":Ljava/lang/Class;
    const-class v4, Ljava/io/ObjectOutputStream;

    #@6
    if-ne v0, v4, :cond_0

    #@8
    .line 1056
    return-void

    #@9
    .line 1058
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@c
    move-result-object v3

    #@d
    .line 1059
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-nez v3, :cond_1

    #@f
    .line 1060
    return-void

    #@10
    .line 1062
    :cond_1
    sget-object v4, Ljava/io/ObjectOutputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    #@12
    sget-object v5, Ljava/io/ObjectOutputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    #@14
    invoke-static {v4, v5}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    #@17
    .line 1063
    new-instance v1, Ljava/io/ObjectStreamClass$WeakClassKey;

    #@19
    sget-object v4, Ljava/io/ObjectOutputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    #@1b
    invoke-direct {v1, v0, v4}, Ljava/io/ObjectStreamClass$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    #@1e
    .line 1064
    .local v1, "key":Ljava/io/ObjectStreamClass$WeakClassKey;
    sget-object v4, Ljava/io/ObjectOutputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    #@20
    invoke-interface {v4, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Ljava/lang/Boolean;

    #@26
    .line 1065
    .local v2, "result":Ljava/lang/Boolean;
    if-nez v2, :cond_2

    #@28
    .line 1066
    invoke-static {v0}, Ljava/io/ObjectOutputStream;->auditSubclass(Ljava/lang/Class;)Z

    #@2b
    move-result v4

    #@2c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2f
    move-result-object v2

    #@30
    .line 1067
    sget-object v4, Ljava/io/ObjectOutputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    #@32
    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 1069
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_3

    #@3b
    .line 1070
    return-void

    #@3c
    .line 1072
    :cond_3
    sget-object v4, Ljava/io/ObjectOutputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@41
    .line 1053
    return-void
.end method

.method private writeArray(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V
    .locals 18
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1361
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@4
    const/16 v15, 0x75

    #@6
    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    #@9
    .line 1362
    const/4 v14, 0x0

    #@a
    move-object/from16 v0, p0

    #@c
    move-object/from16 v1, p2

    #@e
    invoke-direct {v0, v1, v14}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    #@11
    .line 1363
    move-object/from16 v0, p0

    #@13
    iget-object v15, v0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    #@15
    if-eqz p3, :cond_1

    #@17
    const/4 v14, 0x0

    #@18
    :goto_0
    invoke-virtual {v15, v14}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    #@1b
    .line 1365
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@1e
    move-result-object v14

    #@1f
    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@22
    move-result-object v4

    #@23
    .line 1366
    .local v4, "ccl":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    #@26
    move-result v14

    #@27
    if-eqz v14, :cond_a

    #@29
    .line 1367
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@2b
    if-ne v4, v14, :cond_2

    #@2d
    move-object/from16 v8, p1

    #@2f
    .line 1368
    check-cast v8, [I

    #@31
    .line 1369
    .local v8, "ia":[I
    move-object/from16 v0, p0

    #@33
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@35
    array-length v15, v8

    #@36
    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    #@39
    .line 1370
    move-object/from16 v0, p0

    #@3b
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@3d
    array-length v15, v8

    #@3e
    const/16 v16, 0x0

    #@40
    move/from16 v0, v16

    #@42
    invoke-virtual {v14, v8, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInts([III)V

    #@45
    .line 1359
    .end local v8    # "ia":[I
    :cond_0
    :goto_1
    return-void

    #@46
    .end local v4    # "ccl":Ljava/lang/Class;
    :cond_1
    move-object/from16 v14, p1

    #@48
    .line 1363
    goto :goto_0

    #@49
    .line 1371
    .restart local v4    # "ccl":Ljava/lang/Class;
    :cond_2
    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@4b
    if-ne v4, v14, :cond_3

    #@4d
    move-object/from16 v2, p1

    #@4f
    .line 1372
    check-cast v2, [B

    #@51
    .line 1373
    .local v2, "ba":[B
    move-object/from16 v0, p0

    #@53
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@55
    array-length v15, v2

    #@56
    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    #@59
    .line 1374
    move-object/from16 v0, p0

    #@5b
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@5d
    array-length v15, v2

    #@5e
    const/16 v16, 0x0

    #@60
    const/16 v17, 0x1

    #@62
    move/from16 v0, v16

    #@64
    move/from16 v1, v17

    #@66
    invoke-virtual {v14, v2, v0, v15, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    #@69
    goto :goto_1

    #@6a
    .line 1375
    .end local v2    # "ba":[B
    :cond_3
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@6c
    if-ne v4, v14, :cond_4

    #@6e
    move-object/from16 v9, p1

    #@70
    .line 1376
    check-cast v9, [J

    #@72
    .line 1377
    .local v9, "ja":[J
    move-object/from16 v0, p0

    #@74
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@76
    array-length v15, v9

    #@77
    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    #@7a
    .line 1378
    move-object/from16 v0, p0

    #@7c
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@7e
    array-length v15, v9

    #@7f
    const/16 v16, 0x0

    #@81
    move/from16 v0, v16

    #@83
    invoke-virtual {v14, v9, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLongs([JII)V

    #@86
    goto :goto_1

    #@87
    .line 1379
    .end local v9    # "ja":[J
    :cond_4
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@89
    if-ne v4, v14, :cond_5

    #@8b
    move-object/from16 v6, p1

    #@8d
    .line 1380
    check-cast v6, [F

    #@8f
    .line 1381
    .local v6, "fa":[F
    move-object/from16 v0, p0

    #@91
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@93
    array-length v15, v6

    #@94
    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    #@97
    .line 1382
    move-object/from16 v0, p0

    #@99
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@9b
    array-length v15, v6

    #@9c
    const/16 v16, 0x0

    #@9e
    move/from16 v0, v16

    #@a0
    invoke-virtual {v14, v6, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeFloats([FII)V

    #@a3
    goto :goto_1

    #@a4
    .line 1383
    .end local v6    # "fa":[F
    :cond_5
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@a6
    if-ne v4, v14, :cond_6

    #@a8
    move-object/from16 v5, p1

    #@aa
    .line 1384
    check-cast v5, [D

    #@ac
    .line 1385
    .local v5, "da":[D
    move-object/from16 v0, p0

    #@ae
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@b0
    array-length v15, v5

    #@b1
    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    #@b4
    .line 1386
    move-object/from16 v0, p0

    #@b6
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@b8
    array-length v15, v5

    #@b9
    const/16 v16, 0x0

    #@bb
    move/from16 v0, v16

    #@bd
    invoke-virtual {v14, v5, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeDoubles([DII)V

    #@c0
    goto :goto_1

    #@c1
    .line 1387
    .end local v5    # "da":[D
    :cond_6
    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@c3
    if-ne v4, v14, :cond_7

    #@c5
    move-object/from16 v12, p1

    #@c7
    .line 1388
    check-cast v12, [S

    #@c9
    .line 1389
    .local v12, "sa":[S
    move-object/from16 v0, p0

    #@cb
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@cd
    array-length v15, v12

    #@ce
    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    #@d1
    .line 1390
    move-object/from16 v0, p0

    #@d3
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@d5
    array-length v15, v12

    #@d6
    const/16 v16, 0x0

    #@d8
    move/from16 v0, v16

    #@da
    invoke-virtual {v14, v12, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShorts([SII)V

    #@dd
    goto/16 :goto_1

    #@df
    .line 1391
    .end local v12    # "sa":[S
    :cond_7
    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@e1
    if-ne v4, v14, :cond_8

    #@e3
    move-object/from16 v3, p1

    #@e5
    .line 1392
    check-cast v3, [C

    #@e7
    .line 1393
    .local v3, "ca":[C
    move-object/from16 v0, p0

    #@e9
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@eb
    array-length v15, v3

    #@ec
    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    #@ef
    .line 1394
    move-object/from16 v0, p0

    #@f1
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@f3
    array-length v15, v3

    #@f4
    const/16 v16, 0x0

    #@f6
    move/from16 v0, v16

    #@f8
    invoke-virtual {v14, v3, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChars([CII)V

    #@fb
    goto/16 :goto_1

    #@fd
    .line 1395
    .end local v3    # "ca":[C
    :cond_8
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@ff
    if-ne v4, v14, :cond_9

    #@101
    move-object/from16 v13, p1

    #@103
    .line 1396
    check-cast v13, [Z

    #@105
    .line 1397
    .local v13, "za":[Z
    move-object/from16 v0, p0

    #@107
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@109
    array-length v15, v13

    #@10a
    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    #@10d
    .line 1398
    move-object/from16 v0, p0

    #@10f
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@111
    array-length v15, v13

    #@112
    const/16 v16, 0x0

    #@114
    move/from16 v0, v16

    #@116
    invoke-virtual {v14, v13, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBooleans([ZII)V

    #@119
    goto/16 :goto_1

    #@11b
    .line 1400
    .end local v13    # "za":[Z
    :cond_9
    new-instance v14, Ljava/lang/InternalError;

    #@11d
    invoke-direct {v14}, Ljava/lang/InternalError;-><init>()V

    #@120
    throw v14

    #@121
    :cond_a
    move-object/from16 v11, p1

    #@123
    .line 1403
    check-cast v11, [Ljava/lang/Object;

    #@125
    .line 1404
    .local v11, "objs":[Ljava/lang/Object;
    array-length v10, v11

    #@126
    .line 1405
    .local v10, "len":I
    move-object/from16 v0, p0

    #@128
    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@12a
    invoke-virtual {v14, v10}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    #@12d
    .line 1412
    const/4 v7, 0x0

    #@12e
    .local v7, "i":I
    :goto_2
    if-ge v7, v10, :cond_0

    #@130
    .line 1418
    :try_start_0
    aget-object v14, v11, v7

    #@132
    const/4 v15, 0x0

    #@133
    move-object/from16 v0, p0

    #@135
    invoke-direct {v0, v14, v15}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@138
    .line 1412
    add-int/lit8 v7, v7, 0x1

    #@13a
    goto :goto_2

    #@13b
    .line 1419
    :catchall_0
    move-exception v14

    #@13c
    :try_start_1
    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@13d
    .line 1425
    :catchall_1
    move-exception v14

    #@13e
    throw v14
.end method

.method private writeClass(Ljava/lang/Class;Z)V
    .locals 2
    .param p1, "cl"    # Ljava/lang/Class;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1252
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    const/16 v1, 0x76

    #@4
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    #@7
    .line 1253
    const/4 v0, 0x1

    #@8
    invoke-static {p1, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    #@b
    move-result-object v0

    #@c
    const/4 v1, 0x0

    #@d
    invoke-direct {p0, v0, v1}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    #@10
    .line 1254
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    #@12
    if-eqz p2, :cond_0

    #@14
    const/4 p1, 0x0

    #@15
    .end local p1    # "cl":Ljava/lang/Class;
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    #@18
    .line 1251
    return-void
.end method

.method private writeClassDesc(Ljava/io/ObjectStreamClass;Z)V
    .locals 2
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1264
    if-nez p1, :cond_0

    #@2
    .line 1265
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    #@5
    .line 1261
    :goto_0
    return-void

    #@6
    .line 1266
    :cond_0
    if-nez p2, :cond_1

    #@8
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    #@a
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    #@d
    move-result v0

    #@e
    .local v0, "handle":I
    const/4 v1, -0x1

    #@f
    if-eq v0, v1, :cond_1

    #@11
    .line 1267
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeHandle(I)V

    #@14
    goto :goto_0

    #@15
    .line 1268
    .end local v0    # "handle":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->isProxy()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 1269
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeProxyDesc(Ljava/io/ObjectStreamClass;Z)V

    #@1e
    goto :goto_0

    #@1f
    .line 1271
    :cond_2
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeNonProxyDesc(Ljava/io/ObjectStreamClass;Z)V

    #@22
    goto :goto_0
.end method

.method private writeEnum(Ljava/lang/Enum;Ljava/io/ObjectStreamClass;Z)V
    .locals 4
    .param p1, "en"    # Ljava/lang/Enum;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1441
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@3
    const/16 v2, 0x7e

    #@5
    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    #@8
    .line 1442
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getSuperDesc()Ljava/io/ObjectStreamClass;

    #@b
    move-result-object v0

    #@c
    .line 1443
    .local v0, "sdesc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    const-class v2, Ljava/lang/Enum;

    #@12
    if-ne v1, v2, :cond_0

    #@14
    .end local p2    # "desc":Ljava/io/ObjectStreamClass;
    :goto_0
    invoke-direct {p0, p2, v3}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    #@17
    .line 1444
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    #@19
    if-eqz p3, :cond_1

    #@1b
    const/4 v1, 0x0

    #@1c
    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    #@1f
    .line 1445
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {p0, v1, v3}, Ljava/io/ObjectOutputStream;->writeString(Ljava/lang/String;Z)V

    #@26
    .line 1439
    return-void

    #@27
    .restart local p2    # "desc":Ljava/io/ObjectStreamClass;
    :cond_0
    move-object p2, v0

    #@28
    .line 1443
    goto :goto_0

    #@29
    .end local p2    # "desc":Ljava/io/ObjectStreamClass;
    :cond_1
    move-object v1, p1

    #@2a
    .line 1444
    goto :goto_1
.end method

.method private writeExternalData(Ljava/io/Externalizable;)V
    .locals 4
    .param p1, "obj"    # Ljava/io/Externalizable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 1486
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    #@4
    .line 1487
    .local v1, "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    #@6
    .line 1492
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@8
    .line 1494
    .local v0, "oldContext":Ljava/io/SerialCallbackContext;
    const/4 v2, 0x0

    #@9
    :try_start_0
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@b
    .line 1495
    iget v2, p0, Ljava/io/ObjectOutputStream;->protocol:I

    #@d
    if-ne v2, v3, :cond_0

    #@f
    .line 1496
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 1504
    :goto_0
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@14
    .line 1510
    iput-object v1, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    #@16
    .line 1485
    return-void

    #@17
    .line 1498
    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@19
    const/4 v3, 0x1

    #@1a
    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@1d
    .line 1499
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    #@20
    .line 1500
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@22
    const/4 v3, 0x0

    #@23
    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@26
    .line 1501
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@28
    const/16 v3, 0x78

    #@2a
    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 1503
    :catchall_0
    move-exception v2

    #@2f
    .line 1504
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@31
    .line 1503
    throw v2
.end method

.method private writeFatalException(Ljava/io/IOException;)V
    .locals 3
    .param p1, "ex"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1609
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->clear()V

    #@4
    .line 1610
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@6
    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@9
    move-result v0

    #@a
    .line 1612
    .local v0, "oldMode":Z
    :try_start_0
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@c
    const/16 v2, 0x7b

    #@e
    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    #@11
    .line 1613
    const/4 v1, 0x0

    #@12
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V

    #@15
    .line 1614
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 1616
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@1a
    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@1d
    .line 1598
    return-void

    #@1e
    .line 1615
    :catchall_0
    move-exception v1

    #@1f
    .line 1616
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@21
    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@24
    .line 1615
    throw v1
.end method

.method private writeHandle(I)V
    .locals 2
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1244
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    const/16 v1, 0x71

    #@4
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    #@7
    .line 1245
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@9
    const/high16 v1, 0x7e0000

    #@b
    add-int/2addr v1, p1

    #@c
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    #@f
    .line 1243
    return-void
.end method

.method private writeNonProxyDesc(Ljava/io/ObjectStreamClass;Z)V
    .locals 5
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1315
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@4
    const/16 v2, 0x72

    #@6
    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    #@9
    .line 1316
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    #@b
    if-eqz p2, :cond_1

    #@d
    const/4 v1, 0x0

    #@e
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    #@11
    .line 1318
    iget v1, p0, Ljava/io/ObjectOutputStream;->protocol:I

    #@13
    if-ne v1, v4, :cond_2

    #@15
    .line 1320
    invoke-virtual {p1, p0}, Ljava/io/ObjectStreamClass;->writeNonProxy(Ljava/io/ObjectOutputStream;)V

    #@18
    .line 1325
    :goto_1
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@1b
    move-result-object v0

    #@1c
    .line 1326
    .local v0, "cl":Ljava/lang/Class;
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@1e
    invoke-virtual {v1, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@21
    .line 1327
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->isCustomSubclass()Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_0

    #@27
    .line 1328
    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    #@2a
    .line 1330
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateClass(Ljava/lang/Class;)V

    #@2d
    .line 1331
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2f
    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@32
    .line 1332
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@34
    const/16 v2, 0x78

    #@36
    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    #@39
    .line 1334
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperDesc()Ljava/io/ObjectStreamClass;

    #@3c
    move-result-object v1

    #@3d
    invoke-direct {p0, v1, v3}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    #@40
    .line 1313
    return-void

    #@41
    .end local v0    # "cl":Ljava/lang/Class;
    :cond_1
    move-object v1, p1

    #@42
    .line 1316
    goto :goto_0

    #@43
    .line 1322
    :cond_2
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    #@46
    goto :goto_1
.end method

.method private writeNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1237
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    const/16 v1, 0x70

    #@4
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    #@7
    .line 1236
    return-void
.end method

.method private writeObject0(Ljava/lang/Object;Z)V
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, -0x1

    #@1
    .line 1121
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@3
    const/4 v10, 0x0

    #@4
    invoke-virtual {v9, v10}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@7
    move-result v5

    #@8
    .line 1122
    .local v5, "oldMode":Z
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    #@a
    add-int/lit8 v9, v9, 0x1

    #@c
    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    #@e
    .line 1126
    :try_start_0
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    #@10
    invoke-virtual {v9, p1}, Ljava/io/ObjectOutputStream$ReplaceTable;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object p1

    #@14
    if-nez p1, :cond_0

    #@16
    .line 1127
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@19
    .line 1228
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    #@1b
    add-int/lit8 v9, v9, -0x1

    #@1d
    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    #@1f
    .line 1229
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@21
    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@24
    .line 1128
    return-void

    #@25
    .line 1129
    :cond_0
    if-nez p2, :cond_1

    #@27
    :try_start_1
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    #@29
    invoke-virtual {v9, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    #@2c
    move-result v3

    #@2d
    .local v3, "h":I
    if-eq v3, v11, :cond_1

    #@2f
    .line 1130
    invoke-direct {p0, v3}, Ljava/io/ObjectOutputStream;->writeHandle(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@32
    .line 1228
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    #@34
    add-int/lit8 v9, v9, -0x1

    #@36
    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    #@38
    .line 1229
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@3a
    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@3d
    .line 1131
    return-void

    #@3e
    .line 1143
    .end local v3    # "h":I
    :cond_1
    move-object v6, p1

    #@3f
    .line 1144
    .local v6, "orig":Ljava/lang/Object;
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@42
    move-result-object v1

    #@43
    .line 1165
    .local v1, "cl":Ljava/lang/Class;
    const/4 v9, 0x1

    #@44
    invoke-static {v1, v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    #@47
    move-result-object v2

    #@48
    .line 1166
    .local v2, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasWriteReplaceMethod()Z

    #@4b
    move-result v9

    #@4c
    if-eqz v9, :cond_5

    #@4e
    .line 1167
    invoke-virtual {v2, p1}, Ljava/io/ObjectStreamClass;->invokeWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@51
    move-result-object v4

    #@52
    .end local p1    # "obj":Ljava/lang/Object;
    .local v4, "obj":Ljava/lang/Object;
    if-eqz v4, :cond_2

    #@54
    .line 1168
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@57
    move-result-object v8

    #@58
    .local v8, "repCl":Ljava/lang/Class;
    if-eq v8, v1, :cond_2

    #@5a
    .line 1170
    move-object v1, v8

    #@5b
    .line 1171
    const/4 v9, 0x1

    #@5c
    invoke-static {v8, v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    #@5f
    move-result-object v2

    #@60
    .line 1175
    .end local v8    # "repCl":Ljava/lang/Class;
    :cond_2
    :goto_0
    iget-boolean v9, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    #@62
    if-eqz v9, :cond_4

    #@64
    .line 1176
    invoke-virtual {p0, v4}, Ljava/io/ObjectOutputStream;->replaceObject(Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    move-result-object v7

    #@68
    .line 1177
    .local v7, "rep":Ljava/lang/Object;
    if-eq v7, v4, :cond_3

    #@6a
    if-eqz v7, :cond_3

    #@6c
    .line 1178
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6f
    move-result-object v1

    #@70
    .line 1179
    const/4 v9, 0x1

    #@71
    invoke-static {v1, v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    #@74
    move-result-object v2

    #@75
    .line 1181
    :cond_3
    move-object v4, v7

    #@76
    .line 1185
    .end local v7    # "rep":Ljava/lang/Object;
    :cond_4
    if-eq v4, p1, :cond_7

    #@78
    .line 1186
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    #@7a
    invoke-virtual {v9, p1, v4}, Ljava/io/ObjectOutputStream$ReplaceTable;->assign(Ljava/lang/Object;Ljava/lang/Object;)V

    #@7d
    .line 1187
    if-nez v4, :cond_6

    #@7f
    .line 1188
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@82
    .line 1228
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    #@84
    add-int/lit8 v9, v9, -0x1

    #@86
    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    #@88
    .line 1229
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@8a
    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@8d
    .line 1189
    return-void

    #@8e
    .end local v4    # "obj":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_5
    move-object v4, p1

    #@8f
    .line 1168
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v4    # "obj":Ljava/lang/Object;
    goto :goto_0

    #@90
    .line 1190
    :cond_6
    if-nez p2, :cond_7

    #@92
    :try_start_4
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    #@94
    invoke-virtual {v9, v4}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    #@97
    move-result v3

    #@98
    .restart local v3    # "h":I
    if-eq v3, v11, :cond_7

    #@9a
    .line 1191
    invoke-direct {p0, v3}, Ljava/io/ObjectOutputStream;->writeHandle(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@9d
    .line 1228
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    #@9f
    add-int/lit8 v9, v9, -0x1

    #@a1
    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    #@a3
    .line 1229
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@a5
    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@a8
    .line 1192
    return-void

    #@a9
    .line 1206
    .end local v3    # "h":I
    :cond_7
    :try_start_5
    instance-of v9, v4, Ljava/lang/Class;

    #@ab
    if-eqz v9, :cond_8

    #@ad
    .line 1207
    move-object v0, v4

    #@ae
    check-cast v0, Ljava/lang/Class;

    #@b0
    move-object v9, v0

    #@b1
    invoke-direct {p0, v9, p2}, Ljava/io/ObjectOutputStream;->writeClass(Ljava/lang/Class;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@b4
    .line 1228
    :goto_1
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    #@b6
    add-int/lit8 v9, v9, -0x1

    #@b8
    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    #@ba
    .line 1229
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@bc
    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@bf
    .line 1119
    return-void

    #@c0
    .line 1208
    :cond_8
    :try_start_6
    instance-of v9, v4, Ljava/io/ObjectStreamClass;

    #@c2
    if-eqz v9, :cond_9

    #@c4
    .line 1209
    move-object v0, v4

    #@c5
    check-cast v0, Ljava/io/ObjectStreamClass;

    #@c7
    move-object v9, v0

    #@c8
    invoke-direct {p0, v9, p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@cb
    goto :goto_1

    #@cc
    .line 1227
    :catchall_0
    move-exception v9

    #@cd
    move-object p1, v4

    #@ce
    .line 1228
    .end local v1    # "cl":Ljava/lang/Class;
    .end local v2    # "desc":Ljava/io/ObjectStreamClass;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v6    # "orig":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :goto_2
    iget v10, p0, Ljava/io/ObjectOutputStream;->depth:I

    #@d0
    add-int/lit8 v10, v10, -0x1

    #@d2
    iput v10, p0, Ljava/io/ObjectOutputStream;->depth:I

    #@d4
    .line 1229
    iget-object v10, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@d6
    invoke-virtual {v10, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@d9
    .line 1227
    throw v9

    #@da
    .line 1211
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v1    # "cl":Ljava/lang/Class;
    .restart local v2    # "desc":Ljava/io/ObjectStreamClass;
    .restart local v4    # "obj":Ljava/lang/Object;
    .restart local v6    # "orig":Ljava/lang/Object;
    :cond_9
    :try_start_7
    instance-of v9, v4, Ljava/lang/String;

    #@dc
    if-eqz v9, :cond_a

    #@de
    .line 1212
    move-object v0, v4

    #@df
    check-cast v0, Ljava/lang/String;

    #@e1
    move-object v9, v0

    #@e2
    invoke-direct {p0, v9, p2}, Ljava/io/ObjectOutputStream;->writeString(Ljava/lang/String;Z)V

    #@e5
    goto :goto_1

    #@e6
    .line 1213
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    #@e9
    move-result v9

    #@ea
    if-eqz v9, :cond_b

    #@ec
    .line 1214
    invoke-direct {p0, v4, v2, p2}, Ljava/io/ObjectOutputStream;->writeArray(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V

    #@ef
    goto :goto_1

    #@f0
    .line 1215
    :cond_b
    instance-of v9, v4, Ljava/lang/Enum;

    #@f2
    if-eqz v9, :cond_c

    #@f4
    .line 1216
    move-object v0, v4

    #@f5
    check-cast v0, Ljava/lang/Enum;

    #@f7
    move-object v9, v0

    #@f8
    invoke-direct {p0, v9, v2, p2}, Ljava/io/ObjectOutputStream;->writeEnum(Ljava/lang/Enum;Ljava/io/ObjectStreamClass;Z)V

    #@fb
    goto :goto_1

    #@fc
    .line 1217
    :cond_c
    instance-of v9, v4, Ljava/io/Serializable;

    #@fe
    if-eqz v9, :cond_d

    #@100
    .line 1218
    invoke-direct {p0, v4, v2, p2}, Ljava/io/ObjectOutputStream;->writeOrdinaryObject(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V

    #@103
    goto :goto_1

    #@104
    .line 1224
    :cond_d
    new-instance v9, Ljava/io/NotSerializableException;

    #@106
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@109
    move-result-object v10

    #@10a
    invoke-direct {v9, v10}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@10d
    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@10e
    .line 1227
    .end local v1    # "cl":Ljava/lang/Class;
    .end local v2    # "desc":Ljava/io/ObjectStreamClass;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v6    # "orig":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :catchall_1
    move-exception v9

    #@10f
    goto :goto_2
.end method

.method private writeOrdinaryObject(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1464
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->checkSerialize()V

    #@3
    .line 1466
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@5
    const/16 v1, 0x73

    #@7
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    #@a
    .line 1467
    const/4 v0, 0x0

    #@b
    invoke-direct {p0, p2, v0}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    #@e
    .line 1468
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    #@10
    if-eqz p3, :cond_1

    #@12
    const/4 v0, 0x0

    #@13
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    #@16
    .line 1469
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->isProxy()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 1472
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    #@25
    .line 1456
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_1
    return-void

    #@26
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    move-object v0, p1

    #@27
    .line 1468
    goto :goto_0

    #@28
    .line 1470
    :cond_2
    check-cast p1, Ljava/io/Externalizable;

    #@2a
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeExternalData(Ljava/io/Externalizable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    goto :goto_1

    #@2e
    .line 1474
    :catchall_0
    move-exception v0

    #@2f
    throw v0
.end method

.method private writeProxyDesc(Ljava/io/ObjectStreamClass;Z)V
    .locals 6
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1287
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@3
    const/16 v4, 0x7d

    #@5
    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    #@8
    .line 1288
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    #@a
    if-eqz p2, :cond_0

    #@c
    const/4 v3, 0x0

    #@d
    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    #@10
    .line 1290
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@13
    move-result-object v0

    #@14
    .line 1291
    .local v0, "cl":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    #@17
    move-result-object v2

    #@18
    .line 1292
    .local v2, "ifaces":[Ljava/lang/Class;
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@1a
    array-length v4, v2

    #@1b
    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    #@1e
    .line 1293
    const/4 v1, 0x0

    #@1f
    .local v1, "i":I
    :goto_1
    array-length v3, v2

    #@20
    if-ge v1, v3, :cond_1

    #@22
    .line 1294
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@24
    aget-object v4, v2, v1

    #@26
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@2d
    .line 1293
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_1

    #@30
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v1    # "i":I
    .end local v2    # "ifaces":[Ljava/lang/Class;
    :cond_0
    move-object v3, p1

    #@31
    .line 1288
    goto :goto_0

    #@32
    .line 1297
    .restart local v0    # "cl":Ljava/lang/Class;
    .restart local v1    # "i":I
    .restart local v2    # "ifaces":[Ljava/lang/Class;
    :cond_1
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@34
    const/4 v4, 0x1

    #@35
    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@38
    .line 1298
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->isCustomSubclass()Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_2

    #@3e
    .line 1299
    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    #@41
    .line 1301
    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateProxyClass(Ljava/lang/Class;)V

    #@44
    .line 1302
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@46
    invoke-virtual {v3, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@49
    .line 1303
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@4b
    const/16 v4, 0x78

    #@4d
    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    #@50
    .line 1305
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperDesc()Ljava/io/ObjectStreamClass;

    #@53
    move-result-object v3

    #@54
    invoke-direct {p0, v3, v5}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    #@57
    .line 1285
    return-void
.end method

.method private writeSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1520
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getClassDataLayout()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    #@3
    move-result-object v4

    #@4
    .line 1521
    .local v4, "slots":[Ljava/io/ObjectStreamClass$ClassDataSlot;
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v5, v4

    #@6
    if-ge v0, v5, :cond_1

    #@8
    .line 1522
    aget-object v5, v4, v0

    #@a
    iget-object v3, v5, Ljava/io/ObjectStreamClass$ClassDataSlot;->desc:Ljava/io/ObjectStreamClass;

    #@c
    .line 1523
    .local v3, "slotDesc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->hasWriteObjectMethod()Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 1524
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    #@14
    .line 1525
    .local v2, "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    const/4 v5, 0x0

    #@15
    iput-object v5, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    #@17
    .line 1526
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@19
    .line 1534
    .local v1, "oldContext":Ljava/io/SerialCallbackContext;
    :try_start_0
    new-instance v5, Ljava/io/SerialCallbackContext;

    #@1b
    invoke-direct {v5, p1, v3}, Ljava/io/SerialCallbackContext;-><init>(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    #@1e
    iput-object v5, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@20
    .line 1535
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@22
    const/4 v6, 0x1

    #@23
    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@26
    .line 1536
    invoke-virtual {v3, p1, p0}, Ljava/io/ObjectStreamClass;->invokeWriteObject(Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V

    #@29
    .line 1537
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2b
    const/4 v6, 0x0

    #@2c
    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@2f
    .line 1538
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@31
    const/16 v6, 0x78

    #@33
    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 1540
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@38
    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    #@3b
    .line 1541
    iput-object v1, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@3d
    .line 1547
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    #@3f
    .line 1521
    .end local v1    # "oldContext":Ljava/io/SerialCallbackContext;
    .end local v2    # "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_0

    #@42
    .line 1539
    .restart local v1    # "oldContext":Ljava/io/SerialCallbackContext;
    .restart local v2    # "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    :catchall_0
    move-exception v5

    #@43
    .line 1540
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@45
    invoke-virtual {v6}, Ljava/io/SerialCallbackContext;->setUsed()V

    #@48
    .line 1541
    iput-object v1, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@4a
    .line 1539
    throw v5

    #@4b
    .line 1549
    .end local v1    # "oldContext":Ljava/io/SerialCallbackContext;
    .end local v2    # "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    :cond_0
    invoke-direct {p0, p1, v3}, Ljava/io/ObjectOutputStream;->defaultWriteFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    #@4e
    goto :goto_1

    #@4f
    .line 1518
    .end local v3    # "slotDesc":Ljava/io/ObjectStreamClass;
    :cond_1
    return-void
.end method

.method private writeString(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1342
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    #@2
    if-eqz p2, :cond_0

    #@4
    const/4 v2, 0x0

    #@5
    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    #@8
    .line 1343
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@a
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->getUTFLength(Ljava/lang/String;)J

    #@d
    move-result-wide v0

    #@e
    .line 1344
    .local v0, "utflen":J
    const-wide/32 v2, 0xffff

    #@11
    cmp-long v2, v0, v2

    #@13
    if-gtz v2, :cond_1

    #@15
    .line 1345
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@17
    const/16 v3, 0x74

    #@19
    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    #@1c
    .line 1346
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@1e
    invoke-virtual {v2, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;J)V

    #@21
    .line 1341
    :goto_1
    return-void

    #@22
    .end local v0    # "utflen":J
    :cond_0
    move-object v2, p1

    #@23
    .line 1342
    goto :goto_0

    #@24
    .line 1348
    .restart local v0    # "utflen":J
    :cond_1
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@26
    const/16 v3, 0x7c

    #@28
    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    #@2b
    .line 1349
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2d
    invoke-virtual {v2, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLongUTF(Ljava/lang/String;J)V

    #@30
    goto :goto_1
.end method


# virtual methods
.method protected annotateClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 534
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method protected annotateProxyClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 558
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 752
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->flush()V

    #@3
    .line 755
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@5
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->close()V

    #@8
    .line 751
    return-void
.end method

.method public defaultWriteObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 448
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 449
    new-instance v2, Ljava/io/NotActiveException;

    #@6
    const-string/jumbo v3, "not in call to writeObject"

    #@9
    invoke-direct {v2, v3}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 451
    :cond_0
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@f
    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    .line 452
    .local v1, "curObj":Ljava/lang/Object;
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@15
    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    #@18
    move-result-object v0

    #@19
    .line 453
    .local v0, "curDesc":Ljava/io/ObjectStreamClass;
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@1b
    const/4 v3, 0x0

    #@1c
    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@1f
    .line 454
    invoke-direct {p0, v1, v0}, Ljava/io/ObjectOutputStream;->defaultWriteFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    #@22
    .line 455
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@24
    const/4 v3, 0x1

    #@25
    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@28
    .line 447
    return-void
.end method

.method protected drain()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 742
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    #@5
    .line 741
    return-void
.end method

.method protected enableReplaceObject(Z)Z
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 626
    iget-boolean v1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    #@2
    if-ne p1, v1, :cond_0

    #@4
    .line 627
    return p1

    #@5
    .line 629
    :cond_0
    if-eqz p1, :cond_1

    #@7
    .line 630
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@a
    move-result-object v0

    #@b
    .line 631
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    #@d
    .line 632
    sget-object v1, Ljava/io/ObjectOutputStream;->SUBSTITUTION_PERMISSION:Ljava/io/SerializablePermission;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@12
    .line 635
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    iput-boolean p1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    #@14
    .line 636
    iget-boolean v1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    #@16
    if-eqz v1, :cond_2

    #@18
    const/4 v1, 0x0

    #@19
    :goto_0
    return v1

    #@1a
    :cond_2
    const/4 v1, 0x1

    #@1b
    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 731
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->flush()V

    #@5
    .line 730
    return-void
.end method

.method getProtocolVersion()I
    .locals 1

    #@0
    .prologue
    .line 1029
    iget v0, p0, Ljava/io/ObjectOutputStream;->protocol:I

    #@2
    return v0
.end method

.method public putFields()Ljava/io/ObjectOutputStream$PutField;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 469
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 470
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 471
    new-instance v2, Ljava/io/NotActiveException;

    #@a
    const-string/jumbo v3, "not in call to writeObject"

    #@d
    invoke-direct {v2, v3}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 473
    :cond_0
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@13
    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    .line 474
    .local v1, "curObj":Ljava/lang/Object;
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@19
    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    #@1c
    move-result-object v0

    #@1d
    .line 475
    .local v0, "curDesc":Ljava/io/ObjectStreamClass;
    new-instance v2, Ljava/io/ObjectOutputStream$PutFieldImpl;

    #@1f
    invoke-direct {v2, p0, v0}, Ljava/io/ObjectOutputStream$PutFieldImpl;-><init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V

    #@22
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    #@24
    .line 477
    .end local v0    # "curDesc":Ljava/io/ObjectStreamClass;
    .end local v1    # "curObj":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    #@26
    return-object v2
.end method

.method protected replaceObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 600
    return-object p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 509
    iget v0, p0, Ljava/io/ObjectOutputStream;->depth:I

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 510
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "stream active"

    #@a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 512
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@10
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@13
    .line 513
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@15
    const/16 v1, 0x79

    #@17
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    #@1a
    .line 514
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->clear()V

    #@1d
    .line 515
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@1f
    const/4 v1, 0x1

    #@20
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@23
    .line 508
    return-void
.end method

.method public useProtocolVersion(I)V
    .locals 3
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->size()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "stream non-empty"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 307
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@14
    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "unknown version: "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 314
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 310
    :pswitch_0
    iput p1, p0, Ljava/io/ObjectOutputStream;->protocol:I

    #@30
    .line 302
    return-void

    #@31
    .line 307
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public write(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 691
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    #@5
    .line 690
    return-void
.end method

.method public write([B)V
    .locals 3
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 702
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@3
    array-length v1, p1

    #@4
    invoke-virtual {v0, p1, v2, v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    #@7
    .line 701
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 714
    if-nez p1, :cond_0

    #@3
    .line 715
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v1

    #@9
    .line 717
    :cond_0
    add-int v0, p2, p3

    #@b
    .line 718
    .local v0, "endoff":I
    if-ltz p2, :cond_1

    #@d
    if-gez p3, :cond_2

    #@f
    .line 719
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@11
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@14
    throw v1

    #@15
    .line 718
    :cond_2
    array-length v1, p1

    #@16
    if-gt v0, v1, :cond_1

    #@18
    if-ltz v0, :cond_1

    #@1a
    .line 721
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@1c
    invoke-virtual {v1, p1, p2, p3, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    #@1f
    .line 713
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 766
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBoolean(Z)V

    #@5
    .line 765
    return-void
.end method

.method public writeByte(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 777
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    #@5
    .line 776
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 854
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBytes(Ljava/lang/String;)V

    #@5
    .line 853
    return-void
.end method

.method public writeChar(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 799
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChar(I)V

    #@5
    .line 798
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 865
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChars(Ljava/lang/String;)V

    #@5
    .line 864
    return-void
.end method

.method protected writeClassDescriptor(Ljava/io/ObjectStreamClass;)V
    .locals 0
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 680
    invoke-virtual {p1, p0}, Ljava/io/ObjectStreamClass;->writeNonProxy(Ljava/io/ObjectOutputStream;)V

    #@3
    .line 678
    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .param p1, "val"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 843
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeDouble(D)V

    #@5
    .line 842
    return-void
.end method

.method public writeFields()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 490
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 491
    new-instance v0, Ljava/io/NotActiveException;

    #@6
    const-string/jumbo v1, "no current PutField object"

    #@9
    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 493
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@f
    const/4 v1, 0x0

    #@10
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@13
    .line 494
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    #@15
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$PutFieldImpl;->writeFields()V

    #@18
    .line 495
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@1a
    const/4 v1, 0x1

    #@1b
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    #@1e
    .line 489
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .param p1, "val"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 832
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeFloat(F)V

    #@5
    .line 831
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 810
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    #@5
    .line 809
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 821
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLong(J)V

    #@5
    .line 820
    return-void
.end method

.method public final writeObject(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 341
    iget-boolean v2, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 342
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeObjectOverride(Ljava/lang/Object;)V

    #@7
    .line 343
    return-void

    #@8
    .line 346
    :cond_0
    const/4 v2, 0x0

    #@9
    :try_start_0
    invoke-direct {p0, p1, v2}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 340
    return-void

    #@d
    .line 347
    :catch_0
    move-exception v0

    #@e
    .line 348
    .local v0, "ex":Ljava/io/IOException;
    iget v2, p0, Ljava/io/ObjectOutputStream;->depth:I

    #@10
    if-nez v2, :cond_1

    #@12
    .line 352
    :try_start_1
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeFatalException(Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@15
    .line 361
    :cond_1
    :goto_0
    throw v0

    #@16
    .line 354
    :catch_1
    move-exception v1

    #@17
    .local v1, "ex2":Ljava/io/IOException;
    goto :goto_0
.end method

.method protected writeObjectOverride(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 381
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 383
    new-instance v0, Ljava/io/IOException;

    #@6
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@9
    throw v0

    #@a
    .line 379
    :cond_0
    return-void
.end method

.method public writeShort(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 788
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    #@5
    .line 787
    return-void
.end method

.method protected writeStreamHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 648
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    const/16 v1, -0x5313

    #@4
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    #@7
    .line 649
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@9
    const/4 v1, 0x5

    #@a
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    #@d
    .line 647
    return-void
.end method

.method writeTypeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1038
    if-nez p1, :cond_0

    #@2
    .line 1039
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    #@5
    .line 1036
    :goto_0
    return-void

    #@6
    .line 1040
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    #@8
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    #@b
    move-result v0

    #@c
    .local v0, "handle":I
    const/4 v1, -0x1

    #@d
    if-eq v0, v1, :cond_1

    #@f
    .line 1041
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeHandle(I)V

    #@12
    goto :goto_0

    #@13
    .line 1043
    :cond_1
    const/4 v1, 0x0

    #@14
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream;->writeString(Ljava/lang/String;Z)V

    #@17
    goto :goto_0
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 882
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@5
    .line 881
    return-void
.end method

.method public writeUnshared(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 429
    const/4 v1, 0x1

    #@1
    :try_start_0
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 427
    return-void

    #@5
    .line 430
    :catch_0
    move-exception v0

    #@6
    .line 431
    .local v0, "ex":Ljava/io/IOException;
    iget v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    #@8
    if-nez v1, :cond_0

    #@a
    .line 432
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeFatalException(Ljava/io/IOException;)V

    #@d
    .line 434
    :cond_0
    throw v0
.end method
