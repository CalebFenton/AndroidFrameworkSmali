.class public final Ljava/util/random/RandomGeneratorFactory;
.super Ljava/lang/Object;
.source "RandomGeneratorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/random/RandomGenerator;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile blacklist ctor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist ctorBytes:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist ctorLong:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile blacklist properties:Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;

.field private final blacklist provider:Ljava/util/ServiceLoader$Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ServiceLoader$Provider<",
            "+",
            "Ljava/util/random/RandomGenerator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$BDa7JqTZ6xXcm5RbUzCWKaE-Oco(Ljava/util/ServiceLoader$Provider;)Ljava/util/random/RandomGeneratorFactory;
    .registers 2

    new-instance v0, Ljava/util/random/RandomGeneratorFactory;

    invoke-direct {v0, p0}, Ljava/util/random/RandomGeneratorFactory;-><init>(Ljava/util/ServiceLoader$Provider;)V

    return-object v0
.end method

.method private constructor blacklist <init>(Ljava/util/ServiceLoader$Provider;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ServiceLoader$Provider<",
            "+",
            "Ljava/util/random/RandomGenerator;",
            ">;)V"
        }
    .end annotation

    .line 197
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    .local p1, "provider":Ljava/util/ServiceLoader$Provider;, "Ljava/util/ServiceLoader$Provider<+Ljava/util/random/RandomGenerator;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Ljava/util/random/RandomGeneratorFactory;->provider:Ljava/util/ServiceLoader$Provider;

    .line 199
    return-void
.end method

.method public static whitelist test-api all()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGeneratorFactory<",
            "Ljava/util/random/RandomGenerator;",
            ">;>;"
        }
    .end annotation

    .line 427
    invoke-static {}, Ljava/util/random/RandomGeneratorFactory;->getFactoryMap()Ljava/util/Map;

    move-result-object v0

    .line 428
    .local v0, "fm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ServiceLoader$Provider<+Ljava/util/random/RandomGenerator;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 429
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Ljava/util/random/RandomGeneratorFactory$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/util/random/RandomGeneratorFactory$$ExternalSyntheticLambda1;-><init>()V

    .line 430
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Ljava/util/random/RandomGeneratorFactory$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Ljava/util/random/RandomGeneratorFactory$$ExternalSyntheticLambda2;-><init>()V

    .line 432
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 428
    return-object v1
.end method

.method private blacklist ensureConstructors()V
    .registers 2

    .line 375
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    iget-object v0, p0, Ljava/util/random/RandomGeneratorFactory;->provider:Ljava/util/ServiceLoader$Provider;

    invoke-interface {v0}, Ljava/util/ServiceLoader$Provider;->type()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/random/RandomGeneratorFactory;->getConstructors(Ljava/lang/Class;)V

    .line 376
    return-void
.end method

