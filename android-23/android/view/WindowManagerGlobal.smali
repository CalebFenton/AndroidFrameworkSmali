.class public final Landroid/view/WindowManagerGlobal;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"


# static fields
.field public static final ADD_APP_EXITING:I = -0x4

.field public static final ADD_BAD_APP_TOKEN:I = -0x1

.field public static final ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final ADD_DUPLICATE_ADD:I = -0x5

.field public static final ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final ADD_INVALID_DISPLAY:I = -0x9

.field public static final ADD_INVALID_TYPE:I = -0xa

.field public static final ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final ADD_NOT_APP_TOKEN:I = -0x3

.field public static final ADD_OKAY:I = 0x0

.field public static final ADD_PERMISSION_DENIED:I = -0x8

.field public static final ADD_STARTING_NOT_NEEDED:I = -0x6

.field public static final RELAYOUT_DEFER_SURFACE_DESTROY:I = 0x2

.field public static final RELAYOUT_INSETS_PENDING:I = 0x1

.field public static final RELAYOUT_RES_FIRST_TIME:I = 0x2

.field public static final RELAYOUT_RES_IN_TOUCH_MODE:I = 0x1

.field public static final RELAYOUT_RES_SURFACE_CHANGED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

.field private static sWindowManagerService:Landroid/view/IWindowManager;

.field private static sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field private final mDyingViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemPropertyUpdater:Ljava/lang/Runnable;

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/view/WindowManagerGlobal;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/view/WindowManagerGlobal;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 106
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    #@a
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    #@11
    .line 109
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@18
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    .line 110
    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    #@1f
    .line 112
    new-instance v0, Landroid/util/ArraySet;

    #@21
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@24
    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    #@26
    .line 116
    return-void
.end method

.method private doTrimForeground()V
    .locals 5

    #@0
    .prologue
    .line 472
    const/4 v0, 0x0

    #@1
    .line 473
    .local v0, "hasVisibleWindows":Z
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 474
    :try_start_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v3

    #@a
    add-int/lit8 v1, v3, -0x1

    #@c
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@e
    .line 475
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/view/ViewRootImpl;

    #@16
    .line 476
    .local v2, "root":Landroid/view/ViewRootImpl;
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@18
    if-eqz v3, :cond_0

    #@1a
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_0

    #@20
    .line 477
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@22
    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 478
    const/4 v0, 0x1

    #@27
    .line 474
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 480
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    goto :goto_1

    #@2e
    .line 473
    .end local v1    # "i":I
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v4

    #@30
    throw v3

    #@31
    .restart local v1    # "i":I
    :cond_1
    monitor-exit v4

    #@32
    .line 484
    if-nez v0, :cond_2

    #@34
    .line 486
    const/16 v3, 0x50

    #@36
    .line 485
    invoke-static {v3}, Landroid/view/HardwareRenderer;->trimMemory(I)V

    #@39
    .line 471
    :cond_2
    return-void
.end method

.method private findViewLocked(Landroid/view/View;Z)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "required"    # Z

    #@0
    .prologue
    .line 422
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .line 423
    .local v0, "index":I
    if-eqz p2, :cond_0

    #@8
    if-gez v0, :cond_0

    #@a
    .line 424
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "View="

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, " not attached to window manager"

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 426
    :cond_0
    return v0
.end method

