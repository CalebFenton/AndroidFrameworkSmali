.class public final synthetic Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/ResultReceiver;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;->f$0:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;->f$0:Landroid/os/ResultReceiver;

    check-cast p1, Landroid/view/inputmethod/TextBoundsInfoResult;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$requestTextBoundsInfo$43(Landroid/os/ResultReceiver;Landroid/view/inputmethod/TextBoundsInfoResult;)V

    return-void
.end method
