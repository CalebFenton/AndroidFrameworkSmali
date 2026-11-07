.class public final synthetic Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/autofill/AutofillManager;

.field public final synthetic blacklist f$1:J

.field public final synthetic blacklist f$2:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda8;->f$0:Landroid/view/autofill/AutofillManager;

    iput-wide p2, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda8;->f$1:J

    iput-object p4, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda8;->f$2:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda8;->f$0:Landroid/view/autofill/AutofillManager;

    iget-wide v1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda8;->f$1:J

    iget-object v3, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda8;->f$2:Landroid/content/ComponentName;

    invoke-static {v0, v1, v2, v3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$notifyDisableAutofill$12(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V

    return-void
.end method
