.class public final synthetic Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/inputmethod/IInputMethodSessionInvoker;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda3;->f$0:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iput-boolean p2, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda3;->f$0:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-boolean v1, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda3;->f$1:Z

    invoke-static {v0, v1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->$r8$lambda$pRRhb6pwbh8MEmz3aWA8wFejiec(Landroid/view/inputmethod/IInputMethodSessionInvoker;Z)V

    return-void
.end method
