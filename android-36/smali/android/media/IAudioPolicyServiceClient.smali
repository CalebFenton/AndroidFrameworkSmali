.class public interface abstract Landroid/media/IAudioPolicyServiceClient;
.super Ljava/lang/Object;
.source "IAudioPolicyServiceClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioPolicyServiceClient$Stub;,
        Landroid/media/IAudioPolicyServiceClient$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioPolicyServiceClient"


# virtual methods
.method public abstract blacklist onAudioPatchListUpdate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onAudioPortListUpdate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onAudioVolumeGroupChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDynamicPolicyMixStateUpdate(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRecordingConfigurationUpdate(ILandroid/media/RecordClientInfo;Landroid/media/audio/common/AudioConfigBase;[Landroid/media/EffectDescriptor;Landroid/media/audio/common/AudioConfigBase;[Landroid/media/EffectDescriptor;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRoutingUpdated()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onVolumeRangeInitRequest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
