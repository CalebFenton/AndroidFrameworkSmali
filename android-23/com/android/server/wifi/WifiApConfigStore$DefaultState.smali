.class Lcom/android/server/wifi/WifiApConfigStore$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiApConfigStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiApConfigStore;

    #@0
    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 105
    const-string/jumbo v0, "WifiApConfigStore"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Failed to handle "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 108
    :goto_0
    const/4 v0, 0x1

    #@20
    return v0

    #@21
    .line 98
    :pswitch_0
    const-string/jumbo v0, "WifiApConfigStore"

    #@24
    new-instance v1, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v2, "Unexpected message: "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    goto :goto_0

    #@3c
    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    #@3e
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->-get2(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/AsyncChannel;

    #@41
    move-result-object v0

    #@42
    .line 102
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    #@44
    invoke-static {v1}, Lcom/android/server/wifi/WifiApConfigStore;->-get3(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    #@47
    move-result-object v1

    #@48
    const v2, 0x2001c

    #@4b
    .line 101
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    #@4e
    goto :goto_0

    #@4f
    .line 95
    nop

    #@50
    :pswitch_data_0
    .packed-switch 0x20019
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
