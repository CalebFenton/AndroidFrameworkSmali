.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;
.super Landroid/os/Handler;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2
    .line 319
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 318
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 324
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 352
    const-string/jumbo v0, "WifiP2pService"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "ClientHandler.handleMessage ignoring msg="

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
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 323
    :goto_0
    return-void

    #@20
    .line 349
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@22
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@25
    move-result-object v0

    #@26
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(Landroid/os/Message;)V

    #@2d
    goto :goto_0

    #@2e
    .line 324
    :sswitch_data_0
    .sparse-switch
        0x22001 -> :sswitch_0
        0x22004 -> :sswitch_0
        0x22007 -> :sswitch_0
        0x2200a -> :sswitch_0
        0x2200d -> :sswitch_0
        0x22010 -> :sswitch_0
        0x22013 -> :sswitch_0
        0x22015 -> :sswitch_0
        0x22017 -> :sswitch_0
        0x2201c -> :sswitch_0
        0x2201f -> :sswitch_0
        0x22022 -> :sswitch_0
        0x22025 -> :sswitch_0
        0x22028 -> :sswitch_0
        0x2202b -> :sswitch_0
        0x2202e -> :sswitch_0
        0x22033 -> :sswitch_0
        0x22036 -> :sswitch_0
        0x22039 -> :sswitch_0
        0x2203b -> :sswitch_0
        0x2203e -> :sswitch_0
        0x22041 -> :sswitch_0
        0x22044 -> :sswitch_0
        0x22047 -> :sswitch_0
    .end sparse-switch
.end method
