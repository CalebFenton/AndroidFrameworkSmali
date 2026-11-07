.class final Landroid/media/MediaParser$DummyExoPlayerSeekMap;
.super Ljava/lang/Object;
.source "MediaParser.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DummyExoPlayerSeekMap"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaParser-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Landroid/media/MediaParser$DummyExoPlayerSeekMap;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDurationUs()J
    .registers 3

    .line 0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public blacklist getSeekPoints(J)Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;
    .registers 5

    .line 1964
    new-instance p0, Landroid/media/internal/exo/extractor/SeekPoint;

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    .line 1967
    new-instance p1, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, p0, p0}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p1
.end method

.method public blacklist isSeekable()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method
