.class Lcom/android/server/wifi/WifiApConfigStore$ActiveState;
.super Lcom/android/internal/util/State;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiApConfigStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiApConfigStore;

    #@0
    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    .line 133
    new-instance v0, Ljava/lang/Thread;

    #@2
    new-instance v1, Lcom/android/server/wifi/WifiApConfigStore$ActiveState$1;

    #@4
    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiApConfigStore$ActiveState$1;-><init>(Lcom/android/server/wifi/WifiApConfigStore$ActiveState;)V

    #@7
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@a
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@d
    .line 132
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 152
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 146
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    #@9
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->-wrap0(Lcom/android/server/wifi/WifiApConfigStore;Landroid/os/Message;)V

    #@c
    .line 154
    :goto_0
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    #@10
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    #@12
    invoke-static {v1}, Lcom/android/server/wifi/WifiApConfigStore;->-get1(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;

    #@15
    move-result-object v1

    #@16
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->-wrap1(Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V

    #@19
    goto :goto_0

    #@1a
    .line 142
    :pswitch_data_0
    .packed-switch 0x20019
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
