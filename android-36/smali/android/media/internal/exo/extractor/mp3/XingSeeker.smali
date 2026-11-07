.class final Landroid/media/internal/exo/extractor/mp3/XingSeeker;
.super Ljava/lang/Object;
.source "XingSeeker.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/mp3/Seeker;


# instance fields
.field private final blacklist dataEndPosition:J

.field private final blacklist dataSize:J

.field private final blacklist dataStartPosition:J

.field private final blacklist durationUs:J

.field private final blacklist tableOfContents:[J

.field private final blacklist xingFrameSize:I


# direct methods
.method private constructor blacklist <init>(JIJ)V
    .registers 15

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    .line 98
    invoke-direct/range {v0 .. v8}, Landroid/media/internal/exo/extractor/mp3/XingSeeker;-><init>(JIJJ[J)V

    return-void
.end method

.method private constructor blacklist <init>(JIJJ[J)V
    .registers 9

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->dataStartPosition:J

    .line 113
    iput p3, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->xingFrameSize:I

    .line 114
    iput-wide p4, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->durationUs:J

    .line 115
    iput-object p8, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->tableOfContents:[J

    .line 116
    iput-wide p6, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->dataSize:J

    const-wide/16 p3, -0x1

    cmp-long p5, p6, p3

    if-nez p5, :cond_14

    goto :goto_16

    :cond_14
    add-long p3, p1, p6

    .line 117
    :goto_16
    iput-wide p3, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->dataEndPosition:J

    return-void
.end method

.method public static blacklist create(JJLandroid/media/internal/exo/audio/MpegAudioUtil$Header;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/extractor/mp3/XingSeeker;
    .registers 28

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    .line 51
    iget v3, v2, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->samplesPerFrame:I

    .line 52
    iget v4, v2, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->sampleRate:I

    .line 54
    invoke-virtual/range {p5 .. p5}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v5

    and-int/lit8 v6, v5, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_81

    .line 56
    invoke-virtual/range {p5 .. p5}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    if-nez v6, :cond_18

    goto :goto_81

    :cond_18
    int-to-long v7, v6

    int-to-long v9, v3

    const-wide/32 v11, 0xf4240

    mul-long/2addr v9, v11

    int-to-long v11, v4

    .line 61
    invoke-static/range {v7 .. v12}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v17

    const/4 v3, 0x6

    and-int/lit8 v4, v5, 0x6

    if-eq v4, v3, :cond_34

    .line 64
    new-instance v13, Landroid/media/internal/exo/extractor/mp3/XingSeeker;

    iget v0, v2, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->frameSize:I

    move-wide/from16 v14, p2

    move/from16 v16, v0

    invoke-direct/range {v13 .. v18}, Landroid/media/internal/exo/extractor/mp3/XingSeeker;-><init>(JIJ)V

    return-object v13

    .line 67
    :cond_34
    invoke-virtual/range {p5 .. p5}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v19

    const/16 v3, 0x64

    .line 68
    new-array v4, v3, [J

    const/4 v5, 0x0

    :goto_3d
    if-ge v5, v3, :cond_49

    .line 70
    invoke-virtual/range {p5 .. p5}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_49
    const-wide/16 v5, -0x1

    cmp-long v3, v0, v5

    if-eqz v3, :cond_73

    add-long v5, p2, v19

    cmp-long v3, v0, v5

    if-eqz v3, :cond_73

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XING data size mismatch: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XingSeeker"

    invoke-static {v1, v0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_73
    new-instance v13, Landroid/media/internal/exo/extractor/mp3/XingSeeker;

    iget v0, v2, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->frameSize:I

    move-wide/from16 v14, p2

    move/from16 v16, v0

    move-object/from16 v21, v4

    invoke-direct/range {v13 .. v21}, Landroid/media/internal/exo/extractor/mp3/XingSeeker;-><init>(JIJJ[J)V

    return-object v13

    :cond_81
    :goto_81
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getTimeUsForTableIndex(I)J
    .registers 4

    .line 191
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->durationUs:J

    int-to-long p0, p1

    mul-long/2addr v0, p0

    const-wide/16 p0, 0x64

    div-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public blacklist getDataEndPosition()J
    .registers 3

    .line 181
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public blacklist getDurationUs()J
    .registers 3

    .line 176
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->durationUs:J

    return-wide v0
.end method

.method public blacklist getSeekPoints(J)Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;
    .registers 15

    .line 127
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_19

    .line 128
    new-instance p1, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    new-instance p2, Landroid/media/internal/exo/extractor/SeekPoint;

    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->dataStartPosition:J

    iget p0, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-direct {p2, v2, v3, v0, v1}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p1, p2}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p1

    :cond_19
    const-wide/16 v6, 0x0

    .line 130
    iget-wide v8, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->durationUs:J

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Landroid/media/internal/exo/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    long-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    .line 131
    iget-wide v4, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->durationUs:J

    long-to-double v4, v4

    div-double/2addr v0, v4

    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    const-wide/high16 v7, 0x4070000000000000L    # 256.0

    if-gtz v6, :cond_33

    goto :goto_55

    :cond_33
    cmpl-double v2, v0, v2

    if-ltz v2, :cond_39

    move-wide v4, v7

    goto :goto_55

    :cond_39
    double-to-int v2, v0

    .line 139
    iget-object v3, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->tableOfContents:[J

    invoke-static {v3}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 140
    aget-wide v4, v3, v2

    long-to-double v4, v4

    const/16 v6, 0x63

    if-ne v2, v6, :cond_4b

    move-wide v9, v7

    goto :goto_50

    :cond_4b
    add-int/lit8 v6, v2, 0x1

    .line 141
    aget-wide v9, v3, v6

    long-to-double v9, v9

    :goto_50
    int-to-double v2, v2

    sub-double/2addr v0, v2

    sub-double/2addr v9, v4

    mul-double/2addr v0, v9

    add-double/2addr v4, v0

    :goto_55
    div-double/2addr v4, v7

    .line 147
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->dataSize:J

    long-to-double v0, v0

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .line 149
    iget v0, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v8, v0

    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->dataSize:J

    const-wide/16 v2, 0x1

    sub-long v10, v0, v2

    invoke-static/range {v6 .. v11}, Landroid/media/internal/exo/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 150
    new-instance v2, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    new-instance v3, Landroid/media/internal/exo/extractor/SeekPoint;

    iget-wide v4, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->dataStartPosition:J

    add-long/2addr v4, v0

    invoke-direct {v3, p1, p2, v4, v5}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v2, v3}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object v2
.end method

.method public blacklist getTimeUs(J)J
    .registers 14

    .line 155
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->dataStartPosition:J

    sub-long/2addr p1, v0

    .line 156
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v0

    if-eqz v0, :cond_52

    iget v0, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_11

    goto :goto_52

    .line 159
    :cond_11
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->tableOfContents:[J

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    long-to-double p1, p1

    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    mul-double/2addr p1, v1

    .line 160
    iget-wide v1, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->dataSize:J

    long-to-double v1, v1

    div-double/2addr p1, v1

    double-to-long v1, p1

    const/4 v3, 0x1

    .line 161
    invoke-static {v0, v1, v2, v3, v3}, Landroid/media/internal/exo/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    .line 162
    invoke-direct {p0, v1}, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->getTimeUsForTableIndex(I)J

    move-result-wide v2

    .line 163
    aget-wide v4, v0, v1

    add-int/lit8 v6, v1, 0x1

    .line 164
    invoke-direct {p0, v6}, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->getTimeUsForTableIndex(I)J

    move-result-wide v7

    const/16 p0, 0x63

    if-ne v1, p0, :cond_3a

    const-wide/16 v0, 0x100

    goto :goto_3c

    .line 165
    :cond_3a
    aget-wide v0, v0, v6

    :goto_3c
    cmp-long p0, v4, v0

    if-nez p0, :cond_43

    const-wide/16 p0, 0x0

    goto :goto_49

    :cond_43
    long-to-double v9, v4

    sub-double/2addr p1, v9

    sub-long/2addr v0, v4

    long-to-double v0, v0

    div-double p0, p1, v0

    :goto_49
    sub-long/2addr v7, v2

    long-to-double v0, v7

    mul-double/2addr p0, v0

    .line 171
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    add-long/2addr v2, p0

    return-wide v2

    :cond_52
    :goto_52
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public blacklist isSeekable()Z
    .registers 1

    .line 122
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->tableOfContents:[J

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