.method public static getInstance()Landroid/view/WindowManagerGlobal;
    .locals 2

    #@0
    .prologue
    .line 124
    const-class v1, Landroid/view/WindowManagerGlobal;

    #@2
    monitor-enter v1

    #@3
    .line 125
    :try_start_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 126
    new-instance v0, Landroid/view/WindowManagerGlobal;

    #@9
    invoke-direct {v0}, Landroid/view/WindowManagerGlobal;-><init>()V

    #@c
    sput-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    #@e
    .line 128
    :cond_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 124
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public static getWindowManagerService()Landroid/view/IWindowManager;
    .locals 4

    #@0
    .prologue
    .line 133
    const-class v2, Landroid/view/WindowManagerGlobal;

    #@2
    monitor-enter v2

    #@3
    .line 134
    :try_start_0
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 136
    const-string/jumbo v1, "window"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v1

    #@e
    .line 135
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@11
    move-result-object v1

    #@12
    sput-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 138
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    #@17
    move-result-object v1

    #@18
    sput-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    #@1a
    .line 139
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    #@1c
    invoke-interface {v1}, Landroid/view/IWindowManager;->getCurrentAnimatorScale()F

    #@1f
    move-result v1

    #@20
    invoke-static {v1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    monitor-exit v2

    #@26
    return-object v1

    #@27
    .line 140
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    #@28
    .line 141
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "WindowManager"

    #@2b
    const-string/jumbo v3, "Failed to get WindowManagerService, cannot set animator scale"

    #@2e
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 133
    :catchall_0
    move-exception v1

    #@33
    monitor-exit v2

    #@34
    throw v1
.end method

.method private static getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .locals 2
    .param p0, "root"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@7
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "/"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 541
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getClass()Ljava/lang/Class;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 541
    const/16 v1, 0x40

    #@24
    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 541
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->hashCode()I

    #@2b
    move-result v1

    #@2c
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    return-object v0
.end method

.method public static getWindowSession()Landroid/view/IWindowSession;
    .locals 7

    #@0
    .prologue
    .line 149
    const-class v4, Landroid/view/WindowManagerGlobal;

    #@2
    monitor-enter v4

    #@3
    .line 150
    :try_start_0
    sget-object v3, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v3, :cond_0

    #@7
    .line 152
    :try_start_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    #@a
    move-result-object v1

    #@b
    .line 153
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    #@e
    move-result-object v2

    #@f
    .line 155
    .local v2, "windowManager":Landroid/view/IWindowManager;
    new-instance v3, Landroid/view/WindowManagerGlobal$1;

    #@11
    invoke-direct {v3}, Landroid/view/WindowManagerGlobal$1;-><init>()V

    #@14
    .line 161
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getClient()Lcom/android/internal/view/IInputMethodClient;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputContext()Lcom/android/internal/view/IInputContext;

    #@1b
    move-result-object v6

    #@1c
    .line 154
    invoke-interface {v2, v3, v5, v6}, Landroid/view/IWindowManager;->openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    #@1f
    move-result-object v3

    #@20
    sput-object v3, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 166
    .end local v2    # "windowManager":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v3, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    monitor-exit v4

    #@25
    return-object v3

    #@26
    .line 162
    :catch_0
    move-exception v0

    #@27
    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "WindowManager"

    #@2a
    const-string/jumbo v5, "Failed to open window session"

    #@2d
    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@30
    goto :goto_0

    #@31
    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@32
    monitor-exit v4

    #@33
    throw v3
.end method

.method public static initialize()V
    .locals 0

    #@0
    .prologue
    .line 120
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    #@3
    .line 119
    return-void
.end method

.method public static peekWindowSession()Landroid/view/IWindowSession;
    .locals 2

    #@0
    .prologue
    .line 171
    const-class v0, Landroid/view/WindowManagerGlobal;

    #@2
    monitor-enter v0

    #@3
    .line 172
    :try_start_0
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 171
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method private removeViewLocked(IZ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "immediate"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 388
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Landroid/view/ViewRootImpl;

    #@9
    .line 389
    .local v2, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    #@c
    move-result-object v3

    #@d
    .line 391
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    #@f
    .line 392
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    #@12
    move-result-object v1

    #@13
    .line 393
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    #@15
    .line 394
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Landroid/view/View;

    #@1d
    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    #@24
    .line 397
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->die(Z)Z

    #@27
    move-result v0

    #@28
    .line 398
    .local v0, "deferred":Z
    if-eqz v3, :cond_1

    #@2a
    .line 399
    invoke-virtual {v3, v5}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    #@2d
    .line 400
    if-eqz v0, :cond_1

    #@2f
    .line 401
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    #@31
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@34
    .line 387
    :cond_1
    return-void
.end method

.method public static shouldDestroyEglContext(I)Z
    .locals 2
    .param p0, "trimLevel"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 432
    const/16 v0, 0x50

    #@3
    if-lt p0, v0, :cond_0

    #@5
    .line 433
    return v1

    #@6
    .line 435
    :cond_0
    const/16 v0, 0x3c

    #@8
    if-lt p0, v0, :cond_1

    #@a
    .line 436
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 439
    :cond_1
    const/4 v0, 0x0

    #@11
    return v0

    #@12
    .line 437
    :cond_2
    return v1
.end method

.method public static trimForeground()V
    .locals 2

    #@0
    .prologue
    .line 465
    sget-boolean v1, Landroid/view/HardwareRenderer;->sTrimForeground:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 466
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@d
    move-result-object v0

    #@e
    .line 467
    .local v0, "wm":Landroid/view/WindowManagerGlobal;
    invoke-direct {v0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    #@11
    .line 464
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "parentWindow"    # Landroid/view/Window;

    #@0
    .prologue
    .line 233
    if-nez p1, :cond_0

    #@2
    .line 234
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v10, "view must not be null"

    #@7
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v9

    #@b
    .line 236
    :cond_0
    if-nez p3, :cond_1

    #@d
    .line 237
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v10, "display must not be null"

    #@12
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v9

    #@16
    .line 239
    :cond_1
    instance-of v9, p2, Landroid/view/WindowManager$LayoutParams;

    #@18
    if-nez v9, :cond_2

    #@1a
    .line 240
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v10, "Params must be WindowManager.LayoutParams"

    #@1f
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v9

    #@23
    :cond_2
    move-object v8, p2

    #@24
    .line 243
    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    #@26
    .line 244
    .local v8, "wparams":Landroid/view/WindowManager$LayoutParams;
    if-eqz p4, :cond_7

    #@28
    .line 245
    move-object/from16 v0, p4

    #@2a
    invoke-virtual {v0, v8}, Landroid/view/Window;->adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V

    #@2d
    .line 258
    :cond_3
    :goto_0
    const/4 v6, 0x0

    #@2e
    .line 260
    .local v6, "panelParentView":Landroid/view/View;
    iget-object v10, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    #@30
    monitor-enter v10

    #@31
    .line 262
    :try_start_0
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    #@33
    if-nez v9, :cond_4

    #@35
    .line 263
    new-instance v9, Landroid/view/WindowManagerGlobal$2;

    #@37
    invoke-direct {v9, p0}, Landroid/view/WindowManagerGlobal$2;-><init>(Landroid/view/WindowManagerGlobal;)V

    #@3a
    iput-object v9, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    #@3c
    .line 272
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    #@3e
    invoke-static {v9}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    #@41
    .line 275
    :cond_4
    const/4 v9, 0x0

    #@42
    invoke-direct {p0, p1, v9}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    #@45
    move-result v5

    #@46
    .line 276
    .local v5, "index":I
    if-ltz v5, :cond_5

    #@48
    .line 277
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    #@4a
    invoke-virtual {v9, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@4d
    move-result v9

    #@4e
    if-eqz v9, :cond_8

    #@50
    .line 279
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v9

    #@56
    check-cast v9, Landroid/view/ViewRootImpl;

    #@58
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->doDie()V

    #@5b
    .line 289
    :cond_5
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    #@5d
    const/16 v11, 0x3e8

    #@5f
    if-lt v9, v11, :cond_9

    #@61
    .line 290
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    #@63
    const/16 v11, 0x7cf

    #@65
    if-gt v9, v11, :cond_9

    #@67
    .line 291
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    #@69
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@6c
    move-result v2

    #@6d
    .line 292
    .local v2, "count":I
    const/4 v4, 0x0

    #@6e
    .end local v6    # "panelParentView":Landroid/view/View;
    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_9

    #@70
    .line 293
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@72
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@75
    move-result-object v9

    #@76
    check-cast v9, Landroid/view/ViewRootImpl;

    #@78
    iget-object v9, v9, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    #@7a
    invoke-virtual {v9}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    #@7d
    move-result-object v9

    #@7e
    iget-object v11, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@80
    if-ne v9, v11, :cond_6

    #@82
    .line 294
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    #@84
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@87
    move-result-object v9

    #@88
    move-object v0, v9

    #@89
    check-cast v0, Landroid/view/View;

    #@8b
    move-object v6, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8c
    .line 292
    :cond_6
    add-int/lit8 v4, v4, 0x1

    #@8e
    goto :goto_1

    #@8f
    .line 249
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v5    # "index":I
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@92
    move-result-object v1

    #@93
    .line 250
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_3

    #@95
    .line 251
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@98
    move-result-object v9

    #@99
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    #@9b
    .line 252
    const/high16 v10, 0x20000000

    #@9d
    .line 251
    and-int/2addr v9, v10

    #@9e
    if-eqz v9, :cond_3

    #@a0
    .line 253
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@a2
    const/high16 v10, 0x1000000

    #@a4
    or-int/2addr v9, v10

    #@a5
    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@a7
    goto :goto_0

    #@a8
    .line 281
    .end local v1    # "context":Landroid/content/Context;
    .restart local v5    # "index":I
    .restart local v6    # "panelParentView":Landroid/view/View;
    :cond_8
    :try_start_1
    new-instance v9, Ljava/lang/IllegalStateException;

    #@aa
    new-instance v11, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v12, "View "

    #@b2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v11

    #@b6
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v11

    #@ba
    .line 282
    const-string/jumbo v12, " has already been added to the window manager."

    #@bd
    .line 281
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v11

    #@c1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v11

    #@c5
    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c8
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c9
    .line 260
    .end local v5    # "index":I
    .end local v6    # "panelParentView":Landroid/view/View;
    :catchall_0
    move-exception v9

    #@ca
    monitor-exit v10

    #@cb
    throw v9

    #@cc
    .line 299
    .restart local v5    # "index":I
    :cond_9
    :try_start_2
    new-instance v7, Landroid/view/ViewRootImpl;

    #@ce
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@d1
    move-result-object v9

    #@d2
    move-object/from16 v0, p3

    #@d4
    invoke-direct {v7, v9, v0}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    #@d7
    .line 301
    .local v7, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {p1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@da
    .line 303
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    #@dc
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@df
    .line 304
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@e1
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e4
    .line 305
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    #@e6
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e9
    monitor-exit v10

    #@ea
    .line 310
    :try_start_3
    invoke-virtual {v7, p1, v8, v6}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    #@ed
    .line 232
    return-void

    #@ee
    .line 311
    :catch_0
    move-exception v3

    #@ef
    .line 313
    .local v3, "e":Ljava/lang/RuntimeException;
    iget-object v10, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    #@f1
    monitor-enter v10

    #@f2
    .line 314
    const/4 v9, 0x0

    #@f3
    :try_start_4
    invoke-direct {p0, p1, v9}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    #@f6
    move-result v5

    #@f7
    .line 315
    if-ltz v5, :cond_a

    #@f9
    .line 316
    const/4 v9, 0x1

    #@fa
    invoke-direct {p0, v5, v9}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@fd
    :cond_a
    monitor-exit v10

    #@fe
    .line 319
    throw v3

    #@ff
    .line 313
    :catchall_1
    move-exception v9

    #@100
    monitor-exit v10

    #@101
    throw v9
.end method

.method public changeCanvasOpacity(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opaque"    # Z

    #@0
    .prologue
    .line 569
    if-nez p1, :cond_0

    #@2
    .line 570
    return-void

    #@3
    .line 572
    :cond_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 573
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    add-int/lit8 v0, v1, -0x1

    #@e
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@10
    .line 574
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    #@18
    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@1a
    if-ne v1, p1, :cond_1

    #@1c
    .line 575
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/view/ViewRootImpl;

    #@24
    invoke-virtual {v1, p2}, Landroid/view/ViewRootImpl;->changeCanvasOpacity(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    monitor-exit v2

    #@28
    .line 576
    return-void

    #@29
    .line 573
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_0

    #@2c
    :cond_2
    monitor-exit v2

    #@2d
    .line 568
    return-void

    #@2e
    .line 572
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1
.end method

.method public closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    #@0
    .prologue
    .line 363
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 364
    :try_start_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 366
    .local v0, "count":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@c
    .line 369
    if-eqz p1, :cond_0

    #@e
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    #@16
    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@18
    if-ne v4, p1, :cond_2

    #@1a
    .line 370
    :cond_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Landroid/view/ViewRootImpl;

    #@22
    .line 373
    .local v3, "root":Landroid/view/ViewRootImpl;
    if-eqz p2, :cond_1

    #@24
    .line 374
    new-instance v2, Landroid/view/WindowLeaked;

    #@26
    .line 375
    new-instance v4, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    const-string/jumbo v6, " "

    #@32
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    const-string/jumbo v6, " has leaked window "

    #@3d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    .line 376
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    #@44
    move-result-object v6

    #@45
    .line 375
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    .line 376
    const-string/jumbo v6, " that was originally added here"

    #@4c
    .line 375
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    .line 374
    invoke-direct {v2, v4}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    #@57
    .line 377
    .local v2, "leak":Landroid/view/WindowLeaked;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getLocation()Landroid/view/WindowLeaked;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Landroid/view/WindowLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v2, v4}, Landroid/view/WindowLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@62
    .line 378
    const-string/jumbo v4, "WindowManager"

    #@65
    const-string/jumbo v6, ""

    #@68
    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6b
    .line 381
    .end local v2    # "leak":Landroid/view/WindowLeaked;
    :cond_1
    const/4 v4, 0x0

    #@6c
    invoke-direct {p0, v1, v4}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6f
    .line 366
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@71
    goto :goto_0

    #@72
    :cond_3
    monitor-exit v5

    #@73
    .line 362
    return-void

    #@74
    .line 363
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    #@75
    monitor-exit v5

    #@76
    throw v4
.end method

.method doRemoveView(Landroid/view/ViewRootImpl;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 407
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 408
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@8
    move-result v0

    #@9
    .line 409
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@b
    .line 410
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@10
    .line 411
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@15
    .line 412
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/view/View;

    #@1d
    .line 413
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    #@1f
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    monitor-exit v3

    #@23
    .line 416
    sget-boolean v2, Landroid/view/HardwareRenderer;->sTrimForeground:Z

    #@25
    if-eqz v2, :cond_1

    #@27
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 417
    invoke-direct {p0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    #@30
    .line 406
    :cond_1
    return-void

    #@31
    .line 407
    .end local v0    # "index":I
    :catchall_0
    move-exception v2

    #@32
    monitor-exit v3

    #@33
    throw v2
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 491
    new-instance v4, Ljava/io/FileOutputStream;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@7
    .line 492
    .local v4, "fout":Ljava/io/FileOutputStream;
    new-instance v8, Lcom/android/internal/util/FastPrintWriter;

    #@9
    invoke-direct {v8, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@c
    .line 494
    .local v8, "pw":Ljava/io/PrintWriter;
    :try_start_0
    move-object/from16 v0, p0

    #@e
    iget-object v13, v0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    #@10
    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@11
    .line 495
    :try_start_1
    move-object/from16 v0, p0

    #@13
    iget-object v12, v0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v2

    #@19
    .line 497
    .local v2, "count":I
    const-string/jumbo v12, "Profile data in ms:"

    #@1c
    invoke-virtual {v8, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f
    .line 499
    const/4 v5, 0x0

    #@20
    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    #@22
    .line 500
    move-object/from16 v0, p0

    #@24
    iget-object v12, v0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v10

    #@2a
    check-cast v10, Landroid/view/ViewRootImpl;

    #@2c
    .line 501
    .local v10, "root":Landroid/view/ViewRootImpl;
    invoke-static {v10}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    #@2f
    move-result-object v7

    #@30
    .line 502
    .local v7, "name":Ljava/lang/String;
    const-string/jumbo v12, "\n\t%s (visibility=%d)"

    #@33
    const/4 v14, 0x2

    #@34
    new-array v14, v14, [Ljava/lang/Object;

    #@36
    const/4 v15, 0x0

    #@37
    aput-object v7, v14, v15

    #@39
    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    #@3c
    move-result v15

    #@3d
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v15

    #@41
    const/16 v16, 0x1

    #@43
    aput-object v15, v14, v16

    #@45
    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@48
    .line 505
    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    #@4b
    move-result-object v12

    #@4c
    iget-object v12, v12, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4e
    .line 504
    iget-object v9, v12, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@50
    .line 506
    .local v9, "renderer":Landroid/view/HardwareRenderer;
    if-eqz v9, :cond_0

    #@52
    .line 507
    move-object/from16 v0, p1

    #@54
    move-object/from16 v1, p2

    #@56
    invoke-virtual {v9, v8, v0, v1}, Landroid/view/HardwareRenderer;->dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    #@59
    .line 499
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 511
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "renderer":Landroid/view/HardwareRenderer;
    .end local v10    # "root":Landroid/view/ViewRootImpl;
    :cond_1
    const-string/jumbo v12, "\nView hierarchy:\n"

    #@5f
    invoke-virtual {v8, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@62
    .line 513
    const/4 v11, 0x0

    #@63
    .line 514
    .local v11, "viewsCount":I
    const/4 v3, 0x0

    #@64
    .line 515
    .local v3, "displayListsSize":I
    const/4 v12, 0x2

    #@65
    new-array v6, v12, [I

    #@67
    .line 517
    .local v6, "info":[I
    const/4 v5, 0x0

    #@68
    :goto_1
    if-ge v5, v2, :cond_2

    #@6a
    .line 518
    move-object/from16 v0, p0

    #@6c
    iget-object v12, v0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@6e
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@71
    move-result-object v10

    #@72
    check-cast v10, Landroid/view/ViewRootImpl;

    #@74
    .line 519
    .restart local v10    # "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v10, v6}, Landroid/view/ViewRootImpl;->dumpGfxInfo([I)V

    #@77
    .line 521
    invoke-static {v10}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    #@7a
    move-result-object v7

    #@7b
    .line 522
    .restart local v7    # "name":Ljava/lang/String;
    const-string/jumbo v12, "  %s\n  %d views, %.2f kB of display lists"

    #@7e
    const/4 v14, 0x3

    #@7f
    new-array v14, v14, [Ljava/lang/Object;

    #@81
    .line 523
    const/4 v15, 0x0

    #@82
    aput-object v7, v14, v15

    #@84
    const/4 v15, 0x0

    #@85
    aget v15, v6, v15

    #@87
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8a
    move-result-object v15

    #@8b
    const/16 v16, 0x1

    #@8d
    aput-object v15, v14, v16

    #@8f
    const/4 v15, 0x1

    #@90
    aget v15, v6, v15

    #@92
    int-to-float v15, v15

    #@93
    const/high16 v16, 0x44800000    # 1024.0f

    #@95
    div-float v15, v15, v16

    #@97
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@9a
    move-result-object v15

    #@9b
    const/16 v16, 0x2

    #@9d
    aput-object v15, v14, v16

    #@9f
    .line 522
    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@a2
    .line 524
    const-string/jumbo v12, "\n\n"

    #@a5
    const/4 v14, 0x0

    #@a6
    new-array v14, v14, [Ljava/lang/Object;

    #@a8
    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@ab
    .line 526
    const/4 v12, 0x0

    #@ac
    aget v12, v6, v12

    #@ae
    add-int/2addr v11, v12

    #@af
    .line 527
    const/4 v12, 0x1

    #@b0
    aget v12, v6, v12

    #@b2
    add-int/2addr v3, v12

    #@b3
    .line 517
    add-int/lit8 v5, v5, 0x1

    #@b5
    goto :goto_1

    #@b6
    .line 530
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "root":Landroid/view/ViewRootImpl;
    :cond_2
    const-string/jumbo v12, "\nTotal ViewRootImpl: %d\n"

    #@b9
    const/4 v14, 0x1

    #@ba
    new-array v14, v14, [Ljava/lang/Object;

    #@bc
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bf
    move-result-object v15

    #@c0
    const/16 v16, 0x0

    #@c2
    aput-object v15, v14, v16

    #@c4
    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@c7
    .line 531
    const-string/jumbo v12, "Total Views:        %d\n"

    #@ca
    const/4 v14, 0x1

    #@cb
    new-array v14, v14, [Ljava/lang/Object;

    #@cd
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d0
    move-result-object v15

    #@d1
    const/16 v16, 0x0

    #@d3
    aput-object v15, v14, v16

    #@d5
    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@d8
    .line 532
    const-string/jumbo v12, "Total DisplayList:  %.2f kB\n\n"

    #@db
    const/4 v14, 0x1

    #@dc
    new-array v14, v14, [Ljava/lang/Object;

    #@de
    int-to-float v15, v3

    #@df
    const/high16 v16, 0x44800000    # 1024.0f

    #@e1
    div-float v15, v15, v16

    #@e3
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@e6
    move-result-object v15

    #@e7
    const/16 v16, 0x0

    #@e9
    aput-object v15, v14, v16

    #@eb
    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ee
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@ef
    .line 535
    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    #@f2
    .line 490
    return-void

    #@f3
    .line 494
    .end local v2    # "count":I
    .end local v3    # "displayListsSize":I
    .end local v5    # "i":I
    .end local v6    # "info":[I
    .end local v11    # "viewsCount":I
    :catchall_0
    move-exception v12

    #@f4
    :try_start_3
    monitor-exit v13

    #@f5
    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@f6
    .line 534
    :catchall_1
    move-exception v12

    #@f7
    .line 535
    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    #@fa
    .line 534
    throw v12
.end method

.method public getRootView(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 221
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 222
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v2

    #@9
    add-int/lit8 v0, v2, -0x1

    #@b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@d
    .line 223
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/view/ViewRootImpl;

    #@15
    .line 224
    .local v1, "root":Landroid/view/ViewRootImpl;
    invoke-static {v1}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v2

    #@23
    monitor-exit v3

    #@24
    return-object v2

    #@25
    .line 222
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@27
    goto :goto_0

    #@28
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :cond_1
    monitor-exit v3

    #@29
    .line 228
    const/4 v2, 0x0

    #@2a
    return-object v2

    #@2b
    .line 221
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    #@2c
    monitor-exit v3

    #@2d
    throw v2
.end method

.method public getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 188
    new-instance v7, Ljava/util/ArrayList;

    #@2
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 189
    .local v7, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v9

    #@8
    .line 190
    :try_start_0
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v3

    #@e
    .line 191
    .local v3, "numRoots":I
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_5

    #@11
    .line 192
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    #@19
    .line 193
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v8, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@1b
    if-nez v8, :cond_1

    #@1d
    .line 191
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 196
    :cond_1
    iget-object v8, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@22
    if-eq v8, p1, :cond_3

    #@24
    .line 197
    const/4 v1, 0x0

    #@25
    .line 198
    .local v1, "isChild":Z
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    #@27
    const/16 v10, 0x3e8

    #@29
    if-lt v8, v10, :cond_2

    #@2b
    .line 199
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2d
    const/16 v10, 0x7cf

    #@2f
    if-gt v8, v10, :cond_2

    #@31
    .line 200
    const/4 v2, 0x0

    #@32
    .local v2, "j":I
    :goto_2
    if-ge v2, v3, :cond_2

    #@34
    .line 201
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v6

    #@3a
    check-cast v6, Landroid/view/View;

    #@3c
    .line 202
    .local v6, "viewj":Landroid/view/View;
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v5

    #@42
    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    #@44
    .line 203
    .local v5, "paramsj":Landroid/view/WindowManager$LayoutParams;
    iget-object v8, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@46
    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@49
    move-result-object v10

    #@4a
    if-ne v8, v10, :cond_4

    #@4c
    .line 204
    iget-object v8, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@4e
    if-ne v8, p1, :cond_4

    #@50
    .line 205
    const/4 v1, 0x1

    #@51
    .line 210
    .end local v2    # "j":I
    .end local v5    # "paramsj":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "viewj":Landroid/view/View;
    :cond_2
    if-eqz v1, :cond_0

    #@53
    .line 214
    .end local v1    # "isChild":Z
    :cond_3
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@58
    move-result-object v8

    #@59
    check-cast v8, Landroid/view/ViewRootImpl;

    #@5b
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    goto :goto_1

    #@5f
    .line 189
    .end local v0    # "i":I
    .end local v3    # "numRoots":I
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    :catchall_0
    move-exception v8

    #@60
    monitor-exit v9

    #@61
    throw v8

    #@62
    .line 200
    .restart local v0    # "i":I
    .restart local v1    # "isChild":Z
    .restart local v2    # "j":I
    .restart local v3    # "numRoots":I
    .restart local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "paramsj":Landroid/view/WindowManager$LayoutParams;
    .restart local v6    # "viewj":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@64
    goto :goto_2

    #@65
    .end local v1    # "isChild":Z
    .end local v2    # "j":I
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "paramsj":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "viewj":Landroid/view/View;
    :cond_5
    monitor-exit v9

    #@66
    .line 217
    return-object v7
.end method

.method public getViewRootNames()[Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 177
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 178
    :try_start_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v2

    #@9
    .line 179
    .local v2, "numRoots":I
    new-array v1, v2, [Ljava/lang/String;

    #@b
    .line 180
    .local v1, "mViewRoots":[Ljava/lang/String;
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@e
    .line 181
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroid/view/ViewRootImpl;

    #@16
    invoke-static {v3}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    aput-object v3, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 180
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    :cond_0
    monitor-exit v4

    #@20
    .line 183
    return-object v1

    #@21
    .line 177
    .end local v0    # "i":I
    .end local v1    # "mViewRoots":[Ljava/lang/String;
    .end local v2    # "numRoots":I
    :catchall_0
    move-exception v3

    #@22
    monitor-exit v4

    #@23
    throw v3
.end method

.method public removeView(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "immediate"    # Z

    #@0
    .prologue
    .line 345
    if-nez p1, :cond_0

    #@2
    .line 346
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "view must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 349
    :cond_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v3

    #@e
    .line 350
    const/4 v2, 0x1

    #@f
    :try_start_0
    invoke-direct {p0, p1, v2}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    #@12
    move-result v1

    #@13
    .line 351
    .local v1, "index":I
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroid/view/ViewRootImpl;

    #@1b
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    #@1e
    move-result-object v0

    #@1f
    .line 352
    .local v0, "curView":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 353
    if-ne v0, p1, :cond_1

    #@24
    monitor-exit v3

    #@25
    .line 354
    return-void

    #@26
    .line 357
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    #@28
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v5, "Calling with view "

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 358
    const-string/jumbo v5, " but the ViewAncestor is attached to "

    #@3b
    .line 357
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    .line 349
    .end local v0    # "curView":Landroid/view/View;
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    #@4c
    monitor-exit v3

    #@4d
    throw v2
.end method

.method public reportNewConfiguration(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 557
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 558
    :try_start_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    .line 559
    .local v1, "count":I
    new-instance v0, Landroid/content/res/Configuration;

    #@b
    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 560
    .end local p1    # "config":Landroid/content/res/Configuration;
    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@11
    .line 561
    :try_start_1
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Landroid/view/ViewRootImpl;

    #@19
    .line 562
    .local v3, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1c
    .line 560
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :cond_0
    monitor-exit v5

    #@20
    .line 556
    return-void

    #@21
    .line 557
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .restart local p1    # "config":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v4

    #@22
    :goto_1
    monitor-exit v5

    #@23
    throw v4

    #@24
    .end local p1    # "config":Landroid/content/res/Configuration;
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :catchall_1
    move-exception v4

    #@25
    move-object p1, v0

    #@26
    .end local v0    # "config":Landroid/content/res/Configuration;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    goto :goto_1
.end method

.method public setStoppedState(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "stopped"    # Z

    #@0
    .prologue
    .line 545
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 546
    :try_start_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 547
    .local v0, "count":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@c
    .line 548
    if-eqz p1, :cond_0

    #@e
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    #@16
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@18
    if-ne v3, p1, :cond_1

    #@1a
    .line 549
    :cond_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/view/ViewRootImpl;

    #@22
    .line 550
    .local v2, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->setWindowStopped(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 547
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    :cond_2
    monitor-exit v4

    #@29
    .line 544
    return-void

    #@2a
    .line 545
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@2b
    monitor-exit v4

    #@2c
    throw v3
.end method

.method public trimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    #@0
    .prologue
    .line 443
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_2

    #@6
    .line 444
    invoke-static {p1}, Landroid/view/WindowManagerGlobal;->shouldDestroyEglContext(I)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 447
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 448
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v1

    #@15
    add-int/lit8 v0, v1, -0x1

    #@17
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@19
    .line 449
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroid/view/ViewRootImpl;

    #@21
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 448
    add-int/lit8 v0, v0, -0x1

    #@26
    goto :goto_0

    #@27
    :cond_0
    monitor-exit v2

    #@28
    .line 453
    const/16 p1, 0x50

    #@2a
    .line 456
    .end local v0    # "i":I
    :cond_1
    invoke-static {p1}, Landroid/view/HardwareRenderer;->trimMemory(I)V

    #@2d
    .line 458
    sget-boolean v1, Landroid/view/HardwareRenderer;->sTrimForeground:Z

    #@2f
    if-eqz v1, :cond_2

    #@31
    .line 459
    invoke-direct {p0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    #@34
    .line 442
    :cond_2
    return-void

    #@35
    .line 447
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 324
    if-nez p1, :cond_0

    #@2
    .line 325
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "view must not be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 327
    :cond_0
    instance-of v3, p2, Landroid/view/WindowManager$LayoutParams;

    #@d
    if-nez v3, :cond_1

    #@f
    .line 328
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v4, "Params must be WindowManager.LayoutParams"

    #@14
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v3

    #@18
    :cond_1
    move-object v2, p2

    #@19
    .line 331
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    #@1b
    .line 333
    .local v2, "wparams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@1e
    .line 335
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    #@20
    monitor-enter v4

    #@21
    .line 336
    const/4 v3, 0x1

    #@22
    :try_start_0
    invoke-direct {p0, p1, v3}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    #@25
    move-result v0

    #@26
    .line 337
    .local v0, "index":I
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Landroid/view/ViewRootImpl;

    #@2e
    .line 338
    .local v1, "root":Landroid/view/ViewRootImpl;
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@33
    .line 339
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@38
    .line 340
    const/4 v3, 0x0

    #@39
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    monitor-exit v4

    #@3d
    .line 323
    return-void

    #@3e
    .line 335
    .end local v0    # "index":I
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :catchall_0
    move-exception v3

    #@3f
    monitor-exit v4

    #@40
    throw v3
.end method
