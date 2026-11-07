.class public abstract Landroid/media/AudioDeviceCallback;
.super Ljava/lang/Object;
.source "AudioDeviceCallback.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .registers 2
    .param p1, "addedDevices"    # [Landroid/media/AudioDeviceInfo;

    .line 31
    return-void
.end method

.method public whitelist onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .registers 2
    .param p1, "removedDevices"    # [Landroid/media/AudioDeviceInfo;

    .line 39
    return-void
.end method
