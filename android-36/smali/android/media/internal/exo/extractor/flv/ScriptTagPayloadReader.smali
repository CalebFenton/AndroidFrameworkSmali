.class final Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;
.super Landroid/media/internal/exo/extractor/flv/TagPayloadReader;
.source "ScriptTagPayloadReader.java"


# instance fields
.field private blacklist durationUs:J

.field private blacklist keyFrameTagPositions:[J

.field private blacklist keyFrameTimesUs:[J


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 52
    new-instance v0, Landroid/media/internal/exo/extractor/DummyTrackOutput;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/DummyTrackOutput;-><init>()V

    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;-><init>(Landroid/media/internal/exo/extractor/TrackOutput;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 53
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    const/4 v0, 0x0

    .line 54
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    .line 55
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    return-void
.end method

.method private static blacklist readAmfBoolean(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/lang/Boolean;
    .registers 2

    .line 150
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist readAmfData(Landroid/media/internal/exo/util/ParsableByteArray;I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_37

    const/4 v0, 0x1

    if-eq p1, v0, :cond_32

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_28

    const/16 v0, 0x8

    if-eq p1, v0, :cond_23

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1e

    const/16 v0, 0xb

    if-eq p1, v0, :cond_19

    const/4 p0, 0x0

    return-object p0

    .line 265
    :cond_19
    invoke-static {p0}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfDate(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 263
    :cond_1e
    invoke-static {p0}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfStrictArray(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 261
    :cond_23
    invoke-static {p0}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 259
    :cond_28
    invoke-static {p0}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfObject(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 257
    :cond_2d
    invoke-static {p0}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfString(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 255
    :cond_32
    invoke-static {p0}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfBoolean(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 253
    :cond_37
    invoke-static {p0}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfDouble(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist readAmfDate(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/util/Date;
    .registers 4

    .line 244
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfDouble(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const/4 v1, 0x2

    .line 245
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    return-object v0
.end method

.method private static blacklist readAmfDouble(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/lang/Double;
    .registers 3

    .line 160
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist readAmfEcmaArray(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/util/ParsableByteArray;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_20

    .line 227
    invoke-static {p0}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfString(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-static {p0}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfType(Landroid/media/internal/exo/util/ParsableByteArray;)I

    move-result v4

    .line 229
    invoke-static {p0, v4}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfData(Landroid/media/internal/exo/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 231
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_20
    return-object v1
.end method

.method private static blacklist readAmfObject(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/util/ParsableByteArray;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    :cond_5
    :goto_5
    invoke-static {p0}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfString(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {p0}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfType(Landroid/media/internal/exo/util/ParsableByteArray;)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_12

    return-object v0

    .line 209
    :cond_12
    invoke-static {p0, v2}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfData(Landroid/media/internal/exo/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 211
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method private static blacklist readAmfStrictArray(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1c

    .line 186
    invoke-static {p0}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfType(Landroid/media/internal/exo/util/ParsableByteArray;)I

    move-result v3

    .line 187
    invoke-static {p0, v3}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfData(Landroid/media/internal/exo/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 189
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1c
    return-object v1
.end method

.method private static blacklist readAmfString(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/lang/String;
    .registers 4

    .line 170
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 171
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 172
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 173
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p0

    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method private static blacklist readAmfType(Landroid/media/internal/exo/util/ParsableByteArray;)I
    .registers 1

    .line 140
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist getDurationUs()J
    .registers 3

    .line 59
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    return-wide v0
.end method

.method public blacklist getKeyFrameTagPositions()[J
    .registers 1

    .line 67
    iget-object p0, p0, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    return-object p0
.end method

.method public blacklist getKeyFrameTimesUs()[J
    .registers 1

    .line 63
    iget-object p0, p0, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    return-object p0
.end method

.method protected blacklist parseHeader(Landroid/media/internal/exo/util/ParsableByteArray;)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist parsePayload(Landroid/media/internal/exo/util/ParsableByteArray;J)Z
    .registers 13

    .line 82
    invoke-static {p1}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfType(Landroid/media/internal/exo/util/ParsableByteArray;)I

    move-result p2

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-eq p2, p3, :cond_9

    return v0

    .line 87
    :cond_9
    invoke-static {p1}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfString(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object p2

    .line 88
    const-string p3, "onMetaData"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    return v0

    .line 92
    :cond_16
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    if-nez p2, :cond_1d

    return v0

    .line 96
    :cond_1d
    invoke-static {p1}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfType(Landroid/media/internal/exo/util/ParsableByteArray;)I

    move-result p2

    const/16 p3, 0x8

    if-eq p2, p3, :cond_26

    return v0

    .line 101
    :cond_26
    invoke-static {p1}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Landroid/media/internal/exo/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object p1

    .line 103
    const-string p2, "duration"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 104
    instance-of p3, p2, Ljava/lang/Double;

    const-wide v1, 0x412e848000000000L    # 1000000.0

    if-eqz p3, :cond_49

    .line 105
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    const-wide/16 v3, 0x0

    cmpl-double v3, p2, v3

    if-lez v3, :cond_49

    mul-double/2addr p2, v1

    double-to-long p2, p2

    .line 107
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    .line 111
    :cond_49
    const-string p2, "keyframes"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 112
    instance-of p2, p1, Ljava/util/Map;

    if-eqz p2, :cond_ad

    .line 113
    check-cast p1, Ljava/util/Map;

    .line 114
    const-string p2, "filepositions"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 115
    const-string p3, "times"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 116
    instance-of p3, p2, Ljava/util/List;

    if-eqz p3, :cond_ad

    instance-of p3, p1, Ljava/util/List;

    if-eqz p3, :cond_ad

    .line 117
    check-cast p2, Ljava/util/List;

    .line 118
    check-cast p1, Ljava/util/List;

    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    .line 120
    new-array v3, p3, [J

    iput-object v3, p0, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    .line 121
    new-array v3, p3, [J

    iput-object v3, p0, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    move v3, v0

    :goto_7a
    if-ge v3, p3, :cond_ad

    .line 123
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 124
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 125
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_a5

    instance-of v6, v4, Ljava/lang/Double;

    if-eqz v6, :cond_a5

    .line 126
    iget-object v6, p0, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    mul-double/2addr v7, v1

    double-to-long v7, v7

    aput-wide v7, v6, v3

    .line 127
    iget-object v5, p0, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    aput-wide v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7a

    .line 129
    :cond_a5
    new-array p1, v0, [J

    iput-object p1, p0, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    .line 130
    new-array p1, v0, [J

    iput-object p1, p0, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    :cond_ad
    return v0
.end method
