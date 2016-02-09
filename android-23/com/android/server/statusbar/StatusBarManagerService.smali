.class public Lcom/android/server/statusbar/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;,
        Lcom/android/server/statusbar/StatusBarManagerService$1;
    }
.end annotation


# static fields
.field private static final SPEW:Z = false

.field private static final TAG:Ljava/lang/String; = "StatusBarManagerService"


# instance fields
.field private volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabled1:I

.field private mDisabled2:I

.field private mHandler:Landroid/os/Handler;

.field private mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

.field private mImeBackDisposition:I

.field private mImeToken:Landroid/os/IBinder;

.field private mImeWindowVis:I

.field private final mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private mLock:Ljava/lang/Object;

.field private mMenuVisible:Z

.field private mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field private mShowImeSwitcher:Z

.field private mSysUiVisToken:Landroid/os/IBinder;

.field private mSystemUiVisibility:I

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/notification/NotificationDelegate;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)Lcom/android/server/notification/NotificationDelegate;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    #@2
    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 95
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    #@4
    .line 56
    new-instance v1, Landroid/os/Handler;

    #@6
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    #@b
    .line 59
    new-instance v1, Lcom/android/internal/statusbar/StatusBarIconList;

    #@d
    invoke-direct {v1}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    #@10
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    #@12
    .line 62
    new-instance v1, Ljava/util/ArrayList;

    #@14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    #@19
    .line 63
    new-instance v1, Landroid/os/Binder;

    #@1b
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    #@1e
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    #@20
    .line 64
    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    #@22
    .line 65
    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    #@24
    .line 67
    new-instance v1, Ljava/lang/Object;

    #@26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@29
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    #@2b
    .line 69
    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    #@2d
    .line 70
    iput-boolean v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    #@2f
    .line 71
    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    #@31
    .line 74
    const/4 v1, 0x0

    #@32
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    #@34
    .line 108
    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$1;

    #@36
    invoke-direct {v1, p0}, Lcom/android/server/statusbar/StatusBarManagerService$1;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    #@39
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@3b
    .line 96
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    #@3d
    .line 97
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@3f
    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@42
    move-result-object v0

    #@43
    .line 100
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    #@45
    const v2, 0x107000b

    #@48
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v1, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->defineSlots([Ljava/lang/String;)V

    #@4f
    .line 102
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@51
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@53
    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@56
    .line 95
    return-void
.end method

.method private disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "whichFlag"    # I

    #@0
    .prologue
    .line 265
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/statusbar/StatusBarManagerService;->manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    #@3
    .line 268
    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    #@5
    const/4 v4, 0x1

    #@6
    invoke-virtual {p0, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    #@9
    move-result v1

    #@a
    .line 269
    .local v1, "net1":I
    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    #@c
    const/4 v4, 0x2

    #@d
    invoke-virtual {p0, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    #@10
    move-result v2

    #@11
    .line 270
    .local v2, "net2":I
    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    #@13
    if-ne v1, v3, :cond_0

    #@15
    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    #@17
    if-eq v2, v3, :cond_1

    #@19
    .line 271
    :cond_0
    iput v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    #@1b
    .line 272
    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    #@1d
    .line 273
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    #@1f
    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerService$2;

    #@21
    invoke-direct {v4, p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService$2;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    #@24
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@27
    .line 278
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 280
    :try_start_0
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@2d
    invoke-interface {v3, v1, v2}, Lcom/android/internal/statusbar/IStatusBar;->disable(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 260
    :cond_1
    :goto_0
    return-void

    #@31
    .line 281
    :catch_0
    move-exception v0

    #@32
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private enforceExpandStatusBar()V
    .locals 3

    #@0
    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.EXPAND_STATUS_BAR"

    #@5
    .line 556
    const-string/jumbo v2, "StatusBarManagerService"

    #@8
    .line 555
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 554
    return-void
.end method

.method private enforceStatusBar()V
    .locals 3

    #@0
    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.STATUS_BAR"

    #@5
    .line 551
    const-string/jumbo v2, "StatusBarManagerService"

    #@8
    .line 550
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 549
    return-void
.end method

.method private enforceStatusBarService()V
    .locals 3

    #@0
    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    #@5
    .line 561
    const-string/jumbo v2, "StatusBarManagerService"

    #@8
    .line 560
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 559
    return-void
.end method

.method private updateUiVisibilityLocked(II)V
    .locals 2
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    #@0
    .prologue
    .line 436
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 437
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    #@6
    .line 438
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    #@8
    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$5;

    #@a
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$5;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;II)V

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@10
    .line 435
    :cond_0
    return-void
.end method


# virtual methods
.method public appTransitionCancelled()V
    .locals 2

    #@0
    .prologue
    .line 522
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@6
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 521
    :cond_0
    :goto_0
    return-void

    #@a
    .line 525
    :catch_0
    move-exception v0

    #@b
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public appTransitionPending()V
    .locals 2

    #@0
    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 515
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@6
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionPending()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 512
    :cond_0
    :goto_0
    return-void

    #@a
    .line 516
    :catch_0
    move-exception v0

    #@b
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public appTransitionStarting(JJ)V
    .locals 3
    .param p1, "statusBarAnimationsStartTime"    # J
    .param p3, "statusBarAnimationsDuration"    # J

    #@0
    .prologue
    .line 532
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@6
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionStarting(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 531
    :cond_0
    :goto_0
    return-void

    #@a
    .line 536
    :catch_0
    move-exception v0

    #@b
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    #@0
    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@6
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 470
    :cond_0
    :goto_0
    return-void

    #@a
    .line 474
    :catch_0
    move-exception v0

    #@b
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public clearNotificationEffects()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 606
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    #@3
    .line 607
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v0

    #@7
    .line 609
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    #@9
    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 611
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f
    .line 605
    return-void

    #@10
    .line 610
    :catchall_0
    move-exception v2

    #@11
    .line 611
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 610
    throw v2
.end method

.method public collapsePanels()V
    .locals 2

    #@0
    .prologue
    .line 198
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    #@3
    .line 200
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@9
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 197
    :cond_0
    :goto_0
    return-void

    #@d
    .line 203
    :catch_0
    move-exception v0

    #@e
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 222
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    #@2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    #@5
    .line 221
    return-void
.end method

.method public disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 242
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    #@2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    #@5
    .line 241
    return-void
.end method

.method public disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    #@3
    .line 255
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v6

    #@6
    .line 256
    const/4 v5, 0x2

    #@7
    move-object v0, p0

    #@8
    move v1, p4

    #@9
    move v2, p1

    #@a
    move-object v3, p2

    #@b
    move-object v4, p3

    #@c
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v6

    #@10
    .line 252
    return-void

    #@11
    .line 255
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v6

    #@13
    throw v0
.end method

.method public disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    #@3
    .line 229
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v6

    #@6
    .line 230
    const/4 v5, 0x1

    #@7
    move-object v0, p0

    #@8
    move v1, p4

    #@9
    move v2, p1

    #@a
    move-object v3, p2

    #@b
    move-object v4, p3

    #@c
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v6

    #@10
    .line 226
    return-void

    #@11
    .line 229
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v6

    #@13
    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 789
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.DUMP"

    #@5
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 791
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Permission Denial: can\'t dump StatusBar from from pid="

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    .line 792
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v4

    #@1b
    .line 791
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    .line 793
    const-string/jumbo v4, ", uid="

    #@22
    .line 791
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 793
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v4

    #@2a
    .line 791
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 794
    return-void

    #@36
    .line 797
    :cond_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    #@38
    monitor-enter v4

    #@39
    .line 798
    :try_start_0
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    #@3b
    invoke-virtual {v3, p2}, Lcom/android/internal/statusbar/StatusBarIconList;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    monitor-exit v4

    #@3f
    .line 801
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    #@41
    monitor-enter v4

    #@42
    .line 802
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v5, "  mDisabled1=0x"

    #@4a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    iget v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    #@50
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f
    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v5, "  mDisabled2=0x"

    #@67
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    iget v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    #@6d
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7c
    .line 804
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    #@7e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@81
    move-result v0

    #@82
    .line 805
    .local v0, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v5, "  mDisableRecords.size="

    #@8a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v3

    #@8e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91
    move-result-object v3

    #@92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@99
    .line 806
    const/4 v1, 0x0

    #@9a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9c
    .line 807
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    #@9e
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a1
    move-result-object v2

    #@a2
    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    #@a4
    .line 808
    .local v2, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v5, "    ["

    #@ac
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v3

    #@b0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v3

    #@b4
    const-string/jumbo v5, "] userId="

    #@b7
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v3

    #@bb
    iget v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    #@bd
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v3

    #@c1
    .line 809
    const-string/jumbo v5, " what1=0x"

    #@c4
    .line 808
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v3

    #@c8
    .line 809
    iget v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    #@ca
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@cd
    move-result-object v5

    #@ce
    .line 808
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v3

    #@d2
    .line 810
    const-string/jumbo v5, " what2=0x"

    #@d5
    .line 808
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v3

    #@d9
    .line 810
    iget v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    #@db
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@de
    move-result-object v5

    #@df
    .line 808
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v3

    #@e3
    .line 811
    const-string/jumbo v5, " pkg="

    #@e6
    .line 808
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v3

    #@ea
    .line 811
    iget-object v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    #@ec
    .line 808
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v3

    #@f0
    .line 812
    const-string/jumbo v5, " token="

    #@f3
    .line 808
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v3

    #@f7
    .line 812
    iget-object v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    #@f9
    .line 808
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v3

    #@fd
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v3

    #@101
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@104
    .line 806
    add-int/lit8 v1, v1, 0x1

    #@106
    goto :goto_0

    #@107
    .line 797
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :catchall_0
    move-exception v3

    #@108
    monitor-exit v4

    #@109
    throw v3

    #@10a
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_1
    monitor-exit v4

    #@10b
    .line 788
    return-void

    #@10c
    .line 801
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_1
    move-exception v3

    #@10d
    monitor-exit v4

    #@10e
    throw v3
.end method

.method public expandNotificationsPanel()V
    .locals 2

    #@0
    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    #@3
    .line 188
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@9
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 185
    :cond_0
    :goto_0
    return-void

    #@d
    .line 191
    :catch_0
    move-exception v0

    #@e
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public expandSettingsPanel()V
    .locals 2

    #@0
    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    #@3
    .line 212
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@9
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 209
    :cond_0
    :goto_0
    return-void

    #@d
    .line 215
    :catch_0
    move-exception v0

    #@e
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method gatherDisableActionsLocked(II)I
    .locals 5
    .param p1, "userId"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    .line 772
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 774
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .line 775
    .local v2, "net":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@a
    .line 776
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    #@12
    .line 777
    .local v3, "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    #@14
    if-ne v4, p1, :cond_0

    #@16
    .line 778
    const/4 v4, 0x1

    #@17
    if-ne p2, v4, :cond_1

    #@19
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    #@1b
    :goto_1
    or-int/2addr v2, v4

    #@1c
    .line 775
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 778
    :cond_1
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    #@21
    goto :goto_1

    #@22
    .line 781
    .end local v3    # "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_2
    return v2
.end method

.method public hideRecentApps(ZZ)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    #@0
    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@6
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 488
    :cond_0
    :goto_0
    return-void

    #@a
    .line 492
    :catch_0
    move-exception v0

    #@b
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "which"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 733
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    .line 734
    .local v0, "N":I
    const/4 v4, 0x0

    #@9
    .line 736
    .local v4, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@c
    .line 737
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    #@14
    .line 738
    .local v3, "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget-object v5, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    #@16
    if-ne v5, p3, :cond_3

    #@18
    iget v5, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    #@1a
    if-ne v5, p1, :cond_3

    #@1c
    .line 739
    move-object v4, v3

    #@1d
    .line 743
    .end local v3    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    .end local v4    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_0
    if-eqz p2, :cond_4

    #@1f
    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_4

    #@25
    .line 749
    if-nez v4, :cond_1

    #@27
    .line 750
    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    #@29
    invoke-direct {v4, p0, v7}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;)V

    #@2c
    .line 751
    .local v4, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iput p1, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    #@2e
    .line 753
    const/4 v5, 0x0

    #@2f
    :try_start_0
    invoke-interface {p3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 758
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 760
    .end local v4    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_1
    const/4 v5, 0x1

    #@38
    if-ne p5, v5, :cond_5

    #@3a
    .line 761
    iput p2, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    #@3c
    .line 765
    :goto_1
    iput-object p3, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    #@3e
    .line 766
    iput-object p4, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    #@40
    .line 727
    :cond_2
    :goto_2
    return-void

    #@41
    .line 736
    .restart local v3    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    .local v4, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_0

    #@44
    .line 744
    .end local v3    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    .end local v4    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_4
    if-eqz v4, :cond_2

    #@46
    .line 745
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@4b
    .line 746
    iget-object v5, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    #@4d
    invoke-interface {v5, v4, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@50
    goto :goto_2

    #@51
    .line 755
    .local v4, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :catch_0
    move-exception v1

    #@52
    .line 756
    .local v1, "ex":Landroid/os/RemoteException;
    return-void

    #@53
    .line 763
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v4    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_5
    iput p2, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    #@55
    goto :goto_1
.end method

.method public onClearAllNotifications(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 711
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    #@3
    .line 712
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 713
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@a
    move-result v0

    #@b
    .line 714
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v2

    #@f
    .line 716
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    #@11
    invoke-interface {v4, v1, v0, p1}, Lcom/android/server/notification/NotificationDelegate;->onClearAll(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 718
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 710
    return-void

    #@18
    .line 717
    :catchall_0
    move-exception v4

    #@19
    .line 718
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 717
    throw v4
.end method

.method public onNotificationActionClick(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "actionIndex"    # I

    #@0
    .prologue
    .line 641
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    #@3
    .line 642
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 643
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@a
    move-result v0

    #@b
    .line 644
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v2

    #@f
    .line 646
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    #@11
    invoke-interface {v4, v1, v0, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationActionClick(IILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 649
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 640
    return-void

    #@18
    .line 648
    :catchall_0
    move-exception v4

    #@19
    .line 649
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 648
    throw v4
.end method

.method public onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 671
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    #@3
    .line 672
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 673
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@a
    move-result v2

    #@b
    .line 674
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v8

    #@f
    .line 676
    .local v8, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    #@11
    move-object v3, p1

    #@12
    move-object v4, p2

    #@13
    move v5, p3

    #@14
    move v6, p4

    #@15
    invoke-interface/range {v0 .. v6}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClear(IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 678
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 670
    return-void

    #@1c
    .line 677
    :catchall_0
    move-exception v0

    #@1d
    .line 678
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 677
    throw v0
.end method

.method public onNotificationClick(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 628
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    #@3
    .line 629
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 630
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@a
    move-result v0

    #@b
    .line 631
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v2

    #@f
    .line 633
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    #@11
    invoke-interface {v4, v1, v0, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClick(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 635
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 627
    return-void

    #@18
    .line 634
    :catchall_0
    move-exception v4

    #@19
    .line 635
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 634
    throw v4
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "uid"    # I
    .param p5, "initialPid"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "userId"    # I

    #@0
    .prologue
    .line 656
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    #@3
    .line 657
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 658
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@a
    move-result v2

    #@b
    .line 659
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v10

    #@f
    .line 662
    .local v10, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    #@11
    move-object v3, p1

    #@12
    move-object v4, p2

    #@13
    move v5, p3

    #@14
    move/from16 v6, p4

    #@16
    move/from16 v7, p5

    #@18
    move-object/from16 v8, p6

    #@1a
    move/from16 v9, p7

    #@1c
    invoke-interface/range {v0 .. v9}, Lcom/android/server/notification/NotificationDelegate;->onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 665
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 655
    return-void

    #@23
    .line 664
    :catchall_0
    move-exception v0

    #@24
    .line 665
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 664
    throw v0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 699
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    #@3
    .line 700
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v0

    #@7
    .line 702
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    #@9
    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/notification/NotificationDelegate;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 705
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f
    .line 698
    return-void

    #@10
    .line 704
    :catchall_0
    move-exception v2

    #@11
    .line 705
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 704
    throw v2
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 3
    .param p1, "newlyVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 686
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    #@3
    .line 687
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v0

    #@7
    .line 689
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    #@9
    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 692
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f
    .line 685
    return-void

    #@10
    .line 691
    :catchall_0
    move-exception v2

    #@11
    .line 692
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 691
    throw v2
.end method

.method public onPanelHidden()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 617
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    #@3
    .line 618
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v0

    #@7
    .line 620
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    #@9
    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->onPanelHidden()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 622
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f
    .line 616
    return-void

    #@10
    .line 621
    :catchall_0
    move-exception v2

    #@11
    .line 622
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 621
    throw v2
.end method

.method public onPanelRevealed(ZI)V
    .locals 3
    .param p1, "clearNotificationEffects"    # Z
    .param p2, "numItems"    # I

    #@0
    .prologue
    .line 595
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    #@3
    .line 596
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v0

    #@7
    .line 598
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    #@9
    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onPanelRevealed(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 600
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f
    .line 594
    return-void

    #@10
    .line 599
    :catchall_0
    move-exception v2

    #@11
    .line 600
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 599
    throw v2
.end method

.method public preloadRecentApps()V
    .locals 2

    #@0
    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@6
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 461
    :cond_0
    :goto_0
    return-void

    #@a
    .line 465
    :catch_0
    move-exception v0

    #@b
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V
    .locals 5
    .param p1, "bar"    # Lcom/android/internal/statusbar/IStatusBar;
    .param p2, "iconList"    # Lcom/android/internal/statusbar/StatusBarIconList;
    .param p3, "switches"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            "[I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p4, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 570
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    #@5
    .line 572
    const-string/jumbo v2, "StatusBarManagerService"

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "registerStatusBar bar="

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 573
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@21
    .line 574
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    #@23
    monitor-enter v2

    #@24
    .line 575
    :try_start_0
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    #@26
    invoke-virtual {p2, v3}, Lcom/android/internal/statusbar/StatusBarIconList;->copyFrom(Lcom/android/internal/statusbar/StatusBarIconList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit v2

    #@2a
    .line 577
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    #@2c
    monitor-enter v3

    #@2d
    .line 578
    :try_start_1
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    #@2f
    const/4 v4, 0x1

    #@30
    invoke-virtual {p0, v2, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    #@33
    move-result v2

    #@34
    const/4 v4, 0x0

    #@35
    aput v2, p3, v4

    #@37
    .line 579
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    #@39
    const/4 v4, 0x1

    #@3a
    aput v2, p3, v4

    #@3c
    .line 580
    iget-boolean v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    #@3e
    if-eqz v2, :cond_0

    #@40
    move v2, v0

    #@41
    :goto_0
    const/4 v4, 0x2

    #@42
    aput v2, p3, v4

    #@44
    .line 581
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    #@46
    const/4 v4, 0x3

    #@47
    aput v2, p3, v4

    #@49
    .line 582
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeBackDisposition:I

    #@4b
    const/4 v4, 0x4

    #@4c
    aput v2, p3, v4

    #@4e
    .line 583
    iget-boolean v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mShowImeSwitcher:Z

    #@50
    if-eqz v2, :cond_1

    #@52
    :goto_1
    const/4 v1, 0x5

    #@53
    aput v0, p3, v1

    #@55
    .line 584
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    #@57
    const/4 v1, 0x2

    #@58
    invoke-virtual {p0, v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    #@5b
    move-result v0

    #@5c
    const/4 v1, 0x6

    #@5d
    aput v0, p3, v1

    #@5f
    .line 585
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    #@61
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@64
    monitor-exit v3

    #@65
    .line 569
    return-void

    #@66
    .line 574
    :catchall_0
    move-exception v0

    #@67
    monitor-exit v2

    #@68
    throw v0

    #@69
    :cond_0
    move v2, v1

    #@6a
    .line 580
    goto :goto_0

    #@6b
    :cond_1
    move v0, v1

    #@6c
    .line 583
    goto :goto_1

    #@6d
    .line 577
    :catchall_1
    move-exception v0

    #@6e
    monitor-exit v3

    #@6f
    throw v0
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 6
    .param p1, "slot"    # Ljava/lang/String;

    #@0
    .prologue
    .line 343
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    #@3
    .line 345
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    #@5
    monitor-enter v3

    #@6
    .line 346
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    #@8
    invoke-virtual {v2, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    #@b
    move-result v1

    #@c
    .line 347
    .local v1, "index":I
    if-gez v1, :cond_0

    #@e
    .line 348
    new-instance v2, Ljava/lang/SecurityException;

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v5, "invalid status bar icon slot: "

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 345
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
    throw v2

    #@2b
    .line 351
    .restart local v1    # "index":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    #@2d
    invoke-virtual {v2, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->removeIcon(I)V

    #@30
    .line 353
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 355
    :try_start_2
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@36
    invoke-interface {v2, v1}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    :cond_1
    :goto_0
    monitor-exit v3

    #@3a
    .line 342
    return-void

    #@3b
    .line 356
    :catch_0
    move-exception v0

    #@3c
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    #@0
    .prologue
    .line 499
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    #@2
    .line 497
    return-void
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPackage"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "iconLevel"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 290
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    #@3
    .line 292
    iget-object v9, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    #@5
    monitor-enter v9

    #@6
    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    #@8
    invoke-virtual {v1, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    #@b
    move-result v8

    #@c
    .line 294
    .local v8, "index":I
    if-gez v8, :cond_0

    #@e
    .line 295
    new-instance v1, Ljava/lang/SecurityException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "invalid status bar icon slot: "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 292
    .end local v8    # "index":I
    :catchall_0
    move-exception v1

    #@29
    monitor-exit v9

    #@2a
    throw v1

    #@2b
    .line 298
    .restart local v8    # "index":I
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    #@2d
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@2f
    .line 299
    const/4 v5, 0x0

    #@30
    move-object v1, p2

    #@31
    move v3, p3

    #@32
    move v4, p4

    #@33
    move-object v6, p5

    #@34
    .line 298
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    #@37
    .line 302
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    #@39
    invoke-virtual {v1, v8, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    #@3c
    .line 304
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    if-eqz v1, :cond_1

    #@40
    .line 306
    :try_start_2
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@42
    invoke-interface {v1, v8, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    :cond_1
    :goto_0
    monitor-exit v9

    #@46
    .line 289
    return-void

    #@47
    .line 307
    :catch_0
    move-exception v7

    #@48
    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    #@0
    .prologue
    .line 315
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    #@3
    .line 317
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    #@5
    monitor-enter v4

    #@6
    .line 318
    :try_start_0
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    #@8
    invoke-virtual {v3, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    #@b
    move-result v2

    #@c
    .line 319
    .local v2, "index":I
    if-gez v2, :cond_0

    #@e
    .line 320
    new-instance v3, Ljava/lang/SecurityException;

    #@10
    new-instance v5, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v6, "invalid status bar icon slot: "

    #@18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 317
    .end local v2    # "index":I
    :catchall_0
    move-exception v3

    #@29
    monitor-exit v4

    #@2a
    throw v3

    #@2b
    .line 323
    .restart local v2    # "index":I
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    #@2d
    invoke-virtual {v3, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    move-result-object v1

    #@31
    .line 324
    .local v1, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v1, :cond_1

    #@33
    monitor-exit v4

    #@34
    .line 325
    return-void

    #@35
    .line 328
    :cond_1
    :try_start_2
    iget-boolean v3, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    #@37
    if-eq v3, p2, :cond_2

    #@39
    .line 329
    iput-boolean p2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    #@3b
    .line 331
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    if-eqz v3, :cond_2

    #@3f
    .line 333
    :try_start_3
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@41
    invoke-interface {v3, v2, v1}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@44
    :cond_2
    :goto_0
    monitor-exit v4

    #@45
    .line 314
    return-void

    #@46
    .line 334
    :catch_0
    move-exception v0

    #@47
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    #@0
    .prologue
    .line 391
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    #@3
    .line 397
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v6

    #@6
    .line 401
    :try_start_0
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    #@8
    .line 402
    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeBackDisposition:I

    #@a
    .line 403
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    #@c
    .line 404
    iput-boolean p4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mShowImeSwitcher:Z

    #@e
    .line 405
    iget-object v7, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    #@10
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$4;

    #@12
    move-object v1, p0

    #@13
    move-object v2, p1

    #@14
    move v3, p2

    #@15
    move v4, p3

    #@16
    move v5, p4

    #@17
    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService$4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/os/IBinder;IIZ)V

    #@1a
    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v6

    #@1e
    .line 390
    return-void

    #@1f
    .line 397
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v6

    #@21
    throw v0
.end method

.method public setSystemUiVisibility(IILjava/lang/String;)V
    .locals 7
    .param p1, "vis"    # I
    .param p2, "mask"    # I
    .param p3, "cause"    # Ljava/lang/String;

    #@0
    .prologue
    .line 421
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    #@3
    .line 425
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v6

    #@6
    .line 426
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->updateUiVisibilityLocked(II)V

    #@9
    .line 428
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    #@b
    .line 429
    const/high16 v0, 0x3ff0000

    #@d
    and-int v2, p1, v0

    #@f
    .line 430
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    #@11
    .line 431
    const/4 v5, 0x1

    #@12
    move-object v0, p0

    #@13
    move-object v4, p3

    #@14
    .line 427
    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v6

    #@18
    .line 419
    return-void

    #@19
    .line 425
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v6

    #@1b
    throw v0
.end method

.method public setWindowState(II)V
    .locals 2
    .param p1, "window"    # I
    .param p2, "state"    # I

    #@0
    .prologue
    .line 504
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@6
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->setWindowState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 503
    :cond_0
    :goto_0
    return-void

    #@a
    .line 507
    :catch_0
    move-exception v0

    #@b
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public showRecentApps(Z)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z

    #@0
    .prologue
    .line 480
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@6
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->showRecentApps(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 479
    :cond_0
    :goto_0
    return-void

    #@a
    .line 483
    :catch_0
    move-exception v0

    #@b
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 542
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@6
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->startAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 541
    :cond_0
    :goto_0
    return-void

    #@a
    .line 545
    :catch_0
    move-exception v0

    #@b
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toggleRecentApps()V
    .locals 2

    #@0
    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    #@6
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 452
    :cond_0
    :goto_0
    return-void

    #@a
    .line 456
    :catch_0
    move-exception v0

    #@b
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public topAppWindowChanged(Z)V
    .locals 3
    .param p1, "menuVisible"    # Z

    #@0
    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    #@3
    .line 373
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 374
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    #@8
    .line 375
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    #@a
    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$3;

    #@c
    invoke-direct {v2, p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$3;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Z)V

    #@f
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 368
    return-void

    #@14
    .line 373
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method
