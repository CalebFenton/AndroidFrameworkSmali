.class public final synthetic Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/NfcOemExtension$Callback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/NfcOemExtension$Callback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda11;->f$0:Landroid/nfc/NfcOemExtension$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda11;->f$0:Landroid/nfc/NfcOemExtension$Callback;

    check-cast p1, Landroid/nfc/cardemulation/ApduServiceInfo;

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/nfc/NfcOemExtension$Callback;->onLaunchHceTapAgainDialog(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V

    return-void
.end method
