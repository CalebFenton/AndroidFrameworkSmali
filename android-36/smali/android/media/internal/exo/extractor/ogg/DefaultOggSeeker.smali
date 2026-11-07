.class final Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    }
.end annotation


# instance fields
.field private blacklist end:J

.field private blacklist endGranule:J

.field private final blacklist pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

.field private final blacklist payloadEndPosition:J

.field private final blacklist payloadStartPosition:J

.field private blacklist positionBeforeSeekToEnd:J

.field private blacklist start:J

.field private blacklist startGranule:J

.field private blacklist state:I

.field private final blacklist streamReader:Landroid/media/internal/exo/extractor/ogg/StreamReader;

.field private blacklist targetGranule:J

.field private blacklist totalGranules:J


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/ogg/StreamReader;JJJJZ)V
    .registers 13

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_10

    cmp-long v0, p4, p2

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    move v0, v1

    .line 77
    :goto_11
    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkArgument(Z)V

    .line 79
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->streamReader:Landroid/media/internal/exo/extractor/ogg/StreamReader;

    .line 80
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    .line 81
    iput-wide p4, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_25

    if-eqz p10, :cond_22

    goto :goto_25

    .line 87
    :cond_22
    iput v1, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->state:I

    goto :goto_2a

    .line 84
    :cond_25
    :goto_25
    iput-wide p8, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const/4 p1, 0x4

    .line 85
    iput p1, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->state:I

    .line 89
    :goto_2a
    new-instance p1, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    invoke-direct {p1}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    return-void
.end method

.method static synthetic blacklist access$100(Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;)Landroid/media/internal/exo/extractor/ogg/StreamReader;
    .registers 1

    .line 33
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->streamReader:Landroid/media/internal/exo/extractor/ogg/StreamReader;

    return-object p0
.end method

.method static synthetic blacklist access$200(Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;)J
    .registers 3

    .line 33
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    return-wide v0
.end method

.method static synthetic blacklist access$300(Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;)J
    .registers 3

    .line 33
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    return-wide v0
.end method

.method static synthetic blacklist access$400(Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;)J
    .registers 3

    .line 33
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    return-wide v0
.end method

