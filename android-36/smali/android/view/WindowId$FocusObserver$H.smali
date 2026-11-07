.class Landroid/view/WindowId$FocusObserver$H;
.super Landroid/os/Handler;
.source "WindowId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowId$FocusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/WindowId$FocusObserver;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowId$FocusObserver;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/WindowId$FocusObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82
    iput-object p1, p0, Landroid/view/WindowId$FocusObserver$H;->this$0:Landroid/view/WindowId$FocusObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 93
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1d

    .line 90
    :pswitch_9
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$H;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowId;

    invoke-virtual {v0, v1}, Landroid/view/WindowId$FocusObserver;->onFocusLost(Landroid/view/WindowId;)V

    .line 91
    goto :goto_1d

    .line 87
    :pswitch_13
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$H;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowId;

    invoke-virtual {v0, v1}, Landroid/view/WindowId$FocusObserver;->onFocusGained(Landroid/view/WindowId;)V

    .line 88
    nop

    .line 95
    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method
