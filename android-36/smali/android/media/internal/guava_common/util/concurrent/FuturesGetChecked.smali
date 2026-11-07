.class final Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked;
.super Ljava/lang/Object;
.source "FuturesGetChecked.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;,
        Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;
    }
.end annotation


# static fields
.field private static final blacklist ORDERING_BY_CONSTRUCTOR_PARAMETER_LIST:Landroid/media/internal/guava_common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/Ordering<",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static final blacklist WITH_STRING_PARAM_THEN_WITH_THROWABLE_PARAM:Landroid/media/internal/guava_common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/Ordering<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$5Sg4qe4UM-W_wi_MccwScxeU6C4(Ljava/lang/reflect/Constructor;)Ljava/util/List;
    .registers 1

    .line 226
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$CzTLjLkoK6UatzjHCc5rIEsndsg(Ljava/util/List;)Ljava/lang/Comparable;
    .registers 2

    .line 222
    const-class v0, Ljava/lang/Throwable;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$G5KNaFm1uyzsb8h05X195wdTxPE(Ljava/util/List;)Ljava/lang/Comparable;
    .registers 2

    .line 219
    const-class v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 218
    invoke-static {}, Landroid/media/internal/guava_common/collect/Ordering;->natural()Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object v0

    new-instance v1, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$$ExternalSyntheticLambda0;-><init>()V

    .line 219
    invoke-virtual {v0, v1}, Landroid/media/internal/guava_common/collect/Ordering;->onResultOf(Landroid/media/internal/guava_common/base/Function;)Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object v0

    .line 221
    invoke-static {}, Landroid/media/internal/guava_common/collect/Ordering;->natural()Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object v1

    new-instance v2, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$$ExternalSyntheticLambda1;-><init>()V

    .line 222
    invoke-virtual {v1, v2}, Landroid/media/internal/guava_common/collect/Ordering;->onResultOf(Landroid/media/internal/guava_common/base/Function;)Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Landroid/media/internal/guava_common/collect/Ordering;->compound(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/Ordering;->reverse()Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object v0

    sput-object v0, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked;->ORDERING_BY_CONSTRUCTOR_PARAMETER_LIST:Landroid/media/internal/guava_common/collect/Ordering;

    .line 224
    new-instance v1, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$$ExternalSyntheticLambda2;-><init>()V

    .line 225
    invoke-virtual {v0, v1}, Landroid/media/internal/guava_common/collect/Ordering;->onResultOf(Landroid/media/internal/guava_common/base/Function;)Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object v0

    sput-object v0, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked;->WITH_STRING_PARAM_THEN_WITH_THROWABLE_PARAM:Landroid/media/internal/guava_common/collect/Ordering;

    return-void
.end method

.method static blacklist checkExceptionClassValidity(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 260
    invoke-static {p0}, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked;->isCheckedException(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "Futures.getChecked exception type (%s) must not be a RuntimeException"

    .line 259
    invoke-static {v0, v1, p0}, Landroid/media/internal/guava_common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 264
    invoke-static {p0}, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked;->hasConstructorUsableByGetChecked(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "Futures.getChecked exception type (%s) must be an accessible class with an accessible constructor whose parameters (if any) must be of type String and/or Throwable"

    .line 263
    invoke-static {v0, v1, p0}, Landroid/media/internal/guava_common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static blacklist getChecked(Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;)TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-interface {p0, p2}, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;->validateClass(Ljava/lang/Class;)V

    .line 60
    :try_start_3
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_7} :catch_16
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked;->wrapAndThrowExceptionOrError(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 66
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :catch_16
    move-exception p0

    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 63
    invoke-static {p2, p0}, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked;->newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0
.end method

.method private static blacklist hasConstructorUsableByGetChecked(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;)Z"
        }
    .end annotation

    .line 184
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p0, v0}, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked;->newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_a

    const/4 p0, 0x1

    return p0

    :catchall_a
    const/4 p0, 0x0

    return p0
.end method

.method static blacklist isCheckedException(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;)Z"
        }
    .end annotation

    .line 254
    const-class v0, Ljava/lang/RuntimeException;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static blacklist newFromConstructor(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TX;>;",
            "Ljava/lang/Throwable;",
            ")TX;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 230
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 231
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 232
    :goto_8
    array-length v3, v0

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2b

    .line 233
    aget-object v3, v0, v2

    .line 234
    const-class v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 235
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_27

    .line 236
    :cond_1d
    const-class v5, Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 237
    aput-object p1, v1, v2

    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2a
    return-object v4

    .line 243
    :cond_2b
    :try_start_2b
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_2f} :catch_30
    .catch Ljava/lang/InstantiationException; {:try_start_2b .. :try_end_2f} :catch_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_2f} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_2f} :catch_30

    return-object p0

    :catch_30
    return-object v4
.end method

.method private static blacklist newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Ljava/lang/Throwable;",
            ")TX;"
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 195
    invoke-static {v0}, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked;->preferringStringsThenThrowables(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 196
    invoke-static {v1, p1}, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked;->newFromConstructor(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    if-eqz v1, :cond_10

    .line 198
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2d

    .line 199
    invoke-virtual {v1, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_2d
    return-object v1

    .line 204
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No appropriate constructor for exception of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in response to chained exception"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static blacklist preferringStringsThenThrowables(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "TX;>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "TX;>;>;"
        }
    .end annotation

    .line 213
    sget-object v0, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked;->WITH_STRING_PARAM_THEN_WITH_THROWABLE_PARAM:Landroid/media/internal/guava_common/collect/Ordering;

    invoke-virtual {v0, p0}, Landroid/media/internal/guava_common/collect/Ordering;->sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static blacklist weakSetValidator()Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;
    .registers 1

    .line 101
    sget-object v0, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder$WeakSetValidator;->INSTANCE:Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder$WeakSetValidator;

    return-object v0
.end method

.method private static blacklist wrapAndThrowExceptionOrError(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TX;>;)V^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_13

    .line 170
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_e

    .line 171
    new-instance p1, Landroid/media/internal/guava_common/util/concurrent/UncheckedExecutionException;

    invoke-direct {p1, p0}, Landroid/media/internal/guava_common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 173
    :cond_e
    invoke-static {p1, p0}, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked;->newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    .line 168
    :cond_13
    new-instance p1, Landroid/media/internal/guava_common/util/concurrent/ExecutionError;

    check-cast p0, Ljava/lang/Error;

    invoke-direct {p1, p0}, Landroid/media/internal/guava_common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw p1
.end method