.method private blacklist getNextSeekPosition(Landroid/media/internal/exo/extractor/ExtractorInput;)J
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 155
    iget-wide v2, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->start:J

    iget-wide v4, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->end:J

    cmp-long v2, v2, v4

    const-wide/16 v3, -0x1

    if-nez v2, :cond_f

    return-wide v3

    .line 159
    :cond_f
    invoke-interface {v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    .line 160
    iget-object v2, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    iget-wide v7, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->end:J

    invoke-virtual {v2, v1, v7, v8}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->skipToNextPage(Landroid/media/internal/exo/extractor/ExtractorInput;J)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 161
    iget-wide v0, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->start:J

    cmp-long v2, v0, v5

    if-eqz v2, :cond_24

    return-wide v0

    .line 162
    :cond_24
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No ogg page can be found."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_2c
    iget-object v2, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->populate(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Z

    .line 168
    invoke-interface {v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 170
    iget-wide v7, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    iget-object v2, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    iget-wide v9, v2, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->granulePosition:J

    sub-long/2addr v7, v9

    .line 171
    iget v11, v2, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->headerSize:I

    iget v2, v2, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v11, v2

    const-wide/16 v12, 0x0

    cmp-long v2, v12, v7

    if-gtz v2, :cond_4f

    const-wide/32 v14, 0x11940

    cmp-long v2, v7, v14

    if-gez v2, :cond_4f

    return-wide v3

    :cond_4f
    cmp-long v2, v7, v12

    if-gez v2, :cond_58

    .line 177
    iput-wide v5, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->end:J

    .line 178
    iput-wide v9, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->endGranule:J

    goto :goto_66

    .line 180
    :cond_58
    invoke-interface {v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    int-to-long v5, v11

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->start:J

    .line 181
    iget-object v3, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    iget-wide v3, v3, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v3, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->startGranule:J

    .line 184
    :goto_66
    iget-wide v3, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v5, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long/2addr v3, v5

    const-wide/32 v9, 0x186a0

    cmp-long v3, v3, v9

    if-gez v3, :cond_75

    .line 185
    iput-wide v5, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->end:J

    return-wide v5

    :cond_75
    int-to-long v3, v11

    const-wide/16 v5, 0x1

    if-gtz v2, :cond_7d

    const-wide/16 v9, 0x2

    goto :goto_7e

    :cond_7d
    move-wide v9, v5

    :goto_7e
    mul-long/2addr v3, v9

    .line 191
    invoke-interface {v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    sub-long/2addr v1, v3

    iget-wide v3, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v11, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long v9, v3, v11

    mul-long/2addr v7, v9

    iget-wide v9, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->endGranule:J

    iget-wide v13, v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->startGranule:J

    sub-long/2addr v9, v13

    div-long/2addr v7, v9

    add-long v9, v1, v7

    sub-long v13, v3, v5

    .line 194
    invoke-static/range {v9 .. v14}, Landroid/media/internal/exo/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist skipToPageOfTargetGranule(Landroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    :goto_0
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    invoke-virtual {v0, p1}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->skipToNextPage(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    .line 209
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->populate(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Z

    .line 210
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    iget-wide v1, v0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->granulePosition:J

    iget-wide v3, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_19

    .line 217
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    return-void

    .line 213
    :cond_19
    iget v1, v0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->headerSize:I

    iget v0, v0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    .line 214
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->start:J

    .line 215
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->startGranule:J

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic blacklist createSeekMap()Landroid/media/internal/exo/extractor/SeekMap;
    .registers 1

    .line 33
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->createSeekMap()Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createSeekMap()Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    .registers 5

    .line 130
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    new-instance v0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    invoke-direct {v0, p0, v1}, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker$1;)V

    return-object v0

    :cond_f
    return-object v1
.end method

.method public blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eqz v0, :cond_30

    if-eq v0, v1, :cond_43

    const/4 v1, 0x2

    const-wide/16 v3, -0x1

    const/4 v5, 0x3

    if-eq v0, v1, :cond_19

    if-eq v0, v5, :cond_24

    if-ne v0, v2, :cond_13

    return-wide v3

    .line 123
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 111
    :cond_19
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->getNextSeekPosition(Landroid/media/internal/exo/extractor/ExtractorInput;)J

    move-result-wide v0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_22

    return-wide v0

    .line 115
    :cond_22
    iput v5, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->state:I

    .line 118
    :cond_24
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->skipToPageOfTargetGranule(Landroid/media/internal/exo/extractor/ExtractorInput;)V

    .line 119
    iput v2, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->state:I

    .line 120
    iget-wide p0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->startGranule:J

    const-wide/16 v0, 0x2

    add-long/2addr p0, v0

    neg-long p0, p0

    return-wide p0

    .line 98
    :cond_30
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    .line 99
    iput v1, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->state:I

    .line 101
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    const-wide/32 v5, 0xff1b

    sub-long/2addr v0, v5

    cmp-long v3, v0, v3

    if-lez v3, :cond_43

    return-wide v0

    .line 107
    :cond_43
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->readGranuleOfLastPage(Landroid/media/internal/exo/extractor/ExtractorInput;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    .line 108
    iput v2, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->state:I

    .line 109
    iget-wide p0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    return-wide p0
.end method

.method blacklist readGranuleOfLastPage(Landroid/media/internal/exo/extractor/ExtractorInput;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->reset()V

    .line 231
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    invoke-virtual {v0, p1}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->skipToNextPage(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 234
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->populate(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Z

    .line 235
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    iget v1, v0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->headerSize:I

    iget v0, v0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    .line 236
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 237
    :goto_21
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    iget v3, v2, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->type:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_55

    .line 238
    invoke-virtual {v2, p1}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->skipToNextPage(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 239
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_55

    .line 240
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->populate(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 241
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    iget v3, v2, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->headerSize:I

    iget v2, v2, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v3, v2

    invoke-static {p1, v3}, Landroid/media/internal/exo/extractor/ExtractorUtil;->skipFullyQuietly(Landroid/media/internal/exo/extractor/ExtractorInput;I)Z

    move-result v2

    if-nez v2, :cond_50

    goto :goto_55

    .line 246
    :cond_50
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->granulePosition:J

    goto :goto_21

    :cond_55
    :goto_55
    return-wide v0

    .line 232
    :cond_56
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public blacklist startSeek(J)V
    .registers 13

    .line 135
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    const-wide/16 v6, 0x0

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Landroid/media/internal/exo/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    const/4 p1, 0x2

    .line 136
    iput p1, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->state:I

    .line 137
    iget-wide p1, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->start:J

    .line 138
    iget-wide p1, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->end:J

    const-wide/16 p1, 0x0

    .line 139
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->startGranule:J

    .line 140
    iget-wide p1, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;->endGranule:J

    return-void
.end method
