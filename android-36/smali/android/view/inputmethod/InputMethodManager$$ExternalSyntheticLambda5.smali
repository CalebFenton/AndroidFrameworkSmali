.class public final synthetic Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl;

.field public final synthetic blacklist f$1:Landroid/view/inputmethod/ImeTracker$Token;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda5;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda5;->f$1:Landroid/view/inputmethod/ImeTracker$Token;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda5;->f$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda5;->f$1:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->lambda$showSoftInput$1(Landroid/view/ViewRootImpl;Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method
