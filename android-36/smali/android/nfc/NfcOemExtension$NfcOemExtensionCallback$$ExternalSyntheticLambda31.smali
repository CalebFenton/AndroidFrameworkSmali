.class public final synthetic Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

.field public final synthetic blacklist f$1:Landroid/nfc/NdefMessage;

.field public final synthetic blacklist f$2:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda31;->f$0:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

    iput-object p2, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda31;->f$1:Landroid/nfc/NdefMessage;

    iput-object p3, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda31;->f$2:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda31;->f$0:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda31;->f$1:Landroid/nfc/NdefMessage;

    iget-object v2, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda31;->f$2:Landroid/os/ResultReceiver;

    check-cast p1, Landroid/nfc/NfcOemExtension$Callback;

    check-cast p2, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, p1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->$r8$lambda$jA7N94NJt1LZocGbNh2uGwigbVY(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method
