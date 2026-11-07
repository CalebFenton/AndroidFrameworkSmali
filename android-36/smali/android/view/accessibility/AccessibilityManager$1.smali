.class Landroid/view/accessibility/AccessibilityManager$1;
.super Landroid/view/accessibility/IAccessibilityManagerClient$Stub;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$sKFmxL_04DhQEd--aGh39G_OBFk(Landroid/view/accessibility/AccessibilityManager$1;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager$1;->lambda$notifyServicesStateChanged$0(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/accessibility/AccessibilityManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 463
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$notifyServicesStateChanged$0(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 491
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    .line 492
    invoke-interface {p1, v0}, Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;->onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V

    .line 491
    return-void
.end method


# virtual methods
.method public blacklist notifyServicesStateChanged(J)V
    .registers 9
    .param p1, "updatedUiTimeout"    # J

    .line 477
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, p1, p2}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$mupdateUiTimeout(Landroid/view/accessibility/AccessibilityManager;J)V

    .line 480
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$fgetmLock(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 481
    :try_start_c
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$fgetmServicesStateChangeListeners(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 482
    monitor-exit v0

    return-void

    .line 484
    :cond_1a
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$fgetmServicesStateChangeListeners(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 485
    .local v1, "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;Ljava/util/concurrent/Executor;>;"
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_51

    .line 487
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 488
    .local v0, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v0, :cond_50

    .line 489
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$fgetmServicesStateChangeListeners(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 490
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 491
    .local v3, "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$fgetmServicesStateChangeListeners(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/view/accessibility/AccessibilityManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3}, Landroid/view/accessibility/AccessibilityManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/accessibility/AccessibilityManager$1;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 488
    .end local v3    # "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 494
    .end local v2    # "i":I
    :cond_50
    return-void

    .line 485
    .end local v0    # "numListeners":I
    .end local v1    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;Ljava/util/concurrent/Executor;>;"
    :catchall_51
    move-exception v1

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public blacklist setFocusAppearance(II)V
    .registers 5
    .param p1, "strokeWidth"    # I
    .param p2, "color"    # I

    .line 503
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$fgetmLock(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 504
    :try_start_7
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v1, p1, p2}, Landroid/view/accessibility/AccessibilityManager;->-$$Nest$mupdateFocusAppearanceLocked(Landroid/view/accessibility/AccessibilityManager;II)V

    .line 505
    monitor-exit v0

    .line 506
    return-void

    .line 505
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist setRelevantEventTypes(I)V
    .registers 3
    .param p1, "eventTypes"    # I

    .line 498
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    iput p1, v0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    .line 499
    return-void
.end method

.method public blacklist setState(I)V
    .registers 5
    .param p1, "state"    # I

    .line 472
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 473
    return-void
.end method
