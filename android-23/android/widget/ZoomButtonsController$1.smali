.class Landroid/widget/ZoomButtonsController$1;
.super Landroid/content/BroadcastReceiver;
.source "ZoomButtonsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ZoomButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ZoomButtonsController;


# direct methods
.method constructor <init>(Landroid/widget/ZoomButtonsController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ZoomButtonsController;

    #@0
    .prologue
    .line 149
    iput-object p1, p0, Landroid/widget/ZoomButtonsController$1;->this$0:Landroid/widget/ZoomButtonsController;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 152
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$1;->this$0:Landroid/widget/ZoomButtonsController;

    #@3
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->-get3(Landroid/widget/ZoomButtonsController;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    return-void

    #@a
    .line 154
    :cond_0
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$1;->this$0:Landroid/widget/ZoomButtonsController;

    #@c
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->-get2(Landroid/widget/ZoomButtonsController;)Landroid/os/Handler;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@13
    .line 155
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$1;->this$0:Landroid/widget/ZoomButtonsController;

    #@15
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->-get2(Landroid/widget/ZoomButtonsController;)Landroid/os/Handler;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@1c
    .line 151
    return-void
.end method
