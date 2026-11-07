.class Landroid/app/UiModeManager$InnerListener;
.super Landroid/app/IOnProjectionStateChangedListener$Stub;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerListener"
.end annotation


# instance fields
.field private final blacklist mResourceManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "outerListener"    # Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    .param p3, "resourceManager"    # Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    .line 1445
    invoke-direct {p0}, Landroid/app/IOnProjectionStateChangedListener$Stub;-><init>()V

    .line 1446
    invoke-virtual {p3, p0, p1, p2}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->put(Landroid/app/UiModeManager$InnerListener;Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V

    .line 1447
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/UiModeManager$InnerListener;->mResourceManager:Ljava/lang/ref/WeakReference;

    .line 1448
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;Landroid/app/UiModeManager-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/UiModeManager$InnerListener;-><init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onProjectionStateChanged(ILjava/util/List;)V
    .registers 9
    .param p1, "activeProjectionTypes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1453
    .local p2, "projectingPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/UiModeManager$InnerListener;->mResourceManager:Ljava/lang/ref/WeakReference;

    .line 1454
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    .line 1455
    .local v0, "resourceManager":Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;
    const-string v1, "UiModeManager"

    if-nez v0, :cond_12

    .line 1456
    const-string v2, "Can\'t execute onProjectionStateChanged, resource manager is gone."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    return-void

    .line 1460
    :cond_12
    invoke-virtual {v0, p0}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->getOuterListener(Landroid/app/UiModeManager$InnerListener;)Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    move-result-object v2

    .line 1461
    .local v2, "outerListener":Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    invoke-virtual {v0, p0}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->getExecutor(Landroid/app/UiModeManager$InnerListener;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 1462
    .local v3, "executor":Ljava/util/concurrent/Executor;
    if-eqz v2, :cond_39

    if-nez v3, :cond_1f

    goto :goto_39

    .line 1467
    :cond_1f
    new-instance v1, Landroid/app/UiModeManager$InnerListener$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/UiModeManager$InnerListener$$ExternalSyntheticLambda0;-><init>()V

    .line 1470
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1467
    invoke-static {v1, v2, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 1471
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 1467
    invoke-interface {v3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1472
    return-void

    .line 1463
    :cond_39
    :goto_39
    const-string v4, "Can\'t execute onProjectionStatechanged, references are null."

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    return-void
.end method
