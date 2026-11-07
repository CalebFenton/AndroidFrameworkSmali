.class public final synthetic Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

.field public final synthetic blacklist f$1:Landroid/view/inputmethod/EditorInfo;

.field public final synthetic blacklist f$2:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda0;->f$0:Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    iput-object p2, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda0;->f$1:Landroid/view/inputmethod/EditorInfo;

    iput-object p3, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iput p4, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda0;->f$0:Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    iget-object v1, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda0;->f$1:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iget v3, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->$r8$lambda$LVhm5soxM_wv2LQAXCPXNdGrsTQ(Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void
.end method
