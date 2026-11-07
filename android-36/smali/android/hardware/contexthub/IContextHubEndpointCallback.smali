.class public interface abstract Landroid/hardware/contexthub/IContextHubEndpointCallback;
.super Ljava/lang/Object;
.source "IContextHubEndpointCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;,
        Landroid/hardware/contexthub/IContextHubEndpointCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.contexthub.IContextHubEndpointCallback"


# virtual methods
.method public abstract blacklist onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSessionClosed(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSessionOpenComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
