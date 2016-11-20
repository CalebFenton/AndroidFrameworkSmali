.class Landroid/net/wifi/nan/WifiNanEventListener$2;
.super Landroid/os/Handler;
.source "WifiNanEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/nan/WifiNanEventListener;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/nan/WifiNanEventListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/nan/WifiNanEventListener;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/nan/WifiNanEventListener;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 88
    iput-object p1, p0, Landroid/net/wifi/nan/WifiNanEventListener$2;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 90
    :goto_0
    :pswitch_0
    return-void

    #@6
    .line 94
    :pswitch_1
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$2;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    #@8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v0, Landroid/net/wifi/nan/ConfigRequest;

    #@c
    invoke-virtual {v1, v0}, Landroid/net/wifi/nan/WifiNanEventListener;->onConfigCompleted(Landroid/net/wifi/nan/ConfigRequest;)V

    #@f
    goto :goto_0

    #@10
    .line 97
    :pswitch_2
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$2;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    #@12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    check-cast v0, Landroid/net/wifi/nan/ConfigRequest;

    #@16
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@18
    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/nan/WifiNanEventListener;->onConfigFailed(Landroid/net/wifi/nan/ConfigRequest;I)V

    #@1b
    goto :goto_0

    #@1c
    .line 100
    :pswitch_3
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanEventListener$2;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    #@1e
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@20
    invoke-virtual {v0, v1}, Landroid/net/wifi/nan/WifiNanEventListener;->onNanDown(I)V

    #@23
    goto :goto_0

    #@24
    .line 103
    :pswitch_4
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanEventListener$2;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    #@26
    invoke-virtual {v0}, Landroid/net/wifi/nan/WifiNanEventListener;->onIdentityChanged()V

    #@29
    goto :goto_0

    #@2a
    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
