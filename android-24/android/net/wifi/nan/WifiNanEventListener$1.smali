.class Landroid/net/wifi/nan/WifiNanEventListener$1;
.super Landroid/net/wifi/nan/IWifiNanEventListener$Stub;
.source "WifiNanEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/WifiNanEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/nan/WifiNanEventListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/nan/WifiNanEventListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/nan/WifiNanEventListener;

    #@0
    .prologue
    .line 166
    iput-object p1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    #@2
    invoke-direct {p0}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onConfigCompleted(Landroid/net/wifi/nan/ConfigRequest;)V
    .locals 3
    .param p1, "completedConfig"    # Landroid/net/wifi/nan/ConfigRequest;

    #@0
    .prologue
    .line 171
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    #@2
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x1

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    .line 172
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d
    .line 173
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    #@f
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@16
    .line 168
    return-void
.end method

.method public onConfigFailed(Landroid/net/wifi/nan/ConfigRequest;I)V
    .locals 3
    .param p1, "failedConfig"    # Landroid/net/wifi/nan/ConfigRequest;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 182
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    #@2
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x2

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    .line 183
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    #@d
    .line 184
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f
    .line 185
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    #@11
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 177
    return-void
.end method

.method public onIdentityChanged()V
    .locals 3

    #@0
    .prologue
    .line 201
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    #@2
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    const/16 v2, 0x8

    #@8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    .line 202
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    #@e
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@15
    .line 198
    return-void
.end method

.method public onNanDown(I)V
    .locals 3
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 192
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    #@2
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x4

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    .line 193
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    #@d
    .line 194
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanEventListener$1;->this$0:Landroid/net/wifi/nan/WifiNanEventListener;

    #@f
    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanEventListener;->-get0(Landroid/net/wifi/nan/WifiNanEventListener;)Landroid/os/Handler;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@16
    .line 189
    return-void
.end method
