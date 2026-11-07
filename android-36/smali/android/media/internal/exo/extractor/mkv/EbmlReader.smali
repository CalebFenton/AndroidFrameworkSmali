.class interface abstract Landroid/media/internal/exo/extractor/mkv/EbmlReader;
.super Ljava/lang/Object;
.source "EbmlReader.java"


# virtual methods
.method public abstract blacklist init(Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;)V
.end method

.method public abstract blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist reset()V
.end method
