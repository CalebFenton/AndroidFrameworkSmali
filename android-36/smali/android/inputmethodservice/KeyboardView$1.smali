.class Landroid/inputmethodservice/KeyboardView$1;
.super Landroid/os/Handler;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/KeyboardView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/KeyboardView;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/KeyboardView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/inputmethodservice/KeyboardView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 379
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView$1;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 382
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    goto :goto_36

    .line 396
    :pswitch_6
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$1;->this$0:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$mopenPopupIfRequired(Landroid/inputmethodservice/KeyboardView;Landroid/view/MotionEvent;)Z

    goto :goto_36

    .line 390
    :pswitch_10
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$1;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$mrepeatKey(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 391
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 392
    .local v0, "repeat":Landroid/os/Message;
    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/inputmethodservice/KeyboardView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 393
    .end local v0    # "repeat":Landroid/os/Message;
    goto :goto_36

    .line 387
    :pswitch_23
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$1;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$fgetmPreviewText(Landroid/inputmethodservice/KeyboardView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    goto :goto_36

    .line 384
    :pswitch_2e
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$1;->this$0:Landroid/inputmethodservice/KeyboardView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Landroid/inputmethodservice/KeyboardView;->-$$Nest$mshowKey(Landroid/inputmethodservice/KeyboardView;I)V

    .line 385
    nop

    .line 399
    :cond_36
    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_23
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method
