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
    .line 2063
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    .line 2064
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 2063
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2069
    iget v5, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v5, :pswitch_data_0

    #@5
    .line 2068
    :goto_0
    return-void

    #@6
    .line 2071
    :pswitch_0
    iget-object v8, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #@8
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v5, [Landroid/view/InputDevice;

    #@c
    invoke-static {v8, v5}, Lcom/android/server/input/InputManagerService;->-wrap3(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V

    #@f
    goto :goto_0

    #@10
    .line 2074
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@12
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@14
    .line 2075
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v9, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #@16
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@18
    check-cast v5, Landroid/hardware/input/InputDeviceIdentifier;

    #@1a
    .line 2076
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1c
    check-cast v8, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@1e
    .line 2075
    invoke-static {v9, v5, v8}, Lcom/android/server/input/InputManagerService;->-wrap6(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)V

    #@21
    goto :goto_0

    #@22
    .line 2080
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #@24
    invoke-static {v5}, Lcom/android/server/input/InputManagerService;->-wrap12(Lcom/android/server/input/InputManagerService;)V

    #@27
    goto :goto_0

    #@28
    .line 2083
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #@2a
    invoke-static {v5}, Lcom/android/server/input/InputManagerService;->-wrap14(Lcom/android/server/input/InputManagerService;)V

    #@2d
    goto :goto_0

    #@2e
    .line 2086
    :pswitch_4
    iget-object v5, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #@30
    invoke-static {v5}, Lcom/android/server/input/InputManagerService;->-wrap11(Lcom/android/server/input/InputManagerService;)V

    #@33
    goto :goto_0

    #@34
    .line 2089
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@36
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@38
    .line 2090
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@3a
    int-to-long v8, v5

    #@3b
    const-wide v10, 0xffffffffL

    #@40
    and-long/2addr v8, v10

    #@41
    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@43
    int-to-long v10, v5

    #@44
    const/16 v5, 0x20

    #@46
    shl-long/2addr v10, v5

    #@47
    or-long v6, v8, v10

    #@49
    .line 2091
    .local v6, "whenNanos":J
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@4b
    check-cast v5, Ljava/lang/Boolean;

    #@4d
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    #@50
    move-result v1

    #@51
    .line 2092
    .local v1, "inTabletMode":Z
    iget-object v5, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #@53
    invoke-static {v5, v6, v7, v1}, Lcom/android/server/input/InputManagerService;->-wrap4(Lcom/android/server/input/InputManagerService;JZ)V

    #@56
    goto :goto_0

    #@57
    .line 2096
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "inTabletMode":Z
    .end local v6    # "whenNanos":J
    :pswitch_6
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@59
    .line 2097
    .local v4, "userId":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5b
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@5d
    .line 2098
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@5f
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@61
    .line 2099
    .local v2, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@63
    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    #@65
    .line 2100
    .local v3, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@68
    .line 2101
    iget-object v5, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #@6a
    invoke-static {v5, v4, v2, v3}, Lcom/android/server/input/InputManagerService;->-wrap5(Lcom/android/server/input/InputManagerService;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@6d
    goto :goto_0

    #@6e
    .line 2069
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
