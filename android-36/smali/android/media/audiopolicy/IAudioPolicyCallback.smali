.class public interface abstract Landroid/media/audiopolicy/IAudioPolicyCallback;
.super Ljava/lang/Object;
.source "IAudioPolicyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;,
        Landroid/media/audiopolicy/IAudioPolicyCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o notifyMixStateUpdate(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyUnregistration()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o notifyVolumeAdjust(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
