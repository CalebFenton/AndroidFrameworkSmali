.class public interface abstract Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;
.super Ljava/lang/Object;
.source "EbmlProcessor.java"


# virtual methods
.method public abstract blacklist binaryElement(IILandroid/media/internal/exo/extractor/ExtractorInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist endMasterElement(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation
.end method

.method public abstract blacklist floatElement(ID)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation
.end method

.method public abstract blacklist getElementType(I)I
.end method

.method public abstract blacklist integerElement(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation
.end method

.method public abstract blacklist isLevel1Element(I)Z
.end method

.method public abstract blacklist startMasterElement(IJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation
.end method

.method public abstract blacklist stringElement(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation
.end method
