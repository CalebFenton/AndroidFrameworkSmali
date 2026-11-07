.class public interface abstract Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;
.super Ljava/lang/Object;
.source "IAudioVolumeChangeDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher$Stub;,
        Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.audiopolicy.IAudioVolumeChangeDispatcher"


# virtual methods
.method public abstract blacklist onAudioVolumeGroupChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
