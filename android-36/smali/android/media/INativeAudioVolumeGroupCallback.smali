.class public interface abstract Landroid/media/INativeAudioVolumeGroupCallback;
.super Ljava/lang/Object;
.source "INativeAudioVolumeGroupCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/INativeAudioVolumeGroupCallback$Stub;,
        Landroid/media/INativeAudioVolumeGroupCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.INativeAudioVolumeGroupCallback"


# virtual methods
.method public abstract blacklist onAudioVolumeGroupChanged(Landroid/media/audio/common/AudioVolumeGroupChangeEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
