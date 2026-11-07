.class public Landroid/hardware/contexthub/IContextHubEndpoint$Default;
.super Ljava/lang/Object;
.source "IContextHubEndpoint.java"

# interfaces
.implements Landroid/hardware/contexthub/IContextHubEndpoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/IContextHubEndpoint;
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

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist closeSession(II)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist getAssignedHubEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCallbackFinished()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    return-void
.end method

.method public blacklist openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)I
    .registers 4
    .param p1, "destination"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p2, "serviceDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist openSessionRequestComplete(I)V
    .registers 2
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist sendMessage(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "message"    # Landroid/hardware/contexthub/HubMessage;
    .param p3, "transactionCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public blacklist sendMessageDeliveryStatus(IIB)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "messageSeqNumber"    # I
    .param p3, "errorCode"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public blacklist unregister()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method
