.class public Ljava/io/ObjectInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/io/ObjectInput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectInputStream$BlockDataInputStream;,
        Ljava/io/ObjectInputStream$Caches;,
        Ljava/io/ObjectInputStream$GetField;,
        Ljava/io/ObjectInputStream$GetFieldImpl;,
        Ljava/io/ObjectInputStream$HandleTable;,
        Ljava/io/ObjectInputStream$PeekInputStream;,
        Ljava/io/ObjectInputStream$ValidationList;
    }
.end annotation


# static fields
.field private static final NULL_HANDLE:I = -0x1

.field private static final primClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final unsharedMarker:Ljava/lang/Object;


# instance fields
.field private final bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

.field private closed:Z

.field private curContext:Ljava/io/SerialCallbackContext;

.field private defaultDataEnd:Z

.field private depth:I

.field private final enableOverride:Z

.field private enableResolve:Z

.field private final handles:Ljava/io/ObjectInputStream$HandleTable;

.field private passHandle:I

.field private primVals:[B

.field private final vlist:Ljava/io/ObjectInputStream$ValidationList;


# direct methods
.method static synthetic -get0(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$BlockDataInputStream;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/io/ObjectInputStream;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Ljava/io/ObjectInputStream;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@2
    return v0
.end method

.method static synthetic -set0(Ljava/io/ObjectInputStream;I)I
    .locals 0

    #@0
    iput p1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Ljava/io/ObjectInputStream;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "unshared"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1([BI[DII)V
    .locals 0
    .param p0, "src"    # [B
    .param p1, "srcpos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstpos"    # I
    .param p4, "ndoubles"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectInputStream;->bytesToDoubles([BI[DII)V

    #@3
    return-void
.end method

.method static synthetic -wrap2([BI[FII)V
    .locals 0
    .param p0, "src"    # [B
    .param p1, "srcpos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstpos"    # I
    .param p4, "nfloats"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectInputStream;->bytesToFloats([BI[FII)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Ljava/io/ObjectInputStream;)V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->handleReset()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 216
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    #@7
    .line 220
    new-instance v0, Ljava/util/HashMap;

    #@9
    const/16 v1, 0x8

    #@b
    const/high16 v2, 0x3f800000    # 1.0f

    #@d
    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    #@10
    .line 219
    sput-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    #@12
    .line 222
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    #@14
    const-string/jumbo v1, "boolean"

    #@17
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@19
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 223
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    #@1e
    const-string/jumbo v1, "byte"

    #@21
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@23
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 224
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    #@28
    const-string/jumbo v1, "char"

    #@2b
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@2d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 225
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    #@32
    const-string/jumbo v1, "short"

    #@35
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@37
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 226
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    #@3c
    const-string/jumbo v1, "int"

    #@3f
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@41
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 227
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    #@46
    const-string/jumbo v1, "long"

    #@49
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@4b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    .line 228
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    #@50
    const-string/jumbo v1, "float"

    #@53
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@55
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    .line 229
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    #@5a
    const-string/jumbo v1, "double"

    #@5d
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@5f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    .line 230
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    #@64
    const-string/jumbo v1, "void"

    #@67
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@69
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    .line 208
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
    .line 322
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@4
    .line 255
    const/4 v1, -0x1

    #@5
    iput v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@7
    .line 257
    const/4 v1, 0x0

    #@8
    iput-boolean v1, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    #@a
    .line 323
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@d
    move-result-object v0

    #@e
    .line 324
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@10
    .line 325
    sget-object v1, Ljava/io/ObjectInputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@15
    .line 327
    :cond_0
    iput-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@17
    .line 328
    iput-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@19
    .line 329
    iput-object v2, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    #@1b
    .line 330
    const/4 v1, 0x1

    #@1c
    iput-boolean v1, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    #@1e
    .line 322
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 296
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@4
    .line 255
    const/4 v0, -0x1

    #@5
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@7
    .line 257
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    #@9
    .line 297
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->verifySubclass()V

    #@c
    .line 298
    new-instance v0, Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@e
    invoke-direct {v0, p0, p1}, Ljava/io/ObjectInputStream$BlockDataInputStream;-><init>(Ljava/io/ObjectInputStream;Ljava/io/InputStream;)V

    #@11
    iput-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@13
    .line 299
    new-instance v0, Ljava/io/ObjectInputStream$HandleTable;

    #@15
    const/16 v1, 0xa

    #@17
    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream$HandleTable;-><init>(I)V

    #@1a
    iput-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@1c
    .line 300
    new-instance v0, Ljava/io/ObjectInputStream$ValidationList;

    #@1e
    invoke-direct {v0}, Ljava/io/ObjectInputStream$ValidationList;-><init>()V

    #@21
    iput-object v0, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    #@23
    .line 301
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    #@25
    .line 302
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readStreamHeader()V

    #@28
    .line 303
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2a
    const/4 v1, 0x1

    #@2b
    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@2e
    .line 296
    return-void
.end method

.method private static auditSubclass(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1264
    .local p0, "subcl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/io/ObjectInputStream$1;

    #@2
    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream$1;-><init>(Ljava/lang/Class;)V

    #@5
    .line 1263
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Boolean;

    #@b
    .line 1286
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@e
    move-result v1

    #@f
    return v1
.end method

.method private static native bytesToDoubles([BI[DII)V
.end method

.method private static native bytesToFloats([BI[FII)V
.end method

.method private checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1396
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@6
    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@8
    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    #@b
    move-result-object v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 1397
    :cond_0
    return-object p1

    #@f
    .line 1399
    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 1400
    .local v0, "rep":Ljava/lang/Object;
    if-eq v0, p1, :cond_2

    #@15
    .line 1401
    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@17
    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@19
    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    #@1c
    .line 1403
    :cond_2
    return-object v0
.end method

.method private clear()V
    .locals 1

    #@0
    .prologue
    .line 1293
    iget-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$HandleTable;->clear()V

    #@5
    .line 1294
    iget-object v0, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    #@7
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$ValidationList;->clear()V

    #@a
    .line 1292
    return-void
.end method

.method private static cloneArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3518
    instance-of v0, p0, [Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3519
    check-cast p0, [Ljava/lang/Object;

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 3520
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 3521
    check-cast p0, [Z

    #@11
    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 3522
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [B

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 3523
    check-cast p0, [B

    #@1c
    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    return-object v0

    #@21
    .line 3524
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [C

    #@23
    if-eqz v0, :cond_3

    #@25
    .line 3525
    check-cast p0, [C

    #@27
    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    return-object v0

    #@2c
    .line 3526
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [D

    #@2e
    if-eqz v0, :cond_4

    #@30
    .line 3527
    check-cast p0, [D

    #@32
    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    return-object v0

    #@37
    .line 3528
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [F

    #@39
    if-eqz v0, :cond_5

    #@3b
    .line 3529
    check-cast p0, [F

    #@3d
    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    return-object v0

    #@42
    .line 3530
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, [I

    #@44
    if-eqz v0, :cond_6

    #@46
    .line 3531
    check-cast p0, [I

    #@48
    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4b
    move-result-object v0

    #@4c
    return-object v0

    #@4d
    .line 3532
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, [J

    #@4f
    if-eqz v0, :cond_7

    #@51
    .line 3533
    check-cast p0, [J

    #@53
    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@56
    move-result-object v0

    #@57
    return-object v0

    #@58
    .line 3534
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, [S

    #@5a
    if-eqz v0, :cond_8

    #@5c
    .line 3535
    check-cast p0, [S

    #@5e
    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@61
    move-result-object v0

    #@62
    return-object v0

    #@63
    .line 3537
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    #@65
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@68
    throw v0
.end method

.method private defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1972
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@4
    move-result-object v0

    #@5
    .line 1973
    .local v0, "cl":Ljava/lang/Class;
    if-eqz v0, :cond_0

    #@7
    if-eqz p1, :cond_0

    #@9
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@c
    move-result v8

    #@d
    if-eqz v8, :cond_5

    #@f
    .line 1977
    :cond_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    #@12
    move-result v7

    #@13
    .line 1978
    .local v7, "primDataSize":I
    iget-object v8, p0, Ljava/io/ObjectInputStream;->primVals:[B

    #@15
    if-eqz v8, :cond_1

    #@17
    iget-object v8, p0, Ljava/io/ObjectInputStream;->primVals:[B

    #@19
    array-length v8, v8

    #@1a
    if-ge v8, v7, :cond_2

    #@1c
    .line 1979
    :cond_1
    new-array v8, v7, [B

    #@1e
    iput-object v8, p0, Ljava/io/ObjectInputStream;->primVals:[B

    #@20
    .line 1981
    :cond_2
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@22
    iget-object v9, p0, Ljava/io/ObjectInputStream;->primVals:[B

    #@24
    invoke-virtual {v8, v9, v10, v7, v10}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    #@27
    .line 1982
    if-eqz p1, :cond_3

    #@29
    .line 1983
    iget-object v8, p0, Ljava/io/ObjectInputStream;->primVals:[B

    #@2b
    invoke-virtual {p2, p1, v8}, Ljava/io/ObjectStreamClass;->setPrimFieldValues(Ljava/lang/Object;[B)V

    #@2e
    .line 1986
    :cond_3
    iget v5, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@30
    .line 1987
    .local v5, "objHandle":I
    invoke-virtual {p2, v10}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    #@33
    move-result-object v2

    #@34
    .line 1988
    .local v2, "fields":[Ljava/io/ObjectStreamField;
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    #@37
    move-result v8

    #@38
    new-array v6, v8, [Ljava/lang/Object;

    #@3a
    .line 1989
    .local v6, "objVals":[Ljava/lang/Object;
    array-length v8, v2

    #@3b
    array-length v9, v6

    #@3c
    sub-int v4, v8, v9

    #@3e
    .line 1990
    .local v4, "numPrimFields":I
    const/4 v3, 0x0

    #@3f
    .local v3, "i":I
    :goto_0
    array-length v8, v6

    #@40
    if-ge v3, v8, :cond_6

    #@42
    .line 1991
    add-int v8, v4, v3

    #@44
    aget-object v1, v2, v8

    #@46
    .line 1992
    .local v1, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->isUnshared()Z

    #@49
    move-result v8

    #@4a
    invoke-direct {p0, v8}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    #@4d
    move-result-object v8

    #@4e
    aput-object v8, v6, v3

    #@50
    .line 1993
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    #@53
    move-result-object v8

    #@54
    if-eqz v8, :cond_4

    #@56
    .line 1994
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@58
    iget v9, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@5a
    invoke-virtual {v8, v5, v9}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    #@5d
    .line 1990
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 1974
    .end local v1    # "f":Ljava/io/ObjectStreamField;
    .end local v2    # "fields":[Ljava/io/ObjectStreamField;
    .end local v3    # "i":I
    .end local v4    # "numPrimFields":I
    .end local v5    # "objHandle":I
    .end local v6    # "objVals":[Ljava/lang/Object;
    .end local v7    # "primDataSize":I
    :cond_5
    new-instance v8, Ljava/lang/ClassCastException;

    #@62
    invoke-direct {v8}, Ljava/lang/ClassCastException;-><init>()V

    #@65
    throw v8

    #@66
    .line 1997
    .restart local v2    # "fields":[Ljava/io/ObjectStreamField;
    .restart local v3    # "i":I
    .restart local v4    # "numPrimFields":I
    .restart local v5    # "objHandle":I
    .restart local v6    # "objVals":[Ljava/lang/Object;
    .restart local v7    # "primDataSize":I
    :cond_6
    if-eqz p1, :cond_7

    #@68
    .line 1998
    invoke-virtual {p2, p1, v6}, Ljava/io/ObjectStreamClass;->setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@6b
    .line 2000
    :cond_7
    iput v5, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@6d
    .line 1969
    return-void
.end method

.method private handleReset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 2026
    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 2027
    new-instance v0, Ljava/io/StreamCorruptedException;

    #@6
    .line 2028
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "unexpected reset; recursion depth: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget v2, p0, Ljava/io/ObjectInputStream;->depth:I

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 2027
    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 2030
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    #@23
    .line 2025
    return-void
.end method

.method private isCustomSubclass()Z
    .locals 2

    #@0
    .prologue
    .line 1528
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    .line 1529
    const-class v1, Ljava/io/ObjectInputStream;

    #@a
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@d
    move-result-object v1

    #@e
    .line 1528
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

.method private static latestUserDefinedLoader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 2061
    invoke-static {}, Ldalvik/system/VMStack;->getClosestUserClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private readArray(Z)Ljava/lang/Object;
    .locals 13
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 1660
    iget-object v9, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@3
    invoke-virtual {v9}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@6
    move-result v9

    #@7
    const/16 v10, 0x75

    #@9
    if-eq v9, v10, :cond_0

    #@b
    .line 1661
    new-instance v9, Ljava/lang/InternalError;

    #@d
    invoke-direct {v9}, Ljava/lang/InternalError;-><init>()V

    #@10
    throw v9

    #@11
    .line 1664
    :cond_0
    invoke-direct {p0, v12}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    #@14
    move-result-object v4

    #@15
    .line 1665
    .local v4, "desc":Ljava/io/ObjectStreamClass;
    iget-object v9, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@17
    invoke-virtual {v9}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    #@1a
    move-result v6

    #@1b
    .line 1667
    .local v6, "len":I
    const/4 v0, 0x0

    #@1c
    .line 1668
    .local v0, "array":Ljava/lang/Object;
    const/4 v2, 0x0

    #@1d
    .line 1669
    .local v2, "ccl":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@20
    move-result-object v3

    #@21
    .local v3, "cl":Ljava/lang/Class;
    if-eqz v3, :cond_1

    #@23
    .line 1670
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@26
    move-result-object v2

    #@27
    .line 1671
    .local v2, "ccl":Ljava/lang/Class;
    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    .line 1674
    .end local v0    # "array":Ljava/lang/Object;
    .end local v2    # "ccl":Ljava/lang/Class;
    :cond_1
    iget-object v10, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@2d
    if-eqz p1, :cond_3

    #@2f
    sget-object v9, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    #@31
    :goto_0
    invoke-virtual {v10, v9}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    #@34
    move-result v1

    #@35
    .line 1675
    .local v1, "arrayHandle":I
    invoke-virtual {v4}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    #@38
    move-result-object v8

    #@39
    .line 1676
    .local v8, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v8, :cond_2

    #@3b
    .line 1677
    iget-object v9, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@3d
    invoke-virtual {v9, v1, v8}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    #@40
    .line 1680
    :cond_2
    if-nez v2, :cond_4

    #@42
    .line 1681
    const/4 v5, 0x0

    #@43
    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_5

    #@45
    .line 1682
    invoke-direct {p0, v12}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    #@48
    .line 1681
    add-int/lit8 v5, v5, 0x1

    #@4a
    goto :goto_1

    #@4b
    .end local v1    # "arrayHandle":I
    .end local v5    # "i":I
    .end local v8    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_3
    move-object v9, v0

    #@4c
    .line 1674
    goto :goto_0

    #@4d
    .line 1684
    .restart local v1    # "arrayHandle":I
    .restart local v8    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    #@50
    move-result v9

    #@51
    if-eqz v9, :cond_e

    #@53
    .line 1685
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@55
    if-ne v2, v9, :cond_6

    #@57
    .line 1686
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@59
    move-object v9, v0

    #@5a
    check-cast v9, [I

    #@5c
    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInts([III)V

    #@5f
    .line 1712
    :cond_5
    :goto_2
    iget-object v9, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@61
    invoke-virtual {v9, v1}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    #@64
    .line 1713
    iput v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@66
    .line 1714
    return-object v0

    #@67
    .line 1687
    :cond_6
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@69
    if-ne v2, v9, :cond_7

    #@6b
    .line 1688
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@6d
    move-object v9, v0

    #@6e
    check-cast v9, [B

    #@70
    const/4 v11, 0x1

    #@71
    invoke-virtual {v10, v9, v12, v6, v11}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    #@74
    goto :goto_2

    #@75
    .line 1689
    :cond_7
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@77
    if-ne v2, v9, :cond_8

    #@79
    .line 1690
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@7b
    move-object v9, v0

    #@7c
    check-cast v9, [J

    #@7e
    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLongs([JII)V

    #@81
    goto :goto_2

    #@82
    .line 1691
    :cond_8
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@84
    if-ne v2, v9, :cond_9

    #@86
    .line 1692
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@88
    move-object v9, v0

    #@89
    check-cast v9, [F

    #@8b
    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFloats([FII)V

    #@8e
    goto :goto_2

    #@8f
    .line 1693
    :cond_9
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@91
    if-ne v2, v9, :cond_a

    #@93
    .line 1694
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@95
    move-object v9, v0

    #@96
    check-cast v9, [D

    #@98
    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readDoubles([DII)V

    #@9b
    goto :goto_2

    #@9c
    .line 1695
    :cond_a
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@9e
    if-ne v2, v9, :cond_b

    #@a0
    .line 1696
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@a2
    move-object v9, v0

    #@a3
    check-cast v9, [S

    #@a5
    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShorts([SII)V

    #@a8
    goto :goto_2

    #@a9
    .line 1697
    :cond_b
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@ab
    if-ne v2, v9, :cond_c

    #@ad
    .line 1698
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@af
    move-object v9, v0

    #@b0
    check-cast v9, [C

    #@b2
    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readChars([CII)V

    #@b5
    goto :goto_2

    #@b6
    .line 1699
    :cond_c
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@b8
    if-ne v2, v9, :cond_d

    #@ba
    .line 1700
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@bc
    move-object v9, v0

    #@bd
    check-cast v9, [Z

    #@bf
    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBooleans([ZII)V

    #@c2
    goto :goto_2

    #@c3
    .line 1702
    :cond_d
    new-instance v9, Ljava/lang/InternalError;

    #@c5
    invoke-direct {v9}, Ljava/lang/InternalError;-><init>()V

    #@c8
    throw v9

    #@c9
    :cond_e
    move-object v7, v0

    #@ca
    .line 1705
    check-cast v7, [Ljava/lang/Object;

    #@cc
    .line 1706
    .local v7, "oa":[Ljava/lang/Object;
    const/4 v5, 0x0

    #@cd
    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v6, :cond_5

    #@cf
    .line 1707
    invoke-direct {p0, v12}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    #@d2
    move-result-object v9

    #@d3
    aput-object v9, v7, v5

    #@d5
    .line 1708
    iget-object v9, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@d7
    iget v10, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@d9
    invoke-virtual {v9, v1, v10}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    #@dc
    .line 1706
    add-int/lit8 v5, v5, 0x1

    #@de
    goto :goto_3
.end method

.method private readClass(Z)Ljava/lang/Class;
    .locals 5
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1481
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@5
    move-result v3

    #@6
    const/16 v4, 0x76

    #@8
    if-eq v3, v4, :cond_0

    #@a
    .line 1482
    new-instance v3, Ljava/lang/InternalError;

    #@c
    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    #@f
    throw v3

    #@10
    .line 1484
    :cond_0
    const/4 v3, 0x0

    #@11
    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    #@14
    move-result-object v1

    #@15
    .line 1485
    .local v1, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@18
    move-result-object v0

    #@19
    .line 1486
    .local v0, "cl":Ljava/lang/Class;
    iget-object v4, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@1b
    if-eqz p1, :cond_2

    #@1d
    sget-object v3, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    #@1f
    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    #@22
    move-result v3

    #@23
    iput v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@25
    .line 1488
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    #@28
    move-result-object v2

    #@29
    .line 1489
    .local v2, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v2, :cond_1

    #@2b
    .line 1490
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@2d
    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@2f
    invoke-virtual {v3, v4, v2}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    #@32
    .line 1493
    :cond_1
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@34
    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@36
    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    #@39
    .line 1494
    return-object v0

    #@3a
    .end local v2    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_2
    move-object v3, v0

    #@3b
    .line 1486
    goto :goto_0
.end method

.method private readClassDesc(Z)Ljava/io/ObjectStreamClass;
    .locals 6
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1506
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    #@5
    move-result v0

    #@6
    .line 1507
    .local v0, "tc":B
    sparse-switch v0, :sswitch_data_0

    #@9
    .line 1521
    new-instance v1, Ljava/io/StreamCorruptedException;

    #@b
    .line 1522
    const-string/jumbo v2, "invalid type code: %02X"

    #@e
    const/4 v3, 0x1

    #@f
    new-array v3, v3, [Ljava/lang/Object;

    #@11
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@14
    move-result-object v4

    #@15
    const/4 v5, 0x0

    #@16
    aput-object v4, v3, v5

    #@18
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 1521
    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 1509
    :sswitch_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Ljava/io/ObjectStreamClass;

    #@26
    return-object v1

    #@27
    .line 1512
    :sswitch_1
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Ljava/io/ObjectStreamClass;

    #@2d
    return-object v1

    #@2e
    .line 1515
    :sswitch_2
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readProxyDesc(Z)Ljava/io/ObjectStreamClass;

    #@31
    move-result-object v1

    #@32
    return-object v1

    #@33
    .line 1518
    :sswitch_3
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNonProxyDesc(Z)Ljava/io/ObjectStreamClass;

    #@36
    move-result-object v1

    #@37
    return-object v1

    #@38
    .line 1507
    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_0
        0x71 -> :sswitch_1
        0x72 -> :sswitch_3
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private readEnum(Z)Ljava/lang/Enum;
    .locals 11
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 1722
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@4
    invoke-virtual {v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@7
    move-result v8

    #@8
    const/16 v9, 0x7e

    #@a
    if-eq v8, v9, :cond_0

    #@c
    .line 1723
    new-instance v7, Ljava/lang/InternalError;

    #@e
    invoke-direct {v7}, Ljava/lang/InternalError;-><init>()V

    #@11
    throw v7

    #@12
    .line 1726
    :cond_0
    invoke-direct {p0, v10}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    #@15
    move-result-object v1

    #@16
    .line 1727
    .local v1, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->isEnum()Z

    #@19
    move-result v8

    #@1a
    if-nez v8, :cond_1

    #@1c
    .line 1728
    new-instance v7, Ljava/io/InvalidClassException;

    #@1e
    new-instance v8, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v9, "non-enum class: "

    #@26
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v8

    #@2a
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v8

    #@2e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v8

    #@32
    invoke-direct {v7, v8}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@35
    throw v7

    #@36
    .line 1731
    :cond_1
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@38
    if-eqz p1, :cond_2

    #@3a
    sget-object v7, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    #@3c
    :cond_2
    invoke-virtual {v8, v7}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    #@3f
    move-result v3

    #@40
    .line 1732
    .local v3, "enumHandle":I
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    #@43
    move-result-object v6

    #@44
    .line 1733
    .local v6, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v6, :cond_3

    #@46
    .line 1734
    iget-object v7, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@48
    invoke-virtual {v7, v3, v6}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    #@4b
    .line 1737
    :cond_3
    invoke-direct {p0, v10}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    .line 1738
    .local v5, "name":Ljava/lang/String;
    const/4 v2, 0x0

    #@50
    .line 1739
    .local v2, "en":Ljava/lang/Enum;
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@53
    move-result-object v0

    #@54
    .line 1740
    .local v0, "cl":Ljava/lang/Class;
    if-eqz v0, :cond_4

    #@56
    .line 1742
    :try_start_0
    invoke-static {v0, v5}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@59
    move-result-object v2

    #@5a
    .line 1748
    .local v2, "en":Ljava/lang/Enum;
    if-nez p1, :cond_4

    #@5c
    .line 1749
    iget-object v7, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@5e
    invoke-virtual {v7, v3, v2}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    #@61
    .line 1753
    .end local v2    # "en":Ljava/lang/Enum;
    :cond_4
    iget-object v7, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@63
    invoke-virtual {v7, v3}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    #@66
    .line 1754
    iput v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@68
    .line 1755
    return-object v2

    #@69
    .line 1743
    .local v2, "en":Ljava/lang/Enum;
    :catch_0
    move-exception v4

    #@6a
    .line 1744
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/io/InvalidObjectException;

    #@6c
    .line 1745
    new-instance v8, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v9, "enum constant "

    #@74
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v8

    #@78
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v8

    #@7c
    const-string/jumbo v9, " does not exist in "

    #@7f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v8

    #@83
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v8

    #@87
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v8

    #@8b
    .line 1744
    invoke-direct {v7, v8}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@8e
    invoke-virtual {v7, v4}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@91
    move-result-object v7

    #@92
    check-cast v7, Ljava/io/IOException;

    #@94
    throw v7
.end method

.method private readExternalData(Ljava/io/Externalizable;Ljava/io/ObjectStreamClass;)V
    .locals 5
    .param p1, "obj"    # Ljava/io/Externalizable;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1829
    iget-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@3
    .line 1830
    .local v2, "oldContext":Ljava/io/SerialCallbackContext;
    iput-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@5
    .line 1832
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->hasBlockExternalData()Z

    #@8
    move-result v0

    #@9
    .line 1833
    .local v0, "blocked":Z
    if-eqz v0, :cond_0

    #@b
    .line 1834
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@d
    const/4 v4, 0x1

    #@e
    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 1836
    :cond_0
    if-eqz p1, :cond_1

    #@13
    .line 1838
    :try_start_1
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .line 1850
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    #@18
    .line 1851
    :try_start_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    .line 1854
    :cond_2
    iput-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@1d
    .line 1827
    return-void

    #@1e
    .line 1839
    :catch_0
    move-exception v1

    #@1f
    .line 1847
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_3
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@21
    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@23
    invoke-virtual {v3, v4, v1}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@26
    goto :goto_0

    #@27
    .line 1853
    .end local v0    # "blocked":Z
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v3

    #@28
    .line 1854
    iput-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@2a
    .line 1853
    throw v3
.end method

.method private readFatalException()Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2009
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@5
    move-result v1

    #@6
    const/16 v2, 0x7b

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 2010
    new-instance v1, Ljava/lang/InternalError;

    #@c
    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    #@f
    throw v1

    #@10
    .line 2012
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    #@13
    .line 2013
    const/4 v1, 0x0

    #@14
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/io/IOException;

    #@1a
    .line 2015
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    #@1d
    .line 2017
    return-object v0
.end method

.method private readHandle(Z)Ljava/lang/Object;
    .locals 7
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/high16 v6, 0x7e0000

    #@2
    const/4 v5, 0x0

    #@3
    .line 1450
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@8
    move-result v1

    #@9
    const/16 v2, 0x71

    #@b
    if-eq v1, v2, :cond_0

    #@d
    .line 1451
    new-instance v1, Ljava/lang/InternalError;

    #@f
    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    #@12
    throw v1

    #@13
    .line 1453
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@15
    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    #@18
    move-result v1

    #@19
    sub-int/2addr v1, v6

    #@1a
    iput v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@1c
    .line 1454
    iget v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@1e
    if-ltz v1, :cond_1

    #@20
    iget v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@22
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@24
    invoke-virtual {v2}, Ljava/io/ObjectInputStream$HandleTable;->size()I

    #@27
    move-result v2

    #@28
    if-lt v1, v2, :cond_2

    #@2a
    .line 1455
    :cond_1
    new-instance v1, Ljava/io/StreamCorruptedException;

    #@2c
    .line 1456
    const-string/jumbo v2, "invalid handle value: %08X"

    #@2f
    const/4 v3, 0x1

    #@30
    new-array v3, v3, [Ljava/lang/Object;

    #@32
    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@34
    add-int/2addr v4, v6

    #@35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v4

    #@39
    aput-object v4, v3, v5

    #@3b
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .line 1455
    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    #@42
    throw v1

    #@43
    .line 1459
    :cond_2
    if-eqz p1, :cond_3

    #@45
    .line 1461
    new-instance v1, Ljava/io/InvalidObjectException;

    #@47
    .line 1462
    const-string/jumbo v2, "cannot read back reference as unshared"

    #@4a
    .line 1461
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v1

    #@4e
    .line 1465
    :cond_3
    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@50
    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@52
    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$HandleTable;->lookupObject(I)Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    .line 1466
    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    #@58
    if-ne v0, v1, :cond_4

    #@5a
    .line 1468
    new-instance v1, Ljava/io/InvalidObjectException;

    #@5c
    .line 1469
    const-string/jumbo v2, "cannot read back reference to unshared object"

    #@5f
    .line 1468
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@62
    throw v1

    #@63
    .line 1471
    :cond_4
    return-object v0
.end method

.method private readNonProxyDesc(Z)Ljava/io/ObjectStreamClass;
    .locals 9
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1592
    iget-object v7, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v7}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@5
    move-result v7

    #@6
    const/16 v8, 0x72

    #@8
    if-eq v7, v8, :cond_0

    #@a
    .line 1593
    new-instance v7, Ljava/lang/InternalError;

    #@c
    invoke-direct {v7}, Ljava/lang/InternalError;-><init>()V

    #@f
    throw v7

    #@10
    .line 1596
    :cond_0
    new-instance v2, Ljava/io/ObjectStreamClass;

    #@12
    invoke-direct {v2}, Ljava/io/ObjectStreamClass;-><init>()V

    #@15
    .line 1597
    .local v2, "desc":Ljava/io/ObjectStreamClass;
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@17
    if-eqz p1, :cond_2

    #@19
    sget-object v7, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    #@1b
    :goto_0
    invoke-virtual {v8, v7}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    #@1e
    move-result v3

    #@1f
    .line 1598
    .local v3, "descHandle":I
    const/4 v7, -0x1

    #@20
    iput v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@22
    .line 1600
    const/4 v5, 0x0

    #@23
    .line 1602
    .local v5, "readDesc":Ljava/io/ObjectStreamClass;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result-object v5

    #@27
    .line 1608
    .local v5, "readDesc":Ljava/io/ObjectStreamClass;
    const/4 v1, 0x0

    #@28
    .line 1609
    .local v1, "cl":Ljava/lang/Class;
    const/4 v6, 0x0

    #@29
    .line 1610
    .local v6, "resolveEx":Ljava/lang/ClassNotFoundException;
    iget-object v7, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2b
    const/4 v8, 0x1

    #@2c
    invoke-virtual {v7, v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@2f
    .line 1611
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->isCustomSubclass()Z

    #@32
    move-result v0

    #@33
    .line 1613
    .local v0, "checksRequired":Z
    :try_start_1
    invoke-virtual {p0, v5}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    #@36
    move-result-object v1

    #@37
    .local v1, "cl":Ljava/lang/Class;
    if-nez v1, :cond_3

    #@39
    .line 1614
    new-instance v6, Ljava/lang/ClassNotFoundException;

    #@3b
    .end local v6    # "resolveEx":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v7, "null class"

    #@3e
    invoke-direct {v6, v7}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@41
    .line 1621
    .end local v1    # "cl":Ljava/lang/Class;
    :cond_1
    :goto_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    #@44
    .line 1623
    const/4 v7, 0x0

    #@45
    invoke-direct {p0, v7}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v2, v5, v1, v6, v7}, Ljava/io/ObjectStreamClass;->initNonProxy(Ljava/io/ObjectStreamClass;Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    #@4c
    .line 1625
    iget-object v7, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@4e
    invoke-virtual {v7, v3}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    #@51
    .line 1626
    iput v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@53
    .line 1627
    return-object v2

    #@54
    .end local v0    # "checksRequired":Z
    .end local v3    # "descHandle":I
    .end local v5    # "readDesc":Ljava/io/ObjectStreamClass;
    :cond_2
    move-object v7, v2

    #@55
    .line 1597
    goto :goto_0

    #@56
    .line 1603
    .restart local v3    # "descHandle":I
    .local v5, "readDesc":Ljava/io/ObjectStreamClass;
    :catch_0
    move-exception v4

    #@57
    .line 1604
    .local v4, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/io/InvalidClassException;

    #@59
    .line 1605
    const-string/jumbo v8, "failed to read class descriptor"

    #@5c
    .line 1604
    invoke-direct {v7, v8}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@5f
    invoke-virtual {v7, v4}, Ljava/io/InvalidClassException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@62
    move-result-object v7

    #@63
    check-cast v7, Ljava/io/IOException;

    #@65
    throw v7

    #@66
    .line 1615
    .end local v4    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "checksRequired":Z
    .restart local v1    # "cl":Ljava/lang/Class;
    .local v5, "readDesc":Ljava/io/ObjectStreamClass;
    .restart local v6    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_3
    if-eqz v0, :cond_1

    #@68
    .line 1616
    :try_start_2
    invoke-static {v1}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    #@6b
    goto :goto_1

    #@6c
    .line 1618
    .end local v1    # "cl":Ljava/lang/Class;
    .end local v6    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    #@6d
    .line 1619
    .restart local v4    # "ex":Ljava/lang/ClassNotFoundException;
    move-object v6, v4

    #@6e
    .local v6, "resolveEx":Ljava/lang/ClassNotFoundException;
    goto :goto_1
.end method

.method private readNull()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1438
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@5
    move-result v0

    #@6
    const/16 v1, 0x70

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 1439
    new-instance v0, Ljava/lang/InternalError;

    #@c
    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    #@f
    throw v0

    #@10
    .line 1441
    :cond_0
    const/4 v0, -0x1

    #@11
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@13
    .line 1442
    const/4 v0, 0x0

    #@14
    return-object v0
.end method

.method private readObject0(Z)Ljava/lang/Object;
    .locals 9
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 1301
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@4
    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->getBlockDataMode()Z

    #@7
    move-result v1

    #@8
    .line 1302
    .local v1, "oldMode":Z
    if-eqz v1, :cond_2

    #@a
    .line 1303
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@c
    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->currentBlockRemaining()I

    #@f
    move-result v2

    #@10
    .line 1304
    .local v2, "remain":I
    if-lez v2, :cond_0

    #@12
    .line 1305
    new-instance v4, Ljava/io/OptionalDataException;

    #@14
    invoke-direct {v4, v2}, Ljava/io/OptionalDataException;-><init>(I)V

    #@17
    throw v4

    #@18
    .line 1306
    :cond_0
    iget-boolean v4, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    #@1a
    if-eqz v4, :cond_1

    #@1c
    .line 1313
    new-instance v4, Ljava/io/OptionalDataException;

    #@1e
    invoke-direct {v4, v5}, Ljava/io/OptionalDataException;-><init>(Z)V

    #@21
    throw v4

    #@22
    .line 1315
    :cond_1
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@24
    invoke-virtual {v4, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@27
    .line 1319
    .end local v2    # "remain":I
    :cond_2
    :goto_0
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@29
    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    #@2c
    move-result v3

    #@2d
    .local v3, "tc":B
    const/16 v4, 0x79

    #@2f
    if-ne v3, v4, :cond_3

    #@31
    .line 1320
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@33
    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@36
    .line 1321
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->handleReset()V

    #@39
    goto :goto_0

    #@3a
    .line 1324
    :cond_3
    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    #@3c
    add-int/lit8 v4, v4, 0x1

    #@3e
    iput v4, p0, Ljava/io/ObjectInputStream;->depth:I

    #@40
    .line 1326
    packed-switch v3, :pswitch_data_0

    #@43
    .line 1378
    :pswitch_0
    :try_start_0
    new-instance v4, Ljava/io/StreamCorruptedException;

    #@45
    .line 1379
    const-string/jumbo v5, "invalid type code: %02X"

    #@48
    const/4 v6, 0x1

    #@49
    new-array v6, v6, [Ljava/lang/Object;

    #@4b
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@4e
    move-result-object v7

    #@4f
    const/4 v8, 0x0

    #@50
    aput-object v7, v6, v8

    #@52
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    .line 1378
    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    #@59
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    .line 1381
    :catchall_0
    move-exception v4

    #@5b
    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@5d
    add-int/lit8 v5, v5, -0x1

    #@5f
    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@61
    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@63
    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@66
    .line 1381
    throw v4

    #@67
    .line 1328
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    move-result-object v4

    #@6b
    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@6d
    add-int/lit8 v5, v5, -0x1

    #@6f
    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@71
    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@73
    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@76
    .line 1328
    return-object v4

    #@77
    .line 1331
    :pswitch_2
    :try_start_2
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7a
    move-result-object v4

    #@7b
    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@7d
    add-int/lit8 v5, v5, -0x1

    #@7f
    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@81
    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@83
    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@86
    .line 1331
    return-object v4

    #@87
    .line 1334
    :pswitch_3
    :try_start_3
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readClass(Z)Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8a
    move-result-object v4

    #@8b
    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@8d
    add-int/lit8 v5, v5, -0x1

    #@8f
    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@91
    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@93
    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@96
    .line 1334
    return-object v4

    #@97
    .line 1338
    :pswitch_4
    :try_start_4
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@9a
    move-result-object v4

    #@9b
    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@9d
    add-int/lit8 v5, v5, -0x1

    #@9f
    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@a1
    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@a3
    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@a6
    .line 1338
    return-object v4

    #@a7
    .line 1342
    :pswitch_5
    :try_start_5
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;

    #@aa
    move-result-object v4

    #@ab
    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@ae
    move-result-object v4

    #@af
    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@b1
    add-int/lit8 v5, v5, -0x1

    #@b3
    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@b5
    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@b7
    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@ba
    .line 1342
    return-object v4

    #@bb
    .line 1345
    :pswitch_6
    :try_start_6
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readArray(Z)Ljava/lang/Object;

    #@be
    move-result-object v4

    #@bf
    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c2
    move-result-object v4

    #@c3
    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@c5
    add-int/lit8 v5, v5, -0x1

    #@c7
    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@c9
    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@cb
    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@ce
    .line 1345
    return-object v4

    #@cf
    .line 1348
    :pswitch_7
    :try_start_7
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readEnum(Z)Ljava/lang/Enum;

    #@d2
    move-result-object v4

    #@d3
    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@d6
    move-result-object v4

    #@d7
    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@d9
    add-int/lit8 v5, v5, -0x1

    #@db
    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@dd
    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@df
    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@e2
    .line 1348
    return-object v4

    #@e3
    .line 1351
    :pswitch_8
    :try_start_8
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readOrdinaryObject(Z)Ljava/lang/Object;

    #@e6
    move-result-object v4

    #@e7
    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@ea
    move-result-object v4

    #@eb
    .line 1382
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@ed
    add-int/lit8 v5, v5, -0x1

    #@ef
    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    #@f1
    .line 1383
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@f3
    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@f6
    .line 1351
    return-object v4

    #@f7
    .line 1354
    :pswitch_9
    :try_start_9
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readFatalException()Ljava/io/IOException;

    #@fa
    move-result-object v0

    #@fb
    .line 1355
    .local v0, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/io/WriteAbortedException;

    #@fd
    const-string/jumbo v5, "writing aborted"

    #@100
    invoke-direct {v4, v5, v0}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@103
    throw v4

    #@104
    .line 1359
    .end local v0    # "ex":Ljava/io/IOException;
    :pswitch_a
    if-eqz v1, :cond_4

    #@106
    .line 1360
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@108
    const/4 v5, 0x1

    #@109
    invoke-virtual {v4, v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@10c
    .line 1361
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@10e
    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peek()I

    #@111
    .line 1362
    new-instance v4, Ljava/io/OptionalDataException;

    #@113
    .line 1363
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@115
    invoke-virtual {v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->currentBlockRemaining()I

    #@118
    move-result v5

    #@119
    .line 1362
    invoke-direct {v4, v5}, Ljava/io/OptionalDataException;-><init>(I)V

    #@11c
    throw v4

    #@11d
    .line 1365
    :cond_4
    new-instance v4, Ljava/io/StreamCorruptedException;

    #@11f
    .line 1366
    const-string/jumbo v5, "unexpected block data"

    #@122
    .line 1365
    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    #@125
    throw v4

    #@126
    .line 1370
    :pswitch_b
    if-eqz v1, :cond_5

    #@128
    .line 1371
    new-instance v4, Ljava/io/OptionalDataException;

    #@12a
    const/4 v5, 0x1

    #@12b
    invoke-direct {v4, v5}, Ljava/io/OptionalDataException;-><init>(Z)V

    #@12e
    throw v4

    #@12f
    .line 1373
    :cond_5
    new-instance v4, Ljava/io/StreamCorruptedException;

    #@131
    .line 1374
    const-string/jumbo v5, "unexpected end of block data"

    #@134
    .line 1373
    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    #@137
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@138
    .line 1326
    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private readOrdinaryObject(Z)Ljava/lang/Object;
    .locals 9
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1768
    iget-object v6, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@5
    move-result v6

    #@6
    const/16 v7, 0x73

    #@8
    if-eq v6, v7, :cond_0

    #@a
    .line 1769
    new-instance v6, Ljava/lang/InternalError;

    #@c
    invoke-direct {v6}, Ljava/lang/InternalError;-><init>()V

    #@f
    throw v6

    #@10
    .line 1772
    :cond_0
    const/4 v6, 0x0

    #@11
    invoke-direct {p0, v6}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    #@14
    move-result-object v1

    #@15
    .line 1773
    .local v1, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->checkDeserialize()V

    #@18
    .line 1775
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@1b
    move-result-object v0

    #@1c
    .line 1776
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/String;

    #@1e
    if-eq v0, v6, :cond_1

    #@20
    const-class v6, Ljava/lang/Class;

    #@22
    if-ne v0, v6, :cond_2

    #@24
    .line 1778
    :cond_1
    new-instance v6, Ljava/io/InvalidClassException;

    #@26
    const-string/jumbo v7, "invalid class descriptor"

    #@29
    invoke-direct {v6, v7}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v6

    #@2d
    .line 1777
    :cond_2
    const-class v6, Ljava/io/ObjectStreamClass;

    #@2f
    if-eq v0, v6, :cond_1

    #@31
    .line 1783
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->isInstantiable()Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_6

    #@37
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    move-result-object v3

    #@3b
    .line 1790
    :goto_0
    iget-object v7, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@3d
    if-eqz p1, :cond_7

    #@3f
    sget-object v6, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    #@41
    :goto_1
    invoke-virtual {v7, v6}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    #@44
    move-result v6

    #@45
    iput v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@47
    .line 1791
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    #@4a
    move-result-object v5

    #@4b
    .line 1792
    .local v5, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v5, :cond_3

    #@4d
    .line 1793
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@4f
    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@51
    invoke-virtual {v6, v7, v5}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    #@54
    .line 1796
    :cond_3
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    #@57
    move-result v6

    #@58
    if-eqz v6, :cond_8

    #@5a
    move-object v6, v3

    #@5b
    .line 1797
    check-cast v6, Ljava/io/Externalizable;

    #@5d
    invoke-direct {p0, v6, v1}, Ljava/io/ObjectInputStream;->readExternalData(Ljava/io/Externalizable;Ljava/io/ObjectStreamClass;)V

    #@60
    .line 1802
    :goto_2
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@62
    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@64
    invoke-virtual {v6, v7}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    #@67
    .line 1804
    if-eqz v3, :cond_5

    #@69
    .line 1805
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@6b
    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@6d
    invoke-virtual {v6, v7}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    #@70
    move-result-object v6

    #@71
    if-nez v6, :cond_5

    #@73
    .line 1806
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->hasReadResolveMethod()Z

    #@76
    move-result v6

    #@77
    .line 1804
    if-eqz v6, :cond_5

    #@79
    .line 1808
    invoke-virtual {v1, v3}, Ljava/io/ObjectStreamClass;->invokeReadResolve(Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    move-result-object v4

    #@7d
    .line 1809
    .local v4, "rep":Ljava/lang/Object;
    if-eqz p1, :cond_4

    #@7f
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@82
    move-result-object v6

    #@83
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    #@86
    move-result v6

    #@87
    if-eqz v6, :cond_4

    #@89
    .line 1810
    invoke-static {v4}, Ljava/io/ObjectInputStream;->cloneArray(Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    move-result-object v4

    #@8d
    .line 1812
    :cond_4
    if-eq v4, v3, :cond_5

    #@8f
    .line 1813
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@91
    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@93
    move-object v3, v4

    #@94
    .local v3, "obj":Ljava/lang/Object;
    invoke-virtual {v6, v7, v4}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    #@97
    .line 1817
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "rep":Ljava/lang/Object;
    :cond_5
    return-object v3

    #@98
    .line 1783
    .end local v5    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_6
    const/4 v3, 0x0

    #@99
    .restart local v3    # "obj":Ljava/lang/Object;
    goto :goto_0

    #@9a
    .line 1784
    .end local v3    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    #@9b
    .line 1785
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/io/InvalidClassException;

    #@9d
    .line 1786
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@a0
    move-result-object v7

    #@a1
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a4
    move-result-object v7

    #@a5
    .line 1787
    const-string/jumbo v8, "unable to create instance"

    #@a8
    .line 1785
    invoke-direct {v6, v7, v8}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@ab
    invoke-virtual {v6, v2}, Ljava/io/InvalidClassException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@ae
    move-result-object v6

    #@af
    check-cast v6, Ljava/io/IOException;

    #@b1
    throw v6

    #@b2
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_7
    move-object v6, v3

    #@b3
    .line 1790
    goto :goto_1

    #@b4
    .line 1799
    .restart local v5    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_8
    invoke-direct {p0, v3, v1}, Ljava/io/ObjectInputStream;->readSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    #@b7
    goto :goto_2
.end method

.method private readProxyDesc(Z)Ljava/io/ObjectStreamClass;
    .locals 10
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1541
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@5
    move-result v8

    #@6
    const/16 v9, 0x7d

    #@8
    if-eq v8, v9, :cond_0

    #@a
    .line 1542
    new-instance v8, Ljava/lang/InternalError;

    #@c
    invoke-direct {v8}, Ljava/lang/InternalError;-><init>()V

    #@f
    throw v8

    #@10
    .line 1545
    :cond_0
    new-instance v1, Ljava/io/ObjectStreamClass;

    #@12
    invoke-direct {v1}, Ljava/io/ObjectStreamClass;-><init>()V

    #@15
    .line 1546
    .local v1, "desc":Ljava/io/ObjectStreamClass;
    iget-object v9, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@17
    if-eqz p1, :cond_1

    #@19
    sget-object v8, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    #@1b
    :goto_0
    invoke-virtual {v9, v8}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    #@1e
    move-result v2

    #@1f
    .line 1547
    .local v2, "descHandle":I
    const/4 v8, -0x1

    #@20
    iput v8, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@22
    .line 1549
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@24
    invoke-virtual {v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    #@27
    move-result v6

    #@28
    .line 1550
    .local v6, "numIfaces":I
    new-array v5, v6, [Ljava/lang/String;

    #@2a
    .line 1551
    .local v5, "ifaces":[Ljava/lang/String;
    const/4 v4, 0x0

    #@2b
    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_2

    #@2d
    .line 1552
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2f
    invoke-virtual {v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTF()Ljava/lang/String;

    #@32
    move-result-object v8

    #@33
    aput-object v8, v5, v4

    #@35
    .line 1551
    add-int/lit8 v4, v4, 0x1

    #@37
    goto :goto_1

    #@38
    .end local v2    # "descHandle":I
    .end local v4    # "i":I
    .end local v5    # "ifaces":[Ljava/lang/String;
    .end local v6    # "numIfaces":I
    :cond_1
    move-object v8, v1

    #@39
    .line 1546
    goto :goto_0

    #@3a
    .line 1555
    .restart local v2    # "descHandle":I
    .restart local v4    # "i":I
    .restart local v5    # "ifaces":[Ljava/lang/String;
    .restart local v6    # "numIfaces":I
    :cond_2
    const/4 v0, 0x0

    #@3b
    .line 1556
    .local v0, "cl":Ljava/lang/Class;
    const/4 v7, 0x0

    #@3c
    .line 1557
    .local v7, "resolveEx":Ljava/lang/ClassNotFoundException;
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@3e
    const/4 v9, 0x1

    #@3f
    invoke-virtual {v8, v9}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@42
    .line 1559
    :try_start_0
    invoke-virtual {p0, v5}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;

    #@45
    move-result-object v0

    #@46
    .local v0, "cl":Ljava/lang/Class;
    if-nez v0, :cond_3

    #@48
    .line 1560
    new-instance v7, Ljava/lang/ClassNotFoundException;

    #@4a
    .end local v7    # "resolveEx":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v8, "null class"

    #@4d
    invoke-direct {v7, v8}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 1574
    .end local v0    # "cl":Ljava/lang/Class;
    :goto_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    #@53
    .line 1576
    const/4 v8, 0x0

    #@54
    invoke-direct {p0, v8}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    #@57
    move-result-object v8

    #@58
    invoke-virtual {v1, v0, v7, v8}, Ljava/io/ObjectStreamClass;->initProxy(Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    #@5b
    .line 1578
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@5d
    invoke-virtual {v8, v2}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    #@60
    .line 1579
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@62
    .line 1580
    return-object v1

    #@63
    .line 1561
    .restart local v0    # "cl":Ljava/lang/Class;
    .restart local v7    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_3
    :try_start_1
    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    #@66
    move-result v8

    #@67
    if-nez v8, :cond_4

    #@69
    .line 1562
    new-instance v8, Ljava/io/InvalidClassException;

    #@6b
    const-string/jumbo v9, "Not a proxy"

    #@6e
    invoke-direct {v8, v9}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@71
    throw v8

    #@72
    .line 1571
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v7    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v3

    #@73
    .line 1572
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    move-object v7, v3

    #@74
    .local v7, "resolveEx":Ljava/lang/ClassNotFoundException;
    goto :goto_2

    #@75
    .line 1568
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;
    .local v7, "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_4
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->getClass()Ljava/lang/Class;

    #@78
    move-result-object v8

    #@79
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7c
    move-result-object v8

    #@7d
    .line 1569
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    #@80
    move-result-object v9

    #@81
    .line 1567
    invoke-static {v8, v9}, Lsun/reflect/misc/ReflectUtil;->checkProxyPackageAccess(Ljava/lang/ClassLoader;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@84
    goto :goto_2
.end method

.method private readSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
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
    .line 1879
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getClassDataLayout()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    #@4
    move-result-object v4

    #@5
    .line 1880
    .local v4, "slots":[Ljava/io/ObjectStreamClass$ClassDataSlot;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    array-length v5, v4

    #@7
    if-ge v1, v5, :cond_4

    #@9
    .line 1881
    aget-object v5, v4, v1

    #@b
    iget-object v3, v5, Ljava/io/ObjectStreamClass$ClassDataSlot;->desc:Ljava/io/ObjectStreamClass;

    #@d
    .line 1883
    .local v3, "slotDesc":Ljava/io/ObjectStreamClass;
    aget-object v5, v4, v1

    #@f
    iget-boolean v5, v5, Ljava/io/ObjectStreamClass$ClassDataSlot;->hasData:Z

    #@11
    if-eqz v5, :cond_3

    #@13
    .line 1884
    if-eqz p1, :cond_1

    #@15
    .line 1885
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->hasReadObjectMethod()Z

    #@18
    move-result v5

    #@19
    .line 1884
    if-eqz v5, :cond_1

    #@1b
    .line 1886
    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@1d
    iget v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@1f
    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    #@22
    move-result-object v5

    #@23
    if-nez v5, :cond_1

    #@25
    .line 1888
    iget-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@27
    .line 1891
    .local v2, "oldContext":Ljava/io/SerialCallbackContext;
    :try_start_0
    new-instance v5, Ljava/io/SerialCallbackContext;

    #@29
    invoke-direct {v5, p1, v3}, Ljava/io/SerialCallbackContext;-><init>(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    #@2c
    iput-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@2e
    .line 1893
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@30
    const/4 v6, 0x1

    #@31
    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@34
    .line 1894
    invoke-virtual {v3, p1, p0}, Ljava/io/ObjectStreamClass;->invokeReadObject(Ljava/lang/Object;Ljava/io/ObjectInputStream;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 1905
    iget-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@39
    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    #@3c
    .line 1906
    :goto_1
    iput-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@3e
    .line 1914
    iput-boolean v7, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    #@40
    .line 1918
    .end local v2    # "oldContext":Ljava/io/SerialCallbackContext;
    :goto_2
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    #@43
    move-result v5

    #@44
    if-eqz v5, :cond_2

    #@46
    .line 1919
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    #@49
    .line 1880
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 1895
    .restart local v2    # "oldContext":Ljava/io/SerialCallbackContext;
    :catch_0
    move-exception v0

    #@4d
    .line 1903
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_1
    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@4f
    iget v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@51
    invoke-virtual {v5, v6, v0}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    .line 1905
    iget-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@56
    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    #@59
    goto :goto_1

    #@5a
    .line 1904
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v5

    #@5b
    .line 1905
    iget-object v6, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@5d
    invoke-virtual {v6}, Ljava/io/SerialCallbackContext;->setUsed()V

    #@60
    .line 1906
    iput-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@62
    .line 1904
    throw v5

    #@63
    .line 1916
    .end local v2    # "oldContext":Ljava/io/SerialCallbackContext;
    :cond_1
    invoke-direct {p0, p1, v3}, Ljava/io/ObjectInputStream;->defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    #@66
    goto :goto_2

    #@67
    .line 1921
    :cond_2
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@69
    invoke-virtual {v5, v7}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@6c
    goto :goto_3

    #@6d
    .line 1924
    :cond_3
    if-eqz p1, :cond_0

    #@6f
    .line 1925
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->hasReadObjectNoDataMethod()Z

    #@72
    move-result v5

    #@73
    .line 1924
    if-eqz v5, :cond_0

    #@75
    .line 1926
    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@77
    iget v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@79
    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    #@7c
    move-result-object v5

    #@7d
    if-nez v5, :cond_0

    #@7f
    .line 1928
    invoke-virtual {v3, p1}, Ljava/io/ObjectStreamClass;->invokeReadObjectNoData(Ljava/lang/Object;)V

    #@82
    goto :goto_3

    #@83
    .line 1877
    .end local v3    # "slotDesc":Ljava/io/ObjectStreamClass;
    :cond_4
    return-void
.end method

.method private readString(Z)Ljava/lang/String;
    .locals 7
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1636
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@5
    move-result v1

    #@6
    .line 1637
    .local v1, "tc":B
    sparse-switch v1, :sswitch_data_0

    #@9
    .line 1647
    new-instance v2, Ljava/io/StreamCorruptedException;

    #@b
    .line 1648
    const-string/jumbo v3, "invalid type code: %02X"

    #@e
    const/4 v4, 0x1

    #@f
    new-array v4, v4, [Ljava/lang/Object;

    #@11
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@14
    move-result-object v5

    #@15
    const/4 v6, 0x0

    #@16
    aput-object v5, v4, v6

    #@18
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 1647
    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 1639
    :sswitch_0
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@22
    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTF()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 1650
    .local v0, "str":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@28
    if-eqz p1, :cond_0

    #@2a
    sget-object v2, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    #@2c
    :goto_1
    invoke-virtual {v3, v2}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    #@2f
    move-result v2

    #@30
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@32
    .line 1651
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@34
    iget v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@36
    invoke-virtual {v2, v3}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    #@39
    .line 1652
    return-object v0

    #@3a
    .line 1643
    .end local v0    # "str":Ljava/lang/String;
    :sswitch_1
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@3c
    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLongUTF()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    #@41
    :cond_0
    move-object v2, v0

    #@42
    .line 1650
    goto :goto_1

    #@43
    .line 1637
    nop

    #@44
    :sswitch_data_0
    .sparse-switch
        0x74 -> :sswitch_0
        0x7c -> :sswitch_1
    .end sparse-switch
.end method

.method private skipCustomData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1939
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@3
    .line 1941
    .local v0, "oldHandle":I
    :goto_0
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->getBlockDataMode()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1942
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@d
    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->skipBlockData()V

    #@10
    .line 1943
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@12
    invoke-virtual {v1, v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@15
    .line 1945
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@17
    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    #@1a
    move-result v1

    #@1b
    packed-switch v1, :pswitch_data_0

    #@1e
    .line 1957
    :pswitch_0
    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    #@21
    goto :goto_0

    #@22
    .line 1948
    :pswitch_1
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@24
    const/4 v2, 0x1

    #@25
    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@28
    goto :goto_0

    #@29
    .line 1952
    :pswitch_2
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2b
    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@2e
    .line 1953
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@30
    .line 1954
    return-void

    #@31
    .line 1945
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x77
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private verifySubclass()V
    .locals 6

    #@0
    .prologue
    .line 1236
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 1237
    .local v0, "cl":Ljava/lang/Class;
    const-class v4, Ljava/io/ObjectInputStream;

    #@6
    if-ne v0, v4, :cond_0

    #@8
    .line 1238
    return-void

    #@9
    .line 1240
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@c
    move-result-object v3

    #@d
    .line 1241
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-nez v3, :cond_1

    #@f
    .line 1242
    return-void

    #@10
    .line 1244
    :cond_1
    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    #@12
    sget-object v5, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    #@14
    invoke-static {v4, v5}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    #@17
    .line 1245
    new-instance v1, Ljava/io/ObjectStreamClass$WeakClassKey;

    #@19
    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    #@1b
    invoke-direct {v1, v0, v4}, Ljava/io/ObjectStreamClass$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    #@1e
    .line 1246
    .local v1, "key":Ljava/io/ObjectStreamClass$WeakClassKey;
    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    #@20
    invoke-interface {v4, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Ljava/lang/Boolean;

    #@26
    .line 1247
    .local v2, "result":Ljava/lang/Boolean;
    if-nez v2, :cond_2

    #@28
    .line 1248
    invoke-static {v0}, Ljava/io/ObjectInputStream;->auditSubclass(Ljava/lang/Class;)Z

    #@2b
    move-result v4

    #@2c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2f
    move-result-object v2

    #@30
    .line 1249
    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    #@32
    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 1251
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_3

    #@3b
    .line 1252
    return-void

    #@3c
    .line 1254
    :cond_3
    sget-object v4, Ljava/io/ObjectInputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@41
    .line 1235
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 877
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->available()I

    #@5
    move-result v0

    #@6
    return v0
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
    .line 891
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->closed:Z

    #@3
    .line 892
    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 893
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    #@a
    .line 895
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@c
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->close()V

    #@f
    .line 886
    return-void
.end method

.method public defaultReadObject()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 496
    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 497
    new-instance v3, Ljava/io/NotActiveException;

    #@7
    const-string/jumbo v4, "not in call to readObject"

    #@a
    invoke-direct {v3, v4}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 499
    :cond_0
    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@10
    invoke-virtual {v3}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    .line 500
    .local v1, "curObj":Ljava/lang/Object;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@16
    invoke-virtual {v3}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    #@19
    move-result-object v0

    #@1a
    .line 501
    .local v0, "curDesc":Ljava/io/ObjectStreamClass;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@20
    .line 502
    invoke-direct {p0, v1, v0}, Ljava/io/ObjectInputStream;->defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    #@23
    .line 503
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@25
    invoke-virtual {v3, v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@28
    .line 504
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_1

    #@2e
    .line 510
    iput-boolean v5, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    #@30
    .line 512
    :cond_1
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@32
    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@34
    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    #@37
    move-result-object v2

    #@38
    .line 513
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    if-eqz v2, :cond_2

    #@3a
    .line 514
    throw v2

    #@3b
    .line 494
    :cond_2
    return-void
.end method

.method protected enableResolveObject(Z)Z
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 776
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    #@2
    if-ne p1, v1, :cond_0

    #@4
    .line 777
    return p1

    #@5
    .line 779
    :cond_0
    if-eqz p1, :cond_1

    #@7
    .line 780
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@a
    move-result-object v0

    #@b
    .line 781
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    #@d
    .line 782
    sget-object v1, Ljava/io/ObjectInputStream;->SUBSTITUTION_PERMISSION:Ljava/io/SerializablePermission;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@12
    .line 785
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    iput-boolean p1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    #@14
    .line 786
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

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

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 842
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
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
    .line 859
    if-nez p1, :cond_0

    #@3
    .line 860
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v1

    #@9
    .line 862
    :cond_0
    add-int v0, p2, p3

    #@b
    .line 863
    .local v0, "endoff":I
    if-ltz p2, :cond_1

    #@d
    if-gez p3, :cond_2

    #@f
    .line 864
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@11
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@14
    throw v1

    #@15
    .line 863
    :cond_2
    array-length v1, p1

    #@16
    if-gt v0, v1, :cond_1

    #@18
    if-ltz v0, :cond_1

    #@1a
    .line 866
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@1c
    invoke-virtual {v1, p1, p2, p3, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read([BIIZ)I

    #@1f
    move-result v1

    #@20
    return v1
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 906
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBoolean()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 917
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 939
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readChar()C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 830
    new-instance v0, Ljava/io/ObjectStreamClass;

    #@2
    invoke-direct {v0}, Ljava/io/ObjectStreamClass;-><init>()V

    #@5
    .line 831
    .local v0, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0, p0}, Ljava/io/ObjectStreamClass;->readNonProxy(Ljava/io/ObjectInputStream;)V

    #@8
    .line 832
    return-object v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1005
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readDouble()D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public readFields()Ljava/io/ObjectInputStream$GetField;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 534
    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 535
    new-instance v3, Ljava/io/NotActiveException;

    #@7
    const-string/jumbo v4, "not in call to readObject"

    #@a
    invoke-direct {v3, v4}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 537
    :cond_0
    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@10
    invoke-virtual {v3}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    .line 538
    .local v1, "curObj":Ljava/lang/Object;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    #@16
    invoke-virtual {v3}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    #@19
    move-result-object v0

    #@1a
    .line 539
    .local v0, "curDesc":Ljava/io/ObjectStreamClass;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@20
    .line 540
    new-instance v2, Ljava/io/ObjectInputStream$GetFieldImpl;

    #@22
    invoke-direct {v2, p0, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;-><init>(Ljava/io/ObjectInputStream;Ljava/io/ObjectStreamClass;)V

    #@25
    .line 541
    .local v2, "getField":Ljava/io/ObjectInputStream$GetFieldImpl;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream$GetFieldImpl;->readFields()V

    #@28
    .line 542
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2a
    invoke-virtual {v3, v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    #@2d
    .line 543
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    #@30
    move-result v3

    #@31
    if-nez v3, :cond_1

    #@33
    .line 549
    iput-boolean v5, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    #@35
    .line 552
    :cond_1
    return-object v2
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 994
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFloat()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readFully([B)V
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
    .line 1016
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@3
    array-length v1, p1

    #@4
    invoke-virtual {v0, p1, v2, v1, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    #@7
    .line 1015
    return-void
.end method

.method public readFully([BII)V
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
    .line 1029
    add-int v0, p2, p3

    #@3
    .line 1030
    .local v0, "endoff":I
    if-ltz p2, :cond_0

    #@5
    if-gez p3, :cond_1

    #@7
    .line 1031
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@c
    throw v1

    #@d
    .line 1030
    :cond_1
    array-length v1, p1

    #@e
    if-gt v0, v1, :cond_0

    #@10
    if-ltz v0, :cond_0

    #@12
    .line 1033
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@14
    invoke-virtual {v1, p1, p2, p3, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    #@17
    .line 1028
    return-void
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 972
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1058
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLine()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 983
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLong()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final readObject()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 366
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 367
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObjectOverride()Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    return-object v3

    #@9
    .line 371
    :cond_0
    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@b
    .line 373
    .local v2, "outerHandle":I
    const/4 v3, 0x0

    #@c
    :try_start_0
    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    .line 374
    .local v1, "obj":Ljava/lang/Object;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@12
    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@14
    invoke-virtual {v3, v2, v4}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    #@17
    .line 375
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@19
    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@1b
    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    #@1e
    move-result-object v0

    #@1f
    .line 376
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    if-eqz v0, :cond_2

    #@21
    .line 377
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 383
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v1    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    #@23
    .line 384
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@25
    .line 385
    iget-boolean v4, p0, Ljava/io/ObjectInputStream;->closed:Z

    #@27
    if-eqz v4, :cond_1

    #@29
    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    #@2b
    if-nez v4, :cond_1

    #@2d
    .line 386
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    #@30
    .line 383
    :cond_1
    throw v3

    #@31
    .line 379
    .restart local v0    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_2
    :try_start_1
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    #@33
    if-nez v3, :cond_3

    #@35
    .line 380
    iget-object v3, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    #@37
    invoke-virtual {v3}, Ljava/io/ObjectInputStream$ValidationList;->doCallbacks()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .line 384
    :cond_3
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@3c
    .line 385
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->closed:Z

    #@3e
    if-eqz v3, :cond_4

    #@40
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    #@42
    if-nez v3, :cond_4

    #@44
    .line 386
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    #@47
    .line 382
    :cond_4
    return-object v1
.end method

.method protected readObjectOverride()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 411
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 950
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShort()S

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected readStreamHeader()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 802
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShort()S

    #@5
    move-result v0

    #@6
    .line 803
    .local v0, "s0":S
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@8
    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShort()S

    #@b
    move-result v1

    #@c
    .line 804
    .local v1, "s1":S
    const/16 v2, -0x5313

    #@e
    if-ne v0, v2, :cond_0

    #@10
    const/4 v2, 0x5

    #@11
    if-eq v1, v2, :cond_1

    #@13
    .line 805
    :cond_0
    new-instance v2, Ljava/io/StreamCorruptedException;

    #@15
    .line 806
    const-string/jumbo v3, "invalid stream header: %04X%04X"

    #@18
    const/4 v4, 0x2

    #@19
    new-array v4, v4, [Ljava/lang/Object;

    #@1b
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@1e
    move-result-object v5

    #@1f
    const/4 v6, 0x0

    #@20
    aput-object v5, v4, v6

    #@22
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@25
    move-result-object v5

    #@26
    const/4 v6, 0x1

    #@27
    aput-object v5, v4, v6

    #@29
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    .line 805
    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    #@30
    throw v2

    #@31
    .line 800
    :cond_1
    return-void
.end method

.method readTypeString()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1411
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@2
    .line 1413
    .local v0, "oldHandle":I
    :try_start_0
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    #@7
    move-result v1

    #@8
    .line 1414
    .local v1, "tc":B
    sparse-switch v1, :sswitch_data_0

    #@b
    .line 1426
    new-instance v2, Ljava/io/StreamCorruptedException;

    #@d
    .line 1427
    const-string/jumbo v3, "invalid type code: %02X"

    #@10
    const/4 v4, 0x1

    #@11
    new-array v4, v4, [Ljava/lang/Object;

    #@13
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@16
    move-result-object v5

    #@17
    const/4 v6, 0x0

    #@18
    aput-object v5, v4, v6

    #@1a
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 1426
    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 1429
    .end local v1    # "tc":B
    :catchall_0
    move-exception v2

    #@23
    .line 1430
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@25
    .line 1429
    throw v2

    #@26
    .line 1416
    .restart local v1    # "tc":B
    :sswitch_0
    :try_start_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .line 1430
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@2e
    .line 1416
    return-object v2

    #@2f
    .line 1419
    :sswitch_1
    const/4 v2, 0x0

    #@30
    :try_start_2
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@36
    .line 1430
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@38
    .line 1419
    return-object v2

    #@39
    .line 1423
    :sswitch_2
    const/4 v2, 0x0

    #@3a
    :try_start_3
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3d
    move-result-object v2

    #@3e
    .line 1430
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@40
    .line 1423
    return-object v2

    #@41
    .line 1414
    nop

    #@42
    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_0
        0x71 -> :sswitch_1
        0x74 -> :sswitch_2
        0x7c -> :sswitch_2
    .end sparse-switch
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1073
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTF()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public readUnshared()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 461
    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@2
    .line 463
    .local v2, "outerHandle":I
    const/4 v3, 0x1

    #@3
    :try_start_0
    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    .line 464
    .local v1, "obj":Ljava/lang/Object;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@9
    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@b
    invoke-virtual {v3, v2, v4}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    #@e
    .line 465
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    #@10
    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@12
    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    #@15
    move-result-object v0

    #@16
    .line 466
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    if-eqz v0, :cond_1

    #@18
    .line 467
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 473
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v1    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    #@1a
    .line 474
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@1c
    .line 475
    iget-boolean v4, p0, Ljava/io/ObjectInputStream;->closed:Z

    #@1e
    if-eqz v4, :cond_0

    #@20
    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    #@22
    if-nez v4, :cond_0

    #@24
    .line 476
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    #@27
    .line 473
    :cond_0
    throw v3

    #@28
    .line 469
    .restart local v0    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_1
    :try_start_1
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    #@2a
    if-nez v3, :cond_2

    #@2c
    .line 470
    iget-object v3, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    #@2e
    invoke-virtual {v3}, Ljava/io/ObjectInputStream$ValidationList;->doCallbacks()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 474
    :cond_2
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    #@33
    .line 475
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->closed:Z

    #@35
    if-eqz v3, :cond_3

    #@37
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    #@39
    if-nez v3, :cond_3

    #@3b
    .line 476
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    #@3e
    .line 472
    :cond_3
    return-object v1
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 928
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUnsignedByte()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 961
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUnsignedShort()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public registerValidation(Ljava/io/ObjectInputValidation;I)V
    .locals 2
    .param p1, "obj"    # Ljava/io/ObjectInputValidation;
    .param p2, "prio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    .line 574
    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 575
    new-instance v0, Ljava/io/NotActiveException;

    #@6
    const-string/jumbo v1, "stream inactive"

    #@9
    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 577
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    #@f
    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectInputStream$ValidationList;->register(Ljava/io/ObjectInputValidation;I)V

    #@12
    .line 572
    return-void
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 5
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 624
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 626
    .local v2, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/io/ObjectInputStream;->latestUserDefinedLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v3

    #@8
    const/4 v4, 0x0

    #@9
    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v3

    #@d
    return-object v3

    #@e
    .line 627
    :catch_0
    move-exception v1

    #@f
    .line 628
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    sget-object v3, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    #@11
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/Class;

    #@17
    .line 629
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    #@19
    .line 630
    return-object v0

    #@1a
    .line 632
    :cond_0
    throw v1
.end method

.method protected resolveObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 749
    return-object p1
.end method

.method protected resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
    .locals 9
    .param p1, "interfaces"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 691
    invoke-static {}, Ljava/io/ObjectInputStream;->latestUserDefinedLoader()Ljava/lang/ClassLoader;

    #@4
    move-result-object v5

    #@5
    .line 692
    .local v5, "latestLoader":Ljava/lang/ClassLoader;
    const/4 v6, 0x0

    #@6
    .line 693
    .local v6, "nonPublicLoader":Ljava/lang/ClassLoader;
    const/4 v3, 0x0

    #@7
    .line 696
    .local v3, "hasNonPublicInterface":Z
    array-length v7, p1

    #@8
    new-array v1, v7, [Ljava/lang/Class;

    #@a
    .line 697
    .local v1, "classObjs":[Ljava/lang/Class;
    const/4 v4, 0x0

    #@b
    .end local v6    # "nonPublicLoader":Ljava/lang/ClassLoader;
    .local v4, "i":I
    :goto_0
    array-length v7, p1

    #@c
    if-ge v4, v7, :cond_2

    #@e
    .line 698
    aget-object v7, p1, v4

    #@10
    invoke-static {v7, v8, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@13
    move-result-object v0

    #@14
    .line 699
    .local v0, "cl":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    #@17
    move-result v7

    #@18
    and-int/lit8 v7, v7, 0x1

    #@1a
    if-nez v7, :cond_1

    #@1c
    .line 700
    if-eqz v3, :cond_0

    #@1e
    .line 701
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@21
    move-result-object v7

    #@22
    if-eq v6, v7, :cond_1

    #@24
    .line 702
    new-instance v7, Ljava/lang/IllegalAccessError;

    #@26
    .line 703
    const-string/jumbo v8, "conflicting non-public interface class loaders"

    #@29
    .line 702
    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    #@2c
    throw v7

    #@2d
    .line 706
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@30
    move-result-object v6

    #@31
    .line 707
    .local v6, "nonPublicLoader":Ljava/lang/ClassLoader;
    const/4 v3, 0x1

    #@32
    .line 710
    .end local v6    # "nonPublicLoader":Ljava/lang/ClassLoader;
    :cond_1
    aput-object v0, v1, v4

    #@34
    .line 697
    add-int/lit8 v4, v4, 0x1

    #@36
    goto :goto_0

    #@37
    .line 714
    .end local v0    # "cl":Ljava/lang/Class;
    :cond_2
    if-eqz v3, :cond_3

    #@39
    .line 713
    :goto_1
    :try_start_0
    invoke-static {v6, v1}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    move-result-object v7

    #@3d
    return-object v7

    #@3e
    :cond_3
    move-object v6, v5

    #@3f
    .line 714
    goto :goto_1

    #@40
    .line 716
    :catch_0
    move-exception v2

    #@41
    .line 717
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/ClassNotFoundException;

    #@43
    const/4 v8, 0x0

    #@44
    invoke-direct {v7, v8, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@47
    throw v7
.end method

.method public skipBytes(I)I
    .locals 1
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1044
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->skipBytes(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method
