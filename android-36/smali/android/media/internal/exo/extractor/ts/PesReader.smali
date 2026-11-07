.class public final Landroid/media/internal/exo/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ts/TsPayloadReader;


# instance fields
.field private blacklist bytesRead:I

.field private blacklist dataAlignmentIndicator:Z

.field private blacklist dtsFlag:Z

.field private blacklist extendedHeaderLength:I

.field private blacklist payloadSize:I

.field private final blacklist pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

.field private blacklist ptsFlag:Z

.field private final blacklist reader:Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;

.field private blacklist seenFirstDts:Z

.field private blacklist state:I

.field private blacklist timeUs:J

.field private blacklist timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->reader:Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;

    .line 63
    new-instance p1, Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroid/media/internal/exo/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->state:I

    return-void
.end method

.method private blacklist continueRead(Landroid/media/internal/exo/util/ParsableByteArray;[BI)Z
    .registers 7

    .line 175
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_10

    return v1

    :cond_10
    if-nez p2, :cond_16

    .line 179
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1b

    .line 181
    :cond_16
    iget v2, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->bytesRead:I

    invoke-virtual {p1, p2, v2, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 183
    :goto_1b
    iget p1, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->bytesRead:I

    if-ne p1, p3, :cond_23

    return v1

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist parseHeader()Z
    .registers 8

    .line 190
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->setPosition(I)V

    .line 191
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 192
    const-string v2, "PesReader"

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2b

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected start code prefix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iput v3, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->payloadSize:I

    return v1

    .line 198
    :cond_2b
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 199
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 200
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 201
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    .line 202
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 203
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->ptsFlag:Z

    .line 204
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->dtsFlag:Z

    .line 207
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 208
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->extendedHeaderLength:I

    if-nez v0, :cond_71

    .line 211
    iput v3, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->payloadSize:I

    goto :goto_90

    :cond_71
    add-int/lit8 v0, v0, -0x3

    sub-int/2addr v0, v1

    .line 213
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->payloadSize:I

    if-gez v0, :cond_90

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found negative packet payload size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->payloadSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iput v3, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->payloadSize:I

    :cond_90
    :goto_90
    return v4
.end method

.method private blacklist parseHeaderExtension()V
    .registers 11

    .line 228
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->setPosition(I)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 229
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->timeUs:J

    .line 230
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->ptsFlag:Z

    if-eqz v0, :cond_8a

    .line 231
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 232
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 233
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 234
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 235
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 236
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v5, v7}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 237
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 238
    iget-boolean v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->seenFirstDts:Z

    if-nez v5, :cond_82

    iget-boolean v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->dtsFlag:Z

    if-eqz v5, :cond_82

    .line 239
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 240
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 241
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 242
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 243
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 244
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 245
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 251
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Landroid/media/internal/exo/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 252
    iput-boolean v6, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->seenFirstDts:Z

    .line 254
    :cond_82
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    invoke-virtual {v0, v3, v4}, Landroid/media/internal/exo/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->timeUs:J

    :cond_8a
    return-void
.end method

.method private blacklist setState(I)V
    .registers 2

    .line 160
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->state:I

    const/4 p1, 0x0

    .line 161
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->bytesRead:I

    return-void
.end method


# virtual methods
.method public final blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, p2, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_4c

    .line 91
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->state:I

    if-eqz v0, :cond_49

    if-eq v0, v4, :cond_49

    const-string v5, "PesReader"

    if-eq v0, v3, :cond_44

    if-ne v0, v2, :cond_3e

    .line 104
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->payloadSize:I

    if-eq v0, v1, :cond_38

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected start indicator: expected "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->payloadSize:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " more bytes"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_38
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->reader:Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;->packetFinished()V

    goto :goto_49

    .line 111
    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 97
    :cond_44
    const-string v0, "Unexpected start indicator reading extended header"

    invoke-static {v5, v0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_49
    :goto_49
    invoke-direct {p0, v4}, Landroid/media/internal/exo/extractor/ts/PesReader;->setState(I)V

    .line 116
    :cond_4c
    :goto_4c
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_e0

    .line 117
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->state:I

    if-eqz v0, :cond_d7

    const/4 v5, 0x0

    if-eq v0, v4, :cond_bf

    if-eq v0, v3, :cond_90

    if-ne v0, v2, :cond_8a

    .line 138
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 139
    iget v6, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->payloadSize:I

    if-ne v6, v1, :cond_66

    goto :goto_68

    :cond_66
    sub-int v5, v0, v6

    :goto_68
    if-lez v5, :cond_73

    sub-int/2addr v0, v5

    .line 142
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    .line 144
    :cond_73
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->reader:Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;

    invoke-interface {v5, p1}, Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;->consume(Landroid/media/internal/exo/util/ParsableByteArray;)V

    .line 145
    iget v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->payloadSize:I

    if-eq v5, v1, :cond_4c

    sub-int/2addr v5, v0

    .line 146
    iput v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->payloadSize:I

    if-nez v5, :cond_4c

    .line 148
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->reader:Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 149
    invoke-direct {p0, v4}, Landroid/media/internal/exo/extractor/ts/PesReader;->setState(I)V

    goto :goto_4c

    .line 154
    :cond_8a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_90
    const/16 v0, 0xa

    .line 127
    iget v6, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 129
    iget-object v6, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    iget-object v6, v6, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v6, v0}, Landroid/media/internal/exo/extractor/ts/PesReader;->continueRead(Landroid/media/internal/exo/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    iget v6, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 130
    invoke-direct {p0, p1, v0, v6}, Landroid/media/internal/exo/extractor/ts/PesReader;->continueRead(Landroid/media/internal/exo/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 131
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/PesReader;->parseHeaderExtension()V

    .line 132
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    if-eqz v0, :cond_b3

    const/4 v5, 0x4

    :cond_b3
    or-int/2addr p2, v5

    .line 133
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->reader:Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;

    iget-wide v5, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->timeUs:J

    invoke-interface {v0, v5, v6, p2}, Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;->packetStarted(JI)V

    .line 134
    invoke-direct {p0, v2}, Landroid/media/internal/exo/extractor/ts/PesReader;->setState(I)V

    goto :goto_4c

    .line 122
    :cond_bf
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->pesScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    iget-object v0, v0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    const/16 v6, 0x9

    invoke-direct {p0, p1, v0, v6}, Landroid/media/internal/exo/extractor/ts/PesReader;->continueRead(Landroid/media/internal/exo/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 123
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/PesReader;->parseHeader()Z

    move-result v0

    if-eqz v0, :cond_d2

    move v5, v3

    :cond_d2
    invoke-direct {p0, v5}, Landroid/media/internal/exo/extractor/ts/PesReader;->setState(I)V

    goto/16 :goto_4c

    .line 119
    :cond_d7
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_4c

    :cond_e0
    return-void
.end method

.method public blacklist init(Landroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4

    .line 72
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    .line 73
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->reader:Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;

    invoke-interface {p0, p2, p3}, Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;->createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final blacklist seek()V
    .registers 2

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->state:I

    .line 81
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->bytesRead:I

    .line 82
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->seenFirstDts:Z

    .line 83
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/PesReader;->reader:Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;

    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;->seek()V

    return-void
.end method
