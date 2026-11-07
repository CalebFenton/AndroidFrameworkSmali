.class public final synthetic Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda4;->f$0:Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda4;->f$0:Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;

    check-cast p1, Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    check-cast p2, Ljava/util/concurrent/Executor;

    invoke-static {v0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation$1;->lambda$callListeners$9(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method
