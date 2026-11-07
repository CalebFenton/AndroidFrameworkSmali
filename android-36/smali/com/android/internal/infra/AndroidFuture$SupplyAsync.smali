.class Lcom/android/internal/infra/AndroidFuture$SupplyAsync;
.super Lcom/android/internal/infra/AndroidFuture;
.source "AndroidFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/AndroidFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SupplyAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/internal/infra/AndroidFuture<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final blacklist mSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 497
    .local p0, "this":Lcom/android/internal/infra/AndroidFuture$SupplyAsync;, "Lcom/android/internal/infra/AndroidFuture$SupplyAsync<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 498
    iput-object p1, p0, Lcom/android/internal/infra/AndroidFuture$SupplyAsync;->mSupplier:Ljava/util/function/Supplier;

    .line 499
    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 500
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 505
    .local p0, "this":Lcom/android/internal/infra/AndroidFuture$SupplyAsync;, "Lcom/android/internal/infra/AndroidFuture$SupplyAsync<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture$SupplyAsync;->mSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture$SupplyAsync;->complete(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 508
    goto :goto_e

    .line 506
    :catchall_a
    move-exception v0

    .line 507
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture$SupplyAsync;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 509
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_e
    return-void
.end method
