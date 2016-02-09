.class Lcom/android/server/net/NetworkStatsService$6;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsService;

    #@0
    .prologue
    .line 858
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$6;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 862
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$6;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@3
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-get0(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    #@a
    const-string/jumbo v3, "NetworkStats"

    #@d
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 864
    const-string/jumbo v1, "globalAlert"

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 867
    const/4 v0, 0x1

    #@1a
    .line 868
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$6;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@1c
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-get1(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;

    #@1f
    move-result-object v1

    #@20
    const/4 v2, 0x0

    #@21
    invoke-virtual {v1, v4, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@28
    .line 871
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$6;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2a
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-get1(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;

    #@2d
    move-result-object v1

    #@2e
    const/4 v2, 0x3

    #@2f
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@36
    .line 860
    .end local v0    # "flags":I
    :cond_0
    return-void
.end method
