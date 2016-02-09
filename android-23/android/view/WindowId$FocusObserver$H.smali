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
.field final synthetic this$1:Landroid/view/WindowId$FocusObserver;


# direct methods
.method constructor <init>(Landroid/view/WindowId$FocusObserver;)V
    .locals 0
    .param p1, "this$1"    # Landroid/view/WindowId$FocusObserver;

    #@0
    .prologue
    .line 80
    iput-object p1, p0, Landroid/view/WindowId$FocusObserver$H;->this$1:Landroid/view/WindowId$FocusObserver;

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
    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 91
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@8
    .line 82
    :goto_0
    return-void

    #@9
    .line 85
    :pswitch_0
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$H;->this$1:Landroid/view/WindowId$FocusObserver;

    #@b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d
    check-cast v0, Landroid/view/WindowId;

    #@f
    invoke-virtual {v1, v0}, Landroid/view/WindowId$FocusObserver;->onFocusGained(Landroid/view/WindowId;)V

    #@12
    goto :goto_0

    #@13
    .line 88
    :pswitch_1
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$H;->this$1:Landroid/view/WindowId$FocusObserver;

    #@15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17
    check-cast v0, Landroid/view/WindowId;

    #@19
    invoke-virtual {v1, v0}, Landroid/view/WindowId$FocusObserver;->onFocusLost(Landroid/view/WindowId;)V

    #@1c
    goto :goto_0

    #@1d
    .line 83
    nop

    #@1e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
