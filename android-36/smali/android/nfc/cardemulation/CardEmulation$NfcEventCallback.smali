.class public interface abstract Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;
.super Ljava/lang/Object;
.source "CardEmulation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/CardEmulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NfcEventCallback"
.end annotation


# virtual methods
.method public whitelist onAidConflictOccurred(Ljava/lang/String;)V
    .registers 2
    .param p1, "aid"    # Ljava/lang/String;

    .line 1380
    return-void
.end method

.method public whitelist onAidNotRouted(Ljava/lang/String;)V
    .registers 2
    .param p1, "aid"    # Ljava/lang/String;

    .line 1389
    return-void
.end method

.method public whitelist onInternalErrorReported(I)V
    .registers 2
    .param p1, "errorType"    # I

    .line 1420
    return-void
.end method

.method public whitelist onNfcStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 1397
    return-void
.end method

.method public blacklist onObserveModeDisabledInFirmware(Landroid/nfc/cardemulation/PollingFrame;)V
    .registers 2
    .param p1, "exitFrame"    # Landroid/nfc/cardemulation/PollingFrame;

    .line 1368
    return-void
.end method

.method public whitelist onObserveModeStateChanged(Z)V
    .registers 2
    .param p1, "isEnabled"    # Z

    .line 1358
    return-void
.end method

.method public whitelist onPreferredServiceChanged(Z)V
    .registers 2
    .param p1, "isPreferred"    # Z

    .line 1350
    return-void
.end method

.method public whitelist onRemoteFieldChanged(Z)V
    .registers 2
    .param p1, "isDetected"    # Z

    .line 1405
    return-void
.end method
