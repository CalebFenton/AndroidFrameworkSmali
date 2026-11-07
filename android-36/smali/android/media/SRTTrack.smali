.class Landroid/media/SRTTrack;
.super Landroid/media/WebVttTrack;
.source "SRTRenderer.java"


# static fields
.field private static final blacklist KEY_LOCAL_SETTING:I = 0x66

.field private static final blacklist KEY_START_TIME:I = 0x7

.field private static final blacklist KEY_STRUCT_TEXT:I = 0x10

.field private static final blacklist MEDIA_TIMED_TEXT:I = 0x63

.field private static final blacklist TAG:Ljava/lang/String; = "SRTTrack"


# instance fields
.field private final blacklist mEventHandler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .registers 4
    .param p1, "renderingWidget"    # Landroid/media/WebVttRenderingWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V
    .registers 4
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 80
    iput-object p1, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method private static blacklist parseMs(Ljava/lang/String;)J
    .registers 18
    .param p0, "in"    # Ljava/lang/String;

    .line 195
    move-object/from16 v0, p0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 196
    .local v4, "hours":J
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 197
    .local v7, "minutes":J
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x2

    aget-object v2, v2, v9

    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 198
    .local v2, "seconds":J
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 200
    .local v9, "millies":J
    const-wide/16 v11, 0x3c

    mul-long v13, v4, v11

    mul-long/2addr v13, v11

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    mul-long/2addr v11, v7

    mul-long/2addr v11, v15

    add-long/2addr v13, v11

    mul-long/2addr v15, v2

    add-long/2addr v13, v15

    add-long/2addr v13, v9

    return-wide v13
.end method


# virtual methods
.method protected blacklist onData(Landroid/media/SubtitleData;)V
    .registers 14
    .param p1, "data"    # Landroid/media/SubtitleData;

    .line 86
    :try_start_0
    new-instance v0, Landroid/media/TextTrackCue;

    invoke-direct {v0}, Landroid/media/TextTrackCue;-><init>()V

    .line 87
    .local v0, "cue":Landroid/media/TextTrackCue;
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 88
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v5

    add-long/2addr v1, v5

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 91
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 92
    .local v1, "paragraph":Ljava/lang/String;
    const-string v2, "\\r?\\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "lines":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [[Landroid/media/TextTrackCueSpan;

    iput-object v3, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 95
    const/4 v3, 0x0

    .line 96
    .local v3, "i":I
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_34
    if-ge v6, v4, :cond_4e

    aget-object v7, v2, v6

    .line 97
    .local v7, "line":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/media/TextTrackCueSpan;

    new-instance v9, Landroid/media/TextTrackCueSpan;

    const-wide/16 v10, -0x1

    invoke-direct {v9, v7, v10, v11}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v9, v8, v5

    .line 100
    .local v8, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v9, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    add-int/lit8 v10, v3, 0x1

    .end local v3    # "i":I
    .local v10, "i":I
    aput-object v8, v9, v3

    .line 96
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "span":[Landroid/media/TextTrackCueSpan;
    add-int/lit8 v6, v6, 0x1

    move v3, v10

    goto :goto_34

    .line 103
    .end local v10    # "i":I
    .restart local v3    # "i":I
    :cond_4e
    invoke-virtual {p0, v0}, Landroid/media/SRTTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_51
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_51} :catch_53

    .line 106
    nop

    .end local v0    # "cue":Landroid/media/TextTrackCue;
    .end local v1    # "paragraph":Ljava/lang/String;
    .end local v2    # "lines":[Ljava/lang/String;
    .end local v3    # "i":I
    goto :goto_6c

    .line 104
    :catch_53
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SRTTrack"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_6c
    return-void
.end method

