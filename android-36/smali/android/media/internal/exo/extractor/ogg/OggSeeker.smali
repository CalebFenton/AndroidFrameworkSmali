.class interface abstract Landroid/media/internal/exo/extractor/ogg/OggSeeker;
.super Ljava/lang/Object;
.source "OggSeeker.java"


# virtual methods
.method public abstract blacklist createSeekMap()Landroid/media/internal/exo/extractor/SeekMap;
.end method

.method public abstract blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist startSeek(J)V
.end method
