.class public Landroid/hardware/tv/tuner/IFilter$Default;
.super Ljava/lang/Object;
.source "IFilter.java"

# interfaces
.implements Landroid/hardware/tv/tuner/IFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist configure(Landroid/hardware/tv/tuner/DemuxFilterSettings;)V
    .registers 2
    .param p1, "settings"    # Landroid/hardware/tv/tuner/DemuxFilterSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist configureAvStreamType(Landroid/hardware/tv/tuner/AvStreamType;)V
    .registers 2
    .param p1, "avStreamType"    # Landroid/hardware/tv/tuner/AvStreamType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist configureIpCid(I)V
    .registers 2
    .param p1, "ipCid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist configureMonitorEvent(I)V
    .registers 2
    .param p1, "monitorEventTypes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist getAvSharedHandle(Landroid/hardware/common/NativeHandle;)J
    .registers 4
    .param p1, "avMemory"    # Landroid/hardware/common/NativeHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getId()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getId64Bit()J
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

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 78
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getQueueDesc(Landroid/hardware/common/fmq/MQDescriptor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/common/fmq/MQDescriptor<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    .local p1, "queue":Landroid/hardware/common/fmq/MQDescriptor;, "Landroid/hardware/common/fmq/MQDescriptor<Ljava/lang/Byte;Ljava/lang/Byte;>;"
    return-void
.end method

.method public blacklist releaseAvHandle(Landroid/hardware/common/NativeHandle;J)V
    .registers 4
    .param p1, "avMemory"    # Landroid/hardware/common/NativeHandle;
    .param p2, "avDataId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist setDataSource(Landroid/hardware/tv/tuner/IFilter;)V
    .registers 2
    .param p1, "filter"    # Landroid/hardware/tv/tuner/IFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public blacklist setDelayHint(Landroid/hardware/tv/tuner/FilterDelayHint;)V
    .registers 2
    .param p1, "hint"    # Landroid/hardware/tv/tuner/FilterDelayHint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public blacklist start()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist stop()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method
