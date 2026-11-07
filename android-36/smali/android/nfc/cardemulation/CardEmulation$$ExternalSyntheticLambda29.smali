.class public final synthetic Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/cardemulation/CardEmulation;

.field public final synthetic blacklist f$1:Landroid/content/ComponentName;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda29;->f$0:Landroid/nfc/cardemulation/CardEmulation;

    iput-object p2, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda29;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda29;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda29;->f$3:Z

    return-void
.end method


# virtual methods
.method public final blacklist call()Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda29;->f$0:Landroid/nfc/cardemulation/CardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda29;->f$1:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda29;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda29;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Landroid/nfc/cardemulation/CardEmulation;->$r8$lambda$wVz99yQCgLntNO1-udnKXtGiBnw(Landroid/nfc/cardemulation/CardEmulation;Landroid/content/ComponentName;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
