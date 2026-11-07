.class public final synthetic Lcom/android/internal/inputmethod/ImeTracing$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Landroid/os/RemoteException;

    invoke-static {p1}, Lcom/android/internal/inputmethod/ImeTracing;->lambda$sendToService$0(Landroid/os/RemoteException;)V

    return-void
.end method
