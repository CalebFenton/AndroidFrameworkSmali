.class Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;
.super Ljava/lang/Object;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnProjectionStateChangedListenerResourceManager"
.end annotation


# instance fields
.field private final blacklist mExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/UiModeManager$InnerListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOuterListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/UiModeManager$InnerListener;",
            "Landroid/app/UiModeManager$OnProjectionStateChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 1480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1481
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mOuterListenerMap:Ljava/util/Map;

    .line 1483
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mExecutorMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/UiModeManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getExecutor(Landroid/app/UiModeManager$InnerListener;)Ljava/util/concurrent/Executor;
    .registers 3
    .param p1, "innerListener"    # Landroid/app/UiModeManager$InnerListener;

    .line 1501
    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method blacklist getOuterListener(Landroid/app/UiModeManager$InnerListener;)Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    .registers 3
    .param p1, "innerListener"    # Landroid/app/UiModeManager$InnerListener;

    .line 1497
    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mOuterListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    return-object v0
.end method

.method blacklist put(Landroid/app/UiModeManager$InnerListener;Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V
    .registers 5
    .param p1, "innerListener"    # Landroid/app/UiModeManager$InnerListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "outerListener"    # Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    .line 1487
    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mOuterListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    return-void
.end method

.method blacklist remove(Landroid/app/UiModeManager$InnerListener;)V
    .registers 3
    .param p1, "innerListener"    # Landroid/app/UiModeManager$InnerListener;

    .line 1492
    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mOuterListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    return-void
.end method
