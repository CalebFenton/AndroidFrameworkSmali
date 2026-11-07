.class public interface abstract Landroid/media/IResourceManagerService;
.super Ljava/lang/Object;
.source "IResourceManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IResourceManagerService$Stub;,
        Landroid/media/IResourceManagerService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.IResourceManagerService"

.field public static final blacklist kPolicySupportsMultipleSecureCodecs:Ljava/lang/String; = "supports-multiple-secure-codecs"

.field public static final blacklist kPolicySupportsSecureWithNonSecureCodec:Ljava/lang/String; = "supports-secure-with-non-secure-codec"


# virtual methods
.method public abstract blacklist addResource(Landroid/media/ClientInfoParcel;Landroid/media/IResourceManagerClient;[Landroid/media/MediaResourceParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist config([Landroid/media/MediaResourcePolicyParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getMediaResourceUsageReport([Landroid/media/MediaResourceParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist markClientForPendingRemoval(Landroid/media/ClientInfoParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyClientConfigChanged(Landroid/media/ClientConfigParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyClientCreated(Landroid/media/ClientInfoParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyClientStarted(Landroid/media/ClientConfigParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyClientStopped(Landroid/media/ClientConfigParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist overridePid(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist overrideProcessInfo(Landroid/media/IResourceManagerClient;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist reclaimResource(Landroid/media/ClientInfoParcel;[Landroid/media/MediaResourceParcel;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist reclaimResourcesFromClientsPendingRemoval(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeClient(Landroid/media/ClientInfoParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeResource(Landroid/media/ClientInfoParcel;[Landroid/media/MediaResourceParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateResource(Landroid/media/ClientInfoParcel;[Landroid/media/MediaResourceParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
