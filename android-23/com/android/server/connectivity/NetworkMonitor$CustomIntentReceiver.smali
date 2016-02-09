.class Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomIntentReceiver"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mToken:I

.field private final mWhat:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;II)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "token"    # I
    .param p4, "what"    # I

    #@0
    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    .line 506
    iput p3, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mToken:I

    #@7
    .line 507
    iput p4, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mWhat:I

    #@9
    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "_"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1c
    move-result-object v1

    #@1d
    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@1f
    iget v1, v1, Landroid/net/Network;->netId:I

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string/jumbo v1, "_"

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;

    #@36
    .line 509
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkMonitor;->-get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    #@39
    move-result-object v0

    #@3a
    new-instance v1, Landroid/content/IntentFilter;

    #@3c
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;

    #@3e
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@41
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@44
    .line 505
    return-void
.end method


# virtual methods
.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 512
    new-instance v0, Landroid/content/Intent;

    #@3
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 513
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@a
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@15
    .line 514
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@17
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 518
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@e
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@10
    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mWhat:I

    #@12
    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mToken:I

    #@14
    invoke-virtual {v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(II)Landroid/os/Message;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(Landroid/os/Message;)V

    #@1b
    .line 517
    :cond_0
    return-void
.end method
