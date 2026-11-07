.class public interface abstract Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClient;
.super Ljava/lang/Object;
.source "RemoteLockscreenValidationClient.java"


# direct methods
.method public static blacklist create(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClient;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;

    .line 40
    new-instance v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method public static blacklist create(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/content/ComponentName;)Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClient;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bgExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;

    .line 56
    new-instance v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/content/ComponentName;)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist disconnect()V
.end method

.method public abstract blacklist isServiceAvailable()Z
.end method

.method public abstract blacklist validateLockscreenGuess([BLandroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V
.end method
