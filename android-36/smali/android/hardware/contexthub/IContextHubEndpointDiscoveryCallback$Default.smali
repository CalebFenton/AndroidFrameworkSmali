.class public Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback$Default;
.super Ljava/lang/Object;
.source "IContextHubEndpointDiscoveryCallback.java"

# interfaces
.implements Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
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

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onEndpointsStarted([Landroid/hardware/contexthub/HubEndpointInfo;)V
    .registers 2
    .param p1, "hubEndpointInfoList"    # [Landroid/hardware/contexthub/HubEndpointInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onEndpointsStopped([Landroid/hardware/contexthub/HubEndpointInfo;I)V
    .registers 3
    .param p1, "hubEndpointInfoList"    # [Landroid/hardware/contexthub/HubEndpointInfo;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method
