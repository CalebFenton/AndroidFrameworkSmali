.class public final synthetic Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist invoke(Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1;->lambda$onAidNotRouted$4(Ljava/lang/String;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V

    return-void
.end method
