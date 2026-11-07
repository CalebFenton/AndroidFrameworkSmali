.class public final synthetic Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/inputmethod/ConnectionlessHandwritingCallback;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    iput p2, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    iget v1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->lambda$onError$2(Landroid/view/inputmethod/ConnectionlessHandwritingCallback;I)V

    return-void
.end method
