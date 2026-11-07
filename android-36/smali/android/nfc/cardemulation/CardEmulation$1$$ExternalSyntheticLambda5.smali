.class public final synthetic Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;


# instance fields
.field public final synthetic blacklist f$0:Z


# direct methods
.method public synthetic constructor blacklist <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda5;->f$0:Z

    return-void
.end method


# virtual methods
.method public final blacklist invoke(Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .registers 3

    .line 0
    iget-boolean v0, p0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda5;->f$0:Z

    invoke-static {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1;->lambda$onPreferredServiceChanged$0(ZLandroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V

    return-void
.end method
