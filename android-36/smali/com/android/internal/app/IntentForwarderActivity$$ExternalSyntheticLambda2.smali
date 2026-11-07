.class public final synthetic Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/IntentForwarderActivity;

.field public final synthetic blacklist f$1:Landroid/content/Intent;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Landroid/content/Intent;

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;II)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/app/IntentForwarderActivity;

    iput-object p2, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;->f$3:Landroid/content/Intent;

    iput p5, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;->f$4:I

    iput p6, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;->f$5:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/app/IntentForwarderActivity;

    iget-object v1, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;->f$3:Landroid/content/Intent;

    iget v4, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;->f$4:I

    iget v5, p0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;->f$5:I

    move-object v6, p1

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-static/range {v0 .. v6}, Lcom/android/internal/app/IntentForwarderActivity;->$r8$lambda$6nbD4uXbFVbAJDvC34Kras_NUHQ(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILandroid/content/pm/ResolveInfo;)V

    return-void
.end method
