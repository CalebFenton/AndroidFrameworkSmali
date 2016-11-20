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
        "Ljava/lang/ref/Reference",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final LIST_LOCK:Ljava/lang/Object;

.field private static head:Ljava/lang/ref/FinalizerReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/FinalizerReference",
            "<*>;"
        }
    .end annotation
.end field

.field public static final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private next:Ljava/lang/ref/FinalizerReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/FinalizerReference",
            "<*>;"
        }
    .end annotation
.end field

.field private prev:Ljava/lang/ref/FinalizerReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/FinalizerReference",
            "<*>;"
        }
    .end annotation
.end field

.field private zombie:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 24
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    #@2
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@5
    sput-object v0, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    #@7
    .line 27
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    sput-object v0, Ljava/lang/ref/FinalizerReference;->LIST_LOCK:Ljava/lang/Object;

    #@e
    .line 31
    const/4 v0, 0x0

    #@f
    sput-object v0, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    #@11
    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 42
    .local p0, "this":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<TT;>;"
    .local p1, "r":Ljava/lang/Object;, "TT;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@3
    .line 41
    return-void
.end method

.method public static add(Ljava/lang/Object;)V
    .locals 3
    .param p0, "referent"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 54
    new-instance v0, Ljava/lang/ref/FinalizerReference;

    #@2
    sget-object v1, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    #@4
    invoke-direct {v0, p0, v1}, Ljava/lang/ref/FinalizerReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@7
    .line 55
    .local v0, "reference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    sget-object v2, Ljava/lang/ref/FinalizerReference;->LIST_LOCK:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 56
    const/4 v1, 0x0

    #@b
    :try_start_0
    iput-object v1, v0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    #@d
    .line 57
    sget-object v1, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    #@f
    iput-object v1, v0, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    #@11
    .line 58
    sget-object v1, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 59
    sget-object v1, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    #@17
    iput-object v0, v1, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    #@19
    .line 61
    :cond_0
    sput-object v0, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v2

    #@1c
    .line 53
    return-void

    #@1d
    .line 55
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method private static enqueueSentinelReference(Ljava/lang/ref/FinalizerReference$Sentinel;)Z
    .locals 4
    .param p0, "sentinel"    # Ljava/lang/ref/FinalizerReference$Sentinel;

    #@0
    .prologue
    .line 98
    sget-object v3, Ljava/lang/ref/FinalizerReference;->LIST_LOCK:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 102
    :try_start_0
    sget-object v0, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    #@5
    .local v0, "r":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    :goto_0
    if-eqz v0, :cond_2

    #@7
    .line 103
    iget-object v2, v0, Ljava/lang/ref/FinalizerReference;->referent:Ljava/lang/Object;

    #@9
    if-ne v2, p0, :cond_1

    #@b
    .line 104
    move-object v1, v0

    #@c
    .line 105
    .local v1, "sentinelReference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<Ljava/lang/ref/FinalizerReference$Sentinel;>;"
    const/4 v2, 0x0

    #@d
    iput-object v2, v1, Ljava/lang/ref/FinalizerReference;->referent:Ljava/lang/Object;

    #@f
    .line 106
    iput-object p0, v1, Ljava/lang/ref/FinalizerReference;->zombie:Ljava/lang/Object;

    #@11
    .line 116
    invoke-direct {v1}, Ljava/lang/ref/FinalizerReference;->makeCircularListIfUnenqueued()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 117
    const/4 v2, 0x0

    #@18
    monitor-exit v3

    #@19
    return v2

    #@1a
    .line 119
    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/ref/ReferenceQueue;->add(Ljava/lang/ref/Reference;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    .line 120
    const/4 v2, 0x1

    #@1e
    monitor-exit v3

    #@1f
    return v2

    #@20
    .line 102
    .end local v1    # "sentinelReference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<Ljava/lang/ref/FinalizerReference$Sentinel;>;"
    :cond_1
    :try_start_2
    iget-object v0, v0, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@22
    goto :goto_0

    #@23
    :cond_2
    monitor-exit v3

    #@24
    .line 126
    new-instance v2, Ljava/lang/AssertionError;

    #@26
    const-string/jumbo v3, "newly-created live Sentinel not on list!"

    #@29
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2c
    throw v2

    #@2d
    .line 98
    .end local v0    # "r":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    :catchall_0
    move-exception v2

    #@2e
    monitor-exit v3

    #@2f
    throw v2
.end method

.method public static finalizeAllEnqueued(J)V
    .locals 2
    .param p0, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    :cond_0
    new-instance v0, Ljava/lang/ref/FinalizerReference$Sentinel;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Ljava/lang/ref/FinalizerReference$Sentinel;-><init>(Ljava/lang/ref/FinalizerReference$Sentinel;)V

    #@6
    .line 93
    .local v0, "sentinel":Ljava/lang/ref/FinalizerReference$Sentinel;
    invoke-static {v0}, Ljava/lang/ref/FinalizerReference;->enqueueSentinelReference(Ljava/lang/ref/FinalizerReference$Sentinel;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 94
    invoke-virtual {v0, p0, p1}, Ljava/lang/ref/FinalizerReference$Sentinel;->awaitFinalization(J)V

    #@f
    .line 85
    return-void
.end method

.method private native makeCircularListIfUnenqueued()Z
.end method

.method public static remove(Ljava/lang/ref/FinalizerReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/FinalizerReference",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 66
    .local p0, "reference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    sget-object v3, Ljava/lang/ref/FinalizerReference;->LIST_LOCK:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 67
    :try_start_0
    iget-object v0, p0, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    #@5
    .line 68
    .local v0, "next":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    iget-object v1, p0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    #@7
    .line 69
    .local v1, "prev":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    const/4 v2, 0x0

    #@8
    iput-object v2, p0, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    #@a
    .line 70
    const/4 v2, 0x0

    #@b
    iput-object v2, p0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    #@d
    .line 71
    if-eqz v1, :cond_1

    #@f
    .line 72
    iput-object v0, v1, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    #@11
    .line 76
    :goto_0
    if-eqz v0, :cond_0

    #@13
    .line 77
    iput-object v1, v0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_0
    monitor-exit v3

    #@16
    .line 65
    return-void

    #@17
    .line 74
    :cond_1
    :try_start_1
    sput-object v0, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    goto :goto_0

    #@1a
    .line 66
    .end local v0    # "next":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    .end local v1    # "prev":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    :catchall_0
    move-exception v2

    #@1b
    monitor-exit v3

    #@1c
    throw v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 50
    .local p0, "this":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<TT;>;"
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ljava/lang/ref/FinalizerReference;->zombie:Ljava/lang/Object;

    #@3
    .line 49
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 46
    .local p0, "this":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/FinalizerReference;->zombie:Ljava/lang/Object;

    #@2
    return-object v0
.end method
