.class public final Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;
.super Ljava/lang/Object;
.source "IkeLocalRequestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestComparator;,
        Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IProcedureConsumer;,
        Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;,
        Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;,
        Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;,
        Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;,
        Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$RequestPriority;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_REQUEST_QUEUE_SIZE:I = 0x1

.field static final blacklist LOCAL_REQUEST_WAKE_LOCK_TAG:Ljava/lang/String; = "LocalRequestWakeLock"

.field private static final blacklist REQUEST_ID_NOT_ASSIGNED:I = -0x1

.field static final blacklist REQUEST_PRIORITY_HIGH:I = 0x1

.field static final blacklist REQUEST_PRIORITY_NORMAL:I = 0x2

.field static final blacklist REQUEST_PRIORITY_UNKNOWN:I = 0x7fffffff

.field static final blacklist REQUEST_PRIORITY_URGENT:I = 0x0

.field public static blacklist SPI_NOT_INCLUDED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "IkeLocalRequestScheduler"


# instance fields
.field private final blacklist mConsumer:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IProcedureConsumer;

.field private blacklist mNextRequestId:I

.field private final blacklist mPowerManager:Landroid/os/PowerManager;

.field private final blacklist mRequestQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->SPI_NOT_INCLUDED:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IProcedureConsumer;Landroid/content/Context;)V
    .registers 6
    .param p1, "consumer"    # Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IProcedureConsumer;
    .param p2, "context"    # Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestComparator;-><init>(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler-IA;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->mRequestQueue:Ljava/util/PriorityQueue;

    .line 105
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->mConsumer:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IProcedureConsumer;

    .line 106
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->mPowerManager:Landroid/os/PowerManager;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->mNextRequestId:I

    .line 109
    return-void
.end method


# virtual methods
.method public blacklist addRequest(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V
    .registers 4
    .param p1, "request"    # Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;

    .line 113
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->-$$Nest$macquireWakeLock(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;Landroid/os/PowerManager;)V

    .line 114
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->mNextRequestId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->mNextRequestId:I

    invoke-static {p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->-$$Nest$msetRequestId(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;I)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public blacklist readyForNextProcedure()Z
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 127
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->mConsumer:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IProcedureConsumer;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;

    invoke-interface {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IProcedureConsumer;->onNewProcedureReady(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V

    .line 128
    const/4 v0, 0x1

    return v0

    .line 130
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist releaseAllLocalRequestWakeLocks()V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;

    .line 136
    .local v1, "req":Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->releaseWakeLock()V

    .line 137
    .end local v1    # "req":Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;
    goto :goto_6

    .line 138
    :cond_16
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 139
    return-void
.end method
