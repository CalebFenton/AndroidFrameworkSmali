.class Lcom/android/server/wifi/WifiApConfigStore$InactiveState;
.super Lcom/android/internal/util/State;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiApConfigStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiApConfigStore;

    #@0
    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 114
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 125
    const/4 v1, 0x0

    #@6
    return v1

    #@7
    .line 116
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@b
    .line 117
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 118
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    #@11
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiApConfigStore;->-set0(Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@14
    .line 119
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    #@16
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    #@18
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->-get0(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiApConfigStore;->-wrap1(Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V

    #@1f
    .line 127
    :goto_0
    const/4 v1, 0x1

    #@20
    return v1

    #@21
    .line 121
    :cond_0
    const-string/jumbo v1, "WifiApConfigStore"

    #@24
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "Try to setup AP config without SSID: "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    goto :goto_0

    #@3c
    .line 114
    :pswitch_data_0
    .packed-switch 0x20019
        :pswitch_0
    .end packed-switch
.end method
