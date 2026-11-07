.class public final synthetic Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/WindowOnBackInvokedDispatcher;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/WindowOnBackInvokedDispatcher;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda0;->f$0:Landroid/window/WindowOnBackInvokedDispatcher;

    return-void
.end method


# virtual methods
.method public final whitelist test-api getAsBoolean()Z
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda0;->f$0:Landroid/window/WindowOnBackInvokedDispatcher;

    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->$r8$lambda$bOxWKUMqKOfZPPZ_SwgF6n3M8DE(Landroid/window/WindowOnBackInvokedDispatcher;)Z

    move-result v0

    return v0
.end method
