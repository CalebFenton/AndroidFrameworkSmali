.class public Landroid/media/internal/exo/extractor/mp3/Seeker$UnseekableSeeker;
.super Landroid/media/internal/exo/extractor/SeekMap$Unseekable;
.source "Seeker.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/mp3/Seeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/mp3/Seeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnseekableSeeker"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    invoke-direct {p0, v0, v1}, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;-><init>(J)V

    return-void
.end method


# virtual methods
.method public blacklist getDataEndPosition()J
    .registers 3

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getTimeUs(J)J
    .registers 3

    .line 0
    const-wide/16 p0, 0x0

    return-wide p0
.end method
