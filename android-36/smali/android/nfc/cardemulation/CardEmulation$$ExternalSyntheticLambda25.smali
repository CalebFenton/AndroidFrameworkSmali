.class public final synthetic Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/cardemulation/CardEmulation$ServiceCall;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/cardemulation/CardEmulation;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/cardemulation/CardEmulation;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda25;->f$0:Landroid/nfc/cardemulation/CardEmulation;

    iput-object p2, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda25;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda25;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist call()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda25;->f$0:Landroid/nfc/cardemulation/CardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda25;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda25;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->$r8$lambda$VDWIg0bkHxwBYqMD3O4aKgpNIMM(Landroid/nfc/cardemulation/CardEmulation;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
