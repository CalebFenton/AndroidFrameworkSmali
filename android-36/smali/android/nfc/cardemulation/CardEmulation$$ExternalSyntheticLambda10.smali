.class public final synthetic Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/cardemulation/CardEmulation$ServiceCallReturn;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/ComponentName;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda10;->f$0:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final blacklist call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation$$ExternalSyntheticLambda10;->f$0:Landroid/content/ComponentName;

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->lambda$setPreferredService$13(Landroid/content/ComponentName;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
