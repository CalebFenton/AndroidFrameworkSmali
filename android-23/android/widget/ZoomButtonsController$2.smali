.class Landroid/widget/ZoomButtonsController$2;
.super Landroid/os/Handler;
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
    .line 169
    iput-object p1, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 171
    :goto_0
    return-void

    #@6
    .line 174
    :pswitch_0
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    #@8
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->-wrap2(Landroid/widget/ZoomButtonsController;)V

    #@b
    goto :goto_0

    #@c
    .line 178
    :pswitch_1
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    #@12
    goto :goto_0

    #@13
    .line 182
    :pswitch_2
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    #@15
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->-get4(Landroid/widget/ZoomButtonsController;)Landroid/view/View;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    if-nez v0, :cond_0

    #@1f
    .line 184
    const-string/jumbo v0, "ZoomButtonsController"

    #@22
    .line 185
    const-string/jumbo v1, "Cannot make the zoom controller visible if the owner view is not attached to a window."

    #@25
    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    goto :goto_0

    #@29
    .line 188
    :cond_0
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    #@2b
    const/4 v1, 0x1

    #@2c
    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    #@2f
    goto :goto_0

    #@30
    .line 172
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
