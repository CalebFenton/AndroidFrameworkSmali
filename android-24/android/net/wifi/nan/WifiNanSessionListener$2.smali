.class Landroid/net/wifi/nan/WifiNanSessionListener$2;
.super Landroid/os/Handler;
.source "WifiNanSessionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/nan/WifiNanSessionListener;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/nan/WifiNanSessionListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/nan/WifiNanSessionListener;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/nan/WifiNanSessionListener;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 189
    iput-object p1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 191
    :goto_0
    return-void

    #@6
    .line 195
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@8
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@a
    invoke-virtual {v0, v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->onPublishFail(I)V

    #@d
    goto :goto_0

    #@e
    .line 198
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@10
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@12
    invoke-virtual {v0, v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->onPublishTerminated(I)V

    #@15
    goto :goto_0

    #@16
    .line 201
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@18
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@1a
    invoke-virtual {v0, v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->onSubscribeFail(I)V

    #@1d
    goto :goto_0

    #@1e
    .line 204
    :sswitch_3
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@20
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@22
    invoke-virtual {v0, v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->onSubscribeTerminated(I)V

    #@25
    goto :goto_0

    #@26
    .line 207
    :sswitch_4
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@28
    .line 208
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@2b
    move-result-object v1

    #@2c
    const-string/jumbo v2, "peer_id"

    #@2f
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    #@32
    move-result v1

    #@33
    .line 209
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@36
    move-result-object v2

    #@37
    const-string/jumbo v3, "message"

    #@3a
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    #@3d
    move-result-object v2

    #@3e
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@40
    .line 210
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@43
    move-result-object v4

    #@44
    const-string/jumbo v5, "message2"

    #@47
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    #@4a
    move-result-object v4

    #@4b
    iget v5, p1, Landroid/os/Message;->arg2:I

    #@4d
    .line 207
    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/nan/WifiNanSessionListener;->onMatch(I[BI[BI)V

    #@50
    goto :goto_0

    #@51
    .line 213
    :sswitch_5
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@53
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@55
    invoke-virtual {v0, v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->onMessageSendSuccess(I)V

    #@58
    goto :goto_0

    #@59
    .line 216
    :sswitch_6
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@5b
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@5d
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@5f
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->onMessageSendFail(II)V

    #@62
    goto :goto_0

    #@63
    .line 219
    :sswitch_7
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener$2;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    #@65
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@67
    .line 220
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@6a
    move-result-object v2

    #@6b
    const-string/jumbo v3, "message"

    #@6e
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    #@71
    move-result-object v2

    #@72
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@74
    .line 219
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/nan/WifiNanSessionListener;->onMessageReceived(I[BI)V

    #@77
    goto :goto_0

    #@78
    .line 193
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method
