.class final Landroid/media/internal/exo/extractor/ts/TsDurationReader;
.super Ljava/lang/Object;
.source "TsDurationReader.java"


# instance fields
.field private blacklist durationUs:J

.field private blacklist firstPcrValue:J

.field private blacklist isDurationRead:Z

.field private blacklist isFirstPcrValueRead:Z

.field private blacklist isLastPcrValueRead:Z

.field private blacklist lastPcrValue:J

.field private final blacklist packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist pcrTimestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

.field private final blacklist timestampSearchBytes:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    .line 58
    new-instance p1, Landroid/media/internal/exo/util/TimestampAdjuster;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Landroid/media/internal/exo/util/TimestampAdjuster;-><init>(J)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 59
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->firstPcrValue:J

    .line 60
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->lastPcrValue:J

    .line 61
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->durationUs:J

    .line 62
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    return-void
.end method

.method private blacklist finishReadDuration(Landroid/media/internal/exo/extractor/ExtractorInput;)I
    .registers 4

    .line 127
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    sget-object v1, Landroid/media/internal/exo/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->reset([B)V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->isDurationRead:Z

    .line 129
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist readFirstPcrValue(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    int-to-long v0, v0

    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 137
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const/4 v3, 0x0

    int-to-long v4, v3

    cmp-long v1, v1, v4

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    .line 138
    iput-wide v4, p2, Landroid/media/internal/exo/extractor/PositionHolder;->position:J

    return v2

    .line 142
    :cond_1a
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 143
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 144
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-interface {p1, p2, v3, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 146
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p0, p1, p3}, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->readFirstPcrValueFromBuffer(Landroid/media/internal/exo/util/ParsableByteArray;I)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->firstPcrValue:J

    .line 147
    iput-boolean v2, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    return v3
.end method

.method private blacklist readFirstPcrValueFromBuffer(Landroid/media/internal/exo/util/ParsableByteArray;I)J
    .registers 8

    .line 152
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result p0

    .line 153
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v0

    :goto_8
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-ge p0, v0, :cond_26

    .line 157
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v3

    aget-byte v3, v3, p0

    const/16 v4, 0x47

    if-eq v3, v4, :cond_1a

    goto :goto_23

    .line 160
    :cond_1a
    invoke-static {p1, p0, p2}, Landroid/media/internal/exo/extractor/ts/TsUtil;->readPcrFromPacket(Landroid/media/internal/exo/util/ParsableByteArray;II)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-eqz v1, :cond_23

    return-wide v3

    :cond_23
    :goto_23
    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_26
    return-wide v1
.end method

.method private blacklist readLastPcrValue(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;I)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    .line 171
    iget v2, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    sub-long/2addr v0, v3

    .line 173
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    cmp-long v3, v3, v0

    const/4 v4, 0x1

    if-eqz v3, :cond_1a

    .line 174
    iput-wide v0, p2, Landroid/media/internal/exo/extractor/PositionHolder;->position:J

    return v4

    .line 178
    :cond_1a
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 179
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 180
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 182
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p0, p1, p3}, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->readLastPcrValueFromBuffer(Landroid/media/internal/exo/util/ParsableByteArray;I)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->lastPcrValue:J

    .line 183
    iput-boolean v4, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    return v0
.end method

.method private blacklist readLastPcrValueFromBuffer(Landroid/media/internal/exo/util/ParsableByteArray;I)J
    .registers 9

    .line 188
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result p0

    .line 189
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit16 v1, v0, -0xbc

    :goto_a
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v1, p0, :cond_28

    .line 196
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 195
    invoke-static {v4, p0, v0, v1}, Landroid/media/internal/exo/extractor/ts/TsUtil;->isStartOfTsPacket([BIII)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_25

    .line 199
    :cond_1c
    invoke-static {p1, v1, p2}, Landroid/media/internal/exo/extractor/ts/TsUtil;->readPcrFromPacket(Landroid/media/internal/exo/util/ParsableByteArray;II)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_25

    return-wide v4

    :cond_25
    :goto_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_28
    return-wide v2
.end method


# virtual methods
.method public blacklist getDurationUs()J
    .registers 3

    .line 115
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->durationUs:J

    return-wide v0
.end method

.method public blacklist getPcrTimestampAdjuster()Landroid/media/internal/exo/util/TimestampAdjuster;
    .registers 1

    .line 123
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    return-object p0
.end method

.method public blacklist isDurationReadFinished()Z
    .registers 1

    .line 67
    iget-boolean p0, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->isDurationRead:Z

    return p0
.end method

.method public blacklist readDuration(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p3, :cond_7

    .line 86
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->finishReadDuration(Landroid/media/internal/exo/extractor/ExtractorInput;)I

    move-result p0

    return p0

    .line 88
    :cond_7
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    if-nez v0, :cond_10

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->readLastPcrValue(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;I)I

    move-result p0

    return p0

    .line 91
    :cond_10
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->lastPcrValue:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    .line 92
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->finishReadDuration(Landroid/media/internal/exo/extractor/ExtractorInput;)I

    move-result p0

    return p0

    .line 94
    :cond_20
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    if-nez v0, :cond_29

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->readFirstPcrValue(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;I)I

    move-result p0

    return p0

    .line 97
    :cond_29
    iget-wide p2, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->firstPcrValue:J

    cmp-long v0, p2, v2

    if-nez v0, :cond_34

    .line 98
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->finishReadDuration(Landroid/media/internal/exo/extractor/ExtractorInput;)I

    move-result p0

    return p0

    .line 101
    :cond_34
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    invoke-virtual {v0, p2, p3}, Landroid/media/internal/exo/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide p2

    .line 102
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    iget-wide v4, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->lastPcrValue:J

    invoke-virtual {v0, v4, v5}, Landroid/media/internal/exo/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 103
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->durationUs:J

    const-wide/16 p2, 0x0

    cmp-long p2, v0, p2

    if-gez p2, :cond_6a

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid duration: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->durationUs:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ". Using TIME_UNSET instead."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TsDurationReader"

    invoke-static {p3, p2}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iput-wide v2, p0, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->durationUs:J

    .line 108
    :cond_6a
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->finishReadDuration(Landroid/media/internal/exo/extractor/ExtractorInput;)I

    move-result p0

    return p0
.end method
