.class Lcom/android/server/connectivity/DnsEventListenerService$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DnsEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DnsEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/DnsEventListenerService;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/DnsEventListenerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/DnsEventListenerService;

    #@0
    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/connectivity/DnsEventListenerService$1;->this$0:Lcom/android/server/connectivity/DnsEventListenerService;

    #@2
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 113
    iget-object v2, p0, Lcom/android/server/connectivity/DnsEventListenerService$1;->this$0:Lcom/android/server/connectivity/DnsEventListenerService;

    #@2
    monitor-enter v2

    #@3
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/DnsEventListenerService$1;->this$0:Lcom/android/server/connectivity/DnsEventListenerService;

    #@5
    invoke-static {v1}, Lcom/android/server/connectivity/DnsEventListenerService;->-get0(Lcom/android/server/connectivity/DnsEventListenerService;)Ljava/util/SortedMap;

    #@8
    move-result-object v1

    #@9
    iget v3, p1, Landroid/net/Network;->netId:I

    #@b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v3

    #@f
    invoke-interface {v1, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;

    #@15
    .line 115
    .local v0, "batch":Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    if-eqz v0, :cond_0

    #@17
    .line 116
    invoke-virtual {v0}, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->logAndClear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    monitor-exit v2

    #@1b
    .line 112
    return-void

    #@1c
    .line 113
    .end local v0    # "batch":Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method
