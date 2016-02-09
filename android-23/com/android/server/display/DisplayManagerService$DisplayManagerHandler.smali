.class final Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
.super Landroid/os/Handler;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1072
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    .line 1073
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 1072
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1078
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1077
    :goto_0
    return-void

    #@6
    .line 1080
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@8
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-wrap18(Lcom/android/server/display/DisplayManagerService;)V

    #@b
    goto :goto_0

    #@c
    .line 1084
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@e
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-wrap16(Lcom/android/server/display/DisplayManagerService;)V

    #@11
    goto :goto_0

    #@12
    .line 1088
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@14
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@16
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@18
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->-wrap6(Lcom/android/server/display/DisplayManagerService;II)V

    #@1b
    goto :goto_0

    #@1c
    .line 1092
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@1e
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get8(Lcom/android/server/display/DisplayManagerService;)Landroid/view/WindowManagerInternal;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->requestTraversalFromDisplayManager()V

    #@25
    goto :goto_0

    #@26
    .line 1096
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@28
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get5(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2b
    move-result-object v1

    #@2c
    monitor-enter v1

    #@2d
    .line 1097
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2f
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get6(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    #@32
    move-result-object v0

    #@33
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@35
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get1(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayViewport;->copyFrom(Landroid/hardware/display/DisplayViewport;)V

    #@3c
    .line 1098
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@3e
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get7(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    #@41
    move-result-object v0

    #@42
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@44
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get3(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayViewport;->copyFrom(Landroid/hardware/display/DisplayViewport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    monitor-exit v1

    #@4c
    .line 1100
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@4e
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get4(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/input/InputManagerInternal;

    #@51
    move-result-object v0

    #@52
    .line 1101
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@54
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get6(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    #@57
    move-result-object v1

    #@58
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@5a
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get7(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    #@5d
    move-result-object v2

    #@5e
    .line 1100
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManagerInternal;->setDisplayViewports(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V

    #@61
    goto :goto_0

    #@62
    .line 1096
    :catchall_0
    move-exception v0

    #@63
    monitor-exit v1

    #@64
    throw v0

    #@65
    .line 1078
    nop

    #@66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
