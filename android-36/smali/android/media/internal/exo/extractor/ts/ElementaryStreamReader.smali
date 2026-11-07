.class public interface abstract Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;
.super Ljava/lang/Object;
.source "ElementaryStreamReader.java"


# virtual methods
.method public abstract blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation
.end method

.method public abstract blacklist createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
.end method

.method public abstract blacklist packetFinished()V
.end method

.method public abstract blacklist packetStarted(JI)V
.end method

.method public abstract blacklist seek()V
.end method
