.class public final Landroid/media/internal/exo/extractor/Id3Peeker;
.super Ljava/lang/Object;
.source "Id3Peeker.java"


# instance fields
.field private final blacklist scratch:Landroid/media/internal/exo/util/ParsableByteArray;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/Id3Peeker;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public blacklist peekId3Data(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;)Landroid/media/internal/exo/metadata/Metadata;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 55
    :goto_3
    :try_start_3
    iget-object v3, p0, Landroid/media/internal/exo/extractor/Id3Peeker;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v3

    const/16 v4, 0xa

    invoke-interface {p1, v3, v0, v4}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V
    :try_end_e
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_e} :catch_4c

    .line 60
    iget-object v3, p0, Landroid/media/internal/exo/extractor/Id3Peeker;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 61
    iget-object v3, p0, Landroid/media/internal/exo/extractor/Id3Peeker;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    const v5, 0x494433

    if-eq v3, v5, :cond_1f

    goto :goto_4c

    .line 65
    :cond_1f
    iget-object v3, p0, Landroid/media/internal/exo/extractor/Id3Peeker;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 66
    iget-object v3, p0, Landroid/media/internal/exo/extractor/Id3Peeker;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v3

    add-int/lit8 v5, v3, 0xa

    if-nez v1, :cond_47

    .line 70
    new-array v1, v5, [B

    .line 71
    iget-object v6, p0, Landroid/media/internal/exo/extractor/Id3Peeker;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v6

    invoke-static {v6, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    invoke-interface {p1, v1, v4, v3}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 74
    new-instance v3, Landroid/media/internal/exo/metadata/id3/Id3Decoder;

    invoke-direct {v3, p2}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;-><init>(Landroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;)V

    invoke-virtual {v3, v1, v5}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decode([BI)Landroid/media/internal/exo/metadata/Metadata;

    move-result-object v1

    goto :goto_4a

    .line 76
    :cond_47
    invoke-interface {p1, v3}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    :goto_4a
    add-int/2addr v2, v5

    goto :goto_3

    .line 82
    :catch_4c
    :goto_4c
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 83
    invoke-interface {p1, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    return-object v1
.end method
