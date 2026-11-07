.class public final synthetic Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda3;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist invoke(Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .registers 3

    .line 0
    iget v0, p0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda3;->f$0:I

    invoke-static {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1;->lambda$onInternalErrorReported$7(ILandroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V

    return-void
.end method
