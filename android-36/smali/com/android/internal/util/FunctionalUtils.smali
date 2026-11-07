.class public Lcom/android/internal/util/FunctionalUtils;
.super Ljava/lang/Object;
.source "FunctionalUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedSupplier;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingBiConsumer;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;,
        Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getLambdaName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "function"    # Ljava/lang/Object;

    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "fullFunction":Ljava/lang/String;
    const-string v1, "-$$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 320
    .local v1, "endPkgIdx":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    return-object v0

    .line 323
    :cond_e
    add-int/lit8 v3, v1, 0x3

    const/16 v4, 0x24

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 324
    .local v3, "firstDollarIdx":I
    if-ne v3, v2, :cond_19

    return-object v0

    .line 326
    :cond_19
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 327
    .local v4, "endClassIdx":I
    const-string v5, "$Lambda"

    const/4 v6, 0x0

    if-ne v4, v2, :cond_3c

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 333
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v6, v3, 0x1

    .line 334
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 333
    return-object v2
.end method

.method public static greylist-max-o handleExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)Ljava/lang/Runnable;
    .registers 3
    .param p0, "r"    # Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 83
    .local p1, "handler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Throwable;>;"
    new-instance v0, Lcom/android/internal/util/FunctionalUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/FunctionalUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static greylist-max-o ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer<",
            "TT;>;)",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 75
    .local p0, "action":Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;, "Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer<TT;>;"
    return-object p0
.end method

.method static synthetic blacklist lambda$handleExceptions$0(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)V
    .registers 3
    .param p0, "r"    # Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;
    .param p1, "handler"    # Ljava/util/function/Consumer;

    .line 85
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 88
    goto :goto_8

    .line 86
    :catchall_4
    move-exception v0

    .line 87
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 89
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_8
    return-void
.end method

.method public static blacklist uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)Ljava/lang/Runnable;
    .registers 1
    .param p0, "action"    # Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;

    .line 54
    return-object p0
.end method

.method public static blacklist uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingBiConsumer;)Ljava/util/function/BiConsumer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingBiConsumer<",
            "TA;TB;>;)",
            "Ljava/util/function/BiConsumer<",
            "TA;TB;>;"
        }
    .end annotation

    .line 61
    .local p0, "action":Lcom/android/internal/util/FunctionalUtils$ThrowingBiConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingBiConsumer<TA;TB;>;"
    return-object p0
.end method

.method public static greylist-max-o uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)Ljava/util/function/Consumer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "TT;>;)",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 40
    .local p0, "action":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<TT;>;"
    return-object p0
.end method

.method public static blacklist uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Ljava/util/function/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "TI;TO;>;)",
            "Ljava/util/function/Function<",
            "TI;TO;>;"
        }
    .end annotation

    .line 47
    .local p0, "action":Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<TI;TO;>;"
    return-object p0
.end method

.method public static blacklist uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/util/function/Supplier;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
            "TT;>;)",
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 68
    .local p0, "action":Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;, "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<TT;>;"
    return-object p0
.end method
