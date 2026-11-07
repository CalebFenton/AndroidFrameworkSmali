.class public Lcom/android/internal/app/ResolverAppPredictorCallback;
.super Ljava/lang/Object;
.source "ResolverAppPredictorCallback.java"


# instance fields
.field private volatile blacklist mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$qbTVKTk6w2-ZrBaV4rh2e_qhItU(Lcom/android/internal/app/ResolverAppPredictorCallback;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverAppPredictorCallback;->notifyCallback(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vLeHTAEQ6S4LwwQ74k6efn8Yu7s(Lcom/android/internal/app/ResolverAppPredictorCallback;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverAppPredictorCallback;->notifyCallback(Ljava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;)V"
        }
    .end annotation

    .line 33
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/prediction/AppTarget;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/app/ResolverAppPredictorCallback;->mCallback:Ljava/util/function/Consumer;

    .line 35
    return-void
.end method

.method private blacklist notifyCallback(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    iget-object v0, p0, Lcom/android/internal/app/ResolverAppPredictorCallback;->mCallback:Ljava/util/function/Consumer;

    .line 39
    .local v0, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/prediction/AppTarget;>;>;"
    if-eqz v0, :cond_12

    .line 40
    new-instance v1, Lcom/android/internal/app/ResolverAppPredictorCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/app/ResolverAppPredictorCallback$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 42
    :cond_12
    return-void
.end method


# virtual methods
.method public blacklist asCallback()Landroid/app/prediction/AppPredictor$Callback;
    .registers 2

    .line 49
    new-instance v0, Lcom/android/internal/app/ResolverAppPredictorCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverAppPredictorCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ResolverAppPredictorCallback;)V

    return-object v0
.end method

.method public blacklist asConsumer()Ljava/util/function/Consumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/android/internal/app/ResolverAppPredictorCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverAppPredictorCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ResolverAppPredictorCallback;)V

    return-object v0
.end method

.method public blacklist destroy()V
    .registers 2

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverAppPredictorCallback;->mCallback:Ljava/util/function/Consumer;

    .line 54
    return-void
.end method
