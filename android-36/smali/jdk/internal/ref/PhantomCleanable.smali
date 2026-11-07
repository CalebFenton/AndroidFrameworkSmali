.class public abstract Ljdk/internal/ref/PhantomCleanable;
.super Ljava/lang/ref/PhantomReference;
.source "PhantomCleanable.java"

# interfaces
.implements Ljava/lang/ref/Cleaner$Cleanable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/PhantomReference<",
        "TT;>;",
        "Ljava/lang/ref/Cleaner$Cleanable;"
    }
.end annotation


# instance fields
.field private final blacklist list:Ljdk/internal/ref/PhantomCleanable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljdk/internal/ref/PhantomCleanable<",
            "*>;"
        }
    .end annotation
.end field

.field blacklist next:Ljdk/internal/ref/PhantomCleanable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljdk/internal/ref/PhantomCleanable<",
            "*>;"
        }
    .end annotation
.end field

.field blacklist prev:Ljdk/internal/ref/PhantomCleanable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljdk/internal/ref/PhantomCleanable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 79
    .local p0, "this":Ljdk/internal/ref/PhantomCleanable;, "Ljdk/internal/ref/PhantomCleanable<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 49
    iput-object p0, p0, Ljdk/internal/ref/PhantomCleanable;->prev:Ljdk/internal/ref/PhantomCleanable;

    iput-object p0, p0, Ljdk/internal/ref/PhantomCleanable;->next:Ljdk/internal/ref/PhantomCleanable;

    .line 80
    iput-object p0, p0, Ljdk/internal/ref/PhantomCleanable;->list:Ljdk/internal/ref/PhantomCleanable;

    .line 81
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/ref/Cleaner;)V
    .registers 5
    .param p2, "cleaner"    # Ljava/lang/ref/Cleaner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/Cleaner;",
            ")V"
        }
    .end annotation

    .line 66
    .local p0, "this":Ljdk/internal/ref/PhantomCleanable;, "Ljdk/internal/ref/PhantomCleanable<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Ljdk/internal/ref/CleanerImpl;->getCleanerImpl(Ljava/lang/ref/Cleaner;)Ljdk/internal/ref/CleanerImpl;

    move-result-object v1

    iget-object v1, v1, Ljdk/internal/ref/CleanerImpl;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, v0, v1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 49
    iput-object p0, p0, Ljdk/internal/ref/PhantomCleanable;->prev:Ljdk/internal/ref/PhantomCleanable;

    iput-object p0, p0, Ljdk/internal/ref/PhantomCleanable;->next:Ljdk/internal/ref/PhantomCleanable;

    .line 67
    invoke-static {p2}, Ljdk/internal/ref/CleanerImpl;->getCleanerImpl(Ljava/lang/ref/Cleaner;)Ljdk/internal/ref/CleanerImpl;

    move-result-object v0

    iget-object v0, v0, Ljdk/internal/ref/CleanerImpl;->phantomCleanableList:Ljdk/internal/ref/PhantomCleanable;

    iput-object v0, p0, Ljdk/internal/ref/PhantomCleanable;->list:Ljdk/internal/ref/PhantomCleanable;

    .line 68
    invoke-direct {p0}, Ljdk/internal/ref/PhantomCleanable;->insert()V

    .line 71
    invoke-static {p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 72
    invoke-static {p2}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method private blacklist insert()V
    .registers 3

    .line 87
    .local p0, "this":Ljdk/internal/ref/PhantomCleanable;, "Ljdk/internal/ref/PhantomCleanable<TT;>;"
    iget-object v0, p0, Ljdk/internal/ref/PhantomCleanable;->list:Ljdk/internal/ref/PhantomCleanable;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-object v1, p0, Ljdk/internal/ref/PhantomCleanable;->list:Ljdk/internal/ref/PhantomCleanable;

    iput-object v1, p0, Ljdk/internal/ref/PhantomCleanable;->prev:Ljdk/internal/ref/PhantomCleanable;

    .line 89
    iget-object v1, p0, Ljdk/internal/ref/PhantomCleanable;->list:Ljdk/internal/ref/PhantomCleanable;

    iget-object v1, v1, Ljdk/internal/ref/PhantomCleanable;->next:Ljdk/internal/ref/PhantomCleanable;

    iput-object v1, p0, Ljdk/internal/ref/PhantomCleanable;->next:Ljdk/internal/ref/PhantomCleanable;

    .line 90
    iget-object v1, p0, Ljdk/internal/ref/PhantomCleanable;->next:Ljdk/internal/ref/PhantomCleanable;

    iput-object p0, v1, Ljdk/internal/ref/PhantomCleanable;->prev:Ljdk/internal/ref/PhantomCleanable;

    .line 91
    iget-object v1, p0, Ljdk/internal/ref/PhantomCleanable;->list:Ljdk/internal/ref/PhantomCleanable;

    iput-object p0, v1, Ljdk/internal/ref/PhantomCleanable;->next:Ljdk/internal/ref/PhantomCleanable;

    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 92
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist remove()Z
    .registers 4

    .line 102
    .local p0, "this":Ljdk/internal/ref/PhantomCleanable;, "Ljdk/internal/ref/PhantomCleanable<TT;>;"
    iget-object v0, p0, Ljdk/internal/ref/PhantomCleanable;->list:Ljdk/internal/ref/PhantomCleanable;

    monitor-enter v0

    .line 103
    :try_start_3
    iget-object v1, p0, Ljdk/internal/ref/PhantomCleanable;->next:Ljdk/internal/ref/PhantomCleanable;

    if-eq v1, p0, :cond_1a

    .line 104
    iget-object v1, p0, Ljdk/internal/ref/PhantomCleanable;->next:Ljdk/internal/ref/PhantomCleanable;

    iget-object v2, p0, Ljdk/internal/ref/PhantomCleanable;->prev:Ljdk/internal/ref/PhantomCleanable;

    iput-object v2, v1, Ljdk/internal/ref/PhantomCleanable;->prev:Ljdk/internal/ref/PhantomCleanable;

    .line 105
    iget-object v1, p0, Ljdk/internal/ref/PhantomCleanable;->prev:Ljdk/internal/ref/PhantomCleanable;

    iget-object v2, p0, Ljdk/internal/ref/PhantomCleanable;->next:Ljdk/internal/ref/PhantomCleanable;

    iput-object v2, v1, Ljdk/internal/ref/PhantomCleanable;->next:Ljdk/internal/ref/PhantomCleanable;

    .line 106
    iput-object p0, p0, Ljdk/internal/ref/PhantomCleanable;->prev:Ljdk/internal/ref/PhantomCleanable;

    .line 107
    iput-object p0, p0, Ljdk/internal/ref/PhantomCleanable;->next:Ljdk/internal/ref/PhantomCleanable;

    .line 108
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 110
    :cond_1a
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 111
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method


# virtual methods
.method public final whitelist test-api clean()V
    .registers 2

    .line 131
    .local p0, "this":Ljdk/internal/ref/PhantomCleanable;, "Ljdk/internal/ref/PhantomCleanable<TT;>;"
    invoke-direct {p0}, Ljdk/internal/ref/PhantomCleanable;->remove()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 132
    invoke-super {p0}, Ljava/lang/ref/PhantomReference;->clear()V

    .line 133
    invoke-virtual {p0}, Ljdk/internal/ref/PhantomCleanable;->performCleanup()V

    .line 135
    :cond_c
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 143
    .local p0, "this":Ljdk/internal/ref/PhantomCleanable;, "Ljdk/internal/ref/PhantomCleanable<TT;>;"
    invoke-direct {p0}, Ljdk/internal/ref/PhantomCleanable;->remove()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 144
    invoke-super {p0}, Ljava/lang/ref/PhantomReference;->clear()V

    .line 146
    :cond_9
    return-void
.end method

.method public final whitelist test-api enqueue()Z
    .registers 3

    .line 177
    .local p0, "this":Ljdk/internal/ref/PhantomCleanable;, "Ljdk/internal/ref/PhantomCleanable<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "enqueue"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api isEnqueued()Z
    .registers 3

    .line 165
    .local p0, "this":Ljdk/internal/ref/PhantomCleanable;, "Ljdk/internal/ref/PhantomCleanable<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isEnqueued"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist isListEmpty()Z
    .registers 4

    .line 120
    .local p0, "this":Ljdk/internal/ref/PhantomCleanable;, "Ljdk/internal/ref/PhantomCleanable<TT;>;"
    iget-object v0, p0, Ljdk/internal/ref/PhantomCleanable;->list:Ljdk/internal/ref/PhantomCleanable;

    monitor-enter v0

    .line 121
    :try_start_3
    iget-object v1, p0, Ljdk/internal/ref/PhantomCleanable;->list:Ljdk/internal/ref/PhantomCleanable;

    iget-object v2, p0, Ljdk/internal/ref/PhantomCleanable;->list:Ljdk/internal/ref/PhantomCleanable;

    iget-object v2, v2, Ljdk/internal/ref/PhantomCleanable;->next:Ljdk/internal/ref/PhantomCleanable;

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 122
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method protected abstract blacklist performCleanup()V
.end method
