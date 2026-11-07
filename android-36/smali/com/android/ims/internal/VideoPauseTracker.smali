.class public Lcom/android/ims/internal/VideoPauseTracker;
.super Ljava/lang/Object;
.source "VideoPauseTracker.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field public static final blacklist SOURCE_DATA_ENABLED:I = 0x2

.field private static final blacklist SOURCE_DATA_ENABLED_STR:Ljava/lang/String; = "DATA_ENABLED"

.field public static final blacklist SOURCE_INCALL:I = 0x1

.field private static final blacklist SOURCE_INCALL_STR:Ljava/lang/String; = "INCALL"


# instance fields
.field private blacklist mPauseRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPauseRequestsLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$oguzKHlOQ9qmA1vMYCymICcFgek(Lcom/android/ims/internal/VideoPauseTracker;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/internal/VideoPauseTracker;->lambda$sourcesToString$0(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    const-class v0, Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/internal/VideoPauseTracker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequestsLock:Ljava/lang/Object;

    return-void
.end method

.method private synthetic blacklist lambda$sourcesToString$0(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3
    .param p1, "source"    # Ljava/lang/Integer;

    .line 197
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/ims/internal/VideoPauseTracker;->sourceToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist sourceToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "source"    # I

    .line 179
    packed-switch p1, :pswitch_data_c

    .line 185
    const-string v0, "unknown"

    return-object v0

    .line 181
    :pswitch_6
    const-string v0, "DATA_ENABLED"

    return-object v0

    .line 183
    :pswitch_9
    const-string v0, "INCALL"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist sourcesToString(Ljava/util/Collection;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 195
    .local p1, "sources":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequestsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/internal/VideoPauseTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/ims/internal/VideoPauseTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/internal/VideoPauseTracker;)V

    .line 197
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ", "

    .line 198
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    .line 196
    return-object v1

    .line 199
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method


# virtual methods
.method public blacklist clearPauseRequests()V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequestsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 169
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist isPaused()Z
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequestsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 149
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist shouldPauseVideoFor(I)Z
    .registers 8
    .param p1, "source"    # I

    .line 79
    iget-object v0, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequestsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/internal/VideoPauseTracker;->isPaused()Z

    move-result v1

    .line 81
    .local v1, "wasPaused":Z
    iget-object v2, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    if-nez v1, :cond_2e

    .line 84
    sget-object v2, Lcom/android/ims/internal/VideoPauseTracker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "shouldPauseVideoFor: source=%s, pendingRequests=%s - should pause"

    .line 86
    invoke-direct {p0, p1}, Lcom/android/ims/internal/VideoPauseTracker;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-direct {p0, v5}, Lcom/android/ims/internal/VideoPauseTracker;->sourcesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 84
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 90
    :cond_2e
    sget-object v2, Lcom/android/ims/internal/VideoPauseTracker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "shouldPauseVideoFor: source=%s, pendingRequests=%s - already paused"

    .line 92
    invoke-direct {p0, p1}, Lcom/android/ims/internal/VideoPauseTracker;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-direct {p0, v5}, Lcom/android/ims/internal/VideoPauseTracker;->sourcesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 90
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 96
    .end local v1    # "wasPaused":Z
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public blacklist shouldResumeVideoFor(I)Z
    .registers 10
    .param p1, "source"    # I

    .line 112
    iget-object v0, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequestsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/internal/VideoPauseTracker;->isPaused()Z

    move-result v1

    .line 114
    .local v1, "wasPaused":Z
    iget-object v2, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p0}, Lcom/android/ims/internal/VideoPauseTracker;->isPaused()Z

    move-result v2

    .line 117
    .local v2, "isPaused":Z
    const/4 v3, 0x1

    if-eqz v1, :cond_34

    if-nez v2, :cond_34

    .line 118
    sget-object v4, Lcom/android/ims/internal/VideoPauseTracker;->LOG_TAG:Ljava/lang/String;

    const-string v5, "shouldResumeVideoFor: source=%s, pendingRequests=%s - should resume"

    .line 120
    invoke-direct {p0, p1}, Lcom/android/ims/internal/VideoPauseTracker;->sourceToString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-direct {p0, v7}, Lcom/android/ims/internal/VideoPauseTracker;->sourcesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 118
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    monitor-exit v0

    return v3

    .line 123
    :cond_34
    if-eqz v1, :cond_54

    if-eqz v2, :cond_54

    .line 124
    sget-object v3, Lcom/android/ims/internal/VideoPauseTracker;->LOG_TAG:Ljava/lang/String;

    const-string v4, "shouldResumeVideoFor: source=%s, pendingRequests=%s - stay paused"

    .line 126
    invoke-direct {p0, p1}, Lcom/android/ims/internal/VideoPauseTracker;->sourceToString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-direct {p0, v6}, Lcom/android/ims/internal/VideoPauseTracker;->sourcesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 124
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 130
    :cond_54
    sget-object v4, Lcom/android/ims/internal/VideoPauseTracker;->LOG_TAG:Ljava/lang/String;

    const-string v5, "shouldResumeVideoFor: source=%s, pendingRequests=%s - not paused"

    .line 132
    invoke-direct {p0, p1}, Lcom/android/ims/internal/VideoPauseTracker;->sourceToString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-direct {p0, v7}, Lcom/android/ims/internal/VideoPauseTracker;->sourcesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 130
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    monitor-exit v0

    return v3

    .line 140
    .end local v1    # "wasPaused":Z
    .end local v2    # "isPaused":Z
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method public blacklist wasVideoPausedFromSource(I)Z
    .registers 5
    .param p1, "source"    # I

    .line 158
    iget-object v0, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequestsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 160
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method
