.class public final synthetic Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;

.field public final synthetic blacklist f$1:Landroid/content/Intent;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;Landroid/content/Intent;II)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;

    iput-object p2, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iput p3, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;

    iget-object v1, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iget v2, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->$r8$lambda$DlrTq0vRez77WubVXtfCeVuXGE8(Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method
