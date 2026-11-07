.class Landroid/media/TextTrackCueSpan;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# instance fields
.field greylist-max-o mEnabled:Z

.field greylist-max-o mText:Ljava/lang/String;

.field greylist-max-o mTimestampMs:J


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;J)V
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-wide p2, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 78
    iput-object p1, p0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    .line 80
    iget-wide v0, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    .line 81
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 85
    instance-of v0, p1, Landroid/media/TextTrackCueSpan;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 86
    return v1

    .line 88
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/media/TextTrackCueSpan;

    .line 89
    .local v0, "span":Landroid/media/TextTrackCueSpan;
    iget-wide v2, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    iget-wide v4, v0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1d

    iget-object v2, p0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    iget-object v3, v0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    nop

    .line 89
    :goto_1e
    return v1
.end method
