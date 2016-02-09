.class public final Landroid/view/accessibility/AccessibilityManager;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$MyHandler;,
        Landroid/view/accessibility/AccessibilityManager$1;
    }
.end annotation


# static fields
.field public static final DALTONIZER_CORRECT_DEUTERANOMALY:I = 0xc

.field public static final DALTONIZER_DISABLED:I = -0x1

.field public static final DALTONIZER_SIMULATE_MONOCHROMACY:I = 0x0

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManager"

.field public static final STATE_FLAG_ACCESSIBILITY_ENABLED:I = 0x1

.field public static final STATE_FLAG_HIGH_TEXT_CONTRAST_ENABLED:I = 0x4

.field public static final STATE_FLAG_TOUCH_EXPLORATION_ENABLED:I = 0x2

.field private static sInstance:Landroid/view/accessibility/AccessibilityManager;

.field static final sInstanceSync:Ljava/lang/Object;


# instance fields
.field private final mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

.field final mHandler:Landroid/os/Handler;

.field private final mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mIsEnabled:Z

.field mIsHighTextContrastEnabled:Z

.field mIsTouchExplorationEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mService:Landroid/view/accessibility/IAccessibilityManager;

.field private final mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mUserId:I


# direct methods
.method static synthetic -get0(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->handleNotifyAccessibilityStateChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->handleNotifyHighTextContrastStateChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->handleNotifyTouchExplorationStateChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/view/accessibility/AccessibilityManager;I)V
    .locals 0
    .param p1, "stateFlags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 91
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    #@7
    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/accessibility/IAccessibilityManager;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    #@a
    .line 110
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@11
    .line 113
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@18
    .line 116
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@1f
    .line 168
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$1;

    #@21
    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    #@24
    .line 167
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    #@26
    .line 221
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$MyHandler;

    #@28
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager$MyHandler;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/os/Looper;)V

    #@2f
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    #@31
    .line 222
    iput-object p2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    #@33
    .line 223
    iput p3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    #@35
    .line 224
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    #@37
    monitor-enter v0

    #@38
    .line 225
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    monitor-exit v0

    #@3c
    .line 220
    return-void

    #@3d
    .line 224
    :catchall_0
    move-exception v1

    #@3e
    monitor-exit v0

    #@3f
    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 188
    sget-object v4, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 189
    :try_start_0
    sget-object v3, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    #@5
    if-nez v3, :cond_1

    #@7
    .line 191
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v3

    #@b
    const/16 v5, 0x3e8

    #@d
    if-eq v3, v5, :cond_0

    #@f
    .line 193
    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS"

    #@12
    .line 192
    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_2

    #@18
    .line 198
    :cond_0
    const/4 v2, -0x2

    #@19
    .line 202
    .local v2, "userId":I
    :goto_0
    const-string/jumbo v3, "accessibility"

    #@1c
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1f
    move-result-object v0

    #@20
    .line 203
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_3

    #@22
    .line 204
    const/4 v1, 0x0

    #@23
    .line 205
    :goto_1
    new-instance v3, Landroid/view/accessibility/AccessibilityManager;

    #@25
    invoke-direct {v3, p0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    #@28
    sput-object v3, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .end local v0    # "iBinder":Landroid/os/IBinder;
    .end local v2    # "userId":I
    :cond_1
    monitor-exit v4

    #@2b
    .line 208
    sget-object v3, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    #@2d
    return-object v3

    #@2e
    .line 196
    :cond_2
    :try_start_1
    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@31
    .line 195
    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_0

    #@37
    .line 200
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3a
    move-result v2

    #@3b
    .restart local v2    # "userId":I
    goto :goto_0

    #@3c
    .line 204
    .restart local v0    # "iBinder":Landroid/os/IBinder;
    :cond_3
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    move-result-object v1

    #@40
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    goto :goto_1

    #@41
    .line 188
    .end local v0    # "iBinder":Landroid/os/IBinder;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :catchall_0
    move-exception v3

    #@42
    monitor-exit v4

    #@43
    throw v3
.end method

.method private getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    .locals 1

    #@0
    .prologue
    .line 614
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 615
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked()V

    #@7
    .line 617
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    #@9
    return-object v0
.end method

.method private handleNotifyAccessibilityStateChanged()V
    .locals 5

    #@0
    .prologue
    .line 640
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 641
    :try_start_0
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .local v0, "isEnabled":Z
    monitor-exit v3

    #@6
    .line 644
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v2

    #@c
    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    #@18
    .line 645
    .local v1, "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    invoke-interface {v1, v0}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    #@1b
    goto :goto_0

    #@1c
    .line 640
    .end local v0    # "isEnabled":Z
    .end local v1    # "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@1d
    monitor-exit v3

    #@1e
    throw v4

    #@1f
    .line 638
    .restart local v0    # "isEnabled":Z
    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private handleNotifyHighTextContrastStateChanged()V
    .locals 5

    #@0
    .prologue
    .line 668
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 669
    :try_start_0
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .local v0, "isHighTextContrastEnabled":Z
    monitor-exit v3

    #@6
    .line 672
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v2

    #@c
    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    #@18
    .line 673
    .local v1, "listener":Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;
    invoke-interface {v1, v0}, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;->onHighTextContrastStateChanged(Z)V

    #@1b
    goto :goto_0

    #@1c
    .line 668
    .end local v0    # "isHighTextContrastEnabled":Z
    .end local v1    # "listener":Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@1d
    monitor-exit v3

    #@1e
    throw v4

    #@1f
    .line 666
    .restart local v0    # "isHighTextContrastEnabled":Z
    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private handleNotifyTouchExplorationStateChanged()V
    .locals 5

    #@0
    .prologue
    .line 654
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 655
    :try_start_0
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .local v0, "isTouchExplorationEnabled":Z
    monitor-exit v3

    #@6
    .line 658
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v2

    #@c
    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    #@18
    .line 659
    .local v1, "listener":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    invoke-interface {v1, v0}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    #@1b
    goto :goto_0

    #@1c
    .line 654
    .end local v0    # "isTouchExplorationEnabled":Z
    .end local v1    # "listener":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@1d
    monitor-exit v3

    #@1e
    throw v4

    #@1f
    .line 652
    .restart local v0    # "isTouchExplorationEnabled":Z
    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private setStateLocked(I)V
    .locals 8
    .param p1, "stateFlags"    # I

    #@0
    .prologue
    .line 538
    and-int/lit8 v6, p1, 0x1

    #@2
    if-eqz v6, :cond_3

    #@4
    const/4 v0, 0x1

    #@5
    .line 540
    .local v0, "enabled":Z
    :goto_0
    and-int/lit8 v6, p1, 0x2

    #@7
    if-eqz v6, :cond_4

    #@9
    const/4 v2, 0x1

    #@a
    .line 542
    .local v2, "touchExplorationEnabled":Z
    :goto_1
    and-int/lit8 v6, p1, 0x4

    #@c
    if-eqz v6, :cond_5

    #@e
    const/4 v1, 0x1

    #@f
    .line 544
    .local v1, "highTextContrastEnabled":Z
    :goto_2
    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    #@11
    .line 545
    .local v3, "wasEnabled":Z
    iget-boolean v5, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    #@13
    .line 546
    .local v5, "wasTouchExplorationEnabled":Z
    iget-boolean v4, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    #@15
    .line 549
    .local v4, "wasHighTextContrastEnabled":Z
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    #@17
    .line 550
    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    #@19
    .line 551
    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    #@1b
    .line 553
    if-eq v3, v0, :cond_0

    #@1d
    .line 554
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    #@1f
    const/4 v7, 0x1

    #@20
    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@23
    .line 557
    :cond_0
    if-eq v5, v2, :cond_1

    #@25
    .line 558
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    #@27
    const/4 v7, 0x2

    #@28
    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@2b
    .line 561
    :cond_1
    if-eq v4, v1, :cond_2

    #@2d
    .line 562
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    #@2f
    const/4 v7, 0x3

    #@30
    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@33
    .line 537
    :cond_2
    return-void

    #@34
    .line 538
    .end local v0    # "enabled":Z
    .end local v1    # "highTextContrastEnabled":Z
    .end local v2    # "touchExplorationEnabled":Z
    .end local v3    # "wasEnabled":Z
    .end local v4    # "wasHighTextContrastEnabled":Z
    .end local v5    # "wasTouchExplorationEnabled":Z
    :cond_3
    const/4 v0, 0x0

    #@35
    .restart local v0    # "enabled":Z
    goto :goto_0

    #@36
    .line 540
    :cond_4
    const/4 v2, 0x0

    #@37
    .restart local v2    # "touchExplorationEnabled":Z
    goto :goto_1

    #@38
    .line 542
    :cond_5
    const/4 v1, 0x0

    #@39
    .restart local v1    # "highTextContrastEnabled":Z
    goto :goto_2
.end method

.method private tryConnectToServiceLocked()V
    .locals 6

    #@0
    .prologue
    .line 621
    const-string/jumbo v4, "accessibility"

    #@3
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 622
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    #@9
    .line 623
    return-void

    #@a
    .line 625
    :cond_0
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    #@d
    move-result-object v2

    #@e
    .line 627
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    #@10
    iget v5, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    #@12
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityManager;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I

    #@15
    move-result v3

    #@16
    .line 628
    .local v3, "stateFlags":I
    invoke-direct {p0, v3}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    #@19
    .line 629
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 620
    .end local v3    # "stateFlags":I
    :goto_0
    return-void

    #@1c
    .line 630
    :catch_0
    move-exception v1

    #@1d
    .line 631
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "AccessibilityManager"

    #@20
    const-string/jumbo v5, "AccessibilityManagerService is dead"

    #@23
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0
.end method


# virtual methods
.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I
    .locals 6
    .param p1, "windowToken"    # Landroid/view/IWindow;
    .param p2, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 577
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 578
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result-object v1

    #@8
    .line 579
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    #@a
    monitor-exit v4

    #@b
    .line 580
    return v5

    #@c
    .line 582
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    .local v2, "userId":I
    monitor-exit v4

    #@f
    .line 585
    :try_start_2
    invoke-interface {v1, p1, p2, v2}, Landroid/view/accessibility/IAccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@12
    move-result v3

    #@13
    return v3

    #@14
    .line 577
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :catchall_0
    move-exception v3

    #@15
    monitor-exit v4

    #@16
    throw v3

    #@17
    .line 586
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v2    # "userId":I
    :catch_0
    move-exception v0

    #@18
    .line 587
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "AccessibilityManager"

    #@1b
    const-string/jumbo v4, "Error while adding an accessibility interaction connection. "

    #@1e
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    .line 589
    return v5
.end method

.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    #@0
    .prologue
    .line 463
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    #@0
    .prologue
    .line 515
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    #@0
    .prologue
    .line 488
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getAccessibilityServiceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 369
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    #@3
    move-result-object v3

    #@4
    .line 370
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@6
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 371
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@c
    move-result v2

    #@d
    .line 372
    .local v2, "infoCount":I
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@10
    .line 373
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@16
    .line 374
    .local v1, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@19
    move-result-object v5

    #@1a
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@1c
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f
    .line 372
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 376
    .end local v1    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@25
    move-result-object v5

    #@26
    return-object v5
.end method

.method public getClient()Landroid/view/accessibility/IAccessibilityManagerClient;
    .locals 1

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    #@2
    return-object v0
.end method

.method public getEnabledAccessibilityServiceList(I)Ljava/util/List;
    .locals 6
    .param p1, "feedbackTypeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 429
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 430
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    #@6
    move-result-object v1

    #@7
    .line 431
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    #@9
    .line 432
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v4

    #@d
    monitor-exit v5

    #@e
    return-object v4

    #@f
    .line 434
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    .local v3, "userId":I
    monitor-exit v5

    #@12
    .line 437
    const/4 v2, 0x0

    #@13
    .line 439
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_2
    invoke-interface {v1, p1, v3}, Landroid/view/accessibility/IAccessibilityManager;->getEnabledAccessibilityServiceList(II)Ljava/util/List;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@16
    move-result-object v2

    #@17
    .line 446
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :goto_0
    if-eqz v2, :cond_1

    #@19
    .line 447
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@1c
    move-result-object v4

    #@1d
    return-object v4

    #@1e
    .line 429
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v3    # "userId":I
    :catchall_0
    move-exception v4

    #@1f
    monitor-exit v5

    #@20
    throw v4

    #@21
    .line 443
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v3    # "userId":I
    :catch_0
    move-exception v0

    #@22
    .line 444
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "AccessibilityManager"

    #@25
    const-string/jumbo v5, "Error while obtaining the installed AccessibilityServices. "

    #@28
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    goto :goto_0

    #@2c
    .line 449
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@2f
    move-result-object v4

    #@30
    return-object v4
.end method

.method public getInstalledAccessibilityServiceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 387
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 388
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    #@6
    move-result-object v1

    #@7
    .line 389
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    #@9
    .line 390
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v4

    #@d
    monitor-exit v5

    #@e
    return-object v4

    #@f
    .line 392
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    .local v3, "userId":I
    monitor-exit v5

    #@12
    .line 395
    const/4 v2, 0x0

    #@13
    .line 397
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_2
    invoke-interface {v1, v3}, Landroid/view/accessibility/IAccessibilityManager;->getInstalledAccessibilityServiceList(I)Ljava/util/List;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@16
    move-result-object v2

    #@17
    .line 404
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :goto_0
    if-eqz v2, :cond_1

    #@19
    .line 405
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@1c
    move-result-object v4

    #@1d
    return-object v4

    #@1e
    .line 387
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v3    # "userId":I
    :catchall_0
    move-exception v4

    #@1f
    monitor-exit v5

    #@20
    throw v4

    #@21
    .line 401
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v3    # "userId":I
    :catch_0
    move-exception v0

    #@22
    .line 402
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "AccessibilityManager"

    #@25
    const-string/jumbo v5, "Error while obtaining the installed AccessibilityServices. "

    #@28
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    goto :goto_0

    #@2c
    .line 407
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@2f
    move-result-object v4

    #@30
    return-object v4
.end method

.method public interrupt()V
    .locals 6

    #@0
    .prologue
    .line 340
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 341
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    .line 342
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    #@9
    monitor-exit v4

    #@a
    .line 343
    return-void

    #@b
    .line 345
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    #@d
    if-nez v3, :cond_1

    #@f
    .line 346
    new-instance v3, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v5, "Accessibility off. Did you forget to check that?"

    #@14
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    .line 340
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v3

    #@19
    monitor-exit v4

    #@1a
    throw v3

    #@1b
    .line 348
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :cond_1
    :try_start_2
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d
    .local v2, "userId":I
    monitor-exit v4

    #@1e
    .line 351
    :try_start_3
    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->interrupt(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@21
    .line 337
    :goto_0
    return-void

    #@22
    .line 355
    :catch_0
    move-exception v0

    #@23
    .line 356
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "AccessibilityManager"

    #@26
    const-string/jumbo v4, "Error while requesting interrupt from all services. "

    #@29
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 242
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 243
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    .line 244
    .local v0, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v0, :cond_0

    #@9
    .line 245
    const/4 v1, 0x0

    #@a
    monitor-exit v2

    #@b
    return v1

    #@c
    .line 247
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit v2

    #@f
    return v1

    #@10
    .line 242
    .end local v0    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method public isHighTextContrastEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 278
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 279
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    .line 280
    .local v0, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v0, :cond_0

    #@9
    .line 281
    const/4 v1, 0x0

    #@a
    monitor-exit v2

    #@b
    return v1

    #@c
    .line 283
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit v2

    #@f
    return v1

    #@10
    .line 278
    .end local v0    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method public isTouchExplorationEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 257
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 258
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    .line 259
    .local v0, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v0, :cond_0

    #@9
    .line 260
    const/4 v1, 0x0

    #@a
    monitor-exit v2

    #@b
    return v1

    #@c
    .line 262
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit v2

    #@f
    return v1

    #@10
    .line 257
    .end local v0    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 4
    .param p1, "windowToken"    # Landroid/view/IWindow;

    #@0
    .prologue
    .line 600
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 601
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    .line 602
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    #@9
    monitor-exit v2

    #@a
    .line 603
    return-void

    #@b
    :cond_0
    monitor-exit v2

    #@c
    .line 607
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@f
    .line 598
    :goto_0
    return-void

    #@10
    .line 600
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v3

    #@11
    monitor-exit v2

    #@12
    throw v3

    #@13
    .line 608
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catch_0
    move-exception v0

    #@14
    .line 609
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityManager"

    #@17
    const-string/jumbo v3, "Error while removing an accessibility interaction connection. "

    #@1a
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_0
.end method

.method public removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    #@0
    .prologue
    .line 475
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    #@0
    .prologue
    .line 529
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 303
    iget-object v7, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 304
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v4

    #@7
    .line 305
    .local v4, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v4, :cond_0

    #@9
    monitor-exit v7

    #@a
    .line 306
    return-void

    #@b
    .line 308
    :cond_0
    :try_start_1
    iget-boolean v6, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    #@d
    if-nez v6, :cond_1

    #@f
    .line 309
    new-instance v6, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v8, "Accessibility off. Did you forget to check that?"

    #@14
    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    .line 303
    .end local v4    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v6

    #@19
    monitor-exit v7

    #@1a
    throw v6

    #@1b
    .line 311
    .restart local v4    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :cond_1
    :try_start_2
    iget v5, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d
    .local v5, "userId":I
    monitor-exit v7

    #@1e
    .line 313
    const/4 v0, 0x0

    #@1f
    .line 315
    .local v0, "doRecycle":Z
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@22
    move-result-wide v6

    #@23
    invoke-virtual {p1, v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    #@26
    .line 319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@29
    move-result-wide v2

    #@2a
    .line 320
    .local v2, "identityToken":J
    invoke-interface {v4, p1, v5}, Landroid/view/accessibility/IAccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z

    #@2d
    move-result v0

    #@2e
    .line 321
    .local v0, "doRecycle":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@31
    .line 328
    if-eqz v0, :cond_2

    #@33
    .line 329
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    #@36
    .line 300
    .end local v0    # "doRecycle":Z
    .end local v2    # "identityToken":J
    :cond_2
    :goto_0
    return-void

    #@37
    .line 325
    :catch_0
    move-exception v1

    #@38
    .line 326
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v6, "AccessibilityManager"

    #@3b
    new-instance v7, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v8, "Error during sending "

    #@43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    const-string/jumbo v8, " "

    #@4e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v7

    #@56
    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@59
    .line 328
    if-eqz v0, :cond_2

    #@5b
    .line 329
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    #@5e
    goto :goto_0

    #@5f
    .line 327
    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    #@60
    .line 328
    if-eqz v0, :cond_3

    #@62
    .line 329
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    #@65
    .line 327
    :cond_3
    throw v6
.end method
