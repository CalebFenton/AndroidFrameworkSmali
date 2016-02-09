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
.field final synthetic this$0:Landroid/app/IntentService;


# direct methods
.method public constructor <init>(Landroid/app/IntentService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/IntentService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 60
    iput-object p1, p0, Landroid/app/IntentService$ServiceHandler;->this$0:Landroid/app/IntentService;

    #@2
    .line 61
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 60
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 66
    iget-object v1, p0, Landroid/app/IntentService$ServiceHandler;->this$0:Landroid/app/IntentService;

    #@2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4
    check-cast v0, Landroid/content/Intent;

    #@6
    invoke-virtual {v1, v0}, Landroid/app/IntentService;->onHandleIntent(Landroid/content/Intent;)V

    #@9
    .line 67
    iget-object v0, p0, Landroid/app/IntentService$ServiceHandler;->this$0:Landroid/app/IntentService;

    #@b
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@d
    invoke-virtual {v0, v1}, Landroid/app/IntentService;->stopSelf(I)V

    #@10
    .line 65
    return-void
.end method
