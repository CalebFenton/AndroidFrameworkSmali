.class Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;
.super Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
.source "AndroidFuture.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThenCombine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
        "TV;>;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/Object;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mCombineResults:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;"
        }
    .end annotation
.end field

.field private volatile blacklist mResultT:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile blacklist mSourceU:Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$jnvXu4pkfP0vWRevHeavhaSq9mQ(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;->lambda$accept$0(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)V"
        }
    .end annotation

    .line 441
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine<TT;TU;TV;>;"
    .local p1, "sourceT":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "sourceU":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p3, "combineResults":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    invoke-direct {p0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;-><init>()V

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;->mResultT:Ljava/lang/Object;

    .line 442
    invoke-static {p2}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletionStage;

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;->mSourceU:Ljava/util/concurrent/CompletionStage;

    .line 443
    invoke-static {p3}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/BiFunction;

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;->mCombineResults:Ljava/util/function/BiFunction;

    .line 445
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 446
    return-void
.end method

.method private synthetic blacklist lambda$accept$0(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 463
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine<TT;TU;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;->mSourceU:Ljava/util/concurrent/CompletionStage;

    .line 464
    invoke-virtual {p0, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;->accept(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 465
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 433
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine<TT;TU;TV;>;"
    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;->accept(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist accept(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "res"    # Ljava/lang/Object;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 450
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine<TT;TU;TV;>;"
    if-eqz p2, :cond_6

    .line 451
    invoke-virtual {p0, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 452
    return-void

    .line 455
    :cond_6
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;->mSourceU:Ljava/util/concurrent/CompletionStage;

    if-eqz v0, :cond_17

    .line 457
    iput-object p1, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;->mResultT:Ljava/lang/Object;

    .line 460
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;->mSourceU:Ljava/util/concurrent/CompletionStage;

    new-instance v1, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine$$ExternalSyntheticLambda0;-><init>(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/CompletionStage;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;

    goto :goto_27

    .line 469
    :cond_17
    :try_start_17
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;->mCombineResults:Ljava/util/function/BiFunction;

    iget-object v1, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;->mResultT:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;->complete(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_23

    .line 472
    goto :goto_27

    .line 470
    :catchall_23
    move-exception v0

    .line 471
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenCombine;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 474
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_27
    return-void
.end method
