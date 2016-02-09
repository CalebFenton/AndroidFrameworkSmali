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

.field private static nextClassNameIndex:I = 0x0

.field private static final serialVersionUID:J = -0x1ed825df33efbc35L


# instance fields
.field protected h:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 42
    const/4 v0, 0x0

    #@1
    sput v0, Ljava/lang/reflect/Proxy;->nextClassNameIndex:I

    #@3
    .line 49
    new-instance v0, Ljava/lang/reflect/Proxy$1;

    #@5
    invoke-direct {v0}, Ljava/lang/reflect/Proxy$1;-><init>()V

    #@8
    sput-object v0, Ljava/lang/reflect/Proxy;->ORDER_BY_SIGNATURE_AND_SUBTYPE:Ljava/util/Comparator;

    #@a
    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/InvocationHandler;)V
    .locals 0
    .param p1, "h"    # Ljava/lang/reflect/InvocationHandler;

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    iput-object p1, p0, Ljava/lang/reflect/Proxy;->h:Ljava/lang/reflect/InvocationHandler;

    #@5
    .line 83
    return-void
.end method

.method private static native constructorPrototype(Ljava/lang/reflect/InvocationHandler;)V
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
    .line 339
    .local p0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@5
    move-result v4

    #@6
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 341
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
    .line 342
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Ljava/lang/reflect/Method;

    #@16
    .line 343
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    #@19
    move-result-object v0

    #@1a
    .line 345
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
    .line 346
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
    .line 347
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@40
    goto :goto_0

    #@41
    .line 349
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@44
    .line 350
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_0

    #@47
    .line 353
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
    .line 272
    instance-of v0, p0, Ljava/lang/reflect/Proxy;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "not a proxy instance"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 275
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
    .line 279
    .local p0, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 281
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
    .line 282
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
    .line 283
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
    .line 288
    invoke-static {p0, v1}, Ljava/lang/reflect/Proxy;->getMethodsRecursive([Ljava/lang/Class;Ljava/util/List;)V

    #@38
    .line 289
    return-object v1

    #@39
    .line 284
    :catch_0
    move-exception v0

    #@3a
    .line 285
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
    .line 297
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
    .line 298
    .local v0, "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    #@9
    move-result-object v3

    #@a
    invoke-static {v3, p1}, Ljava/lang/reflect/Proxy;->getMethodsRecursive([Ljava/lang/Class;Ljava/util/List;)V

    #@d
    .line 299
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    #@10
    move-result-object v3

    #@11
    invoke-static {p1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@14
    .line 297
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 296
    .end local v0    # "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void
.end method

.method public static varargs getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    .locals 19
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

    #@0
    .prologue
    .line 111
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    #@2
    .line 112
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object p0

    #@6
    .line 115
    :cond_0
    if-nez p1, :cond_1

    #@8
    .line 116
    new-instance v15, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v16, "interfaces == null"

    #@d
    invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v15

    #@11
    .line 121
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    #@13
    move-object/from16 v0, p1

    #@15
    array-length v15, v0

    #@16
    invoke-direct {v7, v15}, Ljava/util/ArrayList;-><init>(I)V

    #@19
    .line 122
    .local v7, "interfaceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    move-object/from16 v0, p1

    #@1b
    invoke-static {v7, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@1e
    .line 128
    new-instance v8, Ljava/util/HashSet;

    #@20
    invoke-direct {v8, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@23
    .line 129
    .local v8, "interfaceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const/4 v15, 0x0

    #@24
    invoke-interface {v8, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@27
    move-result v15

    #@28
    if-eqz v15, :cond_2

    #@2a
    .line 130
    new-instance v15, Ljava/lang/NullPointerException;

    #@2c
    new-instance v16, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v17, "interface list contains null: "

    #@34
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v16

    #@38
    move-object/from16 v0, v16

    #@3a
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v16

    #@3e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v16

    #@42
    invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@45
    throw v15

    #@46
    .line 133
    :cond_2
    invoke-interface {v8}, Ljava/util/Set;->size()I

    #@49
    move-result v15

    #@4a
    move-object/from16 v0, p1

    #@4c
    array-length v0, v0

    #@4d
    move/from16 v16, v0

    #@4f
    move/from16 v0, v16

    #@51
    if-eq v15, v0, :cond_3

    #@53
    .line 134
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@55
    new-instance v16, Ljava/lang/StringBuilder;

    #@57
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v17, "duplicate interface in list: "

    #@5d
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v16

    #@61
    move-object/from16 v0, v16

    #@63
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v16

    #@67
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v16

    #@6b
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v15

    #@6f
    .line 137
    :cond_3
    move-object/from16 v0, p0

    #@71
    iget-object v0, v0, Ljava/lang/ClassLoader;->proxyCache:Ljava/util/Map;

    #@73
    move-object/from16 v16, v0

    #@75
    monitor-enter v16

    #@76
    .line 138
    :try_start_0
    move-object/from16 v0, p0

    #@78
    iget-object v15, v0, Ljava/lang/ClassLoader;->proxyCache:Ljava/util/Map;

    #@7a
    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    move-result-object v13

    #@7e
    check-cast v13, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@80
    .line 139
    .local v13, "proxy":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v13, :cond_4

    #@82
    monitor-exit v16

    #@83
    .line 140
    return-object v13

    #@84
    :cond_4
    monitor-exit v16

    #@85
    .line 144
    const/4 v4, 0x0

    #@86
    .line 145
    .local v4, "commonPackageName":Ljava/lang/String;
    const/4 v15, 0x0

    #@87
    move-object/from16 v0, p1

    #@89
    array-length v0, v0

    #@8a
    move/from16 v16, v0

    #@8c
    .end local v4    # "commonPackageName":Ljava/lang/String;
    :goto_0
    move/from16 v0, v16

    #@8e
    if-ge v15, v0, :cond_b

    #@90
    aget-object v3, p1, v15

    #@92
    .line 146
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    #@95
    move-result v17

    #@96
    if-nez v17, :cond_5

    #@98
    .line 147
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@9a
    new-instance v16, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    move-object/from16 v0, v16

    #@a1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v16

    #@a5
    const-string/jumbo v17, " is not an interface"

    #@a8
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v16

    #@ac
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v16

    #@b0
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b3
    throw v15

    #@b4
    .line 137
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "proxy":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v15

    #@b5
    monitor-exit v16

    #@b6
    throw v15

    #@b7
    .line 149
    .restart local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "proxy":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    move-object/from16 v0, p0

    #@b9
    invoke-static {v0, v3}, Ljava/lang/reflect/Proxy;->isVisibleToClassLoader(Ljava/lang/ClassLoader;Ljava/lang/Class;)Z

    #@bc
    move-result v17

    #@bd
    if-nez v17, :cond_6

    #@bf
    .line 150
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@c1
    new-instance v16, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    move-object/from16 v0, v16

    #@c8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v16

    #@cc
    const-string/jumbo v17, " is not visible from class loader"

    #@cf
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v16

    #@d3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v16

    #@d7
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@da
    throw v15

    #@db
    .line 152
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    #@de
    move-result v17

    #@df
    invoke-static/range {v17 .. v17}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@e2
    move-result v17

    #@e3
    if-nez v17, :cond_9

    #@e5
    .line 153
    invoke-virtual {v3}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    #@e8
    move-result-object v12

    #@e9
    .line 154
    .local v12, "packageName":Ljava/lang/String;
    if-nez v12, :cond_7

    #@eb
    .line 155
    const-string/jumbo v12, ""

    #@ee
    .line 157
    :cond_7
    if-eqz v4, :cond_8

    #@f0
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f3
    move-result v17

    #@f4
    if-eqz v17, :cond_a

    #@f6
    .line 161
    :cond_8
    move-object v4, v12

    #@f7
    .line 145
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_9
    add-int/lit8 v15, v15, 0x1

    #@f9
    goto :goto_0

    #@fa
    .line 158
    .restart local v12    # "packageName":Ljava/lang/String;
    :cond_a
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@fc
    .line 159
    const-string/jumbo v16, "non-public interfaces must be in the same package"

    #@ff
    .line 158
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@102
    throw v15

    #@103
    .line 165
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_b
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Proxy;->getMethods([Ljava/lang/Class;)Ljava/util/List;

    #@106
    move-result-object v9

    #@107
    .line 166
    .local v9, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    sget-object v15, Ljava/lang/reflect/Proxy;->ORDER_BY_SIGNATURE_AND_SUBTYPE:Ljava/util/Comparator;

    #@109
    invoke-static {v9, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@10c
    .line 167
    invoke-static {v9}, Ljava/lang/reflect/Proxy;->validateReturnTypes(Ljava/util/List;)V

    #@10f
    .line 168
    invoke-static {v9}, Ljava/lang/reflect/Proxy;->deduplicateAndGetExceptions(Ljava/util/List;)Ljava/util/List;

    #@112
    move-result-object v5

    #@113
    .line 169
    .local v5, "exceptions":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Class<*>;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@116
    move-result v15

    #@117
    new-array v15, v15, [Ljava/lang/reflect/Method;

    #@119
    invoke-interface {v9, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11c
    move-result-object v10

    #@11d
    check-cast v10, [Ljava/lang/reflect/Method;

    #@11f
    .line 170
    .local v10, "methodsArray":[Ljava/lang/reflect/Method;
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@122
    move-result v15

    #@123
    new-array v15, v15, [[Ljava/lang/Class;

    #@125
    invoke-interface {v5, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@128
    move-result-object v6

    #@129
    check-cast v6, [[Ljava/lang/Class;

    #@12b
    .line 172
    .local v6, "exceptionsArray":[[Ljava/lang/Class;, "[[Ljava/lang/Class<*>;"
    if-eqz v4, :cond_c

    #@12d
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@130
    move-result v15

    #@131
    if-eqz v15, :cond_e

    #@133
    .line 174
    :cond_c
    const-string/jumbo v2, "$Proxy"

    #@136
    .line 177
    .local v2, "baseName":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    #@138
    iget-object v0, v0, Ljava/lang/ClassLoader;->proxyCache:Ljava/util/Map;

    #@13a
    move-object/from16 v16, v0

    #@13c
    monitor-enter v16

    #@13d
    .line 178
    :try_start_1
    move-object/from16 v0, p0

    #@13f
    iget-object v15, v0, Ljava/lang/ClassLoader;->proxyCache:Ljava/util/Map;

    #@141
    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@144
    move-result-object v14

    #@145
    check-cast v14, Ljava/lang/Class;

    #@147
    .line 179
    .local v14, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v14, :cond_d

    #@149
    .line 180
    new-instance v15, Ljava/lang/StringBuilder;

    #@14b
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@14e
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v15

    #@152
    sget v17, Ljava/lang/reflect/Proxy;->nextClassNameIndex:I

    #@154
    add-int/lit8 v18, v17, 0x1

    #@156
    sput v18, Ljava/lang/reflect/Proxy;->nextClassNameIndex:I

    #@158
    move/from16 v0, v17

    #@15a
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v15

    #@15e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@161
    move-result-object v11

    #@162
    .line 181
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    #@164
    move-object/from16 v1, p0

    #@166
    invoke-static {v11, v0, v1, v10, v6}, Ljava/lang/reflect/Proxy;->generateProxy(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/ClassLoader;[Ljava/lang/reflect/Method;[[Ljava/lang/Class;)Ljava/lang/Class;

    #@169
    move-result-object v14

    #@16a
    .line 182
    move-object/from16 v0, p0

    #@16c
    iget-object v15, v0, Ljava/lang/ClassLoader;->proxyCache:Ljava/util/Map;

    #@16e
    invoke-interface {v15, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@171
    .end local v11    # "name":Ljava/lang/String;
    :cond_d
    monitor-exit v16

    #@172
    .line 186
    return-object v14

    #@173
    .line 173
    .end local v2    # "baseName":Ljava/lang/String;
    .end local v14    # "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_e
    new-instance v15, Ljava/lang/StringBuilder;

    #@175
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@178
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v15

    #@17c
    const-string/jumbo v16, ".$Proxy"

    #@17f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v15

    #@183
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@186
    move-result-object v2

    #@187
    .restart local v2    # "baseName":Ljava/lang/String;
    goto :goto_1

    #@188
    .line 177
    :catchall_1
    move-exception v15

    #@189
    monitor-exit v16

    #@18a
    throw v15
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
    .line 362
    array-length v3, p0

    #@2
    if-eqz v3, :cond_0

    #@4
    array-length v3, p1

    #@5
    if-nez v3, :cond_1

    #@7
    .line 363
    :cond_0
    sget-object v3, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    #@9
    return-object v3

    #@a
    .line 365
    :cond_1
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_2

    #@10
    .line 366
    return-object p0

    #@11
    .line 368
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    #@13
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@16
    .line 369
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
    .line 370
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
    .line 371
    .local v1, "b":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@25
    move-result v8

    #@26
    if-eqz v8, :cond_4

    #@28
    .line 372
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2b
    .line 370
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 373
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@31
    move-result v8

    #@32
    if-eqz v8, :cond_3

    #@34
    .line 374
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@37
    goto :goto_2

    #@38
    .line 369
    .end local v1    # "b":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    add-int/lit8 v3, v5, 0x1

    #@3a
    move v5, v3

    #@3b
    goto :goto_0

    #@3c
    .line 378
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
    .line 392
    iget-object v0, p0, Ljava/lang/reflect/Proxy;->h:Ljava/lang/reflect/InvocationHandler;

    #@2
    .line 393
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
    .line 257
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isProxy()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static isVisibleToClassLoader(Ljava/lang/ClassLoader;Ljava/lang/Class;)Z
    .locals 5
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 191
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v3

    #@6
    if-eq p0, v3, :cond_0

    #@8
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    const/4 v4, 0x0

    #@d
    invoke-static {v3, v4, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v3

    #@11
    if-ne p1, v3, :cond_1

    #@13
    :cond_0
    :goto_0
    return v1

    #@14
    :cond_1
    move v1, v2

    #@15
    goto :goto_0

    #@16
    .line 192
    :catch_0
    move-exception v0

    #@17
    .line 193
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    return v2
.end method

.method public static newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .locals 10
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "invocationHandler"    # Ljava/lang/reflect/InvocationHandler;
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

    #@0
    .prologue
    .line 223
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    #@2
    .line 224
    new-instance v6, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v7, "invocationHandler == null"

    #@7
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v6

    #@b
    .line 228
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    #@e
    move-result-object v6

    #@f
    const/4 v7, 0x1

    #@10
    new-array v7, v7, [Ljava/lang/Class;

    #@12
    .line 229
    const-class v8, Ljava/lang/reflect/InvocationHandler;

    #@14
    const/4 v9, 0x0

    #@15
    aput-object v8, v7, v9

    #@17
    .line 228
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@1a
    move-result-object v6

    #@1b
    const/4 v7, 0x1

    #@1c
    new-array v7, v7, [Ljava/lang/Object;

    #@1e
    .line 230
    const/4 v8, 0x0

    #@1f
    aput-object p2, v7, v8

    #@21
    .line 228
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v6

    #@25
    return-object v6

    #@26
    .line 237
    :catch_0
    move-exception v4

    #@27
    .line 238
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v0, v4

    #@28
    .line 240
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    .local v0, "cause":Ljava/lang/Exception;
    :goto_0
    new-instance v5, Ljava/lang/AssertionError;

    #@2a
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@2d
    .line 241
    .local v5, "error":Ljava/lang/AssertionError;
    invoke-virtual {v5, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@30
    .line 242
    throw v5

    #@31
    .line 235
    .end local v0    # "cause":Ljava/lang/Exception;
    .end local v5    # "error":Ljava/lang/AssertionError;
    :catch_1
    move-exception v2

    #@32
    .line 236
    .local v2, "e":Ljava/lang/InstantiationException;
    move-object v0, v2

    #@33
    .restart local v0    # "cause":Ljava/lang/Exception;
    goto :goto_0

    #@34
    .line 233
    .end local v0    # "cause":Ljava/lang/Exception;
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    #@35
    .line 234
    .local v1, "e":Ljava/lang/IllegalAccessException;
    move-object v0, v1

    #@36
    .restart local v0    # "cause":Ljava/lang/Exception;
    goto :goto_0

    #@37
    .line 231
    .end local v0    # "cause":Ljava/lang/Exception;
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    #@38
    .line 232
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    move-object v0, v3

    #@39
    .restart local v0    # "cause":Ljava/lang/Exception;
    goto :goto_0
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
    .line 311
    .local p0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    const/4 v3, 0x0

    #@1
    .line 312
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
    .line 313
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_2

    #@13
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->equalNameAndParameters(Ljava/lang/reflect/Method;)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_2

    #@19
    .line 317
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@1c
    move-result-object v2

    #@1d
    .line 318
    .local v2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@20
    move-result-object v4

    #@21
    .line 319
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
    .line 321
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_3

    #@33
    .line 322
    move-object v3, v0

    #@34
    .local v3, "vs":Ljava/lang/reflect/Method;
    goto :goto_0

    #@35
    .line 314
    .end local v2    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "vs":Ljava/lang/reflect/Method;
    .end local v4    # "vsReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move-object v3, v0

    #@36
    .line 315
    .restart local v3    # "vs":Ljava/lang/reflect/Method;
    goto :goto_0

    #@37
    .line 323
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
    .line 324
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
    .line 325
    const-string/jumbo v7, "\n  "

    #@52
    .line 324
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
    .line 310
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "vsReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    return-void
.end method
