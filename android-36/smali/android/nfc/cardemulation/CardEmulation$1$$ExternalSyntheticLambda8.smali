.class public final synthetic Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/cardemulation/PollingFrame;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/cardemulation/PollingFrame;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda8;->f$0:Landroid/nfc/cardemulation/PollingFrame;

    return-void
.end method


# virtual methods
.method public final blacklist invoke(Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda8;->f$0:Landroid/nfc/cardemulation/PollingFrame;

    invoke-static {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1;->lambda$onObserveModeDisabledInFirmware$2(Landroid/nfc/cardemulation/PollingFrame;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V

    return-void
.end method
