.class public abstract Landroid/security/GateKeeper;
.super Ljava/lang/Object;
.source "GateKeeper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getSecureUserId()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    :try_start_0
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    #@3
    move-result-object v1

    #@4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@7
    move-result v2

    #@8
    invoke-interface {v1, v2}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-wide v2

    #@c
    return-wide v2

    #@d
    .line 45
    :catch_0
    move-exception v0

    #@e
    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@10
    .line 47
    const-string/jumbo v2, "Failed to obtain secure user ID from gatekeeper"

    #@13
    .line 46
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public static getService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 3

    #@0
    .prologue
    .line 35
    const-string/jumbo v1, "android.service.gatekeeper.IGateKeeperService"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    .line 34
    invoke-static {v1}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    #@a
    move-result-object v0

    #@b
    .line 36
    .local v0, "service":Landroid/service/gatekeeper/IGateKeeperService;
    if-nez v0, :cond_0

    #@d
    .line 37
    new-instance v1, Ljava/lang/IllegalStateException;

    #@f
    const-string/jumbo v2, "Gatekeeper service not available"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 39
    :cond_0
    return-object v0
.end method
