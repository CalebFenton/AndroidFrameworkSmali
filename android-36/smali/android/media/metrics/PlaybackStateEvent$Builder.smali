.class public final Landroid/media/metrics/PlaybackStateEvent$Builder;
.super Ljava/lang/Object;
.source "PlaybackStateEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/PlaybackStateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMetricsBundle:Landroid/os/Bundle;

.field private blacklist mState:I

.field private blacklist mTimeSinceCreatedMillis:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mState:I

    .line 234
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mTimeSinceCreatedMillis:J

    .line 235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    .line 241
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/metrics/PlaybackStateEvent;
    .registers 7

    .line 275
    new-instance v0, Landroid/media/metrics/PlaybackStateEvent;

    iget v1, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mState:I

    iget-wide v2, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mTimeSinceCreatedMillis:J

    iget-object v4, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/media/metrics/PlaybackStateEvent;-><init>(IJLandroid/os/Bundle;Landroid/media/metrics/PlaybackStateEvent-IA;)V

    .line 279
    .local v0, "o":Landroid/media/metrics/PlaybackStateEvent;
    return-object v0
.end method

.method public whitelist setMetricsBundle(Landroid/os/Bundle;)Landroid/media/metrics/PlaybackStateEvent$Builder;
    .registers 2
    .param p1, "metricsBundle"    # Landroid/os/Bundle;

    .line 269
    iput-object p1, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    .line 270
    return-object p0
.end method

.method public whitelist setState(I)Landroid/media/metrics/PlaybackStateEvent$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 247
    iput p1, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mState:I

    .line 248
    return-object p0
.end method

.method public whitelist setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackStateEvent$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 258
    iput-wide p1, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mTimeSinceCreatedMillis:J

    .line 259
    return-object p0
.end method
