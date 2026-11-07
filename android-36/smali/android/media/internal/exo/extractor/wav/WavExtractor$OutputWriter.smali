.class interface abstract Landroid/media/internal/exo/extractor/wav/WavExtractor$OutputWriter;
.super Ljava/lang/Object;
.source "WavExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/wav/WavExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "OutputWriter"
.end annotation


# virtual methods
.method public abstract blacklist init(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation
.end method

.method public abstract blacklist reset(J)V
.end method

.method public abstract blacklist sampleData(Landroid/media/internal/exo/extractor/ExtractorInput;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
