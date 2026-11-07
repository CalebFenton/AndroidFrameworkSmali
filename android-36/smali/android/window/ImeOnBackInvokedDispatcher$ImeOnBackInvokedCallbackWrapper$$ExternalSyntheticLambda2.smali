.class public final synthetic Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;

.field public final synthetic blacklist f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;Ljava/util/function/Consumer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;->f$0:Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;

    iput-object p2, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;->f$0:Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;

    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;->$r8$lambda$X48esE3n_K0_3dxVBULk-k1qUE8(Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper;Ljava/util/function/Consumer;)V

    return-void
.end method
