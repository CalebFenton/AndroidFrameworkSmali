.class public interface abstract Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener;
.super Ljava/lang/Object;
.source "IScanBackgroundServiceUpdateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub;,
        Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.scanbsu.IScanBackgroundServiceUpdateListener"


# virtual methods
.method public abstract blacklist onChannelListUpdate(Ljava/lang/String;[Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onNetworkListUpdate(Ljava/lang/String;[Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTransportStreamingListUpdate(Ljava/lang/String;[Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
