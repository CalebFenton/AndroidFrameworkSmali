.class public final synthetic Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

.field public final synthetic blacklist f$1:Landroid/nfc/Tag;

.field public final synthetic blacklist f$2:Landroid/nfc/NdefMessage;

.field public final synthetic blacklist f$3:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda2;->f$0:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

    iput-object p2, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda2;->f$1:Landroid/nfc/Tag;

    iput-object p3, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda2;->f$2:Landroid/nfc/NdefMessage;

    iput-object p4, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda2;->f$3:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda2;->f$0:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda2;->f$1:Landroid/nfc/Tag;

    iget-object v2, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda2;->f$2:Landroid/nfc/NdefMessage;

    iget-object v3, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda2;->f$3:Landroid/os/ResultReceiver;

    move-object v4, p1

    check-cast v4, Landroid/nfc/NfcOemExtension$Callback;

    move-object v5, p2

    check-cast v5, Ljava/util/concurrent/Executor;

    invoke-static/range {v0 .. v5}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->$r8$lambda$x-qScEMmYsMbiKUfH_sz-QTrt0I(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method
