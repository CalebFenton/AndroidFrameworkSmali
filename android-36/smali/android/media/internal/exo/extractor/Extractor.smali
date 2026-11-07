.class public interface abstract Landroid/media/internal/exo/extractor/Extractor;
.super Ljava/lang/Object;
.source "Extractor.java"


# virtual methods
.method public abstract blacklist init(Landroid/media/internal/exo/extractor/ExtractorOutput;)V
.end method

.method public abstract blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist seek(JJ)V
.end method

.method public abstract blacklist sniff(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
