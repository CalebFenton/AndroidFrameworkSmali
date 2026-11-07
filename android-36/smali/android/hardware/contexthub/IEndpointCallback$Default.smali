.class public Landroid/hardware/contexthub/IEndpointCallback$Default;
.super Ljava/lang/Object;
.source "IEndpointCallback.java"

# interfaces
.implements Landroid/hardware/contexthub/IEndpointCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/IEndpointCallback;
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

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 50
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onCloseEndpointSession(IB)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "reason"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist onEndpointSessionOpenComplete(I)V
    .registers 2
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist onEndpointSessionOpenRequest(ILandroid/hardware/contexthub/EndpointId;Landroid/hardware/contexthub/EndpointId;Ljava/lang/String;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "destination"    # Landroid/hardware/contexthub/EndpointId;
    .param p3, "initiator"    # Landroid/hardware/contexthub/EndpointId;
    .param p4, "serviceDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist onEndpointStarted([Landroid/hardware/contexthub/EndpointInfo;)V
    .registers 2
    .param p1, "endpointInfos"    # [Landroid/hardware/contexthub/EndpointInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onEndpointStopped([Landroid/hardware/contexthub/EndpointId;B)V
    .registers 3
    .param p1, "endpointIds"    # [Landroid/hardware/contexthub/EndpointId;
    .param p2, "reason"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist onMessageDeliveryStatusReceived(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "msgStatus"    # Landroid/hardware/contexthub/MessageDeliveryStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist onMessageReceived(ILandroid/hardware/contexthub/Message;)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "msg"    # Landroid/hardware/contexthub/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
