.class Landroid/inputmethodservice/KeyboardView$1;
.super Landroid/os/Handler;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/KeyboardView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/KeyboardView;

    #@0
    .prologue
    .line 256
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView$1;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 259
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 258
    :cond_0
    :goto_0
    return-void

    #@6
    .line 261
    :pswitch_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView$1;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@8
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@a
    invoke-static {v1, v2}, Landroid/inputmethodservice/KeyboardView;->-wrap4(Landroid/inputmethodservice/KeyboardView;I)V

    #@d
    goto :goto_0

    #@e
    .line 264
    :pswitch_1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView$1;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@10
    invoke-static {v1}, Landroid/inputmethodservice/KeyboardView;->-get4(Landroid/inputmethodservice/KeyboardView;)Landroid/widget/TextView;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x4

    #@15
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    #@18
    goto :goto_0

    #@19
    .line 267
    :pswitch_2
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView$1;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@1b
    invoke-static {v1}, Landroid/inputmethodservice/KeyboardView;->-wrap1(Landroid/inputmethodservice/KeyboardView;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 268
    const/4 v1, 0x3

    #@22
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@25
    move-result-object v0

    #@26
    .line 269
    .local v0, "repeat":Landroid/os/Message;
    const-wide/16 v2, 0x32

    #@28
    invoke-virtual {p0, v0, v2, v3}, Landroid/inputmethodservice/KeyboardView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@2b
    goto :goto_0

    #@2c
    .line 273
    .end local v0    # "repeat":Landroid/os/Message;
    :pswitch_3
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView$1;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@2e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@30
    check-cast v1, Landroid/view/MotionEvent;

    #@32
    invoke-static {v2, v1}, Landroid/inputmethodservice/KeyboardView;->-wrap0(Landroid/inputmethodservice/KeyboardView;Landroid/view/MotionEvent;)Z

    #@35
    goto :goto_0

    #@36
    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
