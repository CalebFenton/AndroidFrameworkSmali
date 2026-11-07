.class public Landroid/hardware/contexthub/IEndpointCommunication$Default;
.super Ljava/lang/Object;
.source "IEndpointCommunication.java"

# interfaces
.implements Landroid/hardware/contexthub/IEndpointCommunication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/IEndpointCommunication;
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

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist closeEndpointSession(IB)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "reason"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist endpointSessionOpenComplete(I)V
    .registers 2
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 57
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist openEndpointSession(ILandroid/hardware/contexthub/EndpointId;Landroid/hardware/contexthub/EndpointId;Ljava/lang/String;)V
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

    .line 35
    return-void
.end method

.method public blacklist registerEndpoint(Landroid/hardware/contexthub/EndpointInfo;)V
    .registers 2
    .param p1, "endpoint"    # Landroid/hardware/contexthub/EndpointInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist requestSessionIdRange(I)[I
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendMessageDeliveryStatusToEndpoint(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "msgStatus"    # Landroid/hardware/contexthub/MessageDeliveryStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist sendMessageToEndpoint(ILandroid/hardware/contexthub/Message;)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "msg"    # Landroid/hardware/contexthub/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist unregister()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist unregisterEndpoint(Landroid/hardware/contexthub/EndpointInfo;)V
    .registers 2
    .param p1, "endpoint"    # Landroid/hardware/contexthub/EndpointInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method
