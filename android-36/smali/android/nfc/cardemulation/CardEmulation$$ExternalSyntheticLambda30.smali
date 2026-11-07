.class public final synthetic Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Landroid/content/ComponentName;

.field public final synthetic blacklist f$2:Z


# direct methods
.method public synthetic constructor blacklist <init>(ILandroid/content/ComponentName;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda30;->f$0:I

    iput-object p2, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda30;->f$1:Landroid/content/ComponentName;

    iput-boolean p3, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda30;->f$2:Z

    return-void
.end method


# virtual methods
.method public final blacklist call()Ljava/lang/Object;
    .registers 4

    .line 0
    iget v0, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda30;->f$0:I

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda30;->f$1:Landroid/content/ComponentName;

    iget-boolean v2, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda30;->f$2:Z

    invoke-static {v0, v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->lambda$setServiceEnabledForCategoryOther$24(ILandroid/content/ComponentName;Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
