.class public final synthetic Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;

.field public final synthetic blacklist f$1:Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda6;->f$0:Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;

    iput-object p2, p0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda6;->f$1:Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda6;->f$0:Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda6;->f$1:Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation$1;->lambda$callListeners$8(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V

    return-void
.end method
