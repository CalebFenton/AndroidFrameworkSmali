.class public interface abstract Landroid/media/internal/exo/extractor/ts/TsPayloadReader;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;,
        Landroid/media/internal/exo/extractor/ts/TsPayloadReader$DvbSubtitleInfo;,
        Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;,
        Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;
    }
.end annotation


# virtual methods
.method public abstract blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation
.end method

.method public abstract blacklist init(Landroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
.end method

.method public abstract blacklist seek()V
.end method
