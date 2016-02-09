.class final Lcom/android/server/input/InputManagerService$InputManagerHandler;
.super Landroid/os/Handler;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1645
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    .line 1646
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 1645
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1651
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1650
    :goto_0
    return-void

    #@6
    .line 1653
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #@8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v0, [Landroid/view/InputDevice;

    #@c
    invoke-static {v1, v0}, Lcom/android/server/input/InputManagerService;->-wrap2(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V

    #@f
    goto :goto_0

    #@10
    .line 1656
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #@12
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@14
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@16
    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->-wrap3(Lcom/android/server/input/InputManagerService;II)V

    #@19
    goto :goto_0

    #@1a
    .line 1659
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #@1c
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-wrap7(Lcom/android/server/input/InputManagerService;)V

    #@1f
    goto :goto_0

    #@20
    .line 1662
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #@22
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-wrap9(Lcom/android/server/input/InputManagerService;)V

    #@25
    goto :goto_0

    #@26
    .line 1665
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #@28
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-wrap6(Lcom/android/server/input/InputManagerService;)V

    #@2b
    goto :goto_0

    #@2c
    .line 1651
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
