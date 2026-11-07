.class public interface abstract Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPreferredDevicesForCapturePresetChangedListener"
.end annotation


# virtual methods
.method public abstract whitelist onPreferredDevicesForCapturePresetChanged(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation
.end method
