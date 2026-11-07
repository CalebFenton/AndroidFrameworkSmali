.class public final Landroid/view/accessibility/AccessibilityNodeIdManager;
.super Ljava/lang/Object;
.source "AccessibilityNodeIdManager.java"


# static fields
.field private static blacklist sIdManager:Landroid/view/accessibility/AccessibilityNodeIdManager;


# instance fields
.field private blacklist mIdsToViews:Landroid/view/accessibility/WeakSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/accessibility/WeakSparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/view/accessibility/WeakSparseArray;

    invoke-direct {v0}, Landroid/view/accessibility/WeakSparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    .line 38
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/view/accessibility/AccessibilityNodeIdManager;
    .registers 2

    const-class v0, Landroid/view/accessibility/AccessibilityNodeIdManager;

    monitor-enter v0

    .line 31
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeIdManager;->sIdManager:Landroid/view/accessibility/AccessibilityNodeIdManager;

    if-nez v1, :cond_e

    .line 32
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeIdManager;

    invoke-direct {v1}, Landroid/view/accessibility/AccessibilityNodeIdManager;-><init>()V

    sput-object v1, Landroid/view/accessibility/AccessibilityNodeIdManager;->sIdManager:Landroid/view/accessibility/AccessibilityNodeIdManager;

    .line 34
    :cond_e
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeIdManager;->sIdManager:Landroid/view/accessibility/AccessibilityNodeIdManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 30
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public blacklist findView(I)Landroid/view/View;
    .registers 5
    .param p1, "id"    # I

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    monitor-enter v1

    .line 70
    :try_start_4
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    invoke-virtual {v2, p1}, Landroid/view/accessibility/WeakSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v0, v2

    .line 71
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_1a

    .line 72
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_18

    move-object v1, v0

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return-object v1

    .line 71
    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public blacklist registerViewWithId(Landroid/view/View;I)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I

    .line 47
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    monitor-enter v0

    .line 48
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/view/accessibility/WeakSparseArray;->append(ILjava/lang/Object;)V

    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 49
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist unregisterViewWithId(I)V
    .registers 4
    .param p1, "id"    # I

    .line 57
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    monitor-enter v0

    .line 58
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    invoke-virtual {v1, p1}, Landroid/view/accessibility/WeakSparseArray;->remove(I)V

    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 59
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
