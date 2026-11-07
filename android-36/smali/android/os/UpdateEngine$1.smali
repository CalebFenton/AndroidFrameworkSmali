.class Landroid/os/UpdateEngine$1;
.super Landroid/os/IUpdateEngineCallback$Stub;
.source "UpdateEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/UpdateEngineCallback;

.field final synthetic blacklist val$handler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/os/UpdateEngine;Landroid/os/Handler;Landroid/os/UpdateEngineCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/os/UpdateEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 268
    iput-object p2, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    invoke-direct {p0}, Landroid/os/IUpdateEngineCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPayloadApplicationComplete(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 285
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 286
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/os/UpdateEngine$1$2;

    invoke-direct {v1, p0, p1}, Landroid/os/UpdateEngine$1$2;-><init>(Landroid/os/UpdateEngine$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    .line 293
    :cond_f
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    invoke-virtual {v0, p1}, Landroid/os/UpdateEngineCallback;->onPayloadApplicationComplete(I)V

    .line 295
    :goto_14
    return-void
.end method

.method public blacklist onStatusUpdate(IF)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "percent"    # F

    .line 271
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 272
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/os/UpdateEngine$1$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/UpdateEngine$1$1;-><init>(Landroid/os/UpdateEngine$1;IF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    .line 279
    :cond_f
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    invoke-virtual {v0, p1, p2}, Landroid/os/UpdateEngineCallback;->onStatusUpdate(IF)V

    .line 281
    :goto_14
    return-void
.end method
