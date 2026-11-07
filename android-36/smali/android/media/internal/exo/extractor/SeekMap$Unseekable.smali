.class public Landroid/media/internal/exo/extractor/SeekMap$Unseekable;
.super Ljava/lang/Object;
.source "SeekMap.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/SeekMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unseekable"
.end annotation


# instance fields
.field private final blacklist durationUs:J

.field private final blacklist startSeekPoints:Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;-><init>(JJ)V

    return-void
.end method

.method public constructor blacklist <init>(JJ)V
    .registers 7

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;->durationUs:J

    .line 48
    new-instance p1, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_10

    .line 49
    sget-object p2, Landroid/media/internal/exo/extractor/SeekPoint;->START:Landroid/media/internal/exo/extractor/SeekPoint;

    goto :goto_15

    :cond_10
    new-instance p2, Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-direct {p2, v0, v1, p3, p4}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    :goto_15
    invoke-direct {p1, p2}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;->startSeekPoints:Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    return-void
.end method


# virtual methods
.method public blacklist getDurationUs()J
    .registers 3

    .line 59
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;->durationUs:J

    return-wide v0
.end method

.method public blacklist getSeekPoints(J)Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;
    .registers 3

    .line 64
    iget-object p0, p0, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;->startSeekPoints:Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    return-object p0
.end method

.method public blacklist isSeekable()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method
