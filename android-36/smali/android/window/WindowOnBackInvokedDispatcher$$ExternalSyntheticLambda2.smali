.class public final synthetic Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->lambda$isOnBackInvokedCallbackEnabled$1(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
