.class public interface abstract Landroid/bluetooth/AudioInputControl$AudioInputCallback;
.super Ljava/lang/Object;
.source "AudioInputControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/AudioInputControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioInputCallback"
.end annotation


# virtual methods
.method public whitelist onAudioInputStatusChanged(I)V
    .registers 2
    .param p1, "status"    # I

    .line 337
    return-void
.end method

.method public whitelist onDescriptionChanged(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .line 334
    return-void
.end method

.method public whitelist onGainModeChanged(I)V
    .registers 2
    .param p1, "gainMode"    # I

    .line 352
    return-void
.end method

.method public whitelist onGainSettingChanged(I)V
    .registers 2
    .param p1, "gainSetting"    # I

    .line 340
    return-void
.end method

.method public whitelist onMuteChanged(I)V
    .registers 2
    .param p1, "mute"    # I

    .line 346
    return-void
.end method

.method public whitelist onSetGainModeFailed()V
    .registers 1

    .line 355
    return-void
.end method

.method public whitelist onSetGainSettingFailed()V
    .registers 1

    .line 343
    return-void
.end method

.method public whitelist onSetMuteFailed()V
    .registers 1

    .line 349
    return-void
.end method
