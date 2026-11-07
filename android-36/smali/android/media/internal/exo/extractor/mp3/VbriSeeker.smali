.class final Landroid/media/internal/exo/extractor/mp3/VbriSeeker;
.super Ljava/lang/Object;
.source "VbriSeeker.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/mp3/Seeker;


# instance fields
.field private final blacklist dataEndPosition:J

.field private final blacklist durationUs:J

.field private final blacklist positions:[J

.field private final blacklist timesUs:[J


# direct methods
.method private constructor blacklist <init>([J[JJJ)V
    .registers 7

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 107
    iput-object p2, p0, Landroid/media/internal/exo/extractor/mp3/VbriSeeker;->positions:[J

    .line 108
    iput-wide p3, p0, Landroid/media/internal/exo/extractor/mp3/VbriSeeker;->durationUs:J

    .line 109
    iput-wide p5, p0, Landroid/media/internal/exo/extractor/mp3/VbriSeeker;->dataEndPosition:J

    return-void
.end method

.method public static blacklist create(JJLandroid/media/internal/exo/audio/MpegAudioUtil$Header;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/extractor/mp3/VbriSeeker;
    .registers 26

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/16 v4, 0xa

    .line 52
    invoke-virtual {v3, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 53
    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v4

    const/4 v5, 0x0

    if-gtz v4, :cond_13

    return-object v5

    .line 57
    :cond_13
    iget v6, v2, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v7, v4

    const/16 v4, 0x7d00

    if-lt v6, v4, :cond_1d

    const/16 v4, 0x480

    goto :goto_1f

    :cond_1d
    const/16 v4, 0x240

    :goto_1f
    int-to-long v9, v4

    const-wide/32 v11, 0xf4240

    mul-long/2addr v9, v11

    int-to-long v11, v6

    .line 59
    invoke-static/range {v7 .. v12}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v16

    .line 61
    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 62
    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 63
    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    const/4 v8, 0x2

    .line 64
    invoke-virtual {v3, v8}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 66
    iget v2, v2, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->frameSize:I

    int-to-long v9, v2

    add-long v9, p2, v9

    .line 68
    new-array v14, v4, [J

    .line 69
    new-array v15, v4, [J

    const/4 v2, 0x0

    move-wide/from16 v11, p2

    :goto_45
    if-ge v2, v4, :cond_87

    move-object v13, v5

    move/from16 v18, v6

    int-to-long v5, v2

    mul-long v5, v5, v16

    move-object/from16 p2, v13

    move-object/from16 v19, v14

    int-to-long v13, v4

    .line 71
    div-long/2addr v5, v13

    aput-wide v5, v19, v2

    .line 74
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    aput-wide v5, v15, v2

    const/4 v5, 0x1

    if-eq v7, v5, :cond_76

    if-eq v7, v8, :cond_71

    const/4 v5, 0x3

    if-eq v7, v5, :cond_6c

    const/4 v5, 0x4

    if-eq v7, v5, :cond_67

    return-object p2

    .line 87
    :cond_67
    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    goto :goto_7a

    .line 84
    :cond_6c
    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v5

    goto :goto_7a

    .line 81
    :cond_71
    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    goto :goto_7a

    .line 78
    :cond_76
    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    :goto_7a
    mul-int v5, v5, v18

    int-to-long v5, v5

    add-long/2addr v11, v5

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, p2

    move/from16 v6, v18

    move-object/from16 v14, v19

    goto :goto_45

    :cond_87
    move-object/from16 v19, v14

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b1

    cmp-long v2, v0, v11

    if-eqz v2, :cond_b1

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VBRI data size mismatch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VbriSeeker"

    invoke-static {v1, v0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_b1
    new-instance v13, Landroid/media/internal/exo/extractor/mp3/VbriSeeker;

    move-object/from16 v14, v19

    move-wide/from16 v18, v11

    invoke-direct/range {v13 .. v19}, Landroid/media/internal/exo/extractor/mp3/VbriSeeker;-><init>([J[JJJ)V

    return-object v13
.end method


# virtual methods
.method public blacklist getDataEndPosition()J
    .registers 3

    .line 141
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/VbriSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public blacklist getDurationUs()J
    .registers 3

    .line 136
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/VbriSeeker;->durationUs:J

    return-wide v0
.end method

.method public blacklist getSeekPoints(J)Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;
    .registers 10

    .line 119
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/VbriSeeker;->timesUs:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Landroid/media/internal/exo/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 120
    new-instance v2, Landroid/media/internal/exo/extractor/SeekPoint;

    iget-object v3, p0, Landroid/media/internal/exo/extractor/mp3/VbriSeeker;->timesUs:[J

    aget-wide v3, v3, v0

    iget-object v5, p0, Landroid/media/internal/exo/extractor/mp3/VbriSeeker;->positions:[J

    aget-wide v5, v5, v0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    .line 121
    iget-wide v3, v2, Landroid/media/internal/exo/extractor/SeekPoint;->timeUs:J

    cmp-long p1, v3, p1

    if-gez p1, :cond_35

    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp3/VbriSeeker;->timesUs:[J

    array-length p1, p1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_21

    goto :goto_35

    .line 124
    :cond_21
    new-instance p1, Landroid/media/internal/exo/extractor/SeekPoint;

    iget-object p2, p0, Landroid/media/internal/exo/extractor/mp3/VbriSeeker;->timesUs:[J

    add-int/2addr v0, v1

    aget-wide v3, p2, v0

    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp3/VbriSeeker;->positions:[J

    aget-wide v0, p0, v0

    invoke-direct {p1, v3, v4, v0, v1}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    .line 125
    new-instance p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v2, p1}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p0

    .line 122
    :cond_35
    :goto_35
    new-instance p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v2}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p0
.end method

.method public blacklist getTimeUs(J)J
    .registers 5

    .line 131
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/VbriSeeker;->timesUs:[J

    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp3/VbriSeeker;->positions:[J

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v1}, Landroid/media/internal/exo/util/Util;->binarySearchFloor([JJZZ)I

    move-result p0

    aget-wide p0, v0, p0

    return-wide p0
.end method

.method public blacklist isSeekable()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method
