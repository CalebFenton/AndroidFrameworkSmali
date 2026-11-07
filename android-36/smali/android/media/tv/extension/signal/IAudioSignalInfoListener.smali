.class public interface abstract Landroid/media/tv/extension/signal/IAudioSignalInfoListener;
.super Ljava/lang/Object;
.source "IAudioSignalInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/signal/IAudioSignalInfoListener$Stub;,
        Landroid/media/tv/extension/signal/IAudioSignalInfoListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.signal.IAudioSignalInfoListener"


# virtual methods
.method public abstract blacklist onAudioSignalInfoChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
