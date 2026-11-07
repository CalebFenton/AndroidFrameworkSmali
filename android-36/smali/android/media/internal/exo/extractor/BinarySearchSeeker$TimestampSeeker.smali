.class public interface abstract Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSeeker;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "TimestampSeeker"
.end annotation


# virtual methods
.method public blacklist onSeekFinished()V
    .registers 1

    .line 0
    return-void
.end method

.method public abstract blacklist searchForTimestamp(Landroid/media/internal/exo/extractor/ExtractorInput;J)Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
