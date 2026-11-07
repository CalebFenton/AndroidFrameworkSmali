.class public Landroid/hardware/contexthub/IContextHubEndpointCallback$Default;
.super Ljava/lang/Object;
.source "IContextHubEndpointCallback.java"

# interfaces
.implements Landroid/hardware/contexthub/IContextHubEndpointCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/IContextHubEndpointCallback;
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

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "message"    # Landroid/hardware/contexthub/HubMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist onSessionClosed(II)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist onSessionOpenComplete(I)V
    .registers 2
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist onSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "initiator"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p3, "serviceDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
