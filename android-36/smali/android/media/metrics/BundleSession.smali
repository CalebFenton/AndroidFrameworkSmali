.class public final Landroid/media/metrics/BundleSession;
.super Ljava/lang/Object;
.source "BundleSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final whitelist KEY_STATSD_ATOM:Ljava/lang/String; = "bundlesession-statsd-atom"


# instance fields
.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private final blacklist mManager:Landroid/media/metrics/MediaMetricsManager;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/media/metrics/MediaMetricsManager;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "manager"    # Landroid/media/metrics/MediaMetricsManager;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/media/metrics/BundleSession;->mId:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Landroid/media/metrics/BundleSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    .line 48
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/media/metrics/BundleSession;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 49
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/media/metrics/BundleSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 50
    new-instance v0, Landroid/media/metrics/LogSessionId;

    iget-object v1, p0, Landroid/media/metrics/BundleSession;->mId:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/media/metrics/LogSessionId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/metrics/BundleSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 84
    iget-object v0, p0, Landroid/media/metrics/BundleSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/BundleSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/metrics/MediaMetricsManager;->releaseSessionId(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 71
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 72
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 73
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/media/metrics/BundleSession;

    .line 74
    .local v0, "that":Landroid/media/metrics/BundleSession;
    iget-object v1, p0, Landroid/media/metrics/BundleSession;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/media/metrics/BundleSession;->mId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 72
    .end local v0    # "that":Landroid/media/metrics/BundleSession;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/media/metrics/BundleSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/media/metrics/BundleSession;->mId:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist reportBundleMetrics(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "metrics"    # Landroid/os/PersistableBundle;

    .line 62
    iget-object v0, p0, Landroid/media/metrics/BundleSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/BundleSession;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/media/metrics/MediaMetricsManager;->reportBundleMetrics(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 63
    return-void
.end method
