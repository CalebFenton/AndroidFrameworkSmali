.class public final Landroid/media/internal/exo/extractor/ts/SectionReader;
.super Ljava/lang/Object;
.source "SectionReader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ts/TsPayloadReader;


# instance fields
.field private blacklist bytesRead:I

.field private final blacklist reader:Landroid/media/internal/exo/extractor/ts/SectionPayloadReader;

.field private final blacklist sectionData:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist sectionSyntaxIndicator:Z

.field private blacklist totalSectionLength:I

.field private blacklist waitingForPayloadStart:Z


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/ts/SectionPayloadReader;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->reader:Landroid/media/internal/exo/extractor/ts/SectionPayloadReader;

    .line 47
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionData:Landroid/media/internal/exo/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;I)V
    .registers 9

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    move p2, v0

    goto :goto_8

    :cond_7
    move p2, v1

    :goto_8
    const/4 v2, -0x1

    if-eqz p2, :cond_15

    .line 69
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 70
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_16

    :cond_15
    move v4, v2

    .line 73
    :goto_16
    iget-boolean v3, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    if-eqz v3, :cond_25

    if-nez p2, :cond_1e

    goto/16 :goto_107

    .line 77
    :cond_1e
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 78
    invoke-virtual {p1, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 79
    iput v1, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->bytesRead:I

    .line 82
    :cond_25
    :goto_25
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    if-lez p2, :cond_107

    .line 83
    iget p2, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->bytesRead:I

    const/4 v3, 0x3

    if-ge p2, v3, :cond_b2

    if-nez p2, :cond_45

    .line 87
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    .line 88
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p1, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    const/16 v4, 0xff

    if-ne p2, v4, :cond_45

    .line 91
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    return-void

    .line 95
    :cond_45
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    iget v4, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->bytesRead:I

    rsub-int/lit8 v4, v4, 0x3

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 98
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v4}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v4

    iget v5, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->bytesRead:I

    invoke-virtual {p1, v4, v5, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 99
    iget v4, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->bytesRead:I

    add-int/2addr v4, p2

    iput v4, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->bytesRead:I

    if-ne v4, v3, :cond_25

    .line 101
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 102
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    .line 103
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 104
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    .line 105
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v4}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    and-int/lit16 v5, p2, 0x80

    if-eqz v5, :cond_84

    move v5, v0

    goto :goto_85

    :cond_84
    move v5, v1

    .line 106
    :goto_85
    iput-boolean v5, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionSyntaxIndicator:Z

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v4

    add-int/2addr p2, v3

    .line 107
    iput p2, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->totalSectionLength:I

    .line 109
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->capacity()I

    move-result p2

    iget v3, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->totalSectionLength:I

    if-ge p2, v3, :cond_25

    .line 111
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionData:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 112
    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->capacity()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v3, 0x1002

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 113
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->ensureCapacity(I)V

    goto/16 :goto_25

    .line 118
    :cond_b2
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    iget v3, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->totalSectionLength:I

    iget v4, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->bytesRead:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 120
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v3

    iget v4, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->bytesRead:I

    invoke-virtual {p1, v3, v4, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 121
    iget v3, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->bytesRead:I

    add-int/2addr v3, p2

    iput v3, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->bytesRead:I

    .line 122
    iget p2, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->totalSectionLength:I

    if-ne v3, p2, :cond_25

    .line 123
    iget-boolean v3, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionSyntaxIndicator:Z

    if-eqz v3, :cond_f2

    .line 125
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p2

    iget v3, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->totalSectionLength:I

    invoke-static {p2, v1, v3, v2}, Landroid/media/internal/exo/util/Util;->crc32([BIII)I

    move-result p2

    if-eqz p2, :cond_e8

    .line 127
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    return-void

    .line 130
    :cond_e8
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionData:Landroid/media/internal/exo/util/ParsableByteArray;

    iget v3, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->totalSectionLength:I

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p2, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    goto :goto_f7

    .line 133
    :cond_f2
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    .line 135
    :goto_f7
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 136
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->reader:Landroid/media/internal/exo/extractor/ts/SectionPayloadReader;

    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->sectionData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {p2, v3}, Landroid/media/internal/exo/extractor/ts/SectionPayloadReader;->consume(Landroid/media/internal/exo/util/ParsableByteArray;)V

    .line 137
    iput v1, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->bytesRead:I

    goto/16 :goto_25

    :cond_107
    :goto_107
    return-void
.end method

.method public blacklist init(Landroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5

    .line 55
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->reader:Landroid/media/internal/exo/extractor/ts/SectionPayloadReader;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/internal/exo/extractor/ts/SectionPayloadReader;->init(Landroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    return-void
.end method

.method public blacklist seek()V
    .registers 2

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    return-void
.end method
