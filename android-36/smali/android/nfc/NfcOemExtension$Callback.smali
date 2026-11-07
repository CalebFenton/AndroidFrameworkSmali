.class public interface abstract Landroid/nfc/NfcOemExtension$Callback;
.super Ljava/lang/Object;
.source "NfcOemExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NfcOemExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract whitelist onApplyRouting(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onBootFinished(I)V
.end method

.method public abstract whitelist onBootStarted()V
.end method

.method public abstract whitelist onCardEmulationActivated(Z)V
.end method

.method public abstract whitelist onDisableFinished(I)V
.end method

.method public abstract whitelist onDisableRequested(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onDisableStarted()V
.end method

.method public abstract whitelist onEeListenActivated(Z)V
.end method

.method public abstract whitelist onEeUpdated()V
.end method

.method public abstract whitelist onEnableFinished(I)V
.end method

.method public abstract whitelist onEnableRequested(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onEnableStarted()V
.end method

.method public abstract whitelist onExtractOemPackages(Landroid/nfc/NdefMessage;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/NdefMessage;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onGetOemAppSearchIntent(Ljava/util/List;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onHceEventReceived(I)V
.end method

.method public abstract whitelist onLaunchHceAppChooserActivity(Ljava/lang/String;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract whitelist onLaunchHceTapAgainDialog(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V
.end method

.method public abstract whitelist onLogEventNotified(Landroid/nfc/OemLogItems;)V
.end method

.method public abstract whitelist onNdefMessage(Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/Tag;",
            "Landroid/nfc/NdefMessage;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onNdefRead(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onReaderOptionChanged(Z)V
.end method

.method public abstract whitelist onRfDiscoveryStarted(Z)V
.end method

.method public abstract whitelist onRfFieldDetected(Z)V
.end method

.method public abstract whitelist onRoutingChanged(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onRoutingTableFull()V
.end method

.method public abstract whitelist onStateUpdated(I)V
.end method

.method public abstract whitelist onTagConnected(Z)V
.end method

.method public abstract whitelist onTagDispatch(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
