.class public final synthetic Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/inputmethod/IInputMethodSessionInvoker;

.field public final synthetic blacklist f$1:Landroid/view/inputmethod/EditorInfo;

.field public final synthetic blacklist f$2:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda2;->f$0:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iput-object p2, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda2;->f$1:Landroid/view/inputmethod/EditorInfo;

    iput-object p3, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda2;->f$2:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iput p4, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda2;->f$0:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object v1, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda2;->f$1:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda2;->f$2:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iget v3, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda2;->f$3:I

    invoke-static {v0, v1, v2, v3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->$r8$lambda$EbPxi0XYPX5hK85VMISAxtm89-4(Landroid/view/inputmethod/IInputMethodSessionInvoker;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-void
.end method
