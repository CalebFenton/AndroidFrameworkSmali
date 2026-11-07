.class public interface abstract Landroid/media/tv/extension/event/IEventMonitor;
.super Ljava/lang/Object;
.source "IEventMonitor.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/event/IEventMonitor$Stub;,
        Landroid/media/tv/extension/event/IEventMonitor$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.event.IEventMonitor"


# virtual methods
.method public abstract blacklist addFollowingEventInfoListener(Landroid/media/tv/extension/event/IEventMonitorListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist addPresentEventInfoListener(Landroid/media/tv/extension/event/IEventMonitorListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getFollowingEventInfo(J)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getPresentEventInfo(J)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSdtGuidanceInfo(J)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeFollowingEventInfoListener(Landroid/media/tv/extension/event/IEventMonitorListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removePresentEventInfoListener(Landroid/media/tv/extension/event/IEventMonitorListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setBgmTuneChannelInfo([Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
