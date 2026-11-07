.class final Landroid/media/internal/exo/extractor/ogg/StreamReader$UnseekableOggSeeker;
.super Ljava/lang/Object;
.source "StreamReader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/ogg/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnseekableOggSeeker"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/internal/exo/extractor/ogg/StreamReader$1;)V
    .registers 2

    .line 279
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createSeekMap()Landroid/media/internal/exo/extractor/SeekMap;
    .registers 3

    .line 293
    new-instance p0, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1}, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object p0
.end method

.method public blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;)J
    .registers 2

    .line 0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public blacklist startSeek(J)V
    .registers 3

    .line 0
    return-void
.end method
