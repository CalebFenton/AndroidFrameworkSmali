.class public final Landroid/security/GateKeeper;
.super Ljava/lang/Object;
.source "GateKeeper.java"


# static fields
.field public static final greylist-max-o INVALID_SECURE_USER_ID:J


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getSecureUserId()J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 48
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/security/GateKeeper;->getSecureUserId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getSecureUserId(I)J
    .registers 4
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 60
    :try_start_0
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    .line 61
    :catch_9
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to obtain secure user ID from gatekeeper"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static greylist-max-o getService()Landroid/service/gatekeeper/IGateKeeperService;
    .registers 3

    .line 38
    nop

    .line 39
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    .line 40
    .local v0, "service":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v0, :cond_e

    .line 43
    return-object v0

    .line 41
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Gatekeeper service not available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
