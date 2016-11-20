.class Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;
.super Ljava/lang/Object;
.source "DnsEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DnsEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DnsEventBatch"
.end annotation


# instance fields
.field private mEventCount:I

.field private final mEventTypes:[B

.field private final mLatenciesMs:[I

.field private final mNetId:I

.field private final mReturnCodes:[B


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    const/16 v1, 0x64

    #@2
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 56
    new-array v0, v1, [B

    #@7
    iput-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventTypes:[B

    #@9
    .line 57
    new-array v0, v1, [B

    #@b
    iput-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mReturnCodes:[B

    #@d
    .line 58
    new-array v0, v1, [I

    #@f
    iput-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mLatenciesMs:[I

    #@11
    .line 62
    iput p1, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mNetId:I

    #@13
    .line 61
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
    .line 66
    iget-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventTypes:[B

    #@2
    iget v1, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@4
    aput-byte p1, v0, v1

    #@6
    .line 67
    iget-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mReturnCodes:[B

    #@8
    iget v1, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@a
    aput-byte p2, v0, v1

    #@c
    .line 68
    iget-object v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mLatenciesMs:[I

    #@e
    iget v1, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@10
    aput p3, v0, v1

    #@12
    .line 69
    iget v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    iput v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@18
    .line 70
    iget v0, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@1a
    const/16 v1, 0x64

    #@1c
    if-ne v0, v1, :cond_0

    #@1e
    .line 71
    invoke-virtual {p0}, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->logAndClear()V

    #@21
    .line 65
    :cond_0
    return-void
.end method

.method public logAndClear()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 77
    iget v3, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@3
    if-nez v3, :cond_0

    #@5
    .line 78
    return-void

    #@6
    .line 82
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventTypes:[B

    #@8
    iget v4, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@a
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    #@d
    move-result-object v0

    #@e
    .line 83
    .local v0, "eventTypes":[B
    iget-object v3, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mReturnCodes:[B

    #@10
    iget v4, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@12
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    #@15
    move-result-object v2

    #@16
    .line 84
    .local v2, "returnCodes":[B
    iget-object v3, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mLatenciesMs:[I

    #@18
    iget v4, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@1a
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    #@1d
    move-result-object v1

    #@1e
    .line 85
    .local v1, "latenciesMs":[I
    iget v3, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mNetId:I

    #@20
    invoke-static {v3, v0, v2, v1}, Landroid/net/metrics/DnsEvent;->logEvent(I[B[B[I)V

    #@23
    .line 86
    const-string/jumbo v3, "Logging %d results for netId %d"

    #@26
    const/4 v4, 0x2

    #@27
    new-array v4, v4, [Ljava/lang/Object;

    #@29
    iget v5, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@2b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v5

    #@2f
    aput-object v5, v4, v7

    #@31
    iget v5, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mNetId:I

    #@33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v5

    #@37
    const/4 v6, 0x1

    #@38
    aput-object v5, v4, v6

    #@3a
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-static {v3}, Lcom/android/server/connectivity/DnsEventListenerService;->-wrap0(Ljava/lang/String;)V

    #@41
    .line 87
    iput v7, p0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->mEventCount:I

    #@43
    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 92
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
