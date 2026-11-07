.class public interface abstract Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
.super Ljava/lang/Object;
.source "IContextHubEndpointDiscoveryCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback$Stub;,
        Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.contexthub.IContextHubEndpointDiscoveryCallback"


# virtual methods
.method public abstract blacklist onEndpointsStarted([Landroid/hardware/contexthub/HubEndpointInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onEndpointsStopped([Landroid/hardware/contexthub/HubEndpointInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
