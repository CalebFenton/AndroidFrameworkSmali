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
.field final synthetic blacklist this$0:Landroid/widget/ZoomButtonsController;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ZoomButtonsController;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/ZoomButtonsController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 152
    iput-object p1, p0, Landroid/widget/ZoomButtonsController$1;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$1;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->-$$Nest$fgetmIsVisible(Landroid/widget/ZoomButtonsController;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 157
    :cond_9
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$1;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->-$$Nest$fgetmHandler(Landroid/widget/ZoomButtonsController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$1;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->-$$Nest$fgetmHandler(Landroid/widget/ZoomButtonsController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    return-void
.end method
