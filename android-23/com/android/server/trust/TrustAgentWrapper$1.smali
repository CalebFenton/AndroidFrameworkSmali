.class Lcom/android/server/trust/TrustAgentWrapper$1;
.super Landroid/content/BroadcastReceiver;
.source "TrustAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/trust/TrustAgentWrapper;

    #@0
    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    .line 98
    const-string/jumbo v1, "componentName"

    #@4
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/content/ComponentName;

    #@a
    .line 99
    .local v0, "component":Landroid/content/ComponentName;
    const-string/jumbo v1, "android.server.trust.TRUST_EXPIRED_ACTION"

    #@d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 100
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@19
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get10(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    .line 99
    if-eqz v1, :cond_0

    #@23
    .line 101
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@25
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get6(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    #@2c
    .line 102
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@2e
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get6(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@35
    .line 97
    :cond_0
    return-void
.end method
