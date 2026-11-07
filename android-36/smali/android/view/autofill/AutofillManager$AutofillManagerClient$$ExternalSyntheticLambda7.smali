.class public final synthetic Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/autofill/AutofillManager;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:[Landroid/view/autofill/AutofillId;

.field public final synthetic blacklist f$3:Z

.field public final synthetic blacklist f$4:Z

.field public final synthetic blacklist f$5:[Landroid/view/autofill/AutofillId;

.field public final synthetic blacklist f$6:Landroid/view/autofill/AutofillId;

.field public final synthetic blacklist f$7:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;Z)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;->f$0:Landroid/view/autofill/AutofillManager;

    iput p2, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;->f$1:I

    iput-object p3, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;->f$2:[Landroid/view/autofill/AutofillId;

    iput-boolean p4, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;->f$3:Z

    iput-boolean p5, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;->f$4:Z

    iput-object p6, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;->f$5:[Landroid/view/autofill/AutofillId;

    iput-object p7, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;->f$6:Landroid/view/autofill/AutofillId;

    iput-boolean p8, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;->f$7:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 9

    .line 0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;->f$0:Landroid/view/autofill/AutofillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;->f$1:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;->f$2:[Landroid/view/autofill/AutofillId;

    iget-boolean v3, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;->f$3:Z

    iget-boolean v4, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;->f$4:Z

    iget-object v5, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;->f$5:[Landroid/view/autofill/AutofillId;

    iget-object v6, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;->f$6:Landroid/view/autofill/AutofillId;

    iget-boolean v7, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;->f$7:Z

    invoke-static/range {v0 .. v7}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$setTrackedViews$15(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method
