.class public final synthetic Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor blacklist <init>(ILandroid/content/ComponentName;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda31;->f$0:I

    iput-object p2, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda31;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final blacklist call()Ljava/lang/Object;
    .registers 3

    .line 0
    iget v0, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda31;->f$0:I

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda31;->f$1:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->lambda$setDefaultForNextTap$21(ILandroid/content/ComponentName;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
