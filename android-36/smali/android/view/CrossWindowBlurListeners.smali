.class public final Landroid/view/CrossWindowBlurListeners;
.super Ljava/lang/Object;
.source "CrossWindowBlurListeners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;
    }
.end annotation


# static fields
.field private static final blacklist BLUR_PROPERTY:Ljava/lang/String; = "ro.surface_flinger.supports_background_blur"

.field public static final blacklist CROSS_WINDOW_BLUR_SUPPORTED:Z

.field private static final blacklist TAG:Ljava/lang/String; = "CrossWindowBlurListeners"

.field private static volatile blacklist sInstance:Landroid/view/CrossWindowBlurListeners;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mCrossWindowBlurEnabled:Z

.field private blacklist mInternalListenerAttached:Z

.field private final blacklist mListenerInternal:Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

.field private final blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMainHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListeners(Landroid/view/CrossWindowBlurListeners;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCrossWindowBlurEnabled(Landroid/view/CrossWindowBlurListeners;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/CrossWindowBlurListeners;->mCrossWindowBlurEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyListener(Landroid/view/CrossWindowBlurListeners;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/CrossWindowBlurListeners;->notifyListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 44
    nop

    .line 45
    const-string/jumbo v0, "ro.surface_flinger.supports_background_blur"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;-><init>(Landroid/view/CrossWindowBlurListeners;Landroid/view/CrossWindowBlurListeners-IA;)V

    iput-object v0, p0, Landroid/view/CrossWindowBlurListeners;->mListenerInternal:Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/CrossWindowBlurListeners;->mMainHandler:Landroid/os/Handler;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z

    .line 56
    return-void
.end method

.method private blacklist attachInternalListenerIfNeededLocked()V
    .registers 4

    .line 116
    iget-boolean v0, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z

    if-nez v0, :cond_1c

    .line 118
    :try_start_4
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners;->mListenerInternal:Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

    .line 119
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/CrossWindowBlurListeners;->mCrossWindowBlurEnabled:Z

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    .line 123
    goto :goto_1c

    .line 121
    :catch_14
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CrossWindowBlurListeners"

    const-string v2, "Could not register ICrossWindowBlurEnabledListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public static blacklist getInstance()Landroid/view/CrossWindowBlurListeners;
    .registers 3

    .line 62
    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sInstance:Landroid/view/CrossWindowBlurListeners;

    .line 63
    .local v0, "instance":Landroid/view/CrossWindowBlurListeners;
    if-nez v0, :cond_19

    .line 65
    sget-object v1, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_7
    sget-object v2, Landroid/view/CrossWindowBlurListeners;->sInstance:Landroid/view/CrossWindowBlurListeners;

    move-object v0, v2

    .line 67
    if-nez v0, :cond_14

    .line 68
    new-instance v2, Landroid/view/CrossWindowBlurListeners;

    invoke-direct {v2}, Landroid/view/CrossWindowBlurListeners;-><init>()V

    move-object v0, v2

    .line 69
    sput-object v0, Landroid/view/CrossWindowBlurListeners;->sInstance:Landroid/view/CrossWindowBlurListeners;

    .line 71
    :cond_14
    monitor-exit v1

    goto :goto_19

    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v2

    .line 73
    :cond_19
    :goto_19
    return-object v0
.end method

.method static synthetic blacklist lambda$notifyListener$0(Ljava/util/function/Consumer;Z)V
    .registers 3
    .param p0, "listener"    # Ljava/util/function/Consumer;
    .param p1, "enabled"    # Z

    .line 128
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist notifyListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V
    .registers 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    .line 128
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/view/CrossWindowBlurListeners$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p3}, Landroid/view/CrossWindowBlurListeners$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method


# virtual methods
.method public blacklist addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
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

    .line 85
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "listener cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_d
    invoke-direct {p0}, Landroid/view/CrossWindowBlurListeners;->attachInternalListenerIfNeededLocked()V

    .line 91
    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-boolean v1, p0, Landroid/view/CrossWindowBlurListeners;->mCrossWindowBlurEnabled:Z

    invoke-direct {p0, p2, p1, v1}, Landroid/view/CrossWindowBlurListeners;->notifyListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    .line 93
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public blacklist isCrossWindowBlurEnabled()Z
    .registers 3

    .line 77
    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_3
    invoke-direct {p0}, Landroid/view/CrossWindowBlurListeners;->attachInternalListenerIfNeededLocked()V

    .line 79
    iget-boolean v1, p0, Landroid/view/CrossWindowBlurListeners;->mCrossWindowBlurEnabled:Z

    monitor-exit v0

    return v1

    .line 80
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist removeListener(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_8
    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-boolean v1, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_30

    if-nez v1, :cond_2e

    .line 105
    :try_start_19
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/view/CrossWindowBlurListeners;->mListenerInternal:Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

    .line 106
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_25} :catch_26
    .catchall {:try_start_19 .. :try_end_25} :catchall_30

    .line 110
    goto :goto_2e

    .line 108
    :catch_26
    move-exception v1

    .line 109
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_27
    const-string v2, "CrossWindowBlurListeners"

    const-string v3, "Could not unregister ICrossWindowBlurEnabledListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2e
    :goto_2e
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_30

    throw v1
.end method
