.class public Landroid/view/WindowManagerImpl;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDefaultToken:Landroid/os/IBinder;

.field private final greylist mGlobal:Landroid/view/WindowManagerGlobal;

.field private final blacklist mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mParentWindow:Landroid/view/Window;

.field private final blacklist mWindowContextToken:Landroid/os/IBinder;

.field private final blacklist mWindowMetricsController:Landroid/window/WindowMetricsController;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V

    .line 121
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentWindow"    # Landroid/view/Window;
    .param p3, "windowContextToken"    # Landroid/os/IBinder;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    nop

    .line 92
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    .line 125
    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    .line 127
    iput-object p3, p0, Landroid/view/WindowManagerImpl;->mWindowContextToken:Landroid/os/IBinder;

    .line 128
    new-instance v0, Landroid/window/WindowMetricsController;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/window/WindowMetricsController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mWindowMetricsController:Landroid/window/WindowMetricsController;

    .line 129
    return-void
.end method

.method private blacklist applyTokens(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 169
    instance-of v0, p1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_21

    .line 172
    move-object v0, p1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 173
    .local v0, "wparams":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, v1}, Landroid/view/WindowManagerImpl;->assertWindowContextTypeMatches(I)V

    .line 175
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    if-nez v1, :cond_1c

    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_1c

    .line 176
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 178
    :cond_1c
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowContextToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 179
    return-void

    .line 170
    .end local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params must be WindowManager.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist assertWindowContextTypeMatches(I)V
    .registers 6
    .param p1, "windowType"    # I

    .line 182
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/window/WindowProvider;

    if-nez v0, :cond_7

    .line 183
    return-void

    .line 187
    :cond_7
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_10

    const/16 v0, 0x7cf

    if-gt p1, v0, :cond_10

    .line 188
    return-void

    .line 190
    :cond_10
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/window/WindowProvider;

    .line 191
    .local v0, "windowProvider":Landroid/window/WindowProvider;
    invoke-interface {v0}, Landroid/window/WindowProvider;->getWindowType()I

    move-result v1

    if-ne v1, p1, :cond_1b

    .line 192
    return-void

    .line 194
    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window type mismatch. Window Context\'s window type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 195
    invoke-interface {v0}, Landroid/window/WindowProvider;->getWindowType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", while LayoutParams\' type is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Please create another Window Context via createWindowContext(getDisplay(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", null) to add window with type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "exception":Ljava/lang/IllegalArgumentException;
    invoke-interface {v0}, Landroid/window/WindowProvider;->getWindowContextOptions()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/window/WindowProviderService;->isWindowProviderService(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 205
    const-string v2, "WindowContext\'s window type must match type in WindowManager.LayoutParams"

    invoke-static {v2, v1}, Landroid/os/StrictMode;->onIncorrectContextUsed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    return-void

    .line 201
    :cond_65
    throw v1
.end method

.method public static blacklist createWindowContextWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    .line 142
    .local v0, "clientToken":Landroid/os/IBinder;
    new-instance v1, Landroid/view/WindowManagerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist addCrossWindowBlurEnabledListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 374
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/CrossWindowBlurListeners;->addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 375
    return-void
.end method

.method public whitelist addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 368
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/view/WindowManagerImpl;->addCrossWindowBlurEnabledListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 369
    return-void
.end method

.method public whitelist addProposedRotationListener(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Ljava/util/function/IntConsumer;

    .line 385
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 386
    const-string v0, "listener must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 387
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/content/Context;->getToken(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v0

    .line 388
    .local v0, "contextToken":Landroid/os/IBinder;
    if-eqz v0, :cond_18

    .line 393
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v1, v0, p1, p2}, Landroid/view/WindowManagerGlobal;->registerProposedRotationListener(Landroid/os/IBinder;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    .line 394
    return-void

    .line 389
    :cond_18
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "The context of this window manager instance must be a UI context, e.g. an Activity or a Context created by Context#createWindowContext()"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist addScreenRecordingCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)I
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 599
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->screenRecordingCallbacks()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 600
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 601
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 602
    invoke-static {}, Landroid/view/ScreenRecordingCallbacks;->getInstance()Landroid/view/ScreenRecordingCallbacks;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ScreenRecordingCallbacks;->addCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)I

    move-result v0

    return v0

    .line 604
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 157
    invoke-direct {p0, p2}, Landroid/view/WindowManagerImpl;->applyTokens(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 158
    move-object v1, p1

    move-object v2, p2

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v1, "view":Landroid/view/View;
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {v0 .. v5}, Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;I)V

    .line 160
    return-void
.end method

.method public greylist-max-o createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;
    .registers 5
    .param p1, "parentWindow"    # Landroid/view/Window;

    .line 132
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mWindowContextToken:Landroid/os/IBinder;

    invoke-direct {v0, v1, p1, v2}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public greylist-max-o createPresentationWindowManager(Landroid/content/Context;)Landroid/view/WindowManagerImpl;
    .registers 5
    .param p1, "displayContext"    # Landroid/content/Context;

    .line 136
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mWindowContextToken:Landroid/os/IBinder;

    invoke-direct {v0, p1, v1, v2}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public blacklist getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;
    .registers 4
    .param p1, "deviceId"    # I

    .line 242
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 243
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 242
    return-object v0

    .line 244
    :catch_9
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCurrentImeTouchRegion()Landroid/graphics/Region;
    .registers 2

    .line 277
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->getCurrentImeTouchRegion()Landroid/graphics/Region;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 278
    :catch_9
    move-exception v0

    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrentWindowMetrics()Landroid/view/WindowMetrics;
    .registers 2

    .line 338
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mWindowMetricsController:Landroid/window/WindowMetricsController;

    invoke-virtual {v0}, Landroid/window/WindowMetricsController;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefaultDisplay()Landroid/view/Display;
    .registers 2

    .line 271
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultToken()Landroid/os/IBinder;
    .registers 2

    .line 477
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getDisplayImePolicy(I)I
    .registers 3
    .param p1, "displayId"    # I

    .line 321
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->getDisplayImePolicy(I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 322
    :catch_9
    move-exception v0

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getMaximumWindowMetrics()Landroid/view/WindowMetrics;
    .registers 2

    .line 343
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mWindowMetricsController:Landroid/window/WindowMetricsController;

    invoke-virtual {v0}, Landroid/window/WindowMetricsController;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPossibleMaximumWindowMetrics(I)Ljava/util/Set;
    .registers 3
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/view/WindowMetrics;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mWindowMetricsController:Landroid/window/WindowMetricsController;

    invoke-virtual {v0, p1}, Landroid/window/WindowMetricsController;->getPossibleMaximumWindowMetrics(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSurfaceControlInputClientToken(Landroid/view/SurfaceControl;)Landroid/os/IBinder;
    .registers 3
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 583
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerGlobal;->getSurfaceControlInputClientToken(Landroid/view/SurfaceControl;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist holdLock(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "durationMs"    # I

    .line 355
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->holdLock(Landroid/os/IBinder;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 358
    nop

    .line 359
    return-void

    .line 356
    :catch_9
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isCrossWindowBlurEnabled()Z
    .registers 2

    .line 363
    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/CrossWindowBlurListeners;->isCrossWindowBlurEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist isGlobalKey(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .line 330
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->isGlobalKey(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 331
    :catch_9
    move-exception v0

    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTaskSnapshotSupported()Z
    .registers 2

    .line 404
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->isTaskSnapshotSupported()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 405
    :catch_9
    move-exception v0

    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist notifyScreenshotListeners(I)Ljava/util/List;
    .registers 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 484
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 485
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->notifyScreenshotListeners(I)Ljava/util/List;

    move-result-object v0

    .line 484
    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 486
    :catch_d
    move-exception v0

    .line 487
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerBatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/view/Choreographer;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;
    .registers 6
    .param p1, "hostInputTransferToken"    # Landroid/window/InputTransferToken;
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p3, "choreographer"    # Landroid/view/Choreographer;
    .param p4, "receiver"    # Landroid/view/SurfaceControlInputReceiver;

    .line 552
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowManagerGlobal;->registerBatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/view/Choreographer;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;

    move-result-object v0

    return-object v0
.end method

.method public whitelist registerTaskFpsCallback(ILjava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/window/TaskFpsCallback;

    .line 413
    new-instance v0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;Landroid/view/WindowManagerImpl-IA;)V

    .line 416
    .local v0, "onFpsCallbackListenerProxy":Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;
    :try_start_6
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->registerTaskFpsCallback(ILandroid/window/ITaskFpsCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_1b

    .line 420
    nop

    .line 421
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    monitor-enter v1

    .line 422
    :try_start_11
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    monitor-exit v1

    .line 424
    return-void

    .line 423
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v2

    .line 418
    :catch_1b
    move-exception v1

    .line 419
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist registerTrustedPresentationListener(Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "thresholds"    # Landroid/window/TrustedPresentationThresholds;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/window/TrustedPresentationThresholds;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 533
    .local p4, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string/jumbo v0, "window must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 534
    const-string/jumbo v0, "thresholds must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 535
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 536
    const-string v0, "listener must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 537
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowManagerGlobal;->registerTrustedPresentationListener(Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 538
    return-void
.end method

.method public whitelist registerUnbatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/os/Looper;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;
    .registers 6
    .param p1, "hostInputTransferToken"    # Landroid/window/InputTransferToken;
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "receiver"    # Landroid/view/SurfaceControlInputReceiver;

    .line 566
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowManagerGlobal;->registerUnbatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/os/Looper;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;

    move-result-object v0

    return-object v0
.end method

.method public whitelist removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 379
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/CrossWindowBlurListeners;->removeListener(Ljava/util/function/Consumer;)V

    .line 380
    return-void
.end method

.method public whitelist removeProposedRotationListener(Ljava/util/function/IntConsumer;)V
    .registers 4
    .param p1, "listener"    # Ljava/util/function/IntConsumer;

    .line 398
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/content/Context;->getToken(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/WindowManagerGlobal;->unregisterProposedRotationListener(Landroid/os/IBinder;Ljava/util/function/IntConsumer;)V

    .line 399
    return-void
.end method

.method public whitelist removeScreenRecordingCallback(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 610
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->screenRecordingCallbacks()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 611
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 612
    invoke-static {}, Landroid/view/ScreenRecordingCallbacks;->getInstance()Landroid/view/ScreenRecordingCallbacks;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ScreenRecordingCallbacks;->removeCallback(Ljava/util/function/Consumer;)V

    .line 614
    :cond_12
    return-void
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 211
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 212
    return-void
.end method

.method public whitelist removeViewImmediate(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 216
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 217
    return-void
.end method

.method public blacklist replaceContentOnDisplayWithMirror(ILandroid/view/Window;)Z
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "window"    # Landroid/view/Window;

    .line 493
    invoke-virtual {p2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 494
    .local v0, "decorView":Landroid/view/View;
    const/4 v1, 0x0

    const-string v2, "WindowManager"

    if-nez v0, :cond_10

    .line 495
    const-string/jumbo v3, "replaceContentOnDisplayWithMirror: Window\'s decorView was null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return v1

    .line 499
    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    .line 500
    .local v3, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v3, :cond_1d

    .line 501
    const-string/jumbo v4, "replaceContentOnDisplayWithMirror: Window\'s viewRootImpl was null."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return v1

    .line 505
    :cond_1d
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    .line 506
    .local v4, "sc":Landroid/view/SurfaceControl;
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 507
    const-string/jumbo v5, "replaceContentOnDisplayWithMirror: Window\'s SC is invalid."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return v1

    .line 510
    :cond_2e
    invoke-static {v4}, Landroid/view/SurfaceControl;->mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/view/WindowManagerImpl;->replaceContentOnDisplayWithSc(ILandroid/view/SurfaceControl;)Z

    move-result v1

    return v1
.end method

.method public blacklist replaceContentOnDisplayWithSc(ILandroid/view/SurfaceControl;)Z
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "sc"    # Landroid/view/SurfaceControl;

    .line 515
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 516
    const-string v0, "WindowManager"

    const-string/jumbo v2, "replaceContentOnDisplayWithSc: Invalid SC."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v1

    .line 521
    :cond_10
    :try_start_10
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 522
    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->replaceContentOnDisplay(ILandroid/view/SurfaceControl;)Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_19

    .line 521
    return v0

    .line 523
    :catch_19
    move-exception v0

    .line 524
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 526
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public greylist-max-o requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
    .registers 6
    .param p1, "receiver"    # Landroid/view/WindowManager$KeyboardShortcutsReceiver;
    .param p2, "deviceId"    # I

    .line 222
    new-instance v0, Landroid/view/WindowManagerImpl$1;

    invoke-direct {v0, p0, p1}, Landroid/view/WindowManagerImpl$1;-><init>(Landroid/view/WindowManagerImpl;Landroid/view/WindowManager$KeyboardShortcutsReceiver;)V

    .line 232
    .local v0, "resultReceiver":Lcom/android/internal/os/IResultReceiver;
    :try_start_5
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 233
    invoke-interface {v1, v0, p2}, Landroid/view/IWindowManager;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e

    .line 236
    nop

    .line 237
    return-void

    .line 234
    :catch_e
    move-exception v1

    .line 235
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist requestImeKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
    .registers 6
    .param p1, "receiver"    # Landroid/view/WindowManager$KeyboardShortcutsReceiver;
    .param p2, "deviceId"    # I

    .line 252
    new-instance v0, Landroid/view/WindowManagerImpl$2;

    invoke-direct {v0, p0, p1}, Landroid/view/WindowManagerImpl$2;-><init>(Landroid/view/WindowManagerImpl;Landroid/view/WindowManager$KeyboardShortcutsReceiver;)V

    .line 262
    .local v0, "resultReceiver":Lcom/android/internal/os/IResultReceiver;
    :try_start_5
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 263
    invoke-interface {v1, v0, p2}, Landroid/view/IWindowManager;->requestImeKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e

    .line 266
    nop

    .line 267
    return-void

    .line 264
    :catch_e
    move-exception v1

    .line 265
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o setDefaultToken(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 152
    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    .line 153
    return-void
.end method

.method public blacklist setDisplayImePolicy(II)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "imePolicy"    # I

    .line 313
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->setDisplayImePolicy(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 315
    goto :goto_9

    .line 314
    :catch_8
    move-exception v0

    .line 316
    :goto_9
    return-void
.end method

.method public blacklist setShouldShowSystemDecors(IZ)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "shouldShow"    # Z

    .line 295
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 296
    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->setShouldShowSystemDecors(IZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 298
    goto :goto_9

    .line 297
    :catch_8
    move-exception v0

    .line 299
    :goto_9
    return-void
.end method

.method public blacklist setShouldShowWithInsecureKeyguard(IZ)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "shouldShow"    # Z

    .line 286
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 287
    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->setShouldShowWithInsecureKeyguard(IZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 289
    goto :goto_9

    .line 288
    :catch_8
    move-exception v0

    .line 290
    :goto_9
    return-void
.end method

.method public blacklist shouldShowSystemDecors(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 304
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->shouldShowSystemDecors(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 305
    :catch_9
    move-exception v0

    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist snapshotTaskForRecents(I)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "taskId"    # I

    .line 467
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->snapshotTaskForRecents(I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 468
    :catch_9
    move-exception v0

    .line 469
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 471
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z
    .registers 4
    .param p1, "transferFromToken"    # Landroid/window/InputTransferToken;
    .param p2, "transferToToken"    # Landroid/window/InputTransferToken;

    .line 590
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerGlobal;->transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterSurfaceControlInputReceiver(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 576
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerGlobal;->unregisterSurfaceControlInputReceiver(Landroid/view/SurfaceControl;)V

    .line 578
    return-void
.end method

.method public whitelist unregisterTaskFpsCallback(Landroid/window/TaskFpsCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/window/TaskFpsCallback;

    .line 428
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    monitor-enter v0

    .line 429
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    .line 430
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 431
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 432
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;

    .line 433
    .local v2, "proxy":Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;
    invoke-static {v2}, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;->-$$Nest$fgetmCallback(Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;)Landroid/window/TaskFpsCallback;

    move-result-object v3
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_30

    if-ne v3, p1, :cond_2d

    .line 435
    :try_start_1b
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 436
    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->unregisterTaskFpsCallback(Landroid/window/ITaskFpsCallback;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_27
    .catchall {:try_start_1b .. :try_end_22} :catchall_30

    .line 439
    nop

    .line 440
    :try_start_23
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2d

    .line 437
    :catch_27
    move-exception v3

    .line 438
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/view/WindowManagerImpl;
    .end local p1    # "callback":Landroid/window/TaskFpsCallback;
    throw v4

    .line 442
    .end local v2    # "proxy":Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/WindowManagerImpl;
    .restart local p1    # "callback":Landroid/window/TaskFpsCallback;
    :cond_2d
    :goto_2d
    goto :goto_9

    .line 443
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;>;"
    :cond_2e
    monitor-exit v0

    .line 444
    return-void

    .line 443
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public whitelist unregisterTrustedPresentationListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 542
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 543
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerGlobal;->unregisterTrustedPresentationListener(Ljava/util/function/Consumer;)V

    .line 544
    return-void
.end method

.method public whitelist updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 164
    invoke-direct {p0, p2}, Landroid/view/WindowManagerImpl;->applyTokens(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerGlobal;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    return-void
.end method
