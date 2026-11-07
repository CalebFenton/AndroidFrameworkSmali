.class interface abstract Landroid/media/internal/exo/extractor/mp4/AtomParsers$SampleSizeBox;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SampleSizeBox"
.end annotation


# virtual methods
.method public abstract blacklist getFixedSampleSize()I
.end method

.method public abstract blacklist getSampleCount()I
.end method

.method public abstract blacklist readNextSampleSize()I
.end method
