.class public final synthetic Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/inputmethod/IInputMethodSessionInvoker;

.field public final synthetic blacklist f$1:[Landroid/view/inputmethod/CompletionInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;[Landroid/view/inputmethod/CompletionInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda6;->f$0:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iput-object p2, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda6;->f$1:[Landroid/view/inputmethod/CompletionInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda6;->f$0:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object v1, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda6;->f$1:[Landroid/view/inputmethod/CompletionInfo;

    invoke-static {v0, v1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->$r8$lambda$vrVC47yjuV1AoTAJcbktiCBhNd4(Landroid/view/inputmethod/IInputMethodSessionInvoker;[Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method
