.class Lcom/android/server/net/NetworkPolicyManagerService$13;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    #@0
    .prologue
    .line 758
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@9
    const-string/jumbo v2, "NetworkPolicy"

    #@c
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 764
    const-string/jumbo v0, "globalAlert"

    #@12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_0

    #@18
    .line 765
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@1a
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@1c
    const/4 v1, 0x5

    #@1d
    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@24
    .line 760
    :cond_0
    return-void
.end method
