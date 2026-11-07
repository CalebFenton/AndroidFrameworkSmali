.class public final Ljava/util/ServiceLoader;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ServiceLoader$LazyClassPathLookupIterator;,
        Ljava/util/ServiceLoader$ProviderSpliterator;,
        Ljava/util/ServiceLoader$ProviderImpl;,
        Ljava/util/ServiceLoader$Provider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final blacklist instantiatedProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation
.end field

.field private blacklist loadedAllProviders:Z

.field private final blacklist loadedProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/ServiceLoader$Provider<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o loader:Ljava/lang/ClassLoader;

.field private blacklist lookupIterator1:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/ServiceLoader$Provider<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field private blacklist lookupIterator2:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/ServiceLoader$Provider<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field private blacklist reloadCount:I

.field private final greylist-max-o service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetinstantiatedProviders(Ljava/util/ServiceLoader;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Ljava/util/ServiceLoader;->instantiatedProviders:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetloadedProviders(Ljava/util/ServiceLoader;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Ljava/util/ServiceLoader;->loadedProviders:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetloader(Ljava/util/ServiceLoader;)Ljava/lang/ClassLoader;
    .registers 1

    iget-object p0, p0, Ljava/util/ServiceLoader;->loader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlookupIterator1(Ljava/util/ServiceLoader;)Ljava/util/Iterator;
    .registers 1

    iget-object p0, p0, Ljava/util/ServiceLoader;->lookupIterator1:Ljava/util/Iterator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetreloadCount(Ljava/util/ServiceLoader;)I
    .registers 1

    iget p0, p0, Ljava/util/ServiceLoader;->reloadCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetservice(Ljava/util/ServiceLoader;)Ljava/lang/Class;
    .registers 1

    iget-object p0, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputloadedAllProviders(Ljava/util/ServiceLoader;Z)V
    .registers 2

    iput-boolean p1, p0, Ljava/util/ServiceLoader;->loadedAllProviders:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetConstructor(Ljava/util/ServiceLoader;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/ServiceLoader;->getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfail(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smfail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smfail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p3, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 405
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    .local p1, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "svc":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/ServiceLoader;->instantiatedProviders:Ljava/util/List;

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/ServiceLoader;->loadedProviders:Ljava/util/List;

    .line 406
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-static {}, Ljdk/internal/misc/VM;->isBooted()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 409
    invoke-static {p1, p2}, Ljava/util/ServiceLoader;->checkCaller(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 410
    if-nez p3, :cond_25

    .line 411
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    goto :goto_25

    .line 429
    :cond_24
    const/4 p3, 0x0

    .line 432
    :cond_25
    :goto_25
    iput-object p2, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    .line 436
    iput-object p3, p0, Ljava/util/ServiceLoader;->loader:Ljava/lang/ClassLoader;

    .line 443
    return-void
.end method

.method private static blacklist checkCaller(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 476
    .local p0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "svc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_7

    .line 477
    const-string v0, "no caller to check if it declares `uses`"

    invoke-static {p1, v0}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    .line 482
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 483
    .local v0, "mods":I
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Ljdk/internal/reflect/Reflection;->verifyMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service type not accessible to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    .line 497
    :cond_28
    return-void
.end method

.method private static greylist-max-o fail(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    .line 509
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ServiceConfigurationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    .line 502
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ServiceConfigurationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static greylist-max-o fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V
    .registers 6
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "line"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/net/URL;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    .line 515
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method private blacklist getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 582
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ServiceLoader$1;

    invoke-direct {v0, p0, p1}, Ljava/util/ServiceLoader$1;-><init>(Ljava/util/ServiceLoader;Ljava/lang/Class;)V

    .line 593
    .local v0, "pa":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<Ljava/lang/reflect/Constructor<*>;>;"
    const/4 v1, 0x0

    .line 595
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_e

    move-object v1, v2

    .line 601
    goto :goto_33

    .line 596
    :catchall_e
    move-exception v2

    .line 597
    .local v2, "x":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/security/PrivilegedActionException;

    if-eqz v3, :cond_17

    .line 598
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 599
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, "cn":Ljava/lang/String;
    iget-object v4, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Unable to get public no-arg constructor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 602
    .end local v2    # "x":Ljava/lang/Throwable;
    .end local v3    # "cn":Ljava/lang/String;
    :goto_33
    return-object v1
.end method

.method public static whitelist test-api load(Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)",
            "Ljava/util/ServiceLoader<",
            "TS;>;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 1613
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1614
    .local v0, "cl":Ljava/lang/ClassLoader;
    new-instance v1, Ljava/util/ServiceLoader;

    invoke-static {}, Ljdk/internal/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Ljava/util/ServiceLoader;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-object v1
.end method

.method public static whitelist test-api load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/ServiceLoader<",
            "TS;>;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 1571
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    new-instance v0, Ljava/util/ServiceLoader;

    invoke-static {}, Ljdk/internal/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Ljava/util/ServiceLoader;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static greylist-max-o loadFromSystemProperty(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    .line 1777
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1778
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 1779
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1780
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_19

    return-object v2

    .line 1782
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_17
    const/4 v1, 0x0

    return-object v1

    .line 1783
    .end local v0    # "className":Ljava/lang/String;
    :catch_19
    move-exception v0

    .line 1784
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist test-api loadInstalled(Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)",
            "Ljava/util/ServiceLoader<",
            "TS;>;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 1649
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1650
    .local v0, "cl":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 1651
    .local v1, "prev":Ljava/lang/ClassLoader;
    :goto_5
    if-eqz v0, :cond_d

    .line 1652
    move-object v1, v0

    .line 1653
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_5

    .line 1655
    :cond_d
    new-instance v2, Ljava/util/ServiceLoader;

    invoke-static {}, Ljdk/internal/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1}, Ljava/util/ServiceLoader;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-object v2
.end method

.method private blacklist newLookupIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/ServiceLoader$Provider<",
            "TS;>;>;"
        }
    .end annotation

    .line 1296
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    new-instance v0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;

    invoke-direct {v0, p0}, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;-><init>(Ljava/util/ServiceLoader;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api findFirst()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TS;>;"
        }
    .end annotation

    .line 1735
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    invoke-virtual {p0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1736
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TS;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1737
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 1739
    :cond_13
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TS;>;"
        }
    .end annotation

    .line 1341
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    iget-object v0, p0, Ljava/util/ServiceLoader;->lookupIterator1:Ljava/util/Iterator;

    if-nez v0, :cond_a

    .line 1342
    invoke-direct {p0}, Ljava/util/ServiceLoader;->newLookupIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ServiceLoader;->lookupIterator1:Ljava/util/Iterator;

    .line 1345
    :cond_a
    new-instance v0, Ljava/util/ServiceLoader$2;

    invoke-direct {v0, p0}, Ljava/util/ServiceLoader$2;-><init>(Ljava/util/ServiceLoader;)V

    return-object v0
.end method

.method public whitelist test-api reload()V
    .registers 3

    .line 1756
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/ServiceLoader;->lookupIterator1:Ljava/util/Iterator;

    .line 1757
    iget-object v1, p0, Ljava/util/ServiceLoader;->instantiatedProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1759
    iput-object v0, p0, Ljava/util/ServiceLoader;->lookupIterator2:Ljava/util/Iterator;

    .line 1760
    iget-object v0, p0, Ljava/util/ServiceLoader;->loadedProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1761
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/ServiceLoader;->loadedAllProviders:Z

    .line 1764
    iget v0, p0, Ljava/util/ServiceLoader;->reloadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ServiceLoader;->reloadCount:I

    .line 1765
    return-void
.end method

.method public whitelist test-api stream()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/ServiceLoader$Provider<",
            "TS;>;>;"
        }
    .end annotation

    .line 1429
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    iget-boolean v0, p0, Ljava/util/ServiceLoader;->loadedAllProviders:Z

    if-eqz v0, :cond_b

    .line 1430
    iget-object v0, p0, Ljava/util/ServiceLoader;->loadedProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 1434
    :cond_b
    iget-object v0, p0, Ljava/util/ServiceLoader;->lookupIterator2:Ljava/util/Iterator;

    if-nez v0, :cond_15

    .line 1435
    invoke-direct {p0}, Ljava/util/ServiceLoader;->newLookupIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ServiceLoader;->lookupIterator2:Ljava/util/Iterator;

    .line 1439
    :cond_15
    new-instance v0, Ljava/util/ServiceLoader$ProviderSpliterator;

    iget-object v1, p0, Ljava/util/ServiceLoader;->lookupIterator2:Ljava/util/Iterator;

    invoke-direct {v0, p0, v1}, Ljava/util/ServiceLoader$ProviderSpliterator;-><init>(Ljava/util/ServiceLoader;Ljava/util/Iterator;)V

    .line 1440
    .local v0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/util/ServiceLoader$Provider<TS;>;>;"
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1795
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "java.util.ServiceLoader["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
