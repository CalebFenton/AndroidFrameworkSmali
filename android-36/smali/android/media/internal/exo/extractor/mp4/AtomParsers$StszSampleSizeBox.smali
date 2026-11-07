.class final Landroid/media/internal/exo/extractor/mp4/AtomParsers$StszSampleSizeBox;
.super Ljava/lang/Object;
.source "AtomParsers.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/mp4/AtomParsers$SampleSizeBox;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StszSampleSizeBox"
.end annotation


# instance fields
.field private final blacklist data:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist fixedSampleSize:I

.field private final blacklist sampleCount:I


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;Landroid/media/internal/exo/Format;)V
    .registers 6

    .line 1941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1942
    iget-object p1, p1, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StszSampleSizeBox;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v0, 0xc

    .line 1943
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1944
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 1945
    iget-object v1, p2, Landroid/media/internal/exo/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1946
    iget v1, p2, Landroid/media/internal/exo/Format;->pcmEncoding:I

    iget p2, p2, Landroid/media/internal/exo/Format;->channelCount:I

    invoke-static {v1, p2}, Landroid/media/internal/exo/util/Util;->getPcmFrameSize(II)I

    move-result p2

    if-eqz v0, :cond_28

    .line 1947
    rem-int v1, v0, p2

    if-eqz v1, :cond_47

    .line 1951
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio sample size mismatch. stsd sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stsz sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtomParsers"

    invoke-static {v1, v0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p2

    :cond_47
    if-nez v0, :cond_4a

    const/4 v0, -0x1

    .line 1960
    :cond_4a
    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StszSampleSizeBox;->fixedSampleSize:I

    .line 1961
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    iput p1, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StszSampleSizeBox;->sampleCount:I

    return-void
.end method


# virtual methods
.method public blacklist getFixedSampleSize()I
    .registers 1

    .line 1971
    iget p0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StszSampleSizeBox;->fixedSampleSize:I

    return p0
.end method

.method public blacklist getSampleCount()I
    .registers 1

    .line 1966
    iget p0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StszSampleSizeBox;->sampleCount:I

    return p0
.end method

.method public blacklist readNextSampleSize()I
    .registers 3

    .line 1976
    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StszSampleSizeBox;->fixedSampleSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StszSampleSizeBox;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    return p0

    :cond_c
    return v0
.end method
