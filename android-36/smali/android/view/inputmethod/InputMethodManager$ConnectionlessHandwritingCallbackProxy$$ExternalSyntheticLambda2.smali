.class public final synthetic Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

.field public final synthetic blacklist f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/inputmethod/ConnectionlessHandwritingCallback;Ljava/lang/CharSequence;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda2;->f$0:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda2;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda2;->f$0:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda2;->f$1:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->lambda$onResult$1(Landroid/view/inputmethod/ConnectionlessHandwritingCallback;Ljava/lang/CharSequence;)V

    return-void
.end method
