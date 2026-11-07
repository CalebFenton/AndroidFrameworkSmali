.class final Landroid/app/IntentService$ServiceHandler;
.super Landroid/os/Handler;
.source "IntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/IntentService;


# direct methods
.method public constructor blacklist <init>(Landroid/app/IntentService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Landroid/app/IntentService$ServiceHandler;->this$0:Landroid/app/IntentService;

    .line 72
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 77
    iget-object v0, p0, Landroid/app/IntentService$ServiceHandler;->this$0:Landroid/app/IntentService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/IntentService;->onHandleIntent(Landroid/content/Intent;)V

    .line 78
    iget-object v0, p0, Landroid/app/IntentService$ServiceHandler;->this$0:Landroid/app/IntentService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/IntentService;->stopSelf(I)V

    .line 79
    return-void
.end method
