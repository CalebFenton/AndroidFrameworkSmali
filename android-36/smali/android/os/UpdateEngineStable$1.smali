.class Landroid/os/UpdateEngineStable$1;
.super Landroid/os/IUpdateEngineStableCallback$Stub;
.source "UpdateEngineStable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/UpdateEngineStable;->bind(Landroid/os/UpdateEngineStableCallback;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/UpdateEngineStableCallback;

.field final synthetic blacklist val$handler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/os/UpdateEngineStable;Landroid/os/Handler;Landroid/os/UpdateEngineStableCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/os/UpdateEngineStable;
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

    .line 100
    iput-object p2, p0, Landroid/os/UpdateEngineStable$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/os/UpdateEngineStable$1;->val$callback:Landroid/os/UpdateEngineStableCallback;

    invoke-direct {p0}, Landroid/os/IUpdateEngineStableCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 138
    const-string v0, "ee2e6f0bd51391955f79f4d5eeeafc37c668cd40"

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 133
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist onPayloadApplicationComplete(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 118
    iget-object v0, p0, Landroid/os/UpdateEngineStable$1;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 119
    iget-object v0, p0, Landroid/os/UpdateEngineStable$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/os/UpdateEngineStable$1$2;

    invoke-direct {v1, p0, p1}, Landroid/os/UpdateEngineStable$1$2;-><init>(Landroid/os/UpdateEngineStable$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    .line 127
    :cond_f
    iget-object v0, p0, Landroid/os/UpdateEngineStable$1;->val$callback:Landroid/os/UpdateEngineStableCallback;

    invoke-virtual {v0, p1}, Landroid/os/UpdateEngineStableCallback;->onPayloadApplicationComplete(I)V

    .line 129
    :goto_14
    return-void
.end method

.method public blacklist onStatusUpdate(IF)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "percent"    # F

    .line 103
    iget-object v0, p0, Landroid/os/UpdateEngineStable$1;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 104
    iget-object v0, p0, Landroid/os/UpdateEngineStable$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/os/UpdateEngineStable$1$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/UpdateEngineStable$1$1;-><init>(Landroid/os/UpdateEngineStable$1;IF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    .line 112
    :cond_f
    iget-object v0, p0, Landroid/os/UpdateEngineStable$1;->val$callback:Landroid/os/UpdateEngineStableCallback;

    invoke-virtual {v0, p1, p2}, Landroid/os/UpdateEngineStableCallback;->onStatusUpdate(IF)V

    .line 114
    :goto_14
    return-void
.end method
