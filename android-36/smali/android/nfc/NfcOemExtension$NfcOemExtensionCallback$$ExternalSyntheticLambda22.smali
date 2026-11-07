.class public final synthetic Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/NfcOemExtension$Callback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/NfcOemExtension$Callback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda22;->f$0:Landroid/nfc/NfcOemExtension$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda22;->f$0:Landroid/nfc/NfcOemExtension$Callback;

    check-cast p1, Landroid/nfc/OemLogItems;

    invoke-interface {v0, p1}, Landroid/nfc/NfcOemExtension$Callback;->onLogEventNotified(Landroid/nfc/OemLogItems;)V

    return-void
.end method
