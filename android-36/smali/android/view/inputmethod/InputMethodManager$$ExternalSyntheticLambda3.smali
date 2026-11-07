.class public final synthetic Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/inputmethod/EditorInfo;

.field public final synthetic blacklist f$1:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;->f$0:Landroid/view/inputmethod/EditorInfo;

    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iput p3, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;->f$0:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;->f$2:I

    check-cast p1, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    invoke-static {v0, v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->lambda$doInvalidateInput$4(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V

    return-void
.end method
