.class public interface abstract Landroid/media/tv/extension/signal/IVideoSignalInfo;
.super Ljava/lang/Object;
.source "IVideoSignalInfo.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub;,
        Landroid/media/tv/extension/signal/IVideoSignalInfo$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.signal.IVideoSignalInfo"


# virtual methods
.method public abstract blacklist addVideoSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/signal/IVideoSignalInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getVideoSignalInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeVideoSignalInfoListener(Landroid/media/tv/extension/signal/IVideoSignalInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
