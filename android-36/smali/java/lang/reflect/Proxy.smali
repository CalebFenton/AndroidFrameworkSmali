.class public Ljava/lang/reflect/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/reflect/Proxy$KeyFactory;,
        Ljava/lang/reflect/Proxy$ProxyClassFactory;,
        Ljava/lang/reflect/Proxy$KeyX;,
        Ljava/lang/reflect/Proxy$Key2;,
        Ljava/lang/reflect/Proxy$Key1;
    }
.end annotation


# static fields
.field private static final greylist-max-o ORDER_BY_SIGNATURE_AND_SUBTYPE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o constructorParams:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o key0:Ljava/lang/Object;

.field private static final greylist-max-o proxyClassCache:Ljava/lang/reflect/WeakCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/WeakCache<",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = -0x1ed825df33efbc35L


# instance fields
.field protected whitelist test-api h:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetORDER_BY_SIGNATURE_AND_SUBTYPE()Ljava/util/Comparator;
    .registers 1

    sget-object v0, Ljava/lang/reflect/Proxy;->ORDER_BY_SIGNATURE_AND_SUBTYPE:Ljava/util/Comparator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetkey0()Ljava/lang/Object;
    .registers 1

    sget-object v0, Ljava/lang/reflect/Proxy;->key0:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdeduplicateAndGetExceptions(Ljava/util/List;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Ljava/lang/reflect/Proxy;->deduplicateAndGetExceptions(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateProxy(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/ClassLoader;[Ljava/lang/reflect/Method;[[Ljava/lang/Class;)Ljava/lang/Class;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/reflect/Proxy;->generateProxy(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/ClassLoader;[Ljava/lang/reflect/Method;[[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetMethods([Ljava/lang/Class;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getMethods([Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateReturnTypes(Ljava/util/List;)V
    .registers 1

    invoke-static {p0}, Ljava/lang/reflect/Proxy;->validateReturnTypes(Ljava/util/List;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 244
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/reflect/InvocationHandler;

    aput-object v2, v0, v1

    sput-object v0, Ljava/lang/reflect/Proxy;->constructorParams:[Ljava/lang/Class;

    .line 251
    new-instance v0, Ljava/lang/reflect/WeakCache;

    new-instance v1, Ljava/lang/reflect/Proxy$KeyFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/reflect/Proxy$KeyFactory;-><init>(Ljava/lang/reflect/Proxy-IA;)V

    new-instance v3, Ljava/lang/reflect/Proxy$ProxyClassFactory;

    invoke-direct {v3, v2}, Ljava/lang/reflect/Proxy$ProxyClassFactory;-><init>(Ljava/lang/reflect/Proxy-IA;)V

    invoke-direct {v0, v1, v3}, Ljava/lang/reflect/WeakCache;-><init>(Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V

    sput-object v0, Ljava/lang/reflect/Proxy;->proxyClassCache:Ljava/lang/reflect/WeakCache;

    .line 444
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/lang/reflect/Proxy;->key0:Ljava/lang/Object;

    .line 578
    new-instance v0, Ljava/lang/reflect/Proxy$1;

    invoke-direct {v0}, Ljava/lang/reflect/Proxy$1;-><init>()V

    sput-object v0, Ljava/lang/reflect/Proxy;->ORDER_BY_SIGNATURE_AND_SUBTYPE:Ljava/util/Comparator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/reflect/InvocationHandler;)V
    .registers 2
    .param p1, "h"    # Ljava/lang/reflect/InvocationHandler;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iput-object p1, p0, Ljava/lang/reflect/Proxy;->h:Ljava/lang/reflect/InvocationHandler;

    .line 278
    return-void
.end method

.method private static greylist-max-o deduplicateAndGetExceptions(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 707
    .local p0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 709
    .local v0, "exceptions":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Class<*>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 710
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 711
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 713
    .local v3, "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-lez v1, :cond_41

    sget-object v4, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    invoke-interface {v4, v2, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_41

    .line 714
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Proxy;->intersectExceptions([Ljava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 715
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_46

    .line 717
    :cond_41
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    add-int/lit8 v1, v1, 0x1

    .line 720
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_46
    goto :goto_a

    .line 721
    .end local v1    # "i":I
    :cond_47
    return-object v0
.end method

.method private static native greylist-max-o generateProxy(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/ClassLoader;[Ljava/lang/reflect/Method;[[Ljava/lang/Class;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/reflect/Method;",
            "[[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .registers 3
    .param p0, "proxy"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 981
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 985
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Proxy;

    .line 986
    .local v0, "p":Ljava/lang/reflect/Proxy;
    iget-object v1, v0, Ljava/lang/reflect/Proxy;->h:Ljava/lang/reflect/InvocationHandler;

    .line 1000
    .local v1, "ih":Ljava/lang/reflect/InvocationHandler;
    return-object v1

    .line 982
    .end local v0    # "p":Ljava/lang/reflect/Proxy;
    .end local v1    # "ih":Ljava/lang/reflect/InvocationHandler;
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a proxy instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o getMethods([Ljava/lang/Class;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 777
    .local p0, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 779
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    :try_start_5
    const-class v1, Ljava/lang/Object;

    const-string v2, "equals"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    const-class v1, Ljava/lang/Object;

    const-string v2, "hashCode"

    sget-object v3, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    const-class v1, Ljava/lang/Object;

    const-string v2, "toString"

    sget-object v3, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_32} :catch_37

    .line 784
    nop

    .line 786
    invoke-static {p0, v0}, Ljava/lang/reflect/Proxy;->getMethodsRecursive([Ljava/lang/Class;Ljava/util/List;)V

    .line 787
    return-object v0

    .line 782
    :catch_37
    move-exception v1

    .line 783
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private static greylist-max-o getMethodsRecursive([Ljava/lang/Class;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 795
    .local p0, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    aget-object v2, p0, v1

    .line 796
    .local v2, "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/lang/reflect/Proxy;->getMethodsRecursive([Ljava/lang/Class;Ljava/util/List;)V

    .line 797
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 795
    .end local v2    # "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 799
    :cond_17
    return-void
.end method

.method public static varargs whitelist test-api getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 386
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Ljava/lang/reflect/Proxy;->getProxyClass0(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static varargs blacklist getProxyClass0(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 431
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p1

    const v1, 0xffff

    if-gt v0, v1, :cond_f

    .line 438
    sget-object v0, Ljava/lang/reflect/Proxy;->proxyClassCache:Ljava/lang/reflect/WeakCache;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/WeakCache;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 432
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interface limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o intersectExceptions([Ljava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 730
    .local p0, "aExceptions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "bExceptions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p0

    if-eqz v0, :cond_46

    array-length v0, p1

    if-nez v0, :cond_7

    goto :goto_46

    .line 733
    :cond_7
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 734
    return-object p0

    .line 736
    :cond_e
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 737
    .local v0, "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_39

    aget-object v4, p0, v3

    .line 738
    .local v4, "a":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v5, p1

    move v6, v2

    :goto_1c
    if-ge v6, v5, :cond_36

    aget-object v7, p1, v6

    .line 739
    .local v7, "b":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 740
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 741
    :cond_2a
    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 742
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 738
    .end local v7    # "b":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_33
    :goto_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 737
    .end local v4    # "a":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 746
    :cond_39
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    return-object v1

    .line 731
    .end local v0    # "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_46
    :goto_46
    sget-object v0, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    return-object v0
.end method

.method private static greylist-max-r invoke(Ljava/lang/reflect/Proxy;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "proxy"    # Ljava/lang/reflect/Proxy;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Ljava/lang/reflect/Proxy;->h:Ljava/lang/reflect/InvocationHandler;

    .line 1006
    .local v0, "h":Ljava/lang/reflect/InvocationHandler;
    invoke-interface {v0, p0, p1, p2}, Ljava/lang/reflect/InvocationHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api isProxyClass(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 957
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/reflect/Proxy;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Ljava/lang/reflect/Proxy;->proxyClassCache:Ljava/lang/reflect/WeakCache;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/WeakCache;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static whitelist test-api newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .registers 9
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "h"    # Ljava/lang/reflect/InvocationHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
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

    .line 859
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    invoke-virtual {p1}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 873
    .local v0, "intfs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, v0}, Ljava/lang/reflect/Proxy;->getProxyClass0(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 886
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_d
    sget-object v2, Ljava/lang/reflect/Proxy;->constructorParams:[Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 887
    .local v2, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v3, p2

    .line 888
    .local v3, "ih":Ljava/lang/reflect/InvocationHandler;
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_22

    .line 899
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 902
    :cond_22
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_2a} :catch_4d
    .catch Ljava/lang/InstantiationException; {:try_start_d .. :try_end_2a} :catch_4d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_2a} :catch_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_2a} :catch_2b

    return-object v4

    .line 912
    .end local v2    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "ih":Ljava/lang/reflect/InvocationHandler;
    :catch_2b
    move-exception v2

    .line 913
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 905
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_36
    move-exception v2

    .line 906
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 907
    .local v3, "t":Ljava/lang/Throwable;
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_43

    .line 908
    move-object v4, v3

    check-cast v4, Ljava/lang/RuntimeException;

    throw v4

    .line 910
    :cond_43
    new-instance v4, Ljava/lang/InternalError;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 903
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "t":Ljava/lang/Throwable;
    :catch_4d
    move-exception v2

    .line 904
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static greylist-max-o validateReturnTypes(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 757
    .local p0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    const/4 v0, 0x0

    .line 758
    .local v0, "vs":Ljava/lang/reflect/Method;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 759
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_61

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->equalNameAndParameters(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_61

    .line 763
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 764
    .local v3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 765
    .local v4, "vsReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_2f

    goto :goto_3d

    .line 767
    :cond_2f
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 768
    move-object v0, v2

    goto :goto_3d

    .line 769
    :cond_37
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 773
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "vsReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3d
    goto :goto_5

    .line 770
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v3    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "vsReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "proxied interface methods have incompatible return types:\n  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 760
    .end local v3    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "vsReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_61
    :goto_61
    move-object v0, v2

    .line 761
    goto :goto_5

    .line 774
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_63
    return-void
.end method
