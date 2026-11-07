.class public final synthetic Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/cardemulation/CardEmulation;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/cardemulation/CardEmulation;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda4;->f$0:Landroid/nfc/cardemulation/CardEmulation;

    iput p2, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final blacklist call()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda4;->f$0:Landroid/nfc/cardemulation/CardEmulation;

    iget v1, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda4;->f$1:I

    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->$r8$lambda$qJfuWLBGUg9T76i2O-Kph9guO0c(Landroid/nfc/cardemulation/CardEmulation;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