.method static blacklist factoryOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/random/RandomGeneratorFactory;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/random/RandomGenerator;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/random/RandomGeneratorFactory<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 314
    .local p1, "category":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Ljava/util/random/RandomGeneratorFactory;->findProvider(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ServiceLoader$Provider;

    move-result-object v0

    .line 315
    .local v0, "uncheckedProvider":Ljava/util/ServiceLoader$Provider;, "Ljava/util/ServiceLoader$Provider<+Ljava/util/random/RandomGenerator;>;"
    new-instance v1, Ljava/util/random/RandomGeneratorFactory;

    invoke-direct {v1, v0}, Ljava/util/random/RandomGeneratorFactory;-><init>(Ljava/util/ServiceLoader$Provider;)V

    return-object v1
.end method

.method private static blacklist findProvider(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ServiceLoader$Provider;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/random/RandomGenerator;",
            ">;)",
            "Ljava/util/ServiceLoader$Provider<",
            "+",
            "Ljava/util/random/RandomGenerator;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 265
    .local p1, "category":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/random/RandomGenerator;>;"
    invoke-static {}, Ljava/util/random/RandomGeneratorFactory;->getFactoryMap()Ljava/util/Map;

    move-result-object v0

    .line 266
    .local v0, "fm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ServiceLoader$Provider<+Ljava/util/random/RandomGenerator;>;>;"
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ServiceLoader$Provider;

    .line 267
    .local v1, "provider":Ljava/util/ServiceLoader$Provider;, "Ljava/util/ServiceLoader$Provider<+Ljava/util/random/RandomGenerator;>;"
    if-eqz v1, :cond_40

    .line 271
    invoke-static {p1, v1}, Ljava/util/random/RandomGeneratorFactory;->isSubclass(Ljava/lang/Class;Ljava/util/ServiceLoader$Provider;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 278
    return-object v1

    .line 272
    :cond_13
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The random number generator algorithm \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is not implemented with the interface \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 275
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 268
    :cond_40
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No implementation of the random number generator algorithm \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist getConstructors(Ljava/lang/Class;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/random/RandomGenerator;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    .local p1, "randomGeneratorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/random/RandomGenerator;>;"
    iget-object v0, p0, Ljava/util/random/RandomGeneratorFactory;->ctor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_73

    .line 325
    iget-object v0, p0, Ljava/util/random/RandomGeneratorFactory;->provider:Ljava/util/ServiceLoader$Provider;

    monitor-enter v0

    .line 326
    :try_start_7
    iget-object v1, p0, Ljava/util/random/RandomGeneratorFactory;->ctor:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_6e

    .line 327
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/random/RandomGeneratorFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Ljava/util/random/RandomGeneratorFactory$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_70

    .line 330
    .local v1, "ctorAction":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<[Ljava/lang/reflect/Constructor<*>;>;"
    :try_start_13
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Constructor;

    .line 332
    .local v2, "ctors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x0

    .line 333
    .local v3, "tmpCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v4, 0x0

    .line 334
    .local v4, "tmpCtorLong":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v5, 0x0

    .line 337
    .local v5, "tmpCtorBytes":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    array-length v6, v2

    const/4 v7, 0x0

    move v8, v7

    :goto_1f
    if-ge v8, v6, :cond_41

    aget-object v9, v2, v8

    .line 339
    .local v9, "ctorGeneric":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v10, v9

    .line 340
    .local v10, "ctorSpecific":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {v10}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 342
    .local v11, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v12, v11

    if-nez v12, :cond_2d

    .line 343
    move-object v3, v10

    goto :goto_3e

    .line 344
    :cond_2d
    array-length v12, v11

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3e

    .line 345
    aget-object v12, v11, v7

    .line 347
    .local v12, "argType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_39

    .line 348
    move-object v4, v10

    goto :goto_3e

    .line 349
    :cond_39
    const-class v13, [B

    if-ne v12, v13, :cond_3e

    .line 350
    move-object v5, v10

    .line 337
    .end local v9    # "ctorGeneric":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v10    # "ctorSpecific":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v11    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v12    # "argType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3e
    :goto_3e
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    .line 355
    :cond_41
    if-eqz v3, :cond_4a

    .line 360
    iput-object v5, p0, Ljava/util/random/RandomGeneratorFactory;->ctorBytes:Ljava/lang/reflect/Constructor;

    .line 361
    iput-object v4, p0, Ljava/util/random/RandomGeneratorFactory;->ctorLong:Ljava/lang/reflect/Constructor;

    .line 362
    iput-object v3, p0, Ljava/util/random/RandomGeneratorFactory;->ctor:Ljava/lang/reflect/Constructor;

    .line 365
    .end local v2    # "ctors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "tmpCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v4    # "tmpCtorLong":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v5    # "tmpCtorBytes":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    goto :goto_6e

    .line 356
    .restart local v2    # "ctors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .restart local v3    # "tmpCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .restart local v4    # "tmpCtorLong":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .restart local v5    # "tmpCtorBytes":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :cond_4a
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Random algorithm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/util/random/RandomGeneratorFactory;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is missing a default constructor"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ctorAction":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<[Ljava/lang/reflect/Constructor<*>;>;"
    .end local p0    # "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    .end local p1    # "randomGeneratorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/random/RandomGenerator;>;"
    throw v6
    :try_end_6d
    .catch Ljava/security/PrivilegedActionException; {:try_start_13 .. :try_end_6d} :catch_6d
    .catchall {:try_start_13 .. :try_end_6d} :catchall_70

    .line 363
    .end local v2    # "ctors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "tmpCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v4    # "tmpCtorLong":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v5    # "tmpCtorBytes":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .restart local v1    # "ctorAction":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<[Ljava/lang/reflect/Constructor<*>;>;"
    .restart local p0    # "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    .restart local p1    # "randomGeneratorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/random/RandomGenerator;>;"
    :catch_6d
    move-exception v2

    .line 367
    .end local v1    # "ctorAction":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<[Ljava/lang/reflect/Constructor<*>;>;"
    :cond_6e
    :goto_6e
    :try_start_6e
    monitor-exit v0

    goto :goto_73

    :catchall_70
    move-exception v1

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_70

    throw v1

    .line 369
    :cond_73
    :goto_73
    return-void
.end method

.method public static whitelist test-api getDefault()Ljava/util/random/RandomGeneratorFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/random/RandomGeneratorFactory<",
            "Ljava/util/random/RandomGenerator;",
            ">;"
        }
    .end annotation

    .line 413
    const-string v0, "L32X64MixRandom"

    const-class v1, Ljava/util/random/RandomGenerator;

    invoke-static {v0, v1}, Ljava/util/random/RandomGeneratorFactory;->factoryOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/random/RandomGeneratorFactory;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getFactoryMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ServiceLoader$Provider<",
            "+",
            "Ljava/util/random/RandomGenerator;",
            ">;>;"
        }
    .end annotation

    .line 207
    sget-object v0, Ljava/util/random/RandomGeneratorFactory$FactoryMapHolder;->FACTORY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method private blacklist getProperties()Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
    .registers 5

    .line 216
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    iget-object v0, p0, Ljava/util/random/RandomGeneratorFactory;->properties:Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;

    if-nez v0, :cond_3e

    .line 217
    iget-object v0, p0, Ljava/util/random/RandomGeneratorFactory;->provider:Ljava/util/ServiceLoader$Provider;

    monitor-enter v0

    .line 218
    :try_start_7
    iget-object v1, p0, Ljava/util/random/RandomGeneratorFactory;->properties:Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;

    if-nez v1, :cond_39

    .line 219
    iget-object v1, p0, Ljava/util/random/RandomGeneratorFactory;->provider:Ljava/util/ServiceLoader$Provider;

    invoke-interface {v1}, Ljava/util/ServiceLoader$Provider;->type()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;

    iput-object v1, p0, Ljava/util/random/RandomGeneratorFactory;->properties:Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;

    .line 220
    iget-object v1, p0, Ljava/util/random/RandomGeneratorFactory;->properties:Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/util/random/RandomGeneratorFactory;->provider:Ljava/util/ServiceLoader$Provider;

    invoke-interface {v3}, Ljava/util/ServiceLoader$Provider;->type()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " missing annotation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 222
    :cond_39
    monitor-exit v0

    goto :goto_3e

    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3b

    throw v1

    .line 225
    :cond_3e
    :goto_3e
    iget-object v0, p0, Ljava/util/random/RandomGeneratorFactory;->properties:Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;

    return-object v0
.end method

.method private blacklist isSubclass(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/random/RandomGenerator;",
            ">;)Z"
        }
    .end annotation

    .line 236
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    .local p1, "category":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/random/RandomGenerator;>;"
    iget-object v0, p0, Ljava/util/random/RandomGeneratorFactory;->provider:Ljava/util/ServiceLoader$Provider;

    invoke-static {p1, v0}, Ljava/util/random/RandomGeneratorFactory;->isSubclass(Ljava/lang/Class;Ljava/util/ServiceLoader$Provider;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isSubclass(Ljava/lang/Class;Ljava/util/ServiceLoader$Provider;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/random/RandomGenerator;",
            ">;",
            "Ljava/util/ServiceLoader$Provider<",
            "+",
            "Ljava/util/random/RandomGenerator;",
            ">;)Z"
        }
    .end annotation

    .line 249
    .local p0, "category":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/random/RandomGenerator;>;"
    .local p1, "provider":Ljava/util/ServiceLoader$Provider;, "Ljava/util/ServiceLoader$Provider<+Ljava/util/random/RandomGenerator;>;"
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/ServiceLoader$Provider;->type()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic blacklist lambda$all$0(Ljava/util/ServiceLoader$Provider;)Z
    .registers 3
    .param p0, "p"    # Ljava/util/ServiceLoader$Provider;

    .line 430
    invoke-interface {p0}, Ljava/util/ServiceLoader$Provider;->type()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Deprecated;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 431
    invoke-interface {p0}, Ljava/util/ServiceLoader$Provider;->type()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 430
    :goto_1b
    return v0
.end method

.method static blacklist of(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/random/RandomGenerator;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/random/RandomGenerator;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 296
    .local p1, "category":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Ljava/util/random/RandomGeneratorFactory;->findProvider(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ServiceLoader$Provider;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ServiceLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/random/RandomGenerator;

    .line 297
    .local v0, "uncheckedRandomGenerator":Ljava/util/random/RandomGenerator;, "TT;"
    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/String;)Ljava/util/random/RandomGeneratorFactory;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/random/RandomGenerator;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/random/RandomGeneratorFactory<",
            "TT;>;"
        }
    .end annotation

    .line 396
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-class v0, Ljava/util/random/RandomGenerator;

    .line 399
    invoke-static {p0, v0}, Ljava/util/random/RandomGeneratorFactory;->factoryOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/random/RandomGeneratorFactory;

    move-result-object v0

    .line 400
    .local v0, "factory":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    return-object v0
.end method


# virtual methods
.method public whitelist test-api create()Ljava/util/random/RandomGenerator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 606
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    :try_start_0
    invoke-direct {p0}, Ljava/util/random/RandomGeneratorFactory;->ensureConstructors()V

    .line 607
    iget-object v0, p0, Ljava/util/random/RandomGeneratorFactory;->ctor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/random/RandomGenerator;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 608
    :catch_f
    move-exception v0

    .line 610
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Random algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/random/RandomGeneratorFactory;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is missing a default constructor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api create(J)Ljava/util/random/RandomGenerator;
    .registers 5
    .param p1, "seed"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 626
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    :try_start_0
    invoke-direct {p0}, Ljava/util/random/RandomGeneratorFactory;->ensureConstructors()V

    .line 627
    iget-object v0, p0, Ljava/util/random/RandomGeneratorFactory;->ctorLong:Ljava/lang/reflect/Constructor;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/random/RandomGenerator;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    .line 628
    :catch_14
    move-exception v0

    .line 629
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/util/random/RandomGeneratorFactory;->create()Ljava/util/random/RandomGenerator;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api create([B)Ljava/util/random/RandomGenerator;
    .registers 4
    .param p1, "seed"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 647
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    const-string v0, "seed must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 649
    :try_start_5
    invoke-direct {p0}, Ljava/util/random/RandomGeneratorFactory;->ensureConstructors()V

    .line 650
    iget-object v0, p0, Ljava/util/random/RandomGeneratorFactory;->ctorBytes:Ljava/lang/reflect/Constructor;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/random/RandomGenerator;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_15

    return-object v0

    .line 651
    :catch_15
    move-exception v0

    .line 652
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/util/random/RandomGeneratorFactory;->create()Ljava/util/random/RandomGenerator;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api equidistribution()I
    .registers 2

    .line 476
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    invoke-direct {p0}, Ljava/util/random/RandomGeneratorFactory;->getProperties()Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;

    move-result-object v0

    invoke-interface {v0}, Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;->equidistribution()I

    move-result v0

    return v0
.end method

.method public whitelist test-api group()Ljava/lang/String;
    .registers 2

    .line 452
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    invoke-direct {p0}, Ljava/util/random/RandomGeneratorFactory;->getProperties()Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;

    move-result-object v0

    invoke-interface {v0}, Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;->group()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isArbitrarilyJumpable()Z
    .registers 2

    .line 537
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    const-class v0, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    invoke-direct {p0, v0}, Ljava/util/random/RandomGeneratorFactory;->isSubclass(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isDeprecated()Z
    .registers 3

    .line 594
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    iget-object v0, p0, Ljava/util/random/RandomGeneratorFactory;->provider:Ljava/util/ServiceLoader$Provider;

    invoke-interface {v0}, Ljava/util/ServiceLoader$Provider;->type()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Deprecated;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isHardware()Z
    .registers 2

    .line 527
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    invoke-direct {p0}, Ljava/util/random/RandomGeneratorFactory;->getProperties()Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;

    move-result-object v0

    invoke-interface {v0}, Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;->isHardware()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isJumpable()Z
    .registers 2

    .line 547
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    const-class v0, Ljava/util/random/RandomGenerator$JumpableGenerator;

    invoke-direct {p0, v0}, Ljava/util/random/RandomGeneratorFactory;->isSubclass(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isLeapable()Z
    .registers 2

    .line 557
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    const-class v0, Ljava/util/random/RandomGenerator$LeapableGenerator;

    invoke-direct {p0, v0}, Ljava/util/random/RandomGeneratorFactory;->isSubclass(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isSplittable()Z
    .registers 2

    .line 567
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    const-class v0, Ljava/util/random/RandomGenerator$SplittableGenerator;

    invoke-direct {p0, v0}, Ljava/util/random/RandomGeneratorFactory;->isSubclass(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isStatistical()Z
    .registers 2

    .line 507
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    invoke-direct {p0}, Ljava/util/random/RandomGeneratorFactory;->getProperties()Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;

    move-result-object v0

    invoke-interface {v0}, Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;->isStochastic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api isStochastic()Z
    .registers 2

    .line 517
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    invoke-direct {p0}, Ljava/util/random/RandomGeneratorFactory;->getProperties()Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;

    move-result-object v0

    invoke-interface {v0}, Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;->isStochastic()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isStreamable()Z
    .registers 2

    .line 577
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    const-class v0, Ljava/util/random/RandomGenerator$StreamableGenerator;

    invoke-direct {p0, v0}, Ljava/util/random/RandomGeneratorFactory;->isSubclass(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 442
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    iget-object v0, p0, Ljava/util/random/RandomGeneratorFactory;->provider:Ljava/util/ServiceLoader$Provider;

    invoke-interface {v0}, Ljava/util/ServiceLoader$Provider;->type()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api period()Ljava/math/BigInteger;
    .registers 8

    .line 487
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    invoke-direct {p0}, Ljava/util/random/RandomGeneratorFactory;->getProperties()Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;

    move-result-object v0

    .line 488
    .local v0, "properties":Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
    invoke-interface {v0}, Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;->i()I

    move-result v1

    .line 489
    .local v1, "i":I
    invoke-interface {v0}, Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;->j()I

    move-result v2

    .line 490
    .local v2, "j":I
    invoke-interface {v0}, Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;->k()I

    move-result v3

    .line 492
    .local v3, "k":I
    if-nez v1, :cond_19

    if-nez v2, :cond_19

    if-nez v3, :cond_19

    .line 493
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v4

    .line 495
    :cond_19
    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    return-object v4
.end method

.method public whitelist test-api stateBits()I
    .registers 5

    .line 463
    .local p0, "this":Ljava/util/random/RandomGeneratorFactory;, "Ljava/util/random/RandomGeneratorFactory<TT;>;"
    invoke-direct {p0}, Ljava/util/random/RandomGeneratorFactory;->getProperties()Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;

    move-result-object v0

    .line 464
    .local v0, "properties":Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
    invoke-interface {v0}, Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;->i()I

    move-result v1

    .line 465
    .local v1, "i":I
    invoke-interface {v0}, Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;->k()I

    move-result v2

    .line 467
    .local v2, "k":I
    if-nez v1, :cond_14

    if-nez v2, :cond_14

    const v3, 0x7fffffff

    goto :goto_16

    :cond_14
    add-int v3, v1, v2

    :goto_16
    return v3
.end method