.method public blacklist onData([BZJ)V
    .registers 23
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .line 113
    const-string v1, "SRTTrack"

    :try_start_2
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 114
    .local v0, "r":Ljava/io/Reader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 117
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "header":Ljava/lang/String;
    if-eqz v4, :cond_c3

    .line 119
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 120
    .end local v5    # "header":Ljava/lang/String;
    .local v4, "header":Ljava/lang/String;
    if-nez v4, :cond_28

    .line 121
    move-object/from16 v2, p0

    move-wide/from16 v9, p3

    goto/16 :goto_f2

    .line 124
    :cond_28
    new-instance v5, Landroid/media/TextTrackCue;

    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    .line 125
    .local v5, "cue":Landroid/media/TextTrackCue;
    const-string v6, "-->"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "startEnd":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v8, v6, v7

    invoke-static {v8}, Landroid/media/SRTTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 127
    const/4 v8, 0x1

    aget-object v9, v6, v8

    invoke-static {v9}, Landroid/media/SRTTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J
    :try_end_45
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_45} :catch_d7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_45} :catch_ca

    .line 128
    move-wide/from16 v9, p3

    :try_start_47
    iput-wide v9, v5, Landroid/media/TextTrackCue;->mRunID:J

    .line 131
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v11, "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    .local v13, "s":Ljava/lang/String;
    if-eqz v12, :cond_65

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_65

    .line 133
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 136
    :cond_65
    const/4 v12, 0x0

    .line 137
    .local v12, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [[Landroid/media/TextTrackCueSpan;

    iput-object v14, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 138
    new-array v14, v7, [Ljava/lang/String;

    invoke-interface {v11, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    iput-object v14, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 139
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_aa

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 140
    .local v15, "line":Ljava/lang/String;
    move/from16 v16, v7

    new-array v7, v8, [Landroid/media/TextTrackCueSpan;

    new-instance v8, Landroid/media/TextTrackCueSpan;

    move-object/from16 v17, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v17, "br":Ljava/io/BufferedReader;
    const-wide/16 v2, -0x1

    invoke-direct {v8, v15, v2, v3}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v8, v7, v16

    .line 143
    .local v7, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v2, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    aput-object v15, v2, v12

    .line 144
    iget-object v2, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    add-int/lit8 v3, v12, 0x1

    .end local v12    # "i":I
    .local v3, "i":I
    aput-object v7, v2, v12
    :try_end_a1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_47 .. :try_end_a1} :catch_bf
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_a1} :catch_bb

    .line 145
    .end local v7    # "span":[Landroid/media/TextTrackCueSpan;
    .end local v15    # "line":Ljava/lang/String;
    move v12, v3

    move/from16 v7, v16

    move-object/from16 v2, v17

    const/4 v8, 0x1

    move-object/from16 v3, p1

    goto :goto_7c

    .line 147
    .end local v3    # "i":I
    .end local v17    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v12    # "i":I
    :cond_aa
    move-object/from16 v17, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "br":Ljava/io/BufferedReader;
    move-object/from16 v2, p0

    :try_start_ae
    invoke-virtual {v2, v5}, Landroid/media/SRTTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_b1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ae .. :try_end_b1} :catch_b9
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b7

    .line 148
    move-object/from16 v3, p1

    move-object/from16 v2, v17

    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v6    # "startEnd":[Ljava/lang/String;
    .end local v11    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v13    # "s":Ljava/lang/String;
    goto/16 :goto_15

    .line 152
    .end local v0    # "r":Ljava/io/Reader;
    .end local v4    # "header":Ljava/lang/String;
    .end local v17    # "br":Ljava/io/BufferedReader;
    :catch_b7
    move-exception v0

    goto :goto_cf

    .line 150
    :catch_b9
    move-exception v0

    goto :goto_dc

    .line 152
    :catch_bb
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_cf

    .line 150
    :catch_bf
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_dc

    .line 117
    .restart local v0    # "r":Ljava/io/Reader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .local v5, "header":Ljava/lang/String;
    :cond_c3
    move-wide/from16 v9, p3

    move-object/from16 v17, v2

    move-object/from16 v2, p0

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "br":Ljava/io/BufferedReader;
    goto :goto_f2

    .line 152
    .end local v0    # "r":Ljava/io/Reader;
    .end local v5    # "header":Ljava/lang/String;
    .end local v17    # "br":Ljava/io/BufferedReader;
    :catch_ca
    move-exception v0

    move-object/from16 v2, p0

    move-wide/from16 v9, p3

    .line 154
    .local v0, "ioe":Ljava/io/IOException;
    :goto_cf
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f3

    .line 150
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_d7
    move-exception v0

    move-object/from16 v2, p0

    move-wide/from16 v9, p3

    .line 151
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_dc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_f2
    nop

    .line 156
    :goto_f3
    return-void
.end method

.method public blacklist updateView(Ljava/util/Vector;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .line 160
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual {p0}, Landroid/media/SRTTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 161
    invoke-super {p0, p1}, Landroid/media/WebVttTrack;->updateView(Ljava/util/Vector;)V

    .line 162
    return-void

    .line 165
    :cond_a
    iget-object v0, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 166
    return-void

    .line 169
    :cond_f
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SubtitleTrack$Cue;

    .line 170
    .local v1, "cue":Landroid/media/SubtitleTrack$Cue;
    move-object v2, v1

    check-cast v2, Landroid/media/TextTrackCue;

    .line 172
    .local v2, "ttc":Landroid/media/TextTrackCue;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 173
    .local v3, "parcel":Landroid/os/Parcel;
    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-wide v4, v1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v5, v2, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_44
    if-ge v8, v6, :cond_54

    aget-object v9, v5, v8

    .line 180
    .local v9, "line":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    .end local v9    # "line":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    .line 183
    :cond_54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 184
    .local v5, "buf":[B
    array-length v6, v5

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 187
    iget-object v6, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    const/16 v8, 0x63

    invoke-virtual {v6, v8, v7, v7, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 189
    .local v6, "msg":Landroid/os/Message;
    iget-object v7, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    .end local v1    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v2    # "ttc":Landroid/media/TextTrackCue;
    .end local v3    # "parcel":Landroid/os/Parcel;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "buf":[B
    .end local v6    # "msg":Landroid/os/Message;
    goto :goto_13

    .line 191
    :cond_71
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 192
    return-void
.end method
