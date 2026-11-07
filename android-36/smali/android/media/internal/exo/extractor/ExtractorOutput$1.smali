.class Landroid/media/internal/exo/extractor/ExtractorOutput$1;
.super Ljava/lang/Object;
.source "ExtractorOutput.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/ExtractorOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist endTracks()V
    .registers 1

    .line 37
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public blacklist seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V
    .registers 2

    .line 42
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public blacklist track(II)Landroid/media/internal/exo/extractor/TrackOutput;
    .registers 3

    .line 32
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
