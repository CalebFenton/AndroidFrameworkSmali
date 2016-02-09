.class Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;
.super Landroid/os/Handler;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    #@0
    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 648
    iget v2, p1, Landroid/os/Message;->what:I

    #@2
    .line 649
    .local v2, "type":I
    packed-switch v2, :pswitch_data_0

    #@5
    .line 661
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v4, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v5, "Unknown message type: "

    #@f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v3

    #@1f
    .line 651
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@21
    check-cast v0, Landroid/view/MotionEvent;

    #@23
    .line 652
    .local v0, "event":Landroid/view/MotionEvent;
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@25
    .line 653
    .local v1, "policyFlags":I
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    #@27
    invoke-static {v3, v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->-wrap0(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;Landroid/view/MotionEvent;I)V

    #@2a
    .line 647
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "policyFlags":I
    :goto_0
    return-void

    #@2b
    .line 656
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    #@2d
    iget-object v3, v3, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@2f
    const/4 v4, 0x1

    #@30
    invoke-static {v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap9(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    #@33
    .line 657
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    #@35
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->-wrap1(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)V

    #@38
    .line 658
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    #@3a
    invoke-virtual {v3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    #@3d
    goto :goto_0

    #@3e
    .line 649
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
