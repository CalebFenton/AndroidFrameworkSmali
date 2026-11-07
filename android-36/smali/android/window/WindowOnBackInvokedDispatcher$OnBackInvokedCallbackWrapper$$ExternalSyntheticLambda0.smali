.class public final synthetic Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;

.field public final synthetic blacklist f$1:Landroid/window/OnBackInvokedCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/OnBackInvokedCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;

    iput-object p2, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/window/OnBackInvokedCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->$r8$lambda$63ojIwchGKPXnN9WLnkEbUuCeQ0(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method
