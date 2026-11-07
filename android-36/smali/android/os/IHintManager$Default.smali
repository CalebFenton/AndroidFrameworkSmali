.class public Landroid/os/IHintManager$Default;
.super Ljava/lang/Object;
.source "IHintManager.java"

# interfaces
.implements Landroid/os/IHintManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist closeSessionChannel()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist createHintSessionWithConfig(Landroid/os/IBinder;ILandroid/os/SessionCreationConfig;Landroid/hardware/power/SessionConfig;)Landroid/os/IHintManager$SessionCreationReturn;
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # I
    .param p3, "creationConfig"    # Landroid/os/SessionCreationConfig;
    .param p4, "config"    # Landroid/hardware/power/SessionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getClientData()Landroid/os/IHintManager$HintManagerClientData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCpuHeadroom(Landroid/os/CpuHeadroomParamsInternal;)Landroid/hardware/power/CpuHeadroomResult;
    .registers 3
    .param p1, "params"    # Landroid/os/CpuHeadroomParamsInternal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCpuHeadroomMinIntervalMillis()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getGpuHeadroom(Landroid/os/GpuHeadroomParamsInternal;)Landroid/hardware/power/GpuHeadroomResult;
    .registers 3
    .param p1, "params"    # Landroid/os/GpuHeadroomParamsInternal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGpuHeadroomMinIntervalMillis()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getHintSessionThreadIds(Landroid/os/IHintSession;)[I
    .registers 3
    .param p1, "hintSession"    # Landroid/os/IHintSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSessionChannel(Landroid/os/IBinder;)Landroid/hardware/power/ChannelConfig;
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist passSessionManagerBinder(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "sessionManager"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist registerClient(Landroid/os/IHintManager$IHintManagerClient;)Landroid/os/IHintManager$HintManagerClientData;
    .registers 3
    .param p1, "client"    # Landroid/os/IHintManager$IHintManagerClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setHintSessionThreads(Landroid/os/IHintSession;[I)V
    .registers 3
    .param p1, "hintSession"    # Landroid/os/IHintSession;
    .param p2, "tids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method
