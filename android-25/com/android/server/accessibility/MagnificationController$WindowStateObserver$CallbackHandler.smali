.class Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;
.super Landroid/os/Handler;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1023
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    #@2
    .line 1024
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    .line 1023
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1029
    iget v6, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v6, :pswitch_data_0

    #@5
    .line 1028
    :goto_0
    return-void

    #@6
    .line 1031
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@a
    .line 1032
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@c
    check-cast v3, Landroid/graphics/Region;

    #@e
    .line 1033
    .local v3, "magnifiedBounds":Landroid/graphics/Region;
    iget-object v6, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    #@10
    invoke-static {v6, v3}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->-wrap0(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;Landroid/graphics/Region;)V

    #@13
    .line 1034
    invoke-virtual {v3}, Landroid/graphics/Region;->recycle()V

    #@16
    goto :goto_0

    #@17
    .line 1037
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "magnifiedBounds":Landroid/graphics/Region;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@19
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@1b
    .line 1038
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@1d
    .line 1039
    .local v2, "left":I
    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@1f
    .line 1040
    .local v5, "top":I
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@21
    .line 1041
    .local v4, "right":I
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    #@23
    .line 1042
    .local v1, "bottom":I
    iget-object v6, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    #@25
    invoke-static {v6, v2, v5, v4, v1}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->-wrap1(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;IIII)V

    #@28
    .line 1043
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@2b
    goto :goto_0

    #@2c
    .line 1046
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v4    # "right":I
    .end local v5    # "top":I
    :pswitch_2
    iget-object v6, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    #@2e
    invoke-static {v6}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->-wrap3(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;)V

    #@31
    goto :goto_0

    #@32
    .line 1049
    :pswitch_3
    iget-object v6, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    #@34
    invoke-static {v6}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->-wrap2(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;)V

    #@37
    goto :goto_0

    #@38
    .line 1029
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
