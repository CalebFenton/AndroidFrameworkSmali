.class Landroid/media/SRTTrack;
.super Landroid/media/WebVttTrack;
.source "SRTRenderer.java"


# static fields
.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final TAG:Ljava/lang/String; = "SRTTrack"


# instance fields
.field private final mEventHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "renderingWidget"    # Landroid/media/WebVttRenderingWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    #@3
    .line 75
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    #@6
    .line 73
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 79
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    #@4
    .line 80
    iput-object p1, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    #@6
    .line 78
    return-void
.end method

.method private static parseMs(Ljava/lang/String;)J
    .locals 14
    .param p0, "in"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
    const-string/jumbo v8, ":"

    #@3
    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@6
    move-result-object v8

    #@7
    const/4 v9, 0x0

    #@8
    aget-object v8, v8, v9

    #@a
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@d
    move-result-object v8

    #@e
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@11
    move-result-wide v0

    #@12
    .line 195
    .local v0, "hours":J
    const-string/jumbo v8, ":"

    #@15
    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@18
    move-result-object v8

    #@19
    const/4 v9, 0x1

    #@1a
    aget-object v8, v8, v9

    #@1c
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@23
    move-result-wide v4

    #@24
    .line 196
    .local v4, "minutes":J
    const-string/jumbo v8, ":"

    #@27
    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2a
    move-result-object v8

    #@2b
    const/4 v9, 0x2

    #@2c
    aget-object v8, v8, v9

    #@2e
    const-string/jumbo v9, ","

    #@31
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@34
    move-result-object v8

    #@35
    const/4 v9, 0x0

    #@36
    aget-object v8, v8, v9

    #@38
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3b
    move-result-object v8

    #@3c
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@3f
    move-result-wide v6

    #@40
    .line 197
    .local v6, "seconds":J
    const-string/jumbo v8, ":"

    #@43
    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@46
    move-result-object v8

    #@47
    const/4 v9, 0x2

    #@48
    aget-object v8, v8, v9

    #@4a
    const-string/jumbo v9, ","

    #@4d
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@50
    move-result-object v8

    #@51
    const/4 v9, 0x1

    #@52
    aget-object v8, v8, v9

    #@54
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@57
    move-result-object v8

    #@58
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@5b
    move-result-wide v2

    #@5c
    .line 199
    .local v2, "millies":J
    const-wide/16 v8, 0x3c

    #@5e
    mul-long/2addr v8, v0

    #@5f
    const-wide/16 v10, 0x3c

    #@61
    mul-long/2addr v8, v10

    #@62
    const-wide/16 v10, 0x3e8

    #@64
    mul-long/2addr v8, v10

    #@65
    const-wide/16 v10, 0x3c

    #@67
    mul-long/2addr v10, v4

    #@68
    const-wide/16 v12, 0x3e8

    #@6a
    mul-long/2addr v10, v12

    #@6b
    add-long/2addr v8, v10

    #@6c
    const-wide/16 v10, 0x3e8

    #@6e
    mul-long/2addr v10, v6

    #@6f
    add-long/2addr v8, v10

    #@70
    add-long/2addr v8, v2

    #@71
    return-wide v8
.end method


