.class public final Ljava/lang/ref/FinalizerReference;
.super Ljava/lang/ref/Reference;
.source "FinalizerReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ref/FinalizerReference$Sentinel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/Reference<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o LIST_LOCK:Ljava/lang/Object;

.field private static greylist head:Ljava/lang/ref/FinalizerReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/FinalizerReference<",
            "*>;"
        }
    .end annotation
.end field

.field public static final greylist queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist next:Ljava/lang/ref/FinalizerReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/FinalizerReference<",
            "*>;"
        }
    .end annotation
.end field

.field private greylist-max-o prev:Ljava/lang/ref/FinalizerReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/FinalizerReference<",
            "*>;"
        }
    .end annotation
.end field

.field private greylist-max-o zombie:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/lang/ref/FinalizerReference;->LIST_LOCK:Ljava/lang/Object;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TT;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<TT;>;"
    .local p1, "r":Ljava/lang/Object;, "TT;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 49
    return-void
.end method

.method public static greylist add(Ljava/lang/Object;)V
    .registers 4
    .param p0, "referent"    # Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/lang/ref/FinalizerReference;

    sget-object v1, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v1}, Ljava/lang/ref/FinalizerReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 62
    .local v0, "reference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    sget-object v1, Ljava/lang/ref/FinalizerReference;->LIST_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    const/4 v2, 0x0

    :try_start_b
    iput-object v2, v0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    .line 64
    sget-object v2, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    iput-object v2, v0, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    .line 65
    sget-object v2, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    if-eqz v2, :cond_19

    .line 66
    sget-object v2, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    iput-object v0, v2, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    .line 68
    :cond_19
    sput-object v0, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    .line 69
    monitor-exit v1

    .line 70
    return-void

    .line 69
    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method private static greylist-max-o enqueueSentinelReference(Ljava/lang/ref/FinalizerReference$Sentinel;)Z
    .registers 5
    .param p0, "sentinel"    # Ljava/lang/ref/FinalizerReference$Sentinel;

    .line 106
    sget-object v0, Ljava/lang/ref/FinalizerReference;->LIST_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    sget-object v1, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    .local v1, "r":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    :goto_5
    if-eqz v1, :cond_26

    .line 114
    invoke-direct {v1}, Ljava/lang/ref/FinalizerReference;->getReferent()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_22

    .line 115
    move-object v2, v1

    .line 116
    .local v2, "sentinelReference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<Ljava/lang/ref/FinalizerReference$Sentinel;>;"
    invoke-virtual {v2}, Ljava/lang/ref/FinalizerReference;->clearReferent()V

    .line 117
    iput-object p0, v2, Ljava/lang/ref/FinalizerReference;->zombie:Ljava/lang/Object;

    .line 127
    invoke-direct {v2}, Ljava/lang/ref/FinalizerReference;->makeCircularListIfUnenqueued()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 128
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 130
    :cond_1c
    invoke-static {v2}, Ljava/lang/ref/ReferenceQueue;->add(Ljava/lang/ref/Reference;)V

    .line 131
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 110
    .end local v2    # "sentinelReference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<Ljava/lang/ref/FinalizerReference$Sentinel;>;"
    :cond_22
    iget-object v2, v1, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    move-object v1, v2

    goto :goto_5

    .line 134
    .end local v1    # "r":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_2f

    .line 137
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "newly-created live Sentinel not on list!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 134
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public static greylist-max-o finalizeAllEnqueued(J)V
    .registers 4
    .param p0, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 100
    nop

    :cond_1
    new-instance v0, Ljava/lang/ref/FinalizerReference$Sentinel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/FinalizerReference$Sentinel;-><init>(Ljava/lang/ref/FinalizerReference-IA;)V

    .line 101
    .local v0, "sentinel":Ljava/lang/ref/FinalizerReference$Sentinel;
    invoke-static {v0}, Ljava/lang/ref/FinalizerReference;->enqueueSentinelReference(Ljava/lang/ref/FinalizerReference$Sentinel;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {v0, p0, p1}, Ljava/lang/ref/FinalizerReference$Sentinel;->awaitFinalization(J)V

    .line 103
    return-void
.end method

.method private final native greylist-max-o getReferent()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o makeCircularListIfUnenqueued()Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static greylist remove(Ljava/lang/ref/FinalizerReference;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/FinalizerReference<",
            "*>;)V"
        }
    .end annotation

    .line 74
    .local p0, "reference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    sget-object v0, Ljava/lang/ref/FinalizerReference;->LIST_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_3
    iget-object v1, p0, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    .line 76
    .local v1, "next":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    iget-object v2, p0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    .line 77
    .local v2, "prev":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    .line 78
    iput-object v3, p0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    .line 79
    if-eqz v2, :cond_11

    .line 80
    iput-object v1, v2, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    goto :goto_13

    .line 82
    :cond_11
    sput-object v1, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    .line 84
    :goto_13
    if-eqz v1, :cond_17

    .line 85
    iput-object v2, v1, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    .line 87
    .end local v1    # "next":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    .end local v2    # "prev":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    :cond_17
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 56
    .local p0, "this":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ref/FinalizerReference;->zombie:Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 52
    .local p0, "this":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/FinalizerReference;->zombie:Ljava/lang/Object;

    return-object v0
.end method
