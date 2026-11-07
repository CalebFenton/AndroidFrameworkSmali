.class public final synthetic Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/inputmethod/InputMethodManager;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;IIII)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda8;->f$0:Landroid/view/inputmethod/InputMethodManager;

    iput p2, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda8;->f$1:I

    iput p3, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda8;->f$2:I

    iput p4, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda8;->f$3:I

    iput p5, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda8;->f$4:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 8

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda8;->f$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda8;->f$1:I

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda8;->f$2:I

    iget v3, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda8;->f$3:I

    iget v4, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda8;->f$4:I

    move-object v5, p1

    check-cast v5, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    invoke-static/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->$r8$lambda$tGD1omxj7ocrnPvqLOGOybCnzd4(Landroid/view/inputmethod/InputMethodManager;IIIILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V

    return-void
.end method
