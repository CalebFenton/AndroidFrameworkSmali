.class Lcom/android/internal/telephony/GsmCdmaCallTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmCdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@0
    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 108
    const-string/jumbo v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    #@7
    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_2

    #@d
    .line 110
    const-string/jumbo v4, "phoneinECMState"

    #@10
    const/4 v5, 0x0

    #@11
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@14
    move-result v2

    #@15
    .line 111
    .local v2, "isInEcm":Z
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@17
    new-instance v5, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v6, "Received ACTION_EMERGENCY_CALLBACK_MODE_CHANGED isInEcm = "

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@2e
    .line 114
    if-nez v2, :cond_2

    #@30
    .line 118
    new-instance v3, Ljava/util/ArrayList;

    #@32
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@35
    .line 119
    .local v3, "toNotify":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@37
    iget-object v4, v4, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@39
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    #@3c
    move-result-object v4

    #@3d
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@40
    .line 120
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@42
    iget-object v4, v4, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@44
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    #@47
    move-result-object v4

    #@48
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@4b
    .line 121
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@4d
    iget-object v4, v4, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@4f
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    #@52
    move-result-object v4

    #@53
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@56
    .line 122
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@58
    invoke-static {v4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->-get0(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    #@5b
    move-result-object v4

    #@5c
    if-eqz v4, :cond_0

    #@5e
    .line 123
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@60
    invoke-static {v4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->-get0(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    #@63
    move-result-object v4

    #@64
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@67
    .line 127
    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6a
    move-result-object v1

    #@6b
    .local v1, "connection$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@6e
    move-result v4

    #@6f
    if-eqz v4, :cond_2

    #@71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@74
    move-result-object v0

    #@75
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@77
    .line 128
    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1

    #@79
    .line 129
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->onExitedEcmMode()V

    #@7c
    goto :goto_0

    #@7d
    .line 106
    .end local v0    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v1    # "connection$iterator":Ljava/util/Iterator;
    .end local v2    # "isInEcm":Z
    .end local v3    # "toNotify":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_2
    return-void
.end method
