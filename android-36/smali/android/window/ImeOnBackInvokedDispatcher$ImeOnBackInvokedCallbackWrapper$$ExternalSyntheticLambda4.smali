.class public final synthetic Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/BackMotionEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/BackMotionEvent;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/window/BackMotionEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/window/BackMotionEvent;

    check-cast p1, Landroid/window/OnBackAnimationCallback;

    invoke-static {v0, p1}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;->lambda$onBackProgressed$1(Landroid/window/BackMotionEvent;Landroid/window/OnBackAnimationCallback;)V

    return-void
.end method
