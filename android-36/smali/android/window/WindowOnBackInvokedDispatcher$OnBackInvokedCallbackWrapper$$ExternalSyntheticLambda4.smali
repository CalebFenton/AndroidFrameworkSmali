.class public final synthetic Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/OnBackAnimationCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/OnBackAnimationCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/window/OnBackAnimationCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/window/OnBackAnimationCallback;

    invoke-interface {v0}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    return-void
.end method