# virtual methods
.method protected onData(Landroid/media/SubtitleData;)V
    .locals 14
    .param p1, "data"    # Landroid/media/SubtitleData;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 86
    :try_start_0
    new-instance v0, Landroid/media/TextTrackCue;

    #@3
    invoke-direct {v0}, Landroid/media/TextTrackCue;-><init>()V

    #@6
    .line 87
    .local v0, "cue":Landroid/media/TextTrackCue;
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    #@9
    move-result-wide v10

    #@a
    const-wide/16 v12, 0x3e8

    #@c
    div-long/2addr v10, v12

    #@d
    iput-wide v10, v0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    #@f
    .line 88
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    #@12
    move-result-wide v10

    #@13
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    #@16
    move-result-wide v12

    #@17
    add-long/2addr v10, v12

    #@18
    const-wide/16 v12, 0x3e8

    #@1a
    div-long/2addr v10, v12

    #@1b
    iput-wide v10, v0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    #@1d
    .line 91
    new-instance v6, Ljava/lang/String;

    #@1f
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    #@22
    move-result-object v9

    #@23
    const-string/jumbo v10, "UTF-8"

    #@26
    invoke-direct {v6, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@29
    .line 92
    .local v6, "paragraph":Ljava/lang/String;
    const-string/jumbo v9, "\\r?\\n"

    #@2c
    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    .line 93
    .local v5, "lines":[Ljava/lang/String;
    array-length v9, v5

    #@31
    new-array v9, v9, [[Landroid/media/TextTrackCueSpan;

    #@33
    iput-object v9, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    #@35
    .line 95
    const/4 v2, 0x0

    #@36
    .line 96
    .local v2, "i":I
    array-length v9, v5

    #@37
    move v3, v2

    #@38
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    #@3a
    aget-object v4, v5, v8

    #@3c
    .line 97
    .local v4, "line":Ljava/lang/String;
    const/4 v10, 0x1

    #@3d
    new-array v7, v10, [Landroid/media/TextTrackCueSpan;

    #@3f
    .line 98
    new-instance v10, Landroid/media/TextTrackCueSpan;

    #@41
    const-wide/16 v12, -0x1

    #@43
    invoke-direct {v10, v4, v12, v13}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    #@46
    const/4 v11, 0x0

    #@47
    aput-object v10, v7, v11

    #@49
    .line 100
    .local v7, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v10, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    #@4b
    add-int/lit8 v2, v3, 0x1

    #@4d
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v7, v10, v3

    #@4f
    .line 96
    add-int/lit8 v8, v8, 0x1

    #@51
    move v3, v2

    #@52
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@53
    .line 103
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/SRTTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    .line 84
    .end local v0    # "cue":Landroid/media/TextTrackCue;
    .end local v3    # "i":I
    .end local v5    # "lines":[Ljava/lang/String;
    .end local v6    # "paragraph":Ljava/lang/String;
    :goto_1
    return-void

    #@57
    .line 104
    :catch_0
    move-exception v1

    #@58
    .line 105
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v8, "SRTTrack"

    #@5b
    new-instance v9, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v10, "subtitle data is not UTF-8 encoded: "

    #@63
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v9

    #@67
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v9

    #@6b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v9

    #@6f
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    goto :goto_1
.end method

.method public onData([BZJ)V
    .locals 22
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    #@0
    .prologue
    .line 113
    :try_start_0
    new-instance v14, Ljava/io/InputStreamReader;

    #@2
    new-instance v18, Ljava/io/ByteArrayInputStream;

    #@4
    move-object/from16 v0, v18

    #@6
    move-object/from16 v1, p1

    #@8
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@b
    const-string/jumbo v19, "UTF-8"

    #@e
    move-object/from16 v0, v18

    #@10
    move-object/from16 v1, v19

    #@12
    invoke-direct {v14, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@15
    .line 114
    .local v14, "r":Ljava/io/Reader;
    new-instance v4, Ljava/io/BufferedReader;

    #@17
    invoke-direct {v4, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@1a
    .line 117
    .local v4, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    .local v7, "header":Ljava/lang/String;
    if-eqz v7, :cond_0

    #@20
    .line 119
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    .line 120
    if-nez v7, :cond_1

    #@26
    .line 110
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v7    # "header":Ljava/lang/String;
    .end local v14    # "r":Ljava/io/Reader;
    :cond_0
    :goto_1
    return-void

    #@27
    .line 124
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "header":Ljava/lang/String;
    .restart local v14    # "r":Ljava/io/Reader;
    :cond_1
    new-instance v5, Landroid/media/TextTrackCue;

    #@29
    invoke-direct {v5}, Landroid/media/TextTrackCue;-><init>()V

    #@2c
    .line 125
    .local v5, "cue":Landroid/media/TextTrackCue;
    const-string/jumbo v18, "-->"

    #@2f
    move-object/from16 v0, v18

    #@31
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@34
    move-result-object v17

    #@35
    .line 126
    .local v17, "startEnd":[Ljava/lang/String;
    const/16 v18, 0x0

    #@37
    aget-object v18, v17, v18

    #@39
    invoke-static/range {v18 .. v18}, Landroid/media/SRTTrack;->parseMs(Ljava/lang/String;)J

    #@3c
    move-result-wide v18

    #@3d
    move-wide/from16 v0, v18

    #@3f
    iput-wide v0, v5, Landroid/media/TextTrackCue;->mStartTimeMs:J

    #@41
    .line 127
    const/16 v18, 0x1

    #@43
    aget-object v18, v17, v18

    #@45
    invoke-static/range {v18 .. v18}, Landroid/media/SRTTrack;->parseMs(Ljava/lang/String;)J

    #@48
    move-result-wide v18

    #@49
    move-wide/from16 v0, v18

    #@4b
    iput-wide v0, v5, Landroid/media/TextTrackCue;->mEndTimeMs:J

    #@4d
    .line 130
    new-instance v13, Ljava/util/ArrayList;

    #@4f
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@52
    .line 131
    .local v13, "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@55
    move-result-object v15

    #@56
    .local v15, "s":Ljava/lang/String;
    if-eqz v15, :cond_2

    #@58
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@5b
    move-result-object v18

    #@5c
    const-string/jumbo v19, ""

    #@5f
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v18

    #@63
    :goto_3
    if-nez v18, :cond_3

    #@65
    .line 132
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@68
    goto :goto_2

    #@69
    .line 149
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v7    # "header":Ljava/lang/String;
    .end local v13    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "r":Ljava/io/Reader;
    .end local v15    # "s":Ljava/lang/String;
    .end local v17    # "startEnd":[Ljava/lang/String;
    :catch_0
    move-exception v6

    #@6a
    .line 150
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v18, "SRTTrack"

    #@6d
    new-instance v19, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v20, "subtitle data is not UTF-8 encoded: "

    #@75
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v19

    #@79
    move-object/from16 v0, v19

    #@7b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v19

    #@7f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v19

    #@83
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    goto :goto_1

    #@87
    .line 131
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "cue":Landroid/media/TextTrackCue;
    .restart local v7    # "header":Ljava/lang/String;
    .restart local v13    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "r":Ljava/io/Reader;
    .restart local v15    # "s":Ljava/lang/String;
    .restart local v17    # "startEnd":[Ljava/lang/String;
    :cond_2
    const/16 v18, 0x1

    #@89
    goto :goto_3

    #@8a
    .line 135
    :cond_3
    const/4 v8, 0x0

    #@8b
    .line 136
    .local v8, "i":I
    :try_start_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@8e
    move-result v18

    #@8f
    move/from16 v0, v18

    #@91
    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    #@93
    move-object/from16 v18, v0

    #@95
    move-object/from16 v0, v18

    #@97
    iput-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    #@99
    .line 137
    const/16 v18, 0x0

    #@9b
    move/from16 v0, v18

    #@9d
    new-array v0, v0, [Ljava/lang/String;

    #@9f
    move-object/from16 v18, v0

    #@a1
    move-object/from16 v0, v18

    #@a3
    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@a6
    move-result-object v18

    #@a7
    check-cast v18, [Ljava/lang/String;

    #@a9
    move-object/from16 v0, v18

    #@ab
    iput-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    #@ad
    .line 138
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b0
    move-result-object v12

    #@b1
    .local v12, "line$iterator":Ljava/util/Iterator;
    move v9, v8

    #@b2
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@b5
    move-result v18

    #@b6
    if-eqz v18, :cond_4

    #@b8
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bb
    move-result-object v11

    #@bc
    check-cast v11, Ljava/lang/String;

    #@be
    .line 139
    .local v11, "line":Ljava/lang/String;
    const/16 v18, 0x1

    #@c0
    move/from16 v0, v18

    #@c2
    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    #@c4
    move-object/from16 v16, v0

    #@c6
    .line 140
    new-instance v18, Landroid/media/TextTrackCueSpan;

    #@c8
    const-wide/16 v20, -0x1

    #@ca
    move-object/from16 v0, v18

    #@cc
    move-wide/from16 v1, v20

    #@ce
    invoke-direct {v0, v11, v1, v2}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    #@d1
    const/16 v19, 0x0

    #@d3
    aput-object v18, v16, v19

    #@d5
    .line 142
    .local v16, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v0, v5, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    #@d7
    move-object/from16 v18, v0

    #@d9
    aput-object v11, v18, v9

    #@db
    .line 143
    iget-object v0, v5, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    #@dd
    move-object/from16 v18, v0

    #@df
    add-int/lit8 v8, v9, 0x1

    #@e1
    .end local v9    # "i":I
    .restart local v8    # "i":I
    aput-object v16, v18, v9

    #@e3
    move v9, v8

    #@e4
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_4

    #@e5
    .line 146
    .end local v11    # "line":Ljava/lang/String;
    .end local v16    # "span":[Landroid/media/TextTrackCueSpan;
    :cond_4
    move-object/from16 v0, p0

    #@e7
    invoke-virtual {v0, v5}, Landroid/media/SRTTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@ea
    goto/16 :goto_0

    #@ec
    .line 151
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v7    # "header":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v12    # "line$iterator":Ljava/util/Iterator;
    .end local v13    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "r":Ljava/io/Reader;
    .end local v15    # "s":Ljava/lang/String;
    .end local v17    # "startEnd":[Ljava/lang/String;
    :catch_1
    move-exception v10

    #@ed
    .line 153
    .local v10, "ioe":Ljava/io/IOException;
    const-string/jumbo v18, "SRTTrack"

    #@f0
    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@f3
    move-result-object v19

    #@f4
    move-object/from16 v0, v18

    #@f6
    move-object/from16 v1, v19

    #@f8
    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@fb
    goto/16 :goto_1
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 159
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual {p0}, Landroid/media/SRTTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    #@3
    move-result-object v9

    #@4
    if-eqz v9, :cond_0

    #@6
    .line 160
    invoke-super {p0, p1}, Landroid/media/WebVttTrack;->updateView(Ljava/util/Vector;)V

    #@9
    .line 161
    return-void

    #@a
    .line 164
    :cond_0
    iget-object v9, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    #@c
    if-nez v9, :cond_1

    #@e
    .line 165
    return-void

    #@f
    .line 168
    :cond_1
    const/4 v0, 0x0

    #@10
    .line 169
    .local v0, "_":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    .local v3, "cue$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v9

    #@18
    if-eqz v9, :cond_3

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/media/SubtitleTrack$Cue;

    #@20
    .local v2, "cue":Landroid/media/SubtitleTrack$Cue;
    move-object v8, v2

    #@21
    .line 170
    check-cast v8, Landroid/media/TextTrackCue;

    #@23
    .line 172
    .local v8, "ttc":Landroid/media/TextTrackCue;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@26
    move-result-object v6

    #@27
    .line 173
    .local v6, "parcel":Landroid/os/Parcel;
    const/16 v9, 0x66

    #@29
    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 174
    const/4 v9, 0x7

    #@2d
    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 175
    iget-wide v10, v2, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    #@32
    long-to-int v9, v10

    #@33
    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 177
    const/16 v9, 0x10

    #@38
    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    .line 179
    .local v7, "sb":Ljava/lang/StringBuilder;
    iget-object v10, v8, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    #@42
    const/4 v9, 0x0

    #@43
    array-length v11, v10

    #@44
    :goto_1
    if-ge v9, v11, :cond_2

    #@46
    aget-object v4, v10, v9

    #@48
    .line 180
    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v12

    #@4c
    const/16 v13, 0xa

    #@4e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    .line 179
    add-int/lit8 v9, v9, 0x1

    #@53
    goto :goto_1

    #@54
    .line 183
    .end local v4    # "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    #@5b
    move-result-object v1

    #@5c
    .line 184
    .local v1, "buf":[B
    array-length v9, v1

    #@5d
    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    .line 185
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@63
    .line 187
    iget-object v9, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    #@65
    const/16 v10, 0x63

    #@67
    const/4 v11, 0x0

    #@68
    const/4 v12, 0x0

    #@69
    invoke-virtual {v9, v10, v11, v12, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@6c
    move-result-object v5

    #@6d
    .line 188
    .local v5, "msg":Landroid/os/Message;
    iget-object v9, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    #@6f
    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@72
    goto :goto_0

    #@73
    .line 190
    .end local v1    # "buf":[B
    .end local v2    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "parcel":Landroid/os/Parcel;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "ttc":Landroid/media/TextTrackCue;
    :cond_3
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    #@76
    .line 158
    return-void
.end method
