.class final Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$OggSeekMap;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OggSeekMap"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;


# direct methods
.method private constructor blacklist <init>(Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 251
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$1;)V
    .registers 3

    .line 251
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;)V

    return-void
.end method


# virtual methods
.method public blacklist getDurationUs()J
    .registers 4

    .line 272
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;

    # getter for: Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->streamReader:Landroid/media/internal/exo/extractor/ogg/StreamReader;
    invoke-static {v0}, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->access$100(Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;)Landroid/media/internal/exo/extractor/ogg/StreamReader;

    move-result-object v0

    iget-object p0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;

    # getter for: Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->totalGranules:J
    invoke-static {p0}, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->access$400(Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getSeekPoints(J)Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;
    .registers 13

    .line 260
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;

    # getter for: Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->streamReader:Landroid/media/internal/exo/extractor/ogg/StreamReader;
    invoke-static {v0}, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->access$100(Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;)Landroid/media/internal/exo/extractor/ogg/StreamReader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->convertTimeToGranule(J)J

    move-result-wide v0

    .line 261
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;

    .line 262
    # getter for: Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J
    invoke-static {v2}, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->access$200(Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;

    .line 263
    # getter for: Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J
    invoke-static {v4}, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->access$300(Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;

    # getter for: Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J
    invoke-static {v6}, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->access$200(Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    mul-long/2addr v0, v4

    iget-object v4, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;

    # getter for: Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->totalGranules:J
    invoke-static {v4}, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->access$400(Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v4

    div-long/2addr v0, v4

    add-long/2addr v2, v0

    const-wide/16 v0, 0x7530

    sub-long v4, v2, v0

    .line 265
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;

    .line 266
    # getter for: Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J
    invoke-static {v0}, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->access$200(Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v6

    iget-object p0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;

    # getter for: Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J
    invoke-static {p0}, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->access$300(Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    invoke-static/range {v4 .. v9}, Landroid/media/internal/exo/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 267
    new-instance p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    new-instance v2, Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-direct {v2, p1, p2, v0, v1}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p0, v2}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p0
.end method

.method public blacklist isSeekable()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method
