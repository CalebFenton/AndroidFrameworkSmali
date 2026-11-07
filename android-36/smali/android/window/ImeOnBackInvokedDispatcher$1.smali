.class Landroid/window/ImeOnBackInvokedDispatcher$1;
.super Landroid/os/ResultReceiver;
.source "ImeOnBackInvokedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/window/ImeOnBackInvokedDispatcher;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/ImeOnBackInvokedDispatcher;


# direct methods
.method constructor blacklist <init>(Landroid/window/ImeOnBackInvokedDispatcher;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Landroid/window/ImeOnBackInvokedDispatcher;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 66
    iput-object p1, p0, Landroid/window/ImeOnBackInvokedDispatcher$1;->this$0:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 69
    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$1;->this$0:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual {v0}, Landroid/window/ImeOnBackInvokedDispatcher;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    .line 70
    .local v0, "dispatcher":Landroid/window/WindowOnBackInvokedDispatcher;
    if-eqz v0, :cond_e

    .line 71
    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher$1;->this$0:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-static {v1, p1, p2, v0}, Landroid/window/ImeOnBackInvokedDispatcher;->-$$Nest$mreceive(Landroid/window/ImeOnBackInvokedDispatcher;ILandroid/os/Bundle;Landroid/window/WindowOnBackInvokedDispatcher;)V

    goto :goto_20

    .line 73
    :cond_e
    iget-object v1, p0, Landroid/window/ImeOnBackInvokedDispatcher$1;->this$0:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-static {v1}, Landroid/window/ImeOnBackInvokedDispatcher;->-$$Nest$fgetmQueuedReceive(Landroid/window/ImeOnBackInvokedDispatcher;)Ljava/util/ArrayDeque;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 75
    :goto_20
    return-void
.end method
