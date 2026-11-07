.class public final synthetic Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

.field public final synthetic blacklist f$1:Landroid/nfc/cardemulation/ApduServiceInfo;

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda48;->f$0:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

    iput-object p2, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda48;->f$1:Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object p3, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda48;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda48;->f$0:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda48;->f$1:Landroid/nfc/cardemulation/ApduServiceInfo;

    iget-object v2, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda48;->f$2:Ljava/lang/String;

    check-cast p1, Landroid/nfc/NfcOemExtension$Callback;

    check-cast p2, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, p1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->$r8$lambda$xv0jyUK89mDZcPeBe1ikltGZDzQ(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method
