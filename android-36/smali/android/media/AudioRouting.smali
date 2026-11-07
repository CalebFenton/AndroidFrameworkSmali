.class public interface abstract Landroid/media/AudioRouting;
.super Ljava/lang/Object;
.source "AudioRouting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRouting$OnRoutingChangedListener;
    }
.end annotation


# virtual methods
.method public abstract whitelist addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
.end method

.method public abstract whitelist getPreferredDevice()Landroid/media/AudioDeviceInfo;
.end method

.method public abstract whitelist getRoutedDevice()Landroid/media/AudioDeviceInfo;
.end method

.method public whitelist getRoutedDevices()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "audioDeviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    invoke-interface {p0}, Landroid/media/AudioRouting;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 68
    .local v1, "audioDeviceInfo":Landroid/media/AudioDeviceInfo;
    if-eqz v1, :cond_e

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method public abstract whitelist removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
.end method

.method public abstract whitelist setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
.end method
