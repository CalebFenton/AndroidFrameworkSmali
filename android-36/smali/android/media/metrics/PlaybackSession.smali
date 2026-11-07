.class public final Landroid/media/metrics/PlaybackSession;
.super Ljava/lang/Object;
.source "PlaybackSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private blacklist mClosed:Z

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private final blacklist mManager:Landroid/media/metrics/MediaMetricsManager;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/media/metrics/MediaMetricsManager;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "manager"    # Landroid/media/metrics/MediaMetricsManager;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/metrics/PlaybackSession;->mClosed:Z

    .line 44
    iput-object p1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    .line 46
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 47
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 48
    new-instance v0, Landroid/media/metrics/LogSessionId;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/media/metrics/LogSessionId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/metrics/PlaybackSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/metrics/PlaybackSession;->mClosed:Z

    .line 121
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/metrics/MediaMetricsManager;->releaseSessionId(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 107
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 108
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 109
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/media/metrics/PlaybackSession;

    .line 110
    .local v0, "that":Landroid/media/metrics/PlaybackSession;
    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 108
    .end local v0    # "that":Landroid/media/metrics/PlaybackSession;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist reportNetworkEvent(Landroid/media/metrics/NetworkEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/media/metrics/NetworkEvent;

    .line 69
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/media/metrics/MediaMetricsManager;->reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;)V

    .line 70
    return-void
.end method

.method public whitelist reportPlaybackErrorEvent(Landroid/media/metrics/PlaybackErrorEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/media/metrics/PlaybackErrorEvent;

    .line 62
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/media/metrics/MediaMetricsManager;->reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 63
    return-void
.end method

.method public whitelist reportPlaybackMetrics(Landroid/media/metrics/PlaybackMetrics;)V
    .registers 4
    .param p1, "metrics"    # Landroid/media/metrics/PlaybackMetrics;

    .line 55
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/media/metrics/MediaMetricsManager;->reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;)V

    .line 56
    return-void
.end method

.method public whitelist reportPlaybackStateEvent(Landroid/media/metrics/PlaybackStateEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/media/metrics/PlaybackStateEvent;

    .line 76
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/media/metrics/MediaMetricsManager;->reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;)V

    .line 77
    return-void
.end method

.method public whitelist reportTrackChangeEvent(Landroid/media/metrics/TrackChangeEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/media/metrics/TrackChangeEvent;

    .line 83
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/media/metrics/MediaMetricsManager;->reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;)V

    .line 84
    return-void
.end method
