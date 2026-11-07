.class public Landroid/view/SurfaceControlViewHost;
.super Ljava/lang/Object;
.source "SurfaceControlViewHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;,
        Landroid/view/SurfaceControlViewHost$SurfacePackage;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceControlViewHost"


# instance fields
.field private blacklist mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

.field private final blacklist mCloseGuard:Ldalvik/system/CloseGuard;

.field private blacklist mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

.field private blacklist mReleased:Z

.field private blacklist mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

.field private blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;

.field private final blacklist mWm:Landroid/view/WindowlessWindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWm(Landroid/view/SurfaceControlViewHost;)Landroid/view/WindowlessWindowManager;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "hostToken"    # Landroid/os/IBinder;

    .line 352
    if-nez p3, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/window/InputTransferToken;

    invoke-direct {v0, p3}, Landroid/window/InputTransferToken;-><init>(Landroid/os/IBinder;)V

    :goto_9
    const-string/jumbo v1, "untracked"

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V
    .registers 8
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "d"    # Landroid/view/Display;
    .param p3, "wwm"    # Landroid/view/WindowlessWindowManager;
    .param p4, "callsite"    # Ljava/lang/String;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    .line 128
    new-instance v0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;-><init>(Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControlViewHost-IA;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    .line 327
    iget-object v0, p3, Landroid/view/WindowlessWindowManager;->mRootSurface:Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 328
    iput-object p3, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    .line 329
    new-instance v0, Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    new-instance v2, Landroid/view/WindowlessWindowLayout;

    invoke-direct {v2}, Landroid/view/WindowlessWindowLayout;-><init>()V

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Landroid/view/WindowLayout;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 330
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1, p4}, Ldalvik/system/CloseGuard;->openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceControlViewHost;->setConfigCallback(Landroid/content/Context;Landroid/view/Display;)V

    .line 333
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->addWindowlessRoot(Landroid/view/ViewRootImpl;)V

    .line 335
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    .line 336
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "hostInputTransferToken"    # Landroid/window/InputTransferToken;

    .line 372
    const-string/jumbo v0, "untracked"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "hostToken"    # Landroid/window/InputTransferToken;
    .param p4, "callsite"    # Ljava/lang/String;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    .line 128
    new-instance v0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;-><init>(Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControlViewHost-IA;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    .line 391
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 392
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 393
    const-string v1, "SurfaceControlViewHost"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SurfaceControlViewHost["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 396
    new-instance v0, Landroid/view/WindowlessWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1, v2, p3}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    .line 399
    new-instance v0, Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    new-instance v2, Landroid/view/WindowlessWindowLayout;

    invoke-direct {v2}, Landroid/view/WindowlessWindowLayout;-><init>()V

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Landroid/view/WindowLayout;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 400
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1, p4}, Ldalvik/system/CloseGuard;->openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceControlViewHost;->setConfigCallback(Landroid/content/Context;Landroid/view/Display;)V

    .line 403
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->addWindowlessRoot(Landroid/view/ViewRootImpl;)V

    .line 405
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    .line 406
    return-void
.end method

.method private blacklist addWindowToken(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 575
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 576
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 577
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 578
    return-void
.end method

.method private blacklist doRelease(Z)V
    .registers 4
    .param p1, "immediate"    # Z

    .line 553
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

    if-eqz v0, :cond_c

    .line 554
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->removeConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

    .line 558
    :cond_c
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->die(Z)Z

    .line 559
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->removeWindowlessRoot(Landroid/view/ViewRootImpl;)V

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    .line 561
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 562
    return-void
.end method

.method static synthetic blacklist lambda$setConfigCallback$0(Landroid/os/IBinder;Landroid/view/Display;Landroid/content/res/Configuration;)V
    .registers 6
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "d"    # Landroid/view/Display;
    .param p2, "conf"    # Landroid/content/res/Configuration;

    .line 411
    instance-of v0, p0, Landroid/window/WindowTokenClient;

    if-eqz v0, :cond_f

    .line 412
    move-object v0, p0

    check-cast v0, Landroid/window/WindowTokenClient;

    .line 413
    .local v0, "w":Landroid/window/WindowTokenClient;
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    .line 415
    .end local v0    # "w":Landroid/window/WindowTokenClient;
    :cond_f
    return-void
.end method

.method private blacklist setConfigCallback(Landroid/content/Context;Landroid/view/Display;)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "d"    # Landroid/view/Display;

    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    .line 410
    .local v0, "token":Landroid/os/IBinder;
    new-instance v1, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p2}, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder;Landroid/view/Display;)V

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost;->mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

    .line 417
    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mConfigChangedCallback:Landroid/view/ViewRootImpl$ConfigChangedCallback;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 418
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 425
    iget-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    if-eqz v0, :cond_5

    .line 426
    return-void

    .line 428
    :cond_5
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_e

    .line 429
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 432
    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceControlViewHost;->doRelease(Z)V

    .line 433
    return-void
