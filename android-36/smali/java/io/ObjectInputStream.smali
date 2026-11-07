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
        Ljava/io/ObjectInputStream$HandleTable;,
        Ljava/io/ObjectInputStream$ValidationList;,
        Ljava/io/ObjectInputStream$GetFieldImpl;,
        Ljava/io/ObjectInputStream$Caches;,
        Ljava/io/ObjectInputStream$FieldValues;,
        Ljava/io/ObjectInputStream$PeekInputStream;,
        Ljava/io/ObjectInputStream$GetField;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o NULL_HANDLE:I = -0x1

.field private static final greylist-max-o primClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o unsharedMarker:Ljava/lang/Object;


# instance fields
.field private final greylist bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

.field private greylist-max-o closed:Z

.field private greylist-max-o curContext:Ljava/io/SerialCallbackContext;

.field private greylist-max-o defaultDataEnd:Z

.field private greylist-max-o depth:I

.field private final greylist-max-o enableOverride:Z

.field private greylist-max-o enableResolve:Z

.field private final greylist-max-o handles:Ljava/io/ObjectInputStream$HandleTable;

.field private greylist-max-o passHandle:I

.field private greylist-max-o primVals:[B

.field private final greylist-max-o vlist:Ljava/io/ObjectInputStream$ValidationList;


# direct methods
.method public static synthetic blacklist $r8$lambda$xK-zqztPga9IH8ZrdG0I0kXHrJ8(Ljava/io/ObjectInputStream;Ljava/lang/Class;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/io/ObjectInputStream;->checkArray(Ljava/lang/Class;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetbin(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$BlockDataInputStream;
    .registers 1

    iget-object p0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdefaultDataEnd(Ljava/io/ObjectInputStream;)Z
    .registers 1

    iget-boolean p0, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgethandles(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;
    .registers 1

    iget-object p0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpassHandle(Ljava/io/ObjectInputStream;)I
    .registers 1

    iget p0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputpassHandle(Ljava/io/ObjectInputStream;I)V
    .registers 2

    iput p1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleReset(Ljava/io/ObjectInputStream;)V
    .registers 1

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->handleReset()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreadObject0(Ljava/io/ObjectInputStream;Z)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smbytesToDoubles([BI[DII)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectInputStream;->bytesToDoubles([BI[DII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smbytesToFloats([BI[FII)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectInputStream;->bytesToFloats([BI[FII)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 211
    nop

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    .line 224
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string v1, "void"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3936
    new-instance v0, Ljava/io/ObjectInputStream$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/io/ObjectInputStream$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljdk/internal/access/SharedSecrets;->setJavaObjectInputStreamAccess(Ljdk/internal/access/JavaObjectInputStreamAccess;)V

    .line 3937
    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 377
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 299
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 378
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 379
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_14

    .line 380
    sget-object v1, Ljava/io/ObjectInputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 382
    :cond_14
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    .line 383
    iput-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    .line 384
    iput-object v1, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    .line 387
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    .line 388
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 299
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 349
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->verifySubclass()V

    .line 350
    new-instance v1, Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-direct {v1, p0, p1}, Ljava/io/ObjectInputStream$BlockDataInputStream;-><init>(Ljava/io/ObjectInputStream;Ljava/io/InputStream;)V

    iput-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    .line 351
    new-instance v1, Ljava/io/ObjectInputStream$HandleTable;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream$HandleTable;-><init>(I)V

    iput-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    .line 352
    new-instance v1, Ljava/io/ObjectInputStream$ValidationList;

    invoke-direct {v1}, Ljava/io/ObjectInputStream$ValidationList;-><init>()V

    iput-object v1, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    .line 355
    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    .line 356
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readStreamHeader()V

    .line 357
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 358
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

    .line 1352
    .local p0, "subcl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/io/ObjectInputStream$1;

    invoke-direct {v0, p0}, Ljava/io/ObjectInputStream$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1375
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static native greylist bytesToDoubles([BI[DII)V
.end method

.method private static native greylist bytesToFloats([BI[FII)V
.end method

.method private blacklist checkArray(Ljava/lang/Class;I)V
    .registers 5
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 1153
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1157
    if-ltz p2, :cond_9

    .line 1163
    return-void

    .line 1158
    :cond_9
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 1154
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not an array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1487
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_1d

    .line 1490
    :cond_f
    invoke-virtual {p0, p1}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1491
    .local v0, "rep":Ljava/lang/Object;
    if-eq v0, p1, :cond_1c

    .line 1504
    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    .line 1506
    :cond_1c
    return-object v0

    .line 1488
    .end local v0    # "rep":Ljava/lang/Object;
    :cond_1d
    :goto_1d
    return-object p1
.end method

.method private greylist-max-o clear()V
    .registers 2

    .line 1382
    iget-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$HandleTable;->clear()V

    .line 1383
    iget-object v0, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$ValidationList;->clear()V

    .line 1384
    return-void
.end method

.method private static greylist-max-o cloneArray(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "array"    # Ljava/lang/Object;

    .line 3896
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_c

    .line 3897
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3898
    :cond_c
    instance-of v0, p0, [Z

    if-eqz v0, :cond_18

    .line 3899
    move-object v0, p0

    check-cast v0, [Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3900
    :cond_18
    instance-of v0, p0, [B

    if-eqz v0, :cond_24

    .line 3901
    move-object v0, p0

    check-cast v0, [B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3902
    :cond_24
    instance-of v0, p0, [C

    if-eqz v0, :cond_30

    .line 3903
    move-object v0, p0

    check-cast v0, [C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3904
    :cond_30
    instance-of v0, p0, [D

    if-eqz v0, :cond_3c

    .line 3905
    move-object v0, p0

    check-cast v0, [D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3906
    :cond_3c
    instance-of v0, p0, [F

    if-eqz v0, :cond_48

    .line 3907
    move-object v0, p0

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3908
    :cond_48
    instance-of v0, p0, [I

    if-eqz v0, :cond_54

    .line 3909
    move-object v0, p0

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3910
    :cond_54
    instance-of v0, p0, [J

    if-eqz v0, :cond_60

    .line 3911
    move-object v0, p0

    check-cast v0, [J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3912
    :cond_60
    instance-of v0, p0, [S

    if-eqz v0, :cond_6c

    .line 3913
    move-object v0, p0

    check-cast v0, [S

    invoke-virtual {v0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3915
    :cond_6c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private greylist-max-o defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 13
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2166
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 2167
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_15

    .line 2168
    :cond_f
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    .line 2171
    :cond_15
    :goto_15
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result v1

    .line 2172
    .local v1, "primDataSize":I
    iget-object v2, p0, Ljava/io/ObjectInputStream;->primVals:[B

    if-eqz v2, :cond_22

    iget-object v2, p0, Ljava/io/ObjectInputStream;->primVals:[B

    array-length v2, v2

    if-ge v2, v1, :cond_26

    .line 2173
    :cond_22
    new-array v2, v1, [B

    iput-object v2, p0, Ljava/io/ObjectInputStream;->primVals:[B

    .line 2175
    :cond_26
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream;->primVals:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 2176
    if-eqz p1, :cond_35

    .line 2177
    iget-object v2, p0, Ljava/io/ObjectInputStream;->primVals:[B

    invoke-virtual {p2, p1, v2}, Ljava/io/ObjectStreamClass;->setPrimFieldValues(Ljava/lang/Object;[B)V

    .line 2180
    :cond_35
    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 2181
    .local v2, "objHandle":I
    invoke-virtual {p2, v4}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v3

    .line 2182
    .local v3, "fields":[Ljava/io/ObjectStreamField;
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Object;

    .line 2183
    .local v4, "objVals":[Ljava/lang/Object;
    array-length v5, v3

    array-length v6, v4

    sub-int/2addr v5, v6

    .line 2184
    .local v5, "numPrimFields":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_45
    array-length v7, v4

    if-ge v6, v7, :cond_66

    .line 2185
    add-int v7, v5, v6

    aget-object v7, v3, v7

    .line 2186
    .local v7, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v8

    invoke-direct {p0, v8}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v6

    .line 2187
    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v8

    if-eqz v8, :cond_63

    .line 2188
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v9, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v8, v2, v9}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 2184
    .end local v7    # "f":Ljava/io/ObjectStreamField;
    :cond_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 2191
    .end local v6    # "i":I
    :cond_66
    if-eqz p1, :cond_6b

    .line 2192
    invoke-virtual {p2, p1, v4}, Ljava/io/ObjectStreamClass;->setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 2194
    :cond_6b
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 2195
    return-void
.end method

.method private greylist-max-o handleReset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .line 2222
    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    if-gtz v0, :cond_8

    .line 2226
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 2227
    return-void

    .line 2223
    :cond_8
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected reset; recursion depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/io/ObjectInputStream;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isCustomSubclass()Z
    .registers 3

    .line 1639
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1640
    const-class v1, Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 1639
    :goto_13
    return v0
.end method

.method private static greylist-max-o latestUserDefinedLoader()Ljava/lang/ClassLoader;
    .registers 1

    .line 2258
    invoke-static {}, Ldalvik/system/VMStack;->getClosestUserClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o readArray(Z)Ljava/lang/Object;
    .registers 14
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1785
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_df

    .line 1789
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1790
    .local v1, "desc":Ljava/io/ObjectStreamClass;
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v2

    .line 1795
    .local v2, "len":I
    const/4 v3, 0x0

    .line 1796
    .local v3, "array":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1797
    .local v4, "ccl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v5

    move-object v6, v5

    .local v6, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_26

    .line 1798
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 1799
    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 1802
    :cond_26
    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_2d

    sget-object v7, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    goto :goto_2e

    :cond_2d
    move-object v7, v3

    :goto_2e
    invoke-virtual {v5, v7}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v5

    .line 1803
    .local v5, "arrayHandle":I
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v7

    .line 1804
    .local v7, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v7, :cond_3d

    .line 1805
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v8, v5, v7}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1808
    :cond_3d
    if-nez v4, :cond_4a

    .line 1809
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_40
    if-ge v8, v2, :cond_48

    .line 1810
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    .line 1809
    add-int/lit8 v8, v8, 0x1

    goto :goto_40

    .end local v8    # "i":I
    :cond_48
    goto/16 :goto_d7

    .line 1812
    :cond_4a
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_c1

    .line 1813
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_5e

    .line 1814
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v3

    check-cast v9, [I

    invoke-virtual {v8, v9, v0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInts([III)V

    goto/16 :goto_d7

    .line 1815
    :cond_5e
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_6d

    .line 1816
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v3

    check-cast v9, [B

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v0, v2, v10}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    goto/16 :goto_d7

    .line 1817
    :cond_6d
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_7a

    .line 1818
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v3

    check-cast v9, [J

    invoke-virtual {v8, v9, v0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLongs([JII)V

    goto :goto_d7

    .line 1819
    :cond_7a
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_87

    .line 1820
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v3

    check-cast v9, [F

    invoke-virtual {v8, v9, v0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFloats([FII)V

    goto :goto_d7

    .line 1821
    :cond_87
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_94

    .line 1822
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v3

    check-cast v9, [D

    invoke-virtual {v8, v9, v0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readDoubles([DII)V

    goto :goto_d7

    .line 1823
    :cond_94
    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_a1

    .line 1824
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v3

    check-cast v9, [S

    invoke-virtual {v8, v9, v0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShorts([SII)V

    goto :goto_d7

    .line 1825
    :cond_a1
    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_ae

    .line 1826
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v3

    check-cast v9, [C

    invoke-virtual {v8, v9, v0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readChars([CII)V

    goto :goto_d7

    .line 1827
    :cond_ae
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_bb

    .line 1828
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v3

    check-cast v9, [Z

    invoke-virtual {v8, v9, v0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBooleans([ZII)V

    goto :goto_d7

    .line 1830
    :cond_bb
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 1833
    :cond_c1
    move-object v8, v3

    check-cast v8, [Ljava/lang/Object;

    .line 1834
    .local v8, "oa":[Ljava/lang/Object;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_c5
    if-ge v9, v2, :cond_d7

    .line 1835
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1836
    iget-object v10, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v11, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v10, v5, v11}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 1834
    add-int/lit8 v9, v9, 0x1

    goto :goto_c5

    .line 1840
    .end local v8    # "oa":[Ljava/lang/Object;
    .end local v9    # "i":I
    :cond_d7
    :goto_d7
    iget-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v0, v5}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1841
    iput v5, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1842
    return-object v3

    .line 1786
    .end local v1    # "desc":Ljava/io/ObjectStreamClass;
    .end local v2    # "len":I
    .end local v3    # "array":Ljava/lang/Object;
    .end local v4    # "ccl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "arrayHandle":I
    .end local v6    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_df
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private greylist-max-o readClass(Z)Ljava/lang/Class;
    .registers 7
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1586
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_36

    .line 1589
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1590
    .local v0, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 1591
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_1a

    sget-object v3, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    goto :goto_1b

    :cond_1a
    move-object v3, v1

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1593
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v2

    .line 1594
    .local v2, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v2, :cond_2e

    .line 1595
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4, v2}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1598
    :cond_2e
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1599
    return-object v1

    .line 1587
    .end local v0    # "desc":Ljava/io/ObjectStreamClass;
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_36
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private greylist-max-o readClassDesc(Z)Ljava/io/ObjectStreamClass;
    .registers 6
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1611
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v0

    .line 1613
    .local v0, "tc":B
    sparse-switch v0, :sswitch_data_36

    .line 1627
    new-instance v1, Ljava/io/StreamCorruptedException;

    .line 1628
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "invalid type code: %02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1621
    :sswitch_1d
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readProxyDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1622
    .local v1, "descriptor":Ljava/io/ObjectStreamClass;
    goto :goto_35

    .line 1624
    .end local v1    # "descriptor":Ljava/io/ObjectStreamClass;
    :sswitch_22
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNonProxyDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1625
    .restart local v1    # "descriptor":Ljava/io/ObjectStreamClass;
    goto :goto_35

    .line 1618
    .end local v1    # "descriptor":Ljava/io/ObjectStreamClass;
    :sswitch_27
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectStreamClass;

    .line 1619
    .restart local v1    # "descriptor":Ljava/io/ObjectStreamClass;
    goto :goto_35

    .line 1615
    .end local v1    # "descriptor":Ljava/io/ObjectStreamClass;
    :sswitch_2e
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectStreamClass;

    .line 1616
    .restart local v1    # "descriptor":Ljava/io/ObjectStreamClass;
    nop

    .line 1634
    :goto_35
    return-object v1

    :sswitch_data_36
    .sparse-switch
        0x70 -> :sswitch_2e
        0x71 -> :sswitch_27
        0x72 -> :sswitch_22
        0x7d -> :sswitch_1d
    .end sparse-switch
.end method

.method private greylist-max-o readEnum(Z)Ljava/lang/Enum;
    .registers 12
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1850
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_90

    .line 1854
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1855
    .local v1, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1859
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_1c

    sget-object v3, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    invoke-virtual {v2, v3}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v2

    .line 1860
    .local v2, "enumHandle":I
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v3

    .line 1861
    .local v3, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v3, :cond_2c

    .line 1862
    iget-object v4, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v4, v2, v3}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1865
    :cond_2c
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1866
    .local v0, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1867
    .local v4, "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v5

    .line 1868
    .local v5, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_6f

    .line 1871
    :try_start_37
    invoke-static {v5, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_3b} :catch_45

    .line 1872
    .local v6, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    move-object v4, v6

    .line 1877
    .end local v6    # "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    nop

    .line 1878
    if-nez p1, :cond_6f

    .line 1879
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v6, v2, v4}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    goto :goto_6f

    .line 1873
    :catch_45
    move-exception v6

    .line 1874
    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/io/InvalidObjectException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enum constant "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not exist in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 1876
    invoke-virtual {v7, v6}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/io/IOException;

    throw v7

    .line 1883
    .end local v6    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_6f
    :goto_6f
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v6, v2}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1884
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1885
    return-object v4

    .line 1856
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "enumHandle":I
    .end local v3    # "resolveEx":Ljava/lang/ClassNotFoundException;
    .end local v4    # "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v5    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_77
    new-instance v0, Ljava/io/InvalidClassException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "non-enum class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1851
    .end local v1    # "desc":Ljava/io/ObjectStreamClass;
    :cond_90
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private greylist-max-o readExternalData(Ljava/io/Externalizable;Ljava/io/ObjectStreamClass;)V
    .registers 8
    .param p1, "obj"    # Ljava/io/Externalizable;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1976
    iget-object v0, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1977
    .local v0, "oldContext":Ljava/io/SerialCallbackContext;
    if-eqz v0, :cond_7

    .line 1978
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->check()V

    .line 1979
    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1981
    :try_start_a
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->hasBlockExternalData()Z

    move-result v1

    .line 1982
    .local v1, "blocked":Z
    if-eqz v1, :cond_16

    .line 1983
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_32

    .line 1985
    :cond_16
    if-eqz p1, :cond_24

    .line 1987
    :try_start_18
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_32

    .line 1997
    goto :goto_24

    .line 1988
    :catch_1c
    move-exception v2

    .line 1996
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_1d
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4, v2}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1999
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_24
    :goto_24
    if-eqz v1, :cond_29

    .line 2000
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_32

    .line 2003
    .end local v1    # "blocked":Z
    :cond_29
    if-eqz v0, :cond_2e

    .line 2004
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->check()V

    .line 2005
    :cond_2e
    iput-object v0, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 2006
    nop

    .line 2019
    return-void

    .line 2003
    :catchall_32
    move-exception v1

    if-eqz v0, :cond_38

    .line 2004
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->check()V

    .line 2005
    :cond_38
    iput-object v0, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 2006
    throw v1
.end method

.method private greylist-max-o readFatalException()Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2203
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_18

    .line 2206
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 2208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .line 2211
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 2212
    return-object v0

    .line 2204
    .end local v0    # "e":Ljava/io/IOException;
    :cond_18
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private greylist-max-o readHandle(Z)Ljava/lang/Object;
    .registers 5
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1553
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x71

    if-ne v0, v1, :cond_59

    .line 1556
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v0

    const/high16 v1, 0x7e0000

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1557
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    if-ltz v0, :cond_42

    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$HandleTable;->size()I

    move-result v2

    if-ge v0, v2, :cond_42

    .line 1562
    if-nez p1, :cond_3a

    .line 1568
    iget-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream$HandleTable;->lookupObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 1569
    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    if-eq v0, v1, :cond_32

    .line 1576
    return-object v0

    .line 1571
    :cond_32
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "cannot read back reference to unshared object"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1564
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_3a
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "cannot read back reference as unshared"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1558
    :cond_42
    new-instance v0, Ljava/io/StreamCorruptedException;

    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    add-int/2addr v2, v1

    .line 1559
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "invalid handle value: %08X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1554
    :cond_59
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private greylist-max-o readNonProxyDesc(Z)Ljava/io/ObjectStreamClass;
    .registers 10
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1712
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_6a

    .line 1716
    new-instance v0, Ljava/io/ObjectStreamClass;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 1717
    .local v0, "desc":Ljava/io/ObjectStreamClass;
    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_16

    sget-object v2, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    goto :goto_17

    :cond_16
    move-object v2, v0

    :goto_17
    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v1

    .line 1718
    .local v1, "descHandle":I
    const/4 v2, -0x1

    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1720
    const/4 v2, 0x0

    .line 1722
    .local v2, "readDesc":Ljava/io/ObjectStreamClass;
    :try_start_1f
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v3
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_23} :catch_5b

    .line 1726
    .end local v2    # "readDesc":Ljava/io/ObjectStreamClass;
    .local v3, "readDesc":Ljava/io/ObjectStreamClass;
    nop

    .line 1728
    const/4 v2, 0x0

    .line 1729
    .local v2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 1730
    .local v4, "resolveEx":Ljava/lang/ClassNotFoundException;
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1731
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->isCustomSubclass()Z

    move-result v5

    .line 1733
    .local v5, "checksRequired":Z
    :try_start_30
    invoke-virtual {p0, v3}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v6

    move-object v2, v6

    if-nez v6, :cond_40

    .line 1734
    new-instance v6, Ljava/lang/ClassNotFoundException;

    const-string v7, "null class"

    invoke-direct {v6, v7}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    goto :goto_45

    .line 1735
    :cond_40
    if-eqz v5, :cond_45

    .line 1736
    invoke-static {v2}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V
    :try_end_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_45} :catch_46

    .line 1740
    :cond_45
    :goto_45
    goto :goto_48

    .line 1738
    :catch_46
    move-exception v6

    .line 1739
    .local v6, "ex":Ljava/lang/ClassNotFoundException;
    move-object v4, v6

    .line 1741
    .end local v6    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_48
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    .line 1743
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v6

    invoke-virtual {v0, v3, v2, v4, v6}, Ljava/io/ObjectStreamClass;->initNonProxy(Ljava/io/ObjectStreamClass;Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    .line 1749
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v6, v1}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1750
    iput v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1752
    return-object v0

    .line 1723
    .end local v3    # "readDesc":Ljava/io/ObjectStreamClass;
    .end local v4    # "resolveEx":Ljava/lang/ClassNotFoundException;
    .end local v5    # "checksRequired":Z
    .local v2, "readDesc":Ljava/io/ObjectStreamClass;
    :catch_5b
    move-exception v3

    .line 1724
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/io/InvalidClassException;

    const-string v5, "failed to read class descriptor"

    invoke-direct {v4, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    .line 1725
    invoke-virtual {v4, v3}, Ljava/io/InvalidClassException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/IOException;

    throw v4

    .line 1713
    .end local v0    # "desc":Ljava/io/ObjectStreamClass;
    .end local v1    # "descHandle":I
    .end local v2    # "readDesc":Ljava/io/ObjectStreamClass;
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_6a
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private greylist-max-o readNull()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1541
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_f

    .line 1544
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1545
    const/4 v0, 0x0

    return-object v0

    .line 1542
    :cond_f
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private greylist-max-o readObject0(Z)Ljava/lang/Object;
    .registers 8
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1390
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->getBlockDataMode()Z

    move-result v0

    .line 1391
    .local v0, "oldMode":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_28

    .line 1392
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->currentBlockRemaining()I

    move-result v2

    .line 1393
    .local v2, "remain":I
    if-gtz v2, :cond_22

    .line 1395
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    if-nez v3, :cond_1c

    .line 1404
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    goto :goto_28

    .line 1402
    :cond_1c
    new-instance v3, Ljava/io/OptionalDataException;

    invoke-direct {v3, v1}, Ljava/io/OptionalDataException;-><init>(Z)V

    throw v3

    .line 1394
    :cond_22
    new-instance v1, Ljava/io/OptionalDataException;

    invoke-direct {v1, v2}, Ljava/io/OptionalDataException;-><init>(I)V

    throw v1

    .line 1408
    .end local v2    # "remain":I
    :cond_28
    :goto_28
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v2

    move v3, v2

    .local v3, "tc":B
    const/16 v4, 0x79

    if-ne v2, v4, :cond_3c

    .line 1409
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    .line 1410
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->handleReset()V

    goto :goto_28

    .line 1413
    :cond_3c
    iget v2, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1417
    packed-switch v3, :pswitch_data_12c

    .line 1469
    :pswitch_44
    :try_start_44
    new-instance v2, Ljava/io/StreamCorruptedException;

    goto/16 :goto_10e

    .line 1439
    :pswitch_48
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readEnum(Z)Ljava/lang/Enum;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_10c

    .line 1473
    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v4, v1

    iput v4, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1474
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1439
    return-object v2

    .line 1445
    :pswitch_5b
    :try_start_5b
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readFatalException()Ljava/io/IOException;

    move-result-object v2

    .line 1446
    .local v2, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/io/WriteAbortedException;

    const-string v5, "writing aborted"

    invoke-direct {v4, v5, v2}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "oldMode":Z
    .end local v3    # "tc":B
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    .end local p1    # "unshared":Z
    throw v4

    .line 1461
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v0    # "oldMode":Z
    .restart local v3    # "tc":B
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    .restart local p1    # "unshared":Z
    :pswitch_67
    if-eqz v0, :cond_6f

    .line 1462
    new-instance v2, Ljava/io/OptionalDataException;

    invoke-direct {v2, v1}, Ljava/io/OptionalDataException;-><init>(Z)V

    .end local v0    # "oldMode":Z
    .end local v3    # "tc":B
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    .end local p1    # "unshared":Z
    throw v2

    .line 1464
    .restart local v0    # "oldMode":Z
    .restart local v3    # "tc":B
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    .restart local p1    # "unshared":Z
    :cond_6f
    new-instance v2, Ljava/io/StreamCorruptedException;

    const-string v4, "unexpected end of block data"

    invoke-direct {v2, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldMode":Z
    .end local v3    # "tc":B
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    .end local p1    # "unshared":Z
    throw v2

    .line 1450
    .restart local v0    # "oldMode":Z
    .restart local v3    # "tc":B
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    .restart local p1    # "unshared":Z
    :pswitch_77
    if-eqz v0, :cond_8f

    .line 1451
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1452
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peek()I

    .line 1453
    new-instance v2, Ljava/io/OptionalDataException;

    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    .line 1454
    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->currentBlockRemaining()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/io/OptionalDataException;-><init>(I)V

    .end local v0    # "oldMode":Z
    .end local v3    # "tc":B
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    .end local p1    # "unshared":Z
    throw v2

    .line 1456
    .restart local v0    # "oldMode":Z
    .restart local v3    # "tc":B
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    .restart local p1    # "unshared":Z
    :cond_8f
    new-instance v2, Ljava/io/StreamCorruptedException;

    const-string v4, "unexpected block data"

    invoke-direct {v2, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldMode":Z
    .end local v3    # "tc":B
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    .end local p1    # "unshared":Z
    throw v2

    .line 1425
    .restart local v0    # "oldMode":Z
    .restart local v3    # "tc":B
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    .restart local p1    # "unshared":Z
    :pswitch_97
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readClass(Z)Ljava/lang/Class;

    move-result-object v2
    :try_end_9b
    .catchall {:try_start_5b .. :try_end_9b} :catchall_10c

    .line 1473
    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v4, v1

    iput v4, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1474
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1425
    return-object v2

    .line 1436
    :pswitch_a6
    :try_start_a6
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readArray(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_ae
    .catchall {:try_start_a6 .. :try_end_ae} :catchall_10c

    .line 1473
    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v4, v1

    iput v4, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1474
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1436
    return-object v2

    .line 1433
    :pswitch_b9
    :try_start_b9
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_c1
    .catchall {:try_start_b9 .. :try_end_c1} :catchall_10c

    .line 1473
    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v4, v1

    iput v4, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1474
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1433
    return-object v2

    .line 1442
    :pswitch_cc
    :try_start_cc
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readOrdinaryObject(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_d4
    .catchall {:try_start_cc .. :try_end_d4} :catchall_10c

    .line 1473
    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v4, v1

    iput v4, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1474
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1442
    return-object v2

    .line 1429
    :pswitch_df
    :try_start_df
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v2
    :try_end_e3
    .catchall {:try_start_df .. :try_end_e3} :catchall_10c

    .line 1473
    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v4, v1

    iput v4, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1474
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1429
    return-object v2

    .line 1422
    :pswitch_ee
    :try_start_ee
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;

    move-result-object v2
    :try_end_f2
    .catchall {:try_start_ee .. :try_end_f2} :catchall_10c

    .line 1473
    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v4, v1

    iput v4, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1474
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1422
    return-object v2

    .line 1419
    :pswitch_fd
    :try_start_fd
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;

    move-result-object v2
    :try_end_101
    .catchall {:try_start_fd .. :try_end_101} :catchall_10c

    .line 1473
    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v4, v1

    iput v4, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1474
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1419
    return-object v2

    .line 1473
    :catchall_10c
    move-exception v2

    goto :goto_120

    .line 1469
    :goto_10e
    :try_start_10e
    const-string v4, "invalid type code: %02X"

    .line 1470
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldMode":Z
    .end local v3    # "tc":B
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    .end local p1    # "unshared":Z
    throw v2
    :try_end_120
    .catchall {:try_start_10e .. :try_end_120} :catchall_10c

    .line 1473
    .restart local v0    # "oldMode":Z
    .restart local v3    # "tc":B
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    .restart local p1    # "unshared":Z
    :goto_120
    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v4, v1

    iput v4, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1474
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1475
    throw v2

    nop

    :pswitch_data_12c
    .packed-switch 0x70
        :pswitch_fd
        :pswitch_ee
        :pswitch_df
        :pswitch_cc
        :pswitch_b9
        :pswitch_a6
        :pswitch_97
        :pswitch_77
        :pswitch_67
        :pswitch_44
        :pswitch_77
        :pswitch_5b
        :pswitch_b9
        :pswitch_df
        :pswitch_48
    .end packed-switch
.end method

.method private greylist-max-o readOrdinaryObject(Z)Ljava/lang/Object;
    .registers 10
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1898
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x73

    if-ne v0, v1, :cond_c6

    .line 1902
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1903
    .local v0, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->checkDeserialize()V

    .line 1905
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 1906
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    if-eq v1, v2, :cond_be

    const-class v2, Ljava/lang/Class;

    if-eq v1, v2, :cond_be

    const-class v2, Ljava/io/ObjectStreamClass;

    if-eq v1, v2, :cond_be

    .line 1913
    :try_start_22
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isInstantiable()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_a7

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    .line 1918
    .local v2, "obj":Ljava/lang/Object;
    :goto_2e
    nop

    .line 1920
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_36

    sget-object v4, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    goto :goto_37

    :cond_36
    move-object v4, v2

    :goto_37
    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1921
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v3

    .line 1922
    .local v3, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v3, :cond_4a

    .line 1923
    iget-object v4, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v5, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v4, v5, v3}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1926
    :cond_4a
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isRecord()Z

    move-result v4

    .line 1927
    .local v4, "isRecord":Z
    if-eqz v4, :cond_5f

    .line 1928
    nop

    .line 1929
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readRecord(Ljava/io/ObjectStreamClass;)Ljava/lang/Object;

    move-result-object v2

    .line 1930
    if-nez p1, :cond_6f

    .line 1931
    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v5, v6, v2}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    goto :goto_6f

    .line 1932
    :cond_5f
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 1933
    move-object v5, v2

    check-cast v5, Ljava/io/Externalizable;

    invoke-direct {p0, v5, v0}, Ljava/io/ObjectInputStream;->readExternalData(Ljava/io/Externalizable;Ljava/io/ObjectStreamClass;)V

    goto :goto_6f

    .line 1935
    :cond_6c
    invoke-direct {p0, v2, v0}, Ljava/io/ObjectInputStream;->readSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 1938
    :cond_6f
    :goto_6f
    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1940
    if-eqz v2, :cond_a6

    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1941
    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v5

    if-nez v5, :cond_a6

    .line 1942
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->hasReadResolveMethod()Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 1944
    invoke-virtual {v0, v2}, Ljava/io/ObjectStreamClass;->invokeReadResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1945
    .local v5, "rep":Ljava/lang/Object;
    if-eqz p1, :cond_9c

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 1946
    invoke-static {v5}, Ljava/io/ObjectInputStream;->cloneArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1948
    :cond_9c
    if-eq v5, v2, :cond_a6

    .line 1960
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    move-object v2, v5

    invoke-virtual {v6, v7, v5}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    .line 1964
    .end local v5    # "rep":Ljava/lang/Object;
    :cond_a6
    return-object v2

    .line 1914
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "resolveEx":Ljava/lang/ClassNotFoundException;
    .end local v4    # "isRecord":Z
    :catch_a7
    move-exception v2

    .line 1915
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/io/InvalidClassException;

    .line 1916
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "unable to create instance"

    invoke-direct {v3, v4, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    invoke-virtual {v3, v2}, Ljava/io/InvalidClassException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 1908
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_be
    new-instance v2, Ljava/io/InvalidClassException;

    const-string v3, "invalid class descriptor"

    invoke-direct {v2, v3}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1899
    .end local v0    # "desc":Ljava/io/ObjectStreamClass;
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c6
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private greylist-max-o readProxyDesc(Z)Ljava/io/ObjectStreamClass;
    .registers 10
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1652
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_80

    .line 1656
    new-instance v0, Ljava/io/ObjectStreamClass;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 1657
    .local v0, "desc":Ljava/io/ObjectStreamClass;
    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_16

    sget-object v2, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    goto :goto_17

    :cond_16
    move-object v2, v0

    :goto_17
    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v1

    .line 1658
    .local v1, "descHandle":I
    const/4 v2, -0x1

    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1660
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v2

    .line 1661
    .local v2, "numIfaces":I
    new-array v3, v2, [Ljava/lang/String;

    .line 1662
    .local v3, "ifaces":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_27
    if-ge v4, v2, :cond_34

    .line 1663
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1662
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1666
    .end local v4    # "i":I
    :cond_34
    const/4 v4, 0x0

    .line 1667
    .local v4, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 1668
    .local v5, "resolveEx":Ljava/lang/ClassNotFoundException;
    iget-object v6, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1670
    :try_start_3c
    invoke-virtual {p0, v3}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v4, v6

    if-nez v6, :cond_4c

    .line 1671
    new-instance v6, Ljava/lang/ClassNotFoundException;

    const-string v7, "null class"

    invoke-direct {v6, v7}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_62

    .line 1672
    :cond_4c
    invoke-static {v4}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 1678
    nop

    .line 1679
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 1680
    invoke-virtual {v4}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v7

    .line 1678
    invoke-static {v6, v7}, Lsun/reflect/misc/ReflectUtil;->checkProxyPackageAccess(Ljava/lang/ClassLoader;[Ljava/lang/Class;)V

    .line 1689
    :goto_62
    goto :goto_6d

    .line 1673
    :cond_63
    new-instance v6, Ljava/io/InvalidClassException;

    const-string v7, "Not a proxy"

    invoke-direct {v6, v7}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    .end local v0    # "desc":Ljava/io/ObjectStreamClass;
    .end local v1    # "descHandle":I
    .end local v2    # "numIfaces":I
    .end local v3    # "ifaces":[Ljava/lang/String;
    .end local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "resolveEx":Ljava/lang/ClassNotFoundException;
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    .end local p1    # "unshared":Z
    throw v6
    :try_end_6b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_6b} :catch_6b

    .line 1687
    .restart local v0    # "desc":Ljava/io/ObjectStreamClass;
    .restart local v1    # "descHandle":I
    .restart local v2    # "numIfaces":I
    .restart local v3    # "ifaces":[Ljava/lang/String;
    .restart local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "resolveEx":Ljava/lang/ClassNotFoundException;
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    .restart local p1    # "unshared":Z
    :catch_6b
    move-exception v6

    .line 1688
    .local v6, "ex":Ljava/lang/ClassNotFoundException;
    move-object v5, v6

    .line 1690
    .end local v6    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_6d
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    .line 1692
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/ObjectStreamClass;->initProxy(Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    .line 1698
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v6, v1}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1699
    iput v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1700
    return-object v0

    .line 1653
    .end local v0    # "desc":Ljava/io/ObjectStreamClass;
    .end local v1    # "descHandle":I
    .end local v2    # "numIfaces":I
    .end local v3    # "ifaces":[Ljava/lang/String;
    .end local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_80
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private blacklist readRecord(Ljava/io/ObjectStreamClass;)Ljava/lang/Object;
    .registers 8
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2023
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getClassDataLayout()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    move-result-object v0

    .line 2024
    .local v0, "slots":[Ljava/io/ObjectStreamClass$ClassDataSlot;
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    .line 2026
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v3, v0

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_1f

    .line 2027
    aget-object v3, v0, v1

    iget-boolean v3, v3, Ljava/io/ObjectStreamClass$ClassDataSlot;->hasData:Z

    if-eqz v3, :cond_1c

    .line 2028
    new-instance v3, Ljava/io/ObjectInputStream$FieldValues;

    aget-object v4, v0, v1

    iget-object v4, v4, Ljava/io/ObjectStreamClass$ClassDataSlot;->desc:Ljava/io/ObjectStreamClass;

    invoke-direct {v3, p0, v4, v2}, Ljava/io/ObjectInputStream$FieldValues;-><init>(Ljava/io/ObjectInputStream;Ljava/io/ObjectStreamClass;Z)V

    .line 2026
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2033
    .end local v1    # "i":I
    :cond_1f
    new-instance v1, Ljava/io/ObjectInputStream$FieldValues;

    invoke-direct {v1, p0, p1, v2}, Ljava/io/ObjectInputStream$FieldValues;-><init>(Ljava/io/ObjectInputStream;Ljava/io/ObjectStreamClass;Z)V

    .line 2039
    .local v1, "fieldValues":Ljava/io/ObjectInputStream$FieldValues;
    invoke-static {p1}, Ljava/io/ObjectStreamClass$RecordSupport;->deserializationCtr(Ljava/io/ObjectStreamClass;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    .line 2042
    .local v2, "ctrMH":Ljava/lang/invoke/MethodHandle;
    :try_start_28
    iget-object v3, v1, Ljava/io/ObjectInputStream$FieldValues;->primValues:[B

    iget-object v4, v1, Ljava/io/ObjectInputStream$FieldValues;->objValues:[Ljava/lang/Object;

    invoke-polymorphic {v2, v3, v4}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ([B[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_40
    .catch Ljava/lang/Error; {:try_start_28 .. :try_end_31} :catch_3e
    .catchall {:try_start_28 .. :try_end_31} :catchall_32

    return-object v3

    .line 2049
    :catchall_32
    move-exception v3

    .line 2050
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/io/InvalidObjectException;

    const-string v5, "ReflectiveOperationException during deserialization"

    invoke-direct {v4, v5}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 2052
    .local v4, "ose":Ljava/io/ObjectStreamException;
    invoke-virtual {v4, v3}, Ljava/io/ObjectStreamException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2053
    throw v4

    .line 2047
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "ose":Ljava/io/ObjectStreamException;
    :catch_3e
    move-exception v3

    .line 2048
    .local v3, "e":Ljava/lang/Error;
    throw v3

    .line 2043
    .end local v3    # "e":Ljava/lang/Error;
    :catch_40
    move-exception v3

    .line 2044
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/InvalidObjectException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 2045
    .local v4, "ioe":Ljava/io/InvalidObjectException;
    invoke-virtual {v4, v3}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2046
    throw v4
.end method

.method private greylist-max-o readSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2066
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getClassDataLayout()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    move-result-object v0

    .line 2067
    .local v0, "slots":[Ljava/io/ObjectStreamClass$ClassDataSlot;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_9d

    .line 2068
    aget-object v2, v0, v1

    iget-object v2, v2, Ljava/io/ObjectStreamClass$ClassDataSlot;->desc:Ljava/io/ObjectStreamClass;

    .line 2070
    .local v2, "slotDesc":Ljava/io/ObjectStreamClass;
    aget-object v3, v0, v1

    iget-boolean v3, v3, Ljava/io/ObjectStreamClass$ClassDataSlot;->hasData:Z

    if-eqz v3, :cond_84

    .line 2071
    const/4 v3, 0x0

    if-eqz p1, :cond_70

    iget-object v4, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v5, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v4, v5}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v4

    if-eqz v4, :cond_20

    goto :goto_70

    .line 2073
    :cond_20
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasReadObjectMethod()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 2078
    iget-object v4, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 2079
    .local v4, "oldContext":Ljava/io/SerialCallbackContext;
    if-eqz v4, :cond_2d

    .line 2080
    invoke-virtual {v4}, Ljava/io/SerialCallbackContext;->check()V

    .line 2082
    :cond_2d
    :try_start_2d
    new-instance v5, Ljava/io/SerialCallbackContext;

    invoke-direct {v5, p1, v2}, Ljava/io/SerialCallbackContext;-><init>(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    iput-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 2084
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 2085
    invoke-virtual {v2, p1, p0}, Ljava/io/ObjectStreamClass;->invokeReadObject(Ljava/lang/Object;Ljava/io/ObjectInputStream;)V
    :try_end_3d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_3d} :catch_47
    .catchall {:try_start_2d .. :try_end_3d} :catchall_45

    .line 2096
    iget-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    .line 2097
    if-eqz v4, :cond_59

    .line 2098
    goto :goto_56

    .line 2096
    :catchall_45
    move-exception v3

    goto :goto_5f

    .line 2086
    :catch_47
    move-exception v5

    .line 2094
    .local v5, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_48
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v6, v7, v5}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_45

    .line 2096
    .end local v5    # "ex":Ljava/lang/ClassNotFoundException;
    iget-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    .line 2097
    if-eqz v4, :cond_59

    .line 2098
    :goto_56
    invoke-virtual {v4}, Ljava/io/SerialCallbackContext;->check()V

    .line 2099
    :cond_59
    iput-object v4, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 2101
    nop

    .line 2108
    iput-boolean v3, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 2109
    .end local v4    # "oldContext":Ljava/io/SerialCallbackContext;
    goto :goto_74

    .line 2096
    .restart local v4    # "oldContext":Ljava/io/SerialCallbackContext;
    :goto_5f
    iget-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    .line 2097
    if-eqz v4, :cond_69

    .line 2098
    invoke-virtual {v4}, Ljava/io/SerialCallbackContext;->check()V

    .line 2099
    :cond_69
    iput-object v4, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 2101
    throw v3

    .line 2110
    .end local v4    # "oldContext":Ljava/io/SerialCallbackContext;
    :cond_6c
    invoke-direct {p0, p1, v2}, Ljava/io/ObjectInputStream;->defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    goto :goto_74

    .line 2072
    :cond_70
    :goto_70
    const/4 v4, 0x0

    invoke-direct {p0, v4, v2}, Ljava/io/ObjectInputStream;->defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 2113
    :goto_74
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2114
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    goto :goto_99

    .line 2116
    :cond_7e
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4, v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    goto :goto_99

    .line 2119
    :cond_84
    if-eqz p1, :cond_99

    .line 2120
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasReadObjectNoDataMethod()Z

    move-result v3

    if-eqz v3, :cond_99

    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 2121
    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v3

    if-nez v3, :cond_99

    .line 2123
    invoke-virtual {v2, p1}, Ljava/io/ObjectStreamClass;->invokeReadObjectNoData(Ljava/lang/Object;)V

    .line 2067
    .end local v2    # "slotDesc":Ljava/io/ObjectStreamClass;
    :cond_99
    :goto_99
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 2127
    .end local v1    # "i":I
    :cond_9d
    return-void
.end method

.method private greylist-max-o readString(Z)Ljava/lang/String;
    .registers 6
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1761
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    .line 1762
    .local v0, "tc":B
    sparse-switch v0, :sswitch_data_42

    .line 1772
    new-instance v1, Ljava/io/StreamCorruptedException;

    .line 1773
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "invalid type code: %02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1768
    :sswitch_1d
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLongUTF()Ljava/lang/String;

    move-result-object v1

    .line 1769
    .local v1, "str":Ljava/lang/String;
    goto :goto_2b

    .line 1764
    .end local v1    # "str":Ljava/lang/String;
    :sswitch_24
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 1765
    .restart local v1    # "str":Ljava/lang/String;
    nop

    .line 1775
    :goto_2b
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_32

    sget-object v3, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    goto :goto_33

    :cond_32
    move-object v3, v1

    :goto_33
    invoke-virtual {v2, v3}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1776
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1777
    return-object v1

    nop

    :sswitch_data_42
    .sparse-switch
        0x74 -> :sswitch_24
        0x7c -> :sswitch_1d
    .end sparse-switch
.end method

.method private greylist-max-o skipCustomData()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2134
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 2136
    .local v0, "oldHandle":I
    :goto_2
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->getBlockDataMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 2137
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->skipBlockData()V

    .line 2138
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 2140
    :cond_15
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v1

    packed-switch v1, :pswitch_data_32

    .line 2152
    :pswitch_1e
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    .line 2153
    goto :goto_2

    .line 2147
    :pswitch_22
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    .line 2148
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 2149
    return-void

    .line 2143
    :pswitch_2a
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 2144
    goto :goto_2

    nop

    :pswitch_data_32
    .packed-switch 0x77
        :pswitch_2a
        :pswitch_22
        :pswitch_1e
        :pswitch_2a
    .end packed-switch
.end method

.method private greylist-max-o verifySubclass()V
    .registers 6

    .line 1325
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1326
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/io/ObjectInputStream;

    if-ne v0, v1, :cond_9

    .line 1327
    return-void

    .line 1329
    :cond_9
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 1330
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-nez v1, :cond_10

    .line 1331
    return-void

    .line 1333
    :cond_10
    sget-object v2, Ljava/io/ObjectInputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v3, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2, v3}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 1334
    new-instance v2, Ljava/io/ObjectStreamClass$WeakClassKey;

    sget-object v3, Ljava/io/ObjectInputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, v0, v3}, Ljava/io/ObjectStreamClass$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    .line 1335
    .local v2, "key":Ljava/io/ObjectStreamClass$WeakClassKey;
    sget-object v3, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1336
    .local v3, "result":Ljava/lang/Boolean;
    if-nez v3, :cond_35

    .line 1337
    invoke-static {v0}, Ljava/io/ObjectInputStream;->auditSubclass(Ljava/lang/Class;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1338
    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    :cond_35
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1341
    return-void

    .line 1343
    :cond_3c
    sget-object v4, Ljava/io/ObjectInputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v1, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1344
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 936
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 950
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->closed:Z

    .line 951
    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v0, :cond_a

    .line 952
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 954
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->close()V

    .line 955
    return-void
.end method

.method public whitelist test-api defaultReadObject()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 553
    iget-object v0, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 554
    .local v0, "ctx":Ljava/io/SerialCallbackContext;
    if-eqz v0, :cond_2f

    .line 557
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v1

    .line 558
    .local v1, "curObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 559
    .local v2, "curDesc":Ljava/io/ObjectStreamClass;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 560
    invoke-direct {p0, v1, v2}, Ljava/io/ObjectInputStream;->defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 561
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 562
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    move-result v3

    if-nez v3, :cond_23

    .line 568
    iput-boolean v4, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 570
    :cond_23
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v3

    .line 571
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    if-nez v3, :cond_2e

    .line 574
    return-void

    .line 572
    :cond_2e
    throw v3

    .line 555
    .end local v1    # "curObj":Ljava/lang/Object;
    .end local v2    # "curDesc":Ljava/io/ObjectStreamClass;
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_2f
    new-instance v1, Ljava/io/NotActiveException;

    const-string v2, "not in call to readObject"

    invoke-direct {v1, v2}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api enableResolveObject(Z)Z
    .registers 4
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 835
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-ne p1, v0, :cond_5

    .line 836
    return p1

    .line 838
    :cond_5
    if-eqz p1, :cond_12

    .line 839
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 840
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_12

    .line 841
    sget-object v1, Ljava/io/ObjectInputStream;->SUBSTITUTION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 844
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_12
    iput-boolean p1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 845
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 901
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 918
    if-eqz p1, :cond_1b

    .line 921
    add-int v0, p2, p3

    .line 922
    .local v0, "endoff":I
    if-ltz p2, :cond_15

    if-ltz p3, :cond_15

    array-length v1, p1

    if-gt v0, v1, :cond_15

    if-ltz v0, :cond_15

    .line 925
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read([BIIZ)I

    move-result v1

    return v1

    .line 923
    :cond_15
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 919
    .end local v0    # "endoff":I
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api readBoolean()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 965
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api readByte()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 976
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public whitelist test-api readChar()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 998
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method protected whitelist test-api readClassDescriptor()Ljava/io/ObjectStreamClass;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 889
    new-instance v0, Ljava/io/ObjectStreamClass;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 890
    .local v0, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0, p0}, Ljava/io/ObjectStreamClass;->readNonProxy(Ljava/io/ObjectInputStream;)V

    .line 891
    return-object v0
.end method

.method public whitelist test-api readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1064
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api readFields()Ljava/io/ObjectInputStream$GetField;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 593
    .local v0, "ctx":Ljava/io/SerialCallbackContext;
    if-eqz v0, :cond_29

    .line 596
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v1

    .line 597
    .local v1, "curObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 598
    .local v2, "curDesc":Ljava/io/ObjectStreamClass;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 599
    new-instance v3, Ljava/io/ObjectInputStream$GetFieldImpl;

    invoke-direct {v3, p0, v2}, Ljava/io/ObjectInputStream$GetFieldImpl;-><init>(Ljava/io/ObjectInputStream;Ljava/io/ObjectStreamClass;)V

    .line 600
    .local v3, "getField":Ljava/io/ObjectInputStream$GetFieldImpl;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream$GetFieldImpl;->readFields()V

    .line 601
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 602
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    move-result v4

    if-nez v4, :cond_28

    .line 608
    iput-boolean v5, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 611
    :cond_28
    return-object v3

    .line 594
    .end local v1    # "curObj":Ljava/lang/Object;
    .end local v2    # "curDesc":Ljava/io/ObjectStreamClass;
    .end local v3    # "getField":Ljava/io/ObjectInputStream$GetFieldImpl;
    :cond_29
    new-instance v1, Ljava/io/NotActiveException;

    const-string v2, "not in call to readObject"

    invoke-direct {v1, v2}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1053
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public whitelist test-api readFully([B)V
    .registers 5
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1075
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 1076
    return-void
.end method

.method public whitelist test-api readFully([BII)V
    .registers 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1088
    add-int v0, p2, p3

    .line 1089
    .local v0, "endoff":I
    if-ltz p2, :cond_12

    if-ltz p3, :cond_12

    array-length v1, p1

    if-gt v0, v1, :cond_12

    if-ltz v0, :cond_12

    .line 1092
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 1093
    return-void

    .line 1090
    :cond_12
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public whitelist test-api readInt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1031
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public whitelist test-api readLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1117
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api readLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api readObject()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 423
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    if-eqz v0, :cond_9

    .line 424
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObjectOverride()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 428
    :cond_9
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 430
    .local v0, "outerHandle":I
    const/4 v1, 0x0

    :try_start_c
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v1

    .line 431
    .local v1, "obj":Ljava/lang/Object;
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v2, v0, v3}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 432
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v2

    .line 433
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    if-nez v2, :cond_39

    .line 436
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_2a

    .line 437
    iget-object v3, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$ValidationList;->doCallbacks()V
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_3b

    .line 439
    :cond_2a
    nop

    .line 441
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 442
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v3, :cond_38

    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_38

    .line 443
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 439
    :cond_38
    return-object v1

    .line 434
    :cond_39
    nop

    .end local v0    # "outerHandle":I
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    :try_start_3a
    throw v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 441
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "outerHandle":I
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    :catchall_3b
    move-exception v1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 442
    iget-boolean v2, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v2, :cond_49

    iget v2, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v2, :cond_49

    .line 443
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 445
    :cond_49
    throw v1
.end method

.method protected whitelist test-api readObjectOverride()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 468
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api readShort()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1009
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method protected whitelist test-api readStreamHeader()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .line 861
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShort()S

    move-result v0

    .line 862
    .local v0, "s0":S
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShort()S

    move-result v1

    .line 863
    .local v1, "s1":S
    const/16 v2, -0x5313

    if-ne v0, v2, :cond_14

    const/4 v2, 0x5

    if-ne v1, v2, :cond_14

    .line 867
    return-void

    .line 864
    :cond_14
    new-instance v2, Ljava/io/StreamCorruptedException;

    .line 865
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "invalid stream header: %04X%04X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method greylist-max-o readTypeString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1514
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1516
    .local v0, "oldHandle":I
    :try_start_2
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v1

    .line 1517
    .local v1, "tc":B
    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_3e

    .line 1529
    new-instance v2, Ljava/io/StreamCorruptedException;

    goto :goto_28

    .line 1526
    :sswitch_f
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_3a

    .line 1533
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1526
    return-object v2

    .line 1522
    :sswitch_16
    :try_start_16
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_3a

    .line 1533
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1522
    return-object v2

    .line 1519
    :sswitch_1f
    :try_start_1f
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_3a

    .line 1533
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1519
    return-object v2

    .line 1529
    :goto_28
    :try_start_28
    const-string v3, "invalid type code: %02X"

    .line 1530
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldHandle":I
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    throw v2
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_3a

    .line 1533
    .end local v1    # "tc":B
    .restart local v0    # "oldHandle":I
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    :catchall_3a
    move-exception v1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1534
    throw v1

    :sswitch_data_3e
    .sparse-switch
        0x70 -> :sswitch_1f
        0x71 -> :sswitch_16
        0x74 -> :sswitch_f
        0x7c -> :sswitch_f
    .end sparse-switch
.end method

.method public whitelist test-api readUTF()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1132
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api readUnshared()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 518
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 520
    .local v0, "outerHandle":I
    const/4 v1, 0x1

    :try_start_3
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v1

    .line 521
    .local v1, "obj":Ljava/lang/Object;
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v2, v0, v3}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 522
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v2

    .line 523
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    if-nez v2, :cond_30

    .line 526
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_21

    .line 527
    iget-object v3, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$ValidationList;->doCallbacks()V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_32

    .line 529
    :cond_21
    nop

    .line 531
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 532
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v3, :cond_2f

    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_2f

    .line 533
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 529
    :cond_2f
    return-object v1

    .line 524
    :cond_30
    nop

    .end local v0    # "outerHandle":I
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    :try_start_31
    throw v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 531
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "outerHandle":I
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    :catchall_32
    move-exception v1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 532
    iget-boolean v2, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v2, :cond_40

    iget v2, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v2, :cond_40

    .line 533
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 535
    :cond_40
    throw v1
.end method

.method public whitelist test-api readUnsignedByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 987
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public whitelist test-api readUnsignedShort()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1020
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public whitelist test-api registerValidation(Ljava/io/ObjectInputValidation;I)V
    .registers 5
    .param p1, "obj"    # Ljava/io/ObjectInputValidation;
    .param p2, "prio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 633
    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    if-eqz v0, :cond_a

    .line 636
    iget-object v0, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectInputStream$ValidationList;->register(Ljava/io/ObjectInputValidation;I)V

    .line 637
    return-void

    .line 634
    :cond_a
    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "stream inactive"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .registers 5
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 683
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "name":Ljava/lang/String;
    :try_start_4
    invoke-static {}, Ljava/io/ObjectInputStream;->latestUserDefinedLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_d} :catch_e

    return-object v1

    .line 686
    :catch_e
    move-exception v1

    .line 687
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    sget-object v2, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 688
    .local v2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1a

    .line 689
    return-object v2

    .line 691
    :cond_1a
    throw v1
.end method

.method protected whitelist test-api resolveObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 808
    return-object p1
.end method

.method protected whitelist test-api resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
    .registers 10
    .param p1, "interfaces"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 750
    invoke-static {}, Ljava/io/ObjectInputStream;->latestUserDefinedLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 751
    .local v0, "latestLoader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 752
    .local v1, "nonPublicLoader":Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 755
    .local v2, "hasNonPublicInterface":Z
    array-length v3, p1

    new-array v3, v3, [Ljava/lang/Class;

    .line 756
    .local v3, "classObjs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    array-length v5, p1

    if-ge v4, v5, :cond_37

    .line 757
    aget-object v5, p1, v4

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 758
    .local v5, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_32

    .line 759
    if-eqz v2, :cond_2d

    .line 760
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    if-ne v1, v6, :cond_25

    goto :goto_32

    .line 761
    :cond_25
    new-instance v6, Ljava/lang/IllegalAccessError;

    const-string v7, "conflicting non-public interface class loaders"

    invoke-direct {v6, v7}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 765
    :cond_2d
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 766
    const/4 v2, 0x1

    .line 769
    :cond_32
    :goto_32
    aput-object v5, v3, v4

    .line 756
    .end local v5    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 773
    .end local v4    # "i":I
    :cond_37
    if-eqz v2, :cond_3b

    move-object v4, v1

    goto :goto_3c

    :cond_3b
    move-object v4, v0

    .line 772
    :goto_3c
    :try_start_3c
    invoke-static {v4, v3}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_40} :catch_41

    return-object v4

    .line 775
    :catch_41
    move-exception v4

    .line 776
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/ClassNotFoundException;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public whitelist test-api skipBytes(I)I
    .registers 3
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1103
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->skipBytes(I)I

    move-result v0

    return v0
.end method
