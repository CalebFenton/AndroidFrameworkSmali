.class public abstract Landroid/view/TunnelModeEnabledListener;
.super Ljava/lang/Object;
.source "TunnelModeEnabledListener.java"


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mNativeListener:J


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/view/TunnelModeEnabledListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 34
    invoke-static {p0}, Landroid/view/TunnelModeEnabledListener;->nativeCreate(Landroid/view/TunnelModeEnabledListener;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    .line 35
    return-void
.end method

.method public static blacklist dispatchOnTunnelModeEnabledChanged(Landroid/view/TunnelModeEnabledListener;Z)V
    .registers 4
    .param p0, "listener"    # Landroid/view/TunnelModeEnabledListener;
    .param p1, "tunnelModeEnabled"    # Z

    .line 91
    iget-object v0, p0, Landroid/view/TunnelModeEnabledListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/TunnelModeEnabledListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/TunnelModeEnabledListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/TunnelModeEnabledListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method static synthetic blacklist lambda$dispatchOnTunnelModeEnabledChanged$0(Landroid/view/TunnelModeEnabledListener;Z)V
    .registers 2
    .param p0, "listener"    # Landroid/view/TunnelModeEnabledListener;
    .param p1, "tunnelModeEnabled"    # Z

    .line 91
    invoke-virtual {p0, p1}, Landroid/view/TunnelModeEnabledListener;->onTunnelModeEnabledChanged(Z)V

    return-void
.end method

.method private static native blacklist nativeCreate(Landroid/view/TunnelModeEnabledListener;)J
.end method

.method private static native blacklist nativeDestroy(J)V
.end method

.method private static native blacklist nativeRegister(J)V
.end method

.method private static native blacklist nativeUnregister(J)V
.end method

.method public static blacklist register(Landroid/view/TunnelModeEnabledListener;)V
    .registers 5
    .param p0, "listener"    # Landroid/view/TunnelModeEnabledListener;

    .line 67
    iget-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 68
    return-void

    .line 70
    :cond_9
    iget-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    invoke-static {v0, v1}, Landroid/view/TunnelModeEnabledListener;->nativeRegister(J)V

    .line 71
    return-void
.end method

.method public static blacklist unregister(Landroid/view/TunnelModeEnabledListener;)V
    .registers 5
    .param p0, "listener"    # Landroid/view/TunnelModeEnabledListener;

    .line 77
    iget-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 78
    return-void

    .line 80
    :cond_9
    iget-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    invoke-static {v0, v1}, Landroid/view/TunnelModeEnabledListener;->nativeUnregister(J)V

    .line 81
    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .registers 5

    .line 41
    iget-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 42
    return-void

    .line 44
    :cond_9
    invoke-static {p0}, Landroid/view/TunnelModeEnabledListener;->unregister(Landroid/view/TunnelModeEnabledListener;)V

    .line 45
    iget-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    invoke-static {v0, v1}, Landroid/view/TunnelModeEnabledListener;->nativeDestroy(J)V

    .line 46
    iput-wide v2, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    .line 47
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    :try_start_0
    invoke-virtual {p0}, Landroid/view/TunnelModeEnabledListener;->destroy()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 54
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 55
    nop

    .line 56
    return-void

    .line 54
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 55
    throw v0
.end method

.method public abstract blacklist onTunnelModeEnabledChanged(Z)V
.end method
