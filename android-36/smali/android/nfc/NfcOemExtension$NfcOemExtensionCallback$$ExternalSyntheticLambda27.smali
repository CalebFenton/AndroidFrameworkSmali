.class public final synthetic Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

.field public final synthetic blacklist f$1:Landroid/nfc/NfcOemExtension$Callback;

.field public final synthetic blacklist f$2:Landroid/nfc/Tag;

.field public final synthetic blacklist f$3:Landroid/nfc/NdefMessage;

.field public final synthetic blacklist f$4:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/NfcOemExtension$Callback;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda27;->f$0:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

    iput-object p2, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda27;->f$1:Landroid/nfc/NfcOemExtension$Callback;

    iput-object p3, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda27;->f$2:Landroid/nfc/Tag;

    iput-object p4, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda27;->f$3:Landroid/nfc/NdefMessage;

    iput-object p5, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda27;->f$4:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda27;->f$0:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda27;->f$1:Landroid/nfc/NfcOemExtension$Callback;

    iget-object v2, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda27;->f$2:Landroid/nfc/Tag;

    iget-object v3, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda27;->f$3:Landroid/nfc/NdefMessage;

    iget-object v4, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda27;->f$4:Landroid/os/ResultReceiver;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->$r8$lambda$Xc92638A9askYrgAlxoOQOBfV98(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/NfcOemExtension$Callback;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;)V

    return-void
.end method
