.class final Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1194
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    #@2
    .line 1195
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 1194
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1200
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1199
    :cond_0
    :goto_0
    return-void

    #@6
    .line 1202
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    #@8
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-wrap5(Lcom/android/server/display/DisplayPowerController;)V

    #@b
    goto :goto_0

    #@c
    .line 1206
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    #@e
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-wrap0(Lcom/android/server/display/DisplayPowerController;)V

    #@11
    goto :goto_0

    #@12
    .line 1210
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    #@14
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-get2(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a
    if-ne v0, v1, :cond_0

    #@1c
    .line 1211
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    #@1e
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-wrap4(Lcom/android/server/display/DisplayPowerController;)V

    #@21
    .line 1212
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    #@23
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-wrap5(Lcom/android/server/display/DisplayPowerController;)V

    #@26
    goto :goto_0

    #@27
    .line 1200
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
