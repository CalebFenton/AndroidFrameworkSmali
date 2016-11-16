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
.field final synthetic this$0:Landroid/os/UpdateEngine;

.field final synthetic val$callback:Landroid/os/UpdateEngineCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/UpdateEngine;Landroid/os/Handler;Landroid/os/UpdateEngineCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/UpdateEngine;
    .param p2, "val$handler"    # Landroid/os/Handler;
    .param p3, "val$callback"    # Landroid/os/UpdateEngineCallback;

    #@0
    .prologue
    .line 91
    iput-object p1, p0, Landroid/os/UpdateEngine$1;->this$0:Landroid/os/UpdateEngine;

    #@2
    iput-object p2, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    #@4
    iput-object p3, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    #@6
    invoke-direct {p0}, Landroid/os/IUpdateEngineCallback$Stub;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onPayloadApplicationComplete(I)V
    .locals 3
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 109
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    #@6
    new-instance v1, Landroid/os/UpdateEngine$1$2;

    #@8
    iget-object v2, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    #@a
    invoke-direct {v1, p0, v2, p1}, Landroid/os/UpdateEngine$1$2;-><init>(Landroid/os/UpdateEngine$1;Landroid/os/UpdateEngineCallback;I)V

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@10
    .line 107
    :goto_0
    return-void

    #@11
    .line 116
    :cond_0
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    #@13
    invoke-virtual {v0, p1}, Landroid/os/UpdateEngineCallback;->onPayloadApplicationComplete(I)V

    #@16
    goto :goto_0
.end method

.method public onStatusUpdate(IF)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "percent"    # F

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 95
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    #@6
    new-instance v1, Landroid/os/UpdateEngine$1$1;

    #@8
    iget-object v2, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    #@a
    invoke-direct {v1, p0, v2, p1, p2}, Landroid/os/UpdateEngine$1$1;-><init>(Landroid/os/UpdateEngine$1;Landroid/os/UpdateEngineCallback;IF)V

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@10
    .line 93
    :goto_0
    return-void

    #@11
    .line 102
    :cond_0
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    #@13
    invoke-virtual {v0, p1, p2}, Landroid/os/UpdateEngineCallback;->onStatusUpdate(IF)V

    #@16
    goto :goto_0
.end method
