.class final Landroid/media/internal/exo/extractor/wav/WavHeaderReader$ChunkHeader;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/wav/WavHeaderReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChunkHeader"
.end annotation


# instance fields
.field public final blacklist id:I

.field public final blacklist size:J


# direct methods
.method private constructor blacklist <init>(IJ)V
    .registers 4

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput p1, p0, Landroid/media/internal/exo/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    .line 202
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    return-void
.end method

.method public static blacklist peek(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/extractor/wav/WavHeaderReader$ChunkHeader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 216
    invoke-virtual {p1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 218
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p0

    .line 219
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    .line 221
    new-instance p1, Landroid/media/internal/exo/extractor/wav/WavHeaderReader$ChunkHeader;

    invoke-direct {p1, p0, v0, v1}, Landroid/media/internal/exo/extractor/wav/WavHeaderReader$ChunkHeader;-><init>(IJ)V

    return-object p1
.end method
