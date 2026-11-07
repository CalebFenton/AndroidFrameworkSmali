.class public final synthetic Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/autofill/AutofillManager;

.field public final synthetic blacklist f$1:Ljava/lang/ref/WeakReference;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda3;->f$0:Landroid/view/autofill/AutofillManager;

    iput-object p2, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/ref/WeakReference;

    iput p3, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda3;->f$0:Landroid/view/autofill/AutofillManager;

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/ref/WeakReference;

    iget v2, p0, Landroid/view/autofill/AutofillManager$$ExternalSyntheticLambda3;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/view/autofill/AutofillManager;->$r8$lambda$RqegKQ0ttNAT6vJZMD9Tyxd2DXM(Landroid/view/autofill/AutofillManager;Ljava/lang/ref/WeakReference;I)V

    return-void
.end method
