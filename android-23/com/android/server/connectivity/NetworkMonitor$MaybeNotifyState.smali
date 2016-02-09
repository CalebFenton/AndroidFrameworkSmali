.class Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MaybeNotifyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    #@0
    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    #@3
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 6

    #@0
    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    .line 406
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@4
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@7
    move-result-object v2

    #@8
    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@a
    iget v2, v2, Landroid/net/Network;->netId:I

    #@c
    .line 405
    const v3, 0x8200a

    #@f
    const/4 v4, 0x0

    #@10
    .line 406
    const/4 v5, 0x0

    #@11
    .line 405
    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v0

    #@15
    .line 407
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@17
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1e
    .line 404
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 377
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 399
    const/4 v1, 0x0

    #@6
    return v1

    #@7
    .line 379
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    #@9
    .line 380
    const-string/jumbo v1, "android.net.conn.CAPTIVE_PORTAL"

    #@c
    .line 379
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@f
    .line 381
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.net.extra.NETWORK"

    #@12
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@14
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@17
    move-result-object v2

    #@18
    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1d
    .line 382
    const-string/jumbo v1, "android.net.extra.CAPTIVE_PORTAL"

    #@20
    .line 383
    new-instance v2, Landroid/net/CaptivePortal;

    #@22
    new-instance v3, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;

    #@24
    invoke-direct {v3, p0}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;-><init>(Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;)V

    #@27
    invoke-direct {v2, v3}, Landroid/net/CaptivePortal;-><init>(Landroid/os/IBinder;)V

    #@2a
    .line 382
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@2d
    .line 395
    const/high16 v1, 0x10400000

    #@2f
    .line 394
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@32
    .line 396
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@34
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    #@37
    move-result-object v1

    #@38
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@3a
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@3d
    .line 397
    const/4 v1, 0x1

    #@3e
    return v1

    #@3f
    .line 377
    nop

    #@40
    :pswitch_data_0
    .packed-switch 0x8200b
        :pswitch_0
    .end packed-switch
.end method
