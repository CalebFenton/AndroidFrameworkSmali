.class public final synthetic Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/cardemulation/CardEmulation;

.field public final synthetic blacklist f$1:Landroid/content/ComponentName;

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda19;->f$0:Landroid/nfc/cardemulation/CardEmulation;

    iput-object p2, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda19;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda19;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist call()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda19;->f$0:Landroid/nfc/cardemulation/CardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda19;->f$1:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda19;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->$r8$lambda$CAUTPtHNMY8Cs_9jXhtMdYpe2_M(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
