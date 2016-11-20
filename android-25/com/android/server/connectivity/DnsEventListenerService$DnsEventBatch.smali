.class Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
.super Ljava/lang/Object;
.source "DnsEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DnsEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsEventBatch"
.end annotation


# instance fields
.field private mEventCount:I

.field private final mEventTypes:[B

.field private final mLatenciesMs:[I

.field private final mNetId:I

.field private final mReturnCodes:[B

.field final synthetic this$0:Lcom/android/server/connectivity/DnsEventListenerService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/DnsEventListenerService;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/DnsEventListenerService;
    .param p2, "netId"    # I

    #@0
    .prologue
    const/16 v1, 0x64

    #@2
    .line 64
    iput-object p1, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->this$0:Lcom/android/server/connectivity/DnsEventListenerService;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 59
    new-array v0, v1, [B

    #@9
    iput-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventTypes:[B

    #@b
    .line 60
    new-array v0, v1, [B

    #@d
    iput-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mReturnCodes:[B

    #@f
    .line 61
    new-array v0, v1, [I

    #@11
    iput-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mLatenciesMs:[I

    #@13
    .line 65
    iput p2, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mNetId:I

    #@15
    .line 64
    return-void
.end method


# virtual methods
.method public addResult(BBI)V
    .locals 2
    .param p1, "eventType"    # B
    .param p2, "returnCode"    # B
    .param p3, "latencyMs"    # I

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventTypes:[B

    #@2
    iget v1, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@4
    aput-byte p1, v0, v1

    #@6
    .line 70
    iget-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mReturnCodes:[B

    #@8
    iget v1, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@a
    aput-byte p2, v0, v1

    #@c
    .line 71
    iget-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mLatenciesMs:[I

    #@e
    iget v1, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@10
    aput p3, v0, v1

    #@12
    .line 72
    iget v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    iput v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@18
    .line 73
    iget v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@1a
    const/16 v1, 0x64

    #@1c
    if-ne v0, v1, :cond_0

    #@1e
    .line 74
    invoke-virtual {p0}, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->logAndClear()V

    #@21
    .line 68
    :cond_0
    return-void
.end method

.method public logAndClear()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 80
    iget v3, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@3
    if-nez v3, :cond_0

    #@5
    .line 81
    return-void

    #@6
    .line 85
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventTypes:[B

    #@8
    iget v4, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@a
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    #@d
    move-result-object v0

    #@e
    .line 86
    .local v0, "eventTypes":[B
    iget-object v3, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mReturnCodes:[B

    #@10
    iget v4, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@12
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    #@15
    move-result-object v2

    #@16
    .line 87
    .local v2, "returnCodes":[B
    iget-object v3, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mLatenciesMs:[I

    #@18
    iget v4, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@1a
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    #@1d
    move-result-object v1

    #@1e
    .line 88
    .local v1, "latenciesMs":[I
    iget-object v3, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->this$0:Lcom/android/server/connectivity/DnsEventListenerService;

    #@20
    invoke-static {v3}, Lcom/android/server/connectivity/DnsEventListenerService;->-get1(Lcom/android/server/connectivity/DnsEventListenerService;)Landroid/net/metrics/IpConnectivityLog;

    #@23
    move-result-object v3

    #@24
    new-instance v4, Landroid/net/metrics/DnsEvent;

    #@26
    iget v5, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mNetId:I

    #@28
    invoke-direct {v4, v5, v0, v2, v1}, Landroid/net/metrics/DnsEvent;-><init>(I[B[B[I)V

    #@2b
    invoke-virtual {v3, v4}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    #@2e
    .line 89
    const-string/jumbo v3, "Logging %d results for netId %d"

    #@31
    const/4 v4, 0x2

    #@32
    new-array v4, v4, [Ljava/lang/Object;

    #@34
    iget v5, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v5

    #@3a
    aput-object v5, v4, v7

    #@3c
    iget v5, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mNetId:I

    #@3e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v5

    #@42
    const/4 v6, 0x1

    #@43
    aput-object v5, v4, v6

    #@45
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-static {v3}, Lcom/android/server/connectivity/DnsEventListenerService;->-wrap0(Ljava/lang/String;)V

    #@4c
    .line 90
    iput v7, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@4e
    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 95
    const-string/jumbo v0, "%s %d %d"

    #@3
    const/4 v1, 0x3

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-virtual {p0}, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    const/4 v3, 0x0

    #@f
    aput-object v2, v1, v3

    #@11
    iget v2, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mNetId:I

    #@13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v2

    #@17
    const/4 v3, 0x1

    #@18
    aput-object v2, v1, v3

    #@1a
    iget v2, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@1c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v2

    #@20
    const/4 v3, 0x2

    #@21
    aput-object v2, v1, v3

    #@23
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method