.end method

.method public blacklist getInputTransferToken()Landroid/window/InputTransferToken;
    .registers 3

    .line 571
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getWindowToken()Landroid/view/IWindow;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowlessWindowManager;->getInputTransferToken(Landroid/os/IBinder;)Landroid/window/InputTransferToken;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;
    .registers 2

    .line 455
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object v0
.end method

.method public whitelist getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .registers 6

    .line 443
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    if-eqz v0, :cond_1f

    .line 444
    new-instance v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    new-instance v1, Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v3, "getSurfacePackage"

    invoke-direct {v1, v2, v3}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    .line 445
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v3

    iget-object v4, p0, Landroid/view/SurfaceControlViewHost;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControlViewHost$SurfacePackage;-><init>(Landroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/window/InputTransferToken;Landroid/view/ISurfaceControlViewHost;)V

    .line 444
    return-object v0

    .line 447
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getView()Landroid/view/View;
    .registers 2

    .line 491
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWindowToken()Landroid/view/IWindow;
    .registers 2

    .line 499
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    return-object v0
.end method

.method public blacklist getWindowlessWM()Landroid/view/WindowlessWindowManager;
    .registers 2

    .line 507
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    return-object v0
.end method

.method public whitelist relayout(II)V
    .registers 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 536
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/4 v3, 0x2

    move v1, p1

    move v2, p2

    .end local p1    # "width":I
    .end local p2    # "height":I
    .local v1, "width":I
    .local v2, "height":I
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 539
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 540
    return-void
.end method

.method public blacklist relayout(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 526
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 527
    return-void
.end method

.method public blacklist relayout(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V
    .registers 6
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "callback"    # Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;

    .line 516
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 517
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    const-string/jumbo v2, "scvh_relayout"

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->setReportNextDraw(ZLjava/lang/String;)V

    .line 518
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/WindowlessWindowManager;->setCompletionCallback(Landroid/os/IBinder;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V

    .line 519
    return-void
.end method

.method public whitelist release()V
    .registers 2

    .line 549
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/SurfaceControlViewHost;->doRelease(Z)V

    .line 550
    return-void
.end method

.method public whitelist setView(Landroid/view/View;II)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 468
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/4 v3, 0x2

    move v1, p2

    move v2, p3

    .end local p2    # "width":I
    .end local p3    # "height":I
    .local v1, "width":I
    .local v2, "height":I
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 471
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 472
    return-void
.end method

.method public blacklist setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 479
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 481
    invoke-direct {p0, p2}, Landroid/view/SurfaceControlViewHost;->addWindowToken(Landroid/view/WindowManager$LayoutParams;)V

    .line 482
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V

    .line 484
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;-><init>(Landroid/view/WindowlessWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl;->setBackKeyCallbackForWindowlessWindow(Ljava/util/function/Predicate;)V

    .line 485
    return-void
.end method

.method public whitelist transferTouchGestureToHost()Z
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 591
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 592
    return v1

    .line 594
    :cond_6
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 596
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v2

    .line 597
    .local v2, "embeddedToken":Landroid/window/InputTransferToken;
    iget-object v3, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    iget-object v3, v3, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    .line 598
    .local v3, "hostToken":Landroid/window/InputTransferToken;
    if-eqz v2, :cond_2d

    if-nez v3, :cond_20

    goto :goto_2d

    .line 602
    :cond_20
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v1

    iget-object v4, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    iget-object v4, v4, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    invoke-interface {v0, v1, v4}, Landroid/view/WindowManager;->transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z

    move-result v1

    return v1

    .line 599
    :cond_2d
    :goto_2d
    const-string v4, "SurfaceControlViewHost"

    const-string v5, "Failed to transferTouchGestureToHost. Host or embedded token is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    return v1
.end method
