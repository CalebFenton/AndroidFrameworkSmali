.class public interface abstract Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;
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
    name = "OnPreferredDevicesForStrategyChangedListener"
.end annotation


# virtual methods
.method public abstract whitelist onPreferredDevicesForStrategyChanged(Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation
.end method
