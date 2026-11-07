.class public final synthetic Landroid/view/autofill/AutofillStateFingerprint$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/autofill/AutofillStateFingerprint;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/autofill/AutofillStateFingerprint;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/AutofillStateFingerprint$$ExternalSyntheticLambda0;->f$0:Landroid/view/autofill/AutofillStateFingerprint;

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/autofill/AutofillStateFingerprint$$ExternalSyntheticLambda0;->f$0:Landroid/view/autofill/AutofillStateFingerprint;

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-static {v0, p1, p2}, Landroid/view/autofill/AutofillStateFingerprint;->$r8$lambda$1sGf-jkz8zkspSlTN1IdvPkWAZ4(Landroid/view/autofill/AutofillStateFingerprint;Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
