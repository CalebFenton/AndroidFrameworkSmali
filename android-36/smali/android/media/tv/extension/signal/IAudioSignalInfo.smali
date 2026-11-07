.class public interface abstract Landroid/media/tv/extension/signal/IAudioSignalInfo;
.super Ljava/lang/Object;
.source "IAudioSignalInfo.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub;,
        Landroid/media/tv/extension/signal/IAudioSignalInfo$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.signal.IAudioSignalInfo"


# virtual methods
.method public abstract blacklist addAudioSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/signal/IAudioSignalInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getAudioSignalInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getMtsSelectedTrackId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyMtsSelectTrackFlag(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeAudioSignalInfoListener(Landroid/media/tv/extension/signal/IAudioSignalInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
