.class public final synthetic Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/autofill/IAutoFillManager;

.field public final synthetic blacklist f$1:Landroid/view/autofill/IAutoFillManagerClient;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/autofill/IAutoFillManager;Landroid/view/autofill/IAutoFillManagerClient;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda1;->f$0:Landroid/view/autofill/IAutoFillManager;

    iput-object p2, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda1;->f$1:Landroid/view/autofill/IAutoFillManagerClient;

    iput p3, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda1;->f$0:Landroid/view/autofill/IAutoFillManager;

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda1;->f$1:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/view/autofill/AutofillManager;->lambda$tryAddServiceClientIfNeededLocked$1(Landroid/view/autofill/IAutoFillManager;Landroid/view/autofill/IAutoFillManagerClient;I)V

    return-void
.end method
