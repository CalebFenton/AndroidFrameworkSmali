.class final Landroid/media/internal/exo/extractor/mp4/AtomParsers$Stz2SampleSizeBox;
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
    name = "Stz2SampleSizeBox"
.end annotation


# instance fields
.field private blacklist currentByte:I

.field private final blacklist data:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist fieldSize:I

.field private final blacklist sampleCount:I

.field private blacklist sampleIndex:I


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;)V
    .registers 3

    .line 1991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1992
    iget-object p1, p1, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v0, 0xc

    .line 1993
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1994
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->fieldSize:I

    .line 1995
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    iput p1, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleCount:I

    return-void
.end method


# virtual methods
.method public blacklist getFixedSampleSize()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getSampleCount()I
    .registers 1

    .line 2000
    iget p0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleCount:I

    return p0
.end method

.method public blacklist readNextSampleSize()I
    .registers 3

    .line 2010
    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->fieldSize:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    .line 2011
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    return p0

    :cond_d
    const/16 v1, 0x10

    if-ne v0, v1, :cond_18

    .line 2013
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    return p0

    .line 2016
    :cond_18
    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleIndex:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2f

    .line 2018
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->currentByte:I

    and-int/lit16 p0, v0, 0xf0

    shr-int/lit8 p0, p0, 0x4

    return p0

    .line 2023
    :cond_2f
    iget p0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->currentByte:I

    and-int/lit8 p0, p0, 0xf

    return p0
.end method
