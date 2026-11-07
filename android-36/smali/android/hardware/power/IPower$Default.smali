.class public Landroid/hardware/power/IPower$Default;
.super Ljava/lang/Object;
.source "IPower.java"

# interfaces
.implements Landroid/hardware/power/IPower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/IPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
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

.method public blacklist closeSessionChannel(II)V
    .registers 3
    .param p1, "tgid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist createHintSession(II[IJ)Landroid/hardware/power/IPowerHintSession;
    .registers 7
    .param p1, "tgid"    # I
    .param p2, "uid"    # I
    .param p3, "threadIds"    # [I
    .param p4, "durationNanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createHintSessionWithConfig(II[IJILandroid/hardware/power/SessionConfig;)Landroid/hardware/power/IPowerHintSession;
    .registers 9
    .param p1, "tgid"    # I
    .param p2, "uid"    # I
    .param p3, "threadIds"    # [I
    .param p4, "durationNanos"    # J
    .param p6, "tag"    # I
    .param p7, "config"    # Landroid/hardware/power/SessionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCpuHeadroom(Landroid/hardware/power/CpuHeadroomParams;)Landroid/hardware/power/CpuHeadroomResult;
    .registers 3
    .param p1, "params"    # Landroid/hardware/power/CpuHeadroomParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGpuHeadroom(Landroid/hardware/power/GpuHeadroomParams;)Landroid/hardware/power/GpuHeadroomResult;
    .registers 3
    .param p1, "params"    # Landroid/hardware/power/GpuHeadroomParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHintSessionPreferredRate()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 80
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSessionChannel(II)Landroid/hardware/power/ChannelConfig;
    .registers 4
    .param p1, "tgid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSupportInfo()Landroid/hardware/power/SupportInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isBoostSupported(I)Z
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isModeSupported(I)Z
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendCompositionData([Landroid/hardware/power/CompositionData;)V
    .registers 2
    .param p1, "data"    # [Landroid/hardware/power/CompositionData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist sendCompositionUpdate(Landroid/hardware/power/CompositionUpdate;)V
    .registers 2
    .param p1, "update"    # Landroid/hardware/power/CompositionUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public blacklist setBoost(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "durationMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist setMode(IZ)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
