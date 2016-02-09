.class Landroid/media/TextTrackCueSpan;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# instance fields
.field mEnabled:Z

.field mText:Ljava/lang/String;

.field mTimestampMs:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    iput-wide p2, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    #@5
    .line 76
    iput-object p1, p0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    #@7
    .line 78
    iget-wide v0, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    #@9
    const-wide/16 v2, 0x0

    #@b
    cmp-long v0, v0, v2

    #@d
    if-gez v0, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :goto_0
    iput-boolean v0, p0, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    #@12
    .line 74
    return-void

    #@13
    .line 78
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 83
    instance-of v2, p1, Landroid/media/TextTrackCueSpan;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 84
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 86
    check-cast v0, Landroid/media/TextTrackCueSpan;

    #@9
    .line 87
    .local v0, "span":Landroid/media/TextTrackCueSpan;
    iget-wide v2, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    #@b
    iget-wide v4, v0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    #@d
    cmp-long v2, v2, v4

    #@f
    if-nez v2, :cond_1

    #@11
    .line 88
    iget-object v1, p0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    #@13
    iget-object v2, v0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    .line 87
    :cond_1
    return v1
.end method
