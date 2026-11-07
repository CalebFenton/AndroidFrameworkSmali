.class public final synthetic Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/autofill/AutofillManager;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/view/autofill/AutofillId;

.field public final synthetic blacklist f$3:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda4;->f$0:Landroid/view/autofill/AutofillManager;

    iput p2, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda4;->f$2:Landroid/view/autofill/AutofillId;

    iput-object p4, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda4;->f$3:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda4;->f$0:Landroid/view/autofill/AutofillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda4;->f$2:Landroid/view/autofill/AutofillId;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda4;->f$3:Landroid/view/KeyEvent;

    invoke-static {v0, v1, v2, v3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$dispatchUnhandledKey$13(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    return-void
.end method
