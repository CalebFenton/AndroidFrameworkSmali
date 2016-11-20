.class public Ljava/lang/reflect/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/reflect/Proxy$1;
    }
.end annotation


# static fields
.field private static final ORDER_BY_SIGNATURE_AND_SUBTYPE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final constructorParams:[Ljava/lang/Class;

.field private static loaderToCache:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static nextUniqueNumber:J = 0x0L

.field private static nextUniqueNumberLock:Ljava/lang/Object; = null

.field private static pendingGenerationMarker:Ljava/lang/Object; = null

.field private static final proxyClassNamePrefix:Ljava/lang/String; = "$Proxy"

.field private static proxyClasses:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x1ed825df33efbc35L


# instance fields
.field protected h:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 240
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    const-class v1, Ljava/lang/reflect/InvocationHandler;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    .line 239
    sput-object v0, Ljava/lang/reflect/Proxy;->constructorParams:[Ljava/lang/Class;

    #@a
    .line 244
    new-instance v0, Ljava/util/WeakHashMap;

    #@c
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@f
    .line 243
    sput-object v0, Ljava/lang/reflect/Proxy;->loaderToCache:Ljava/util/Map;

    #@11
    .line 247
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    sput-object v0, Ljava/lang/reflect/Proxy;->pendingGenerationMarker:Ljava/lang/Object;

    #@18
    .line 250
    const-wide/16 v0, 0x0

    #@1a
    sput-wide v0, Ljava/lang/reflect/Proxy;->nextUniqueNumber:J

    #@1c
    .line 251
    new-instance v0, Ljava/lang/Object;

    #@1e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@21
    sput-object v0, Ljava/lang/reflect/Proxy;->nextUniqueNumberLock:Ljava/lang/Object;

    #@23
    .line 255
    new-instance v0, Ljava/util/WeakHashMap;

    #@25
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@28
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@2b
    move-result-object v0

    #@2c
    .line 254
    sput-object v0, Ljava/lang/reflect/Proxy;->proxyClasses:Ljava/util/Map;

    #@2e
    .line 268
    new-instance v0, Ljava/lang/reflect/Proxy$1;

    #@30
    invoke-direct {v0}, Ljava/lang/reflect/Proxy$1;-><init>()V

    #@33
    sput-object v0, Ljava/lang/reflect/Proxy;->ORDER_BY_SIGNATURE_AND_SUBTYPE:Ljava/util/Comparator;

    #@35
    .line 231
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/InvocationHandler;)V
    .locals 0
    .param p1, "h"    # Ljava/lang/reflect/InvocationHandler;

    #@0
    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 302
    iput-object p1, p0, Ljava/lang/reflect/Proxy;->h:Ljava/lang/reflect/InvocationHandler;

    #@5
    .line 301
    return-void
.end method

.method private static deduplicateAndGetExceptions(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 604
    .local p0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@5
    move-result v4

    #@6
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 606
    .local v1, "exceptions":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Class<*>;>;"
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@d
    move-result v4

    #@e
    if-ge v2, v4, :cond_1

    #@10
    .line 607
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Ljava/lang/reflect/Method;

    #@16
    .line 608
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    #@19
    move-result-object v0

    #@1a
    .line 610
    .local v0, "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-lez v2, :cond_0

    #@1c
    sget-object v5, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    #@1e
    add-int/lit8 v4, v2, -0x1

    #@20
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    check-cast v4, Ljava/lang/reflect/Method;

    #@26
    invoke-interface {v5, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@29
    move-result v4

    #@2a
    if-nez v4, :cond_0

    #@2c
    .line 611
    add-int/lit8 v5, v2, -0x1

    #@2e
    add-int/lit8 v4, v2, -0x1

    #@30
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    check-cast v4, [Ljava/lang/Class;

    #@36
    invoke-static {v4, v0}, Ljava/lang/reflect/Proxy;->intersectExceptions([Ljava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;

    #@39
    move-result-object v4

    #@3a
    invoke-interface {v1, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 612
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@40
    goto :goto_0

    #@41
    .line 614
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@44
    .line 615
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_0

    #@47
    .line 618
    .end local v0    # "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    return-object v1
.end method

.method private static native generateProxy(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/ClassLoader;[Ljava/lang/reflect/Method;[[Ljava/lang/Class;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/reflect/Method;",
            "[[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public static getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .locals 2
    .param p0, "proxy"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 805
    instance-of v0, p0, Ljava/lang/reflect/Proxy;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 806
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "not a proxy instance"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 808
    :cond_0
    check-cast p0, Ljava/lang/reflect/Proxy;

    #@f
    .end local p0    # "proxy":Ljava/lang/Object;
    iget-object v0, p0, Ljava/lang/reflect/Proxy;->h:Ljava/lang/reflect/InvocationHandler;

    #@11
    return-object v0
.end method

.method private static getMethods([Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 675
    .local p0, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 677
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    :try_start_0
    const-class v2, Ljava/lang/Object;

    #@7
    const-string/jumbo v3, "equals"

    #@a
    const/4 v4, 0x1

    #@b
    new-array v4, v4, [Ljava/lang/Class;

    #@d
    const-class v5, Ljava/lang/Object;

    #@f
    const/4 v6, 0x0

    #@10
    aput-object v5, v4, v6

    #@12
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    .line 678
    const-class v2, Ljava/lang/Object;

    #@1b
    const-string/jumbo v3, "hashCode"

    #@1e
    sget-object v4, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    #@20
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@23
    move-result-object v2

    #@24
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@27
    .line 679
    const-class v2, Ljava/lang/Object;

    #@29
    const-string/jumbo v3, "toString"

    #@2c
    sget-object v4, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    #@2e
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@31
    move-result-object v2

    #@32
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 684
    invoke-static {p0, v1}, Ljava/lang/reflect/Proxy;->getMethodsRecursive([Ljava/lang/Class;Ljava/util/List;)V

    #@38
    .line 685
    return-object v1

    #@39
    .line 680
    :catch_0
    move-exception v0

    #@3a
    .line 681
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/AssertionError;

    #@3c
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@3f
    throw v2
.end method

.method private static getMethodsRecursive([Ljava/lang/Class;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 693
    .local p0, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    const/4 v1, 0x0

    #@1
    array-length v2, p0

    #@2
    :goto_0
    if-ge v1, v2, :cond_0

    #@4
    aget-object v0, p0, v1

    #@6
    .line 694
    .local v0, "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    #@9
    move-result-object v3

    #@a
    invoke-static {v3, p1}, Ljava/lang/reflect/Proxy;->getMethodsRecursive([Ljava/lang/Class;Ljava/util/List;)V

    #@d
    .line 695
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    #@10
    move-result-object v3

    #@11
    invoke-static {p1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@14
    .line 693
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 692
    .end local v0    # "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void
.end method

.method public static varargs getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 384
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Ljava/lang/reflect/Proxy;->getProxyClass0(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static varargs getProxyClass0(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    .locals 32
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 393
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    #@2
    array-length v0, v0

    #@3
    move/from16 v27, v0

    #@5
    const v28, 0xffff

    #@8
    move/from16 v0, v27

    #@a
    move/from16 v1, v28

    #@c
    if-le v0, v1, :cond_0

    #@e
    .line 394
    new-instance v27, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v28, "interface limit exceeded"

    #@13
    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v27

    #@17
    .line 397
    :cond_0
    const/16 v23, 0x0

    #@19
    .line 400
    .local v23, "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    #@1b
    array-length v0, v0

    #@1c
    move/from16 v27, v0

    #@1e
    move/from16 v0, v27

    #@20
    new-array v13, v0, [Ljava/lang/String;

    #@22
    .line 403
    .local v13, "interfaceNames":[Ljava/lang/String;
    new-instance v14, Ljava/util/HashSet;

    #@24
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    #@27
    .line 405
    .local v14, "interfaceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const/4 v10, 0x0

    #@28
    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p1

    #@2a
    array-length v0, v0

    #@2b
    move/from16 v27, v0

    #@2d
    move/from16 v0, v27

    #@2f
    if-ge v10, v0, :cond_4

    #@31
    .line 410
    aget-object v27, p1, v10

    #@33
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@36
    move-result-object v12

    #@37
    .line 411
    .local v12, "interfaceName":Ljava/lang/String;
    const/4 v11, 0x0

    #@38
    .line 413
    .local v11, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v27, 0x0

    #@3a
    :try_start_0
    move/from16 v0, v27

    #@3c
    move-object/from16 v1, p0

    #@3e
    invoke-static {v12, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    move-result-object v11

    #@42
    .line 416
    .end local v11    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    aget-object v27, p1, v10

    #@44
    move-object/from16 v0, v27

    #@46
    if-eq v11, v0, :cond_1

    #@48
    .line 417
    new-instance v27, Ljava/lang/IllegalArgumentException;

    #@4a
    .line 418
    new-instance v28, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    aget-object v29, p1, v10

    #@51
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v28

    #@55
    const-string/jumbo v29, " is not visible from class loader"

    #@58
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v28

    #@5c
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v28

    #@60
    .line 417
    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@63
    throw v27

    #@64
    .line 414
    .restart local v11    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v5

    #@65
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_1

    #@66
    .line 425
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .end local v11    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v11}, Ljava/lang/Class;->isInterface()Z

    #@69
    move-result v27

    #@6a
    if-nez v27, :cond_2

    #@6c
    .line 426
    new-instance v27, Ljava/lang/IllegalArgumentException;

    #@6e
    .line 427
    new-instance v28, Ljava/lang/StringBuilder;

    #@70
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@76
    move-result-object v29

    #@77
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v28

    #@7b
    const-string/jumbo v29, " is not an interface"

    #@7e
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v28

    #@82
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v28

    #@86
    .line 426
    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@89
    throw v27

    #@8a
    .line 433
    :cond_2
    invoke-interface {v14, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@8d
    move-result v27

    #@8e
    if-eqz v27, :cond_3

    #@90
    .line 434
    new-instance v27, Ljava/lang/IllegalArgumentException;

    #@92
    .line 435
    new-instance v28, Ljava/lang/StringBuilder;

    #@94
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v29, "repeated interface: "

    #@9a
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v28

    #@9e
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a1
    move-result-object v29

    #@a2
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v28

    #@a6
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v28

    #@aa
    .line 434
    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ad
    throw v27

    #@ae
    .line 437
    :cond_3
    invoke-interface {v14, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@b1
    .line 439
    aput-object v12, v13, v10

    #@b3
    .line 405
    add-int/lit8 v10, v10, 0x1

    #@b5
    goto/16 :goto_0

    #@b7
    .line 451
    .end local v12    # "interfaceName":Ljava/lang/String;
    :cond_4
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@ba
    move-result-object v15

    #@bb
    .line 457
    .local v15, "key":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v28, Ljava/lang/reflect/Proxy;->loaderToCache:Ljava/util/Map;

    #@bd
    monitor-enter v28

    #@be
    .line 458
    :try_start_1
    sget-object v27, Ljava/lang/reflect/Proxy;->loaderToCache:Ljava/util/Map;

    #@c0
    move-object/from16 v0, v27

    #@c2
    move-object/from16 v1, p0

    #@c4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c7
    move-result-object v4

    #@c8
    check-cast v4, Ljava/util/Map;

    #@ca
    .line 459
    .local v4, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Object;>;"
    if-nez v4, :cond_5

    #@cc
    .line 460
    new-instance v4, Ljava/util/HashMap;

    #@ce
    .end local v4    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Object;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@d1
    .line 461
    .restart local v4    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Object;>;"
    sget-object v27, Ljava/lang/reflect/Proxy;->loaderToCache:Ljava/util/Map;

    #@d3
    move-object/from16 v0, v27

    #@d5
    move-object/from16 v1, p0

    #@d7
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@da
    :cond_5
    monitor-exit v28

    #@db
    .line 481
    monitor-enter v4

    #@dc
    .line 490
    .end local v23    # "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    :try_start_2
    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@df
    move-result-object v26

    #@e0
    .line 491
    .local v26, "value":Ljava/lang/Object;
    move-object/from16 v0, v26

    #@e2
    instance-of v0, v0, Ljava/lang/ref/Reference;

    #@e4
    move/from16 v27, v0

    #@e6
    if-eqz v27, :cond_6

    #@e8
    .line 492
    move-object/from16 v0, v26

    #@ea
    check-cast v0, Ljava/lang/ref/Reference;

    #@ec
    move-object/from16 v27, v0

    #@ee
    invoke-virtual/range {v27 .. v27}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@f1
    move-result-object v27

    #@f2
    move-object/from16 v0, v27

    #@f4
    check-cast v0, Ljava/lang/Class;

    #@f6
    move-object/from16 v23, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@f8
    .line 494
    :cond_6
    if-eqz v23, :cond_7

    #@fa
    monitor-exit v4

    #@fb
    .line 496
    return-object v23

    #@fc
    .line 457
    .end local v4    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Object;>;"
    .end local v26    # "value":Ljava/lang/Object;
    .restart local v23    # "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v27

    #@fd
    monitor-exit v28

    #@fe
    throw v27

    #@ff
    .line 497
    .end local v23    # "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Object;>;"
    .restart local v26    # "value":Ljava/lang/Object;
    :cond_7
    :try_start_3
    sget-object v27, Ljava/lang/reflect/Proxy;->pendingGenerationMarker:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@101
    move-object/from16 v0, v26

    #@103
    move-object/from16 v1, v27

    #@105
    if-ne v0, v1, :cond_8

    #@107
    .line 500
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@10a
    goto :goto_2

    #@10b
    .line 501
    :catch_1
    move-exception v6

    #@10c
    .local v6, "e":Ljava/lang/InterruptedException;
    goto :goto_2

    #@10d
    .line 515
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_8
    :try_start_5
    sget-object v27, Ljava/lang/reflect/Proxy;->pendingGenerationMarker:Ljava/lang/Object;

    #@10f
    move-object/from16 v0, v27

    #@111
    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@114
    monitor-exit v4

    #@115
    .line 522
    const/16 v25, 0x0

    #@117
    .line 529
    .local v25, "proxyPkg":Ljava/lang/String;
    const/4 v10, 0x0

    #@118
    .end local v25    # "proxyPkg":Ljava/lang/String;
    :goto_3
    :try_start_6
    move-object/from16 v0, p1

    #@11a
    array-length v0, v0

    #@11b
    move/from16 v27, v0

    #@11d
    move/from16 v0, v27

    #@11f
    if-ge v10, v0, :cond_c

    #@121
    .line 530
    aget-object v27, p1, v10

    #@123
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getModifiers()I

    #@126
    move-result v9

    #@127
    .line 531
    .local v9, "flags":I
    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@12a
    move-result v27

    #@12b
    if-nez v27, :cond_9

    #@12d
    .line 532
    aget-object v27, p1, v10

    #@12f
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@132
    move-result-object v19

    #@133
    .line 533
    .local v19, "name":Ljava/lang/String;
    const/16 v27, 0x2e

    #@135
    move-object/from16 v0, v19

    #@137
    move/from16 v1, v27

    #@139
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@13c
    move-result v18

    #@13d
    .line 534
    .local v18, "n":I
    const/16 v27, -0x1

    #@13f
    move/from16 v0, v18

    #@141
    move/from16 v1, v27

    #@143
    if-ne v0, v1, :cond_a

    #@145
    const-string/jumbo v22, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@148
    .line 535
    .local v22, "pkg":Ljava/lang/String;
    :goto_4
    if-nez v25, :cond_b

    #@14a
    .line 536
    move-object/from16 v25, v22

    #@14c
    .line 529
    .end local v18    # "n":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v22    # "pkg":Ljava/lang/String;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    #@14e
    goto :goto_3

    #@14f
    .line 481
    .end local v9    # "flags":I
    .end local v26    # "value":Ljava/lang/Object;
    :catchall_1
    move-exception v27

    #@150
    monitor-exit v4

    #@151
    throw v27

    #@152
    .line 534
    .restart local v9    # "flags":I
    .restart local v18    # "n":I
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v26    # "value":Ljava/lang/Object;
    :cond_a
    add-int/lit8 v27, v18, 0x1

    #@154
    const/16 v28, 0x0

    #@156
    :try_start_7
    move-object/from16 v0, v19

    #@158
    move/from16 v1, v28

    #@15a
    move/from16 v2, v27

    #@15c
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@15f
    move-result-object v22

    #@160
    .restart local v22    # "pkg":Ljava/lang/String;
    goto :goto_4

    #@161
    .line 537
    :cond_b
    move-object/from16 v0, v22

    #@163
    move-object/from16 v1, v25

    #@165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@168
    move-result v27

    #@169
    if-nez v27, :cond_9

    #@16b
    .line 538
    new-instance v27, Ljava/lang/IllegalArgumentException;

    #@16d
    .line 539
    const-string/jumbo v28, "non-public interfaces from different packages"

    #@170
    .line 538
    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@173
    throw v27
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@174
    .line 575
    .end local v9    # "flags":I
    .end local v18    # "n":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v22    # "pkg":Ljava/lang/String;
    :catchall_2
    move-exception v27

    #@175
    .line 583
    monitor-enter v4

    #@176
    .line 584
    if-eqz v23, :cond_f

    #@178
    .line 585
    :try_start_8
    new-instance v28, Ljava/lang/ref/WeakReference;

    #@17a
    move-object/from16 v0, v28

    #@17c
    move-object/from16 v1, v23

    #@17e
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@181
    move-object/from16 v0, v28

    #@183
    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@186
    .line 589
    :goto_5
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    #@189
    monitor-exit v4

    #@18a
    .line 575
    throw v27

    #@18b
    .line 544
    :cond_c
    if-nez v25, :cond_d

    #@18d
    .line 546
    :try_start_9
    const-string/jumbo v25, ""

    #@190
    .line 552
    :cond_d
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Proxy;->getMethods([Ljava/lang/Class;)Ljava/util/List;

    #@193
    move-result-object v16

    #@194
    .line 553
    .local v16, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    sget-object v27, Ljava/lang/reflect/Proxy;->ORDER_BY_SIGNATURE_AND_SUBTYPE:Ljava/util/Comparator;

    #@196
    move-object/from16 v0, v16

    #@198
    move-object/from16 v1, v27

    #@19a
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@19d
    .line 554
    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Proxy;->validateReturnTypes(Ljava/util/List;)V

    #@1a0
    .line 555
    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Proxy;->deduplicateAndGetExceptions(Ljava/util/List;)Ljava/util/List;

    #@1a3
    move-result-object v7

    #@1a4
    .line 557
    .local v7, "exceptions":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Class<*>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@1a7
    move-result v27

    #@1a8
    move/from16 v0, v27

    #@1aa
    new-array v0, v0, [Ljava/lang/reflect/Method;

    #@1ac
    move-object/from16 v27, v0

    #@1ae
    move-object/from16 v0, v16

    #@1b0
    move-object/from16 v1, v27

    #@1b2
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1b5
    move-result-object v17

    #@1b6
    check-cast v17, [Ljava/lang/reflect/Method;

    #@1b8
    .line 558
    .local v17, "methodsArray":[Ljava/lang/reflect/Method;
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@1bb
    move-result v27

    #@1bc
    move/from16 v0, v27

    #@1be
    new-array v0, v0, [[Ljava/lang/Class;

    #@1c0
    move-object/from16 v27, v0

    #@1c2
    move-object/from16 v0, v27

    #@1c4
    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1c7
    move-result-object v8

    #@1c8
    check-cast v8, [[Ljava/lang/Class;

    #@1ca
    .line 564
    .local v8, "exceptionsArray":[[Ljava/lang/Class;, "[[Ljava/lang/Class<*>;"
    sget-object v28, Ljava/lang/reflect/Proxy;->nextUniqueNumberLock:Ljava/lang/Object;

    #@1cc
    monitor-enter v28
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@1cd
    .line 565
    :try_start_a
    sget-wide v20, Ljava/lang/reflect/Proxy;->nextUniqueNumber:J

    #@1cf
    const-wide/16 v30, 0x1

    #@1d1
    add-long v30, v30, v20

    #@1d3
    sput-wide v30, Ljava/lang/reflect/Proxy;->nextUniqueNumber:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@1d5
    .local v20, "num":J
    :try_start_b
    monitor-exit v28

    #@1d6
    .line 567
    new-instance v27, Ljava/lang/StringBuilder;

    #@1d8
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@1db
    move-object/from16 v0, v27

    #@1dd
    move-object/from16 v1, v25

    #@1df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v27

    #@1e3
    const-string/jumbo v28, "$Proxy"

    #@1e6
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v27

    #@1ea
    move-object/from16 v0, v27

    #@1ec
    move-wide/from16 v1, v20

    #@1ee
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v27

    #@1f2
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f5
    move-result-object v24

    #@1f6
    .line 569
    .local v24, "proxyName":Ljava/lang/String;
    move-object/from16 v0, v24

    #@1f8
    move-object/from16 v1, p1

    #@1fa
    move-object/from16 v2, p0

    #@1fc
    move-object/from16 v3, v17

    #@1fe
    invoke-static {v0, v1, v2, v3, v8}, Ljava/lang/reflect/Proxy;->generateProxy(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/ClassLoader;[Ljava/lang/reflect/Method;[[Ljava/lang/Class;)Ljava/lang/Class;

    #@201
    move-result-object v23

    #@202
    .line 573
    .local v23, "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v27, Ljava/lang/reflect/Proxy;->proxyClasses:Ljava/util/Map;

    #@204
    const/16 v28, 0x0

    #@206
    move-object/from16 v0, v27

    #@208
    move-object/from16 v1, v23

    #@20a
    move-object/from16 v2, v28

    #@20c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@20f
    .line 583
    monitor-enter v4

    #@210
    .line 584
    if-eqz v23, :cond_e

    #@212
    .line 585
    :try_start_c
    new-instance v27, Ljava/lang/ref/WeakReference;

    #@214
    move-object/from16 v0, v27

    #@216
    move-object/from16 v1, v23

    #@218
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@21b
    move-object/from16 v0, v27

    #@21d
    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@220
    .line 589
    :goto_6
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    #@223
    monitor-exit v4

    #@224
    .line 592
    return-object v23

    #@225
    .line 564
    .end local v20    # "num":J
    .end local v23    # "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "proxyName":Ljava/lang/String;
    :catchall_3
    move-exception v27

    #@226
    :try_start_d
    monitor-exit v28

    #@227
    throw v27
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    #@228
    .line 587
    .restart local v20    # "num":J
    .restart local v23    # "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v24    # "proxyName":Ljava/lang/String;
    :cond_e
    :try_start_e
    invoke-interface {v4, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    #@22b
    goto :goto_6

    #@22c
    .line 583
    :catchall_4
    move-exception v27

    #@22d
    monitor-exit v4

    #@22e
    throw v27

    #@22f
    .line 587
    .end local v7    # "exceptions":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Class<*>;>;"
    .end local v8    # "exceptionsArray":[[Ljava/lang/Class;, "[[Ljava/lang/Class<*>;"
    .end local v16    # "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v17    # "methodsArray":[Ljava/lang/reflect/Method;
    .end local v20    # "num":J
    .end local v23    # "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "proxyName":Ljava/lang/String;
    :cond_f
    :try_start_f
    invoke-interface {v4, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    #@232
    goto/16 :goto_5

    #@234
    .line 583
    :catchall_5
    move-exception v27

    #@235
    monitor-exit v4

    #@236
    throw v27
.end method

.method private static intersectExceptions([Ljava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "aExceptions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "bExceptions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    #@1
    .line 627
    array-length v3, p0

    #@2
    if-eqz v3, :cond_0

    #@4
    array-length v3, p1

    #@5
    if-nez v3, :cond_1

    #@7
    .line 628
    :cond_0
    sget-object v3, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    #@9
    return-object v3

    #@a
    .line 630
    :cond_1
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_2

    #@10
    .line 631
    return-object p0

    #@11
    .line 633
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    #@13
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@16
    .line 634
    .local v2, "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    array-length v6, p0

    #@17
    move v5, v4

    #@18
    :goto_0
    if-ge v5, v6, :cond_6

    #@1a
    aget-object v0, p0, v5

    #@1c
    .line 635
    .local v0, "a":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v7, p1

    #@1d
    move v3, v4

    #@1e
    :goto_1
    if-ge v3, v7, :cond_5

    #@20
    aget-object v1, p1, v3

    #@22
    .line 636
    .local v1, "b":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@25
    move-result v8

    #@26
    if-eqz v8, :cond_4

    #@28
    .line 637
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2b
    .line 635
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 638
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@31
    move-result v8

    #@32
    if-eqz v8, :cond_3

    #@34
    .line 639
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@37
    goto :goto_2

    #@38
    .line 634
    .end local v1    # "b":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    add-int/lit8 v3, v5, 0x1

    #@3a
    move v5, v3

    #@3b
    goto :goto_0

    #@3c
    .line 643
    .end local v0    # "a":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@3f
    move-result v3

    #@40
    new-array v3, v3, [Ljava/lang/Class;

    #@42
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@45
    move-result-object v3

    #@46
    check-cast v3, [Ljava/lang/Class;

    #@48
    return-object v3
.end method

.method private static invoke(Ljava/lang/reflect/Proxy;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "proxy"    # Ljava/lang/reflect/Proxy;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 812
    iget-object v0, p0, Ljava/lang/reflect/Proxy;->h:Ljava/lang/reflect/InvocationHandler;

    #@2
    .line 813
    .local v0, "h":Ljava/lang/reflect/InvocationHandler;
    invoke-interface {v0, p0, p1, p2}, Ljava/lang/reflect/InvocationHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    return-object v1
.end method

.method public static isProxyClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 784
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    #@2
    .line 785
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 788
    :cond_0
    sget-object v0, Ljava/lang/reflect/Proxy;->proxyClasses:Ljava/util/Map;

    #@a
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method private static newInstance(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .locals 5
    .param p1, "h"    # Ljava/lang/reflect/InvocationHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/InvocationHandler;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .prologue
    .line 756
    .local p0, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    #@1
    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    #@3
    const/4 v4, 0x0

    #@4
    aput-object p1, v3, v4

    #@6
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v3

    #@a
    return-object v3

    #@b
    .line 759
    :catch_0
    move-exception v1

    #@c
    .line 760
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@f
    move-result-object v2

    #@10
    .line 761
    .local v2, "t":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/RuntimeException;

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 762
    check-cast v2, Ljava/lang/RuntimeException;

    #@16
    .end local v2    # "t":Ljava/lang/Throwable;
    throw v2

    #@17
    .line 764
    .restart local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v3, Ljava/lang/InternalError;

    #@19
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@20
    throw v3

    #@21
    .line 757
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    #@22
    .line 758
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Ljava/lang/InternalError;

    #@24
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@2b
    throw v3
.end method

.method public static newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .locals 5
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "h"    # Ljava/lang/reflect/InvocationHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/InvocationHandler;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 734
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    #@2
    .line 735
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 741
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/reflect/Proxy;->getProxyClass0(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    .line 747
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v3, Ljava/lang/reflect/Proxy;->constructorParams:[Ljava/lang/Class;

    #@e
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@11
    move-result-object v1

    #@12
    .line 748
    .local v1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {v1, p2}, Ljava/lang/reflect/Proxy;->newInstance(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v3

    #@16
    return-object v3

    #@17
    .line 749
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v2

    #@18
    .line 750
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/InternalError;

    #@1a
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@21
    throw v3
.end method

.method private static reserved1()V
    .locals 0

    #@0
    .prologue
    .line 821
    return-void
.end method

.method private static reserved2()V
    .locals 0

    #@0
    .prologue
    .line 822
    return-void
.end method

.method private static validateReturnTypes(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 655
    .local p0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    const/4 v3, 0x0

    #@1
    .line 656
    .local v3, "vs":Ljava/lang/reflect/Method;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .end local v3    # "vs":Ljava/lang/reflect/Method;
    .local v1, "method$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v5

    #@9
    if-eqz v5, :cond_4

    #@b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/reflect/Method;

    #@11
    .line 657
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_2

    #@13
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->equalNameAndParameters(Ljava/lang/reflect/Method;)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_2

    #@19
    .line 661
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@1c
    move-result-object v2

    #@1d
    .line 662
    .local v2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@20
    move-result-object v4

    #@21
    .line 663
    .local v4, "vsReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_1

    #@27
    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    #@2a
    move-result v5

    #@2b
    if-nez v5, :cond_0

    #@2d
    .line 665
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_3

    #@33
    .line 666
    move-object v3, v0

    #@34
    .local v3, "vs":Ljava/lang/reflect/Method;
    goto :goto_0

    #@35
    .line 658
    .end local v2    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "vs":Ljava/lang/reflect/Method;
    .end local v4    # "vsReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move-object v3, v0

    #@36
    .line 659
    .restart local v3    # "vs":Ljava/lang/reflect/Method;
    goto :goto_0

    #@37
    .line 667
    .end local v3    # "vs":Ljava/lang/reflect/Method;
    .restart local v2    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "vsReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@3a
    move-result v5

    #@3b
    if-nez v5, :cond_0

    #@3d
    .line 668
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@3f
    new-instance v6, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v7, "proxied interface methods have incompatible return types:\n  "

    #@47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v6

    #@4f
    .line 669
    const-string/jumbo v7, "\n  "

    #@52
    .line 668
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v6

    #@5a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@61
    throw v5

    #@62
    .line 654
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "vsReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    return-void
.end method
