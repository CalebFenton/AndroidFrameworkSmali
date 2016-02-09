.class Landroid/media/WebVttTrack;
.super Landroid/media/SubtitleTrack;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttCueListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WebVttTrack"


# instance fields
.field private mCurrentRunID:Ljava/lang/Long;

.field private final mExtractor:Landroid/media/UnstyledTextExtractor;

.field private final mParser:Landroid/media/WebVttParser;

.field private final mRegions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/TextTrackRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderingWidget:Landroid/media/WebVttRenderingWidget;

.field private final mTimestamps:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mTokenizer:Landroid/media/Tokenizer;


# direct methods
.method constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .locals 2
    .param p1, "renderingWidget"    # Landroid/media/WebVttRenderingWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 995
    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    #@3
    .line 983
    new-instance v0, Landroid/media/WebVttParser;

    #@5
    invoke-direct {v0, p0}, Landroid/media/WebVttParser;-><init>(Landroid/media/WebVttCueListener;)V

    #@8
    iput-object v0, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    #@a
    .line 985
    new-instance v0, Landroid/media/UnstyledTextExtractor;

    #@c
    invoke-direct {v0}, Landroid/media/UnstyledTextExtractor;-><init>()V

    #@f
    .line 984
    iput-object v0, p0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    #@11
    .line 986
    new-instance v0, Landroid/media/Tokenizer;

    #@13
    iget-object v1, p0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    #@15
    invoke-direct {v0, v1}, Landroid/media/Tokenizer;-><init>(Landroid/media/Tokenizer$OnTokenListener;)V

    #@18
    iput-object v0, p0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    #@1a
    .line 987
    new-instance v0, Ljava/util/Vector;

    #@1c
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@1f
    iput-object v0, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    #@21
    .line 991
    new-instance v0, Ljava/util/HashMap;

    #@23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@26
    .line 990
    iput-object v0, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    #@28
    .line 997
    iput-object p1, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    #@2a
    .line 994
    return-void
.end method


# virtual methods
.method public bridge synthetic getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .locals 1

    #@0
    .prologue
    .line 1001
    invoke-virtual {p0}, Landroid/media/WebVttTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getRenderingWidget()Landroid/media/WebVttRenderingWidget;
    .locals 1

    #@0
    .prologue
    .line 1002
    iget-object v0, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    #@2
    return-object v0
.end method

.method public onCueParsed(Landroid/media/TextTrackCue;)V
    .locals 14
    .param p1, "cue"    # Landroid/media/TextTrackCue;

    #@0
    .prologue
    .line 1033
    iget-object v6, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    #@2
    monitor-enter v6

    #@3
    .line 1035
    :try_start_0
    iget-object v4, p1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    #@5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 1036
    iget-object v4, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    #@d
    iget-object v5, p1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    #@f
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    check-cast v4, Landroid/media/TextTrackRegion;

    #@15
    iput-object v4, p1, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    #@17
    .line 1039
    :cond_0
    iget-boolean v4, p0, Landroid/media/WebVttTrack;->DEBUG:Z

    #@19
    if-eqz v4, :cond_1

    #@1b
    const-string/jumbo v4, "WebVttTrack"

    #@1e
    new-instance v5, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v7, "adding cue "

    #@26
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 1042
    :cond_1
    iget-object v4, p0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    #@37
    invoke-virtual {v4}, Landroid/media/Tokenizer;->reset()V

    #@3a
    .line 1043
    iget-object v5, p1, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    #@3c
    const/4 v4, 0x0

    #@3d
    array-length v7, v5

    #@3e
    :goto_0
    if-ge v4, v7, :cond_2

    #@40
    aget-object v2, v5, v4

    #@42
    .line 1044
    .local v2, "s":Ljava/lang/String;
    iget-object v8, p0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    #@44
    invoke-virtual {v8, v2}, Landroid/media/Tokenizer;->tokenize(Ljava/lang/String;)V

    #@47
    .line 1043
    add-int/lit8 v4, v4, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 1046
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    #@4c
    invoke-virtual {v4}, Landroid/media/UnstyledTextExtractor;->getText()[[Landroid/media/TextTrackCueSpan;

    #@4f
    move-result-object v4

    #@50
    iput-object v4, p1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    #@52
    .line 1047
    iget-boolean v4, p0, Landroid/media/WebVttTrack;->DEBUG:Z

    #@54
    if-eqz v4, :cond_3

    #@56
    const-string/jumbo v4, "WebVttTrack"

    #@59
    .line 1049
    new-instance v5, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    .line 1048
    invoke-virtual {p1, v5}, Landroid/media/TextTrackCue;->appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    .line 1049
    const-string/jumbo v7, " simplified to: "

    #@65
    .line 1048
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    .line 1047
    invoke-virtual {p1, v5}, Landroid/media/TextTrackCue;->appendLinesToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 1053
    :cond_3
    iget-object v7, p1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    #@76
    const/4 v4, 0x0

    #@77
    array-length v8, v7

    #@78
    move v5, v4

    #@79
    :goto_1
    if-ge v5, v8, :cond_7

    #@7b
    aget-object v1, v7, v5

    #@7d
    .line 1054
    .local v1, "line":[Landroid/media/TextTrackCueSpan;
    const/4 v4, 0x0

    #@7e
    array-length v9, v1

    #@7f
    :goto_2
    if-ge v4, v9, :cond_6

    #@81
    aget-object v3, v1, v4

    #@83
    .line 1055
    .local v3, "span":Landroid/media/TextTrackCueSpan;
    iget-wide v10, v3, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    #@85
    iget-wide v12, p1, Landroid/media/TextTrackCue;->mStartTimeMs:J

    #@87
    cmp-long v10, v10, v12

    #@89
    if-lez v10, :cond_4

    #@8b
    .line 1056
    iget-wide v10, v3, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    #@8d
    iget-wide v12, p1, Landroid/media/TextTrackCue;->mEndTimeMs:J

    #@8f
    cmp-long v10, v10, v12

    #@91
    if-gez v10, :cond_4

    #@93
    .line 1057
    iget-object v10, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    #@95
    iget-wide v12, v3, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    #@97
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9a
    move-result-object v11

    #@9b
    invoke-virtual {v10, v11}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    #@9e
    move-result v10

    #@9f
    if-eqz v10, :cond_5

    #@a1
    .line 1054
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    #@a3
    goto :goto_2

    #@a4
    .line 1058
    :cond_5
    iget-object v10, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    #@a6
    iget-wide v12, v3, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    #@a8
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@ab
    move-result-object v11

    #@ac
    invoke-virtual {v10, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@af
    goto :goto_3

    #@b0
    .line 1033
    .end local v1    # "line":[Landroid/media/TextTrackCueSpan;
    .end local v3    # "span":Landroid/media/TextTrackCueSpan;
    :catchall_0
    move-exception v4

    #@b1
    monitor-exit v6

    #@b2
    throw v4

    #@b3
    .line 1053
    .restart local v1    # "line":[Landroid/media/TextTrackCueSpan;
    :cond_6
    add-int/lit8 v4, v5, 0x1

    #@b5
    move v5, v4

    #@b6
    goto :goto_1

    #@b7
    .line 1063
    .end local v1    # "line":[Landroid/media/TextTrackCueSpan;
    :cond_7
    :try_start_1
    iget-object v4, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    #@b9
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@bc
    move-result v4

    #@bd
    if-lez v4, :cond_9

    #@bf
    .line 1064
    iget-object v4, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    #@c1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@c4
    move-result v4

    #@c5
    new-array v4, v4, [J

    #@c7
    iput-object v4, p1, Landroid/media/TextTrackCue;->mInnerTimesMs:[J

    #@c9
    .line 1065
    const/4 v0, 0x0

    #@ca
    .local v0, "ix":I
    :goto_4
    iget-object v4, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    #@cc
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@cf
    move-result v4

    #@d0
    if-ge v0, v4, :cond_8

    #@d2
    .line 1066
    iget-object v5, p1, Landroid/media/TextTrackCue;->mInnerTimesMs:[J

    #@d4
    iget-object v4, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    #@d6
    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@d9
    move-result-object v4

    #@da
    check-cast v4, Ljava/lang/Long;

    #@dc
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@df
    move-result-wide v8

    #@e0
    aput-wide v8, v5, v0

    #@e2
    .line 1065
    add-int/lit8 v0, v0, 0x1

    #@e4
    goto :goto_4

    #@e5
    .line 1068
    :cond_8
    iget-object v4, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    #@e7
    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    #@ea
    .line 1073
    .end local v0    # "ix":I
    :goto_5
    iget-object v4, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    #@ec
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@ef
    move-result-wide v4

    #@f0
    iput-wide v4, p1, Landroid/media/TextTrackCue;->mRunID:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f2
    monitor-exit v6

    #@f3
    .line 1076
    invoke-virtual {p0, p1}, Landroid/media/WebVttTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z

    #@f6
    .line 1032
    return-void

    #@f7
    .line 1070
    :cond_9
    const/4 v4, 0x0

    #@f8
    :try_start_2
    iput-object v4, p1, Landroid/media/TextTrackCue;->mInnerTimesMs:[J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@fa
    goto :goto_5
.end method

.method public onData([BZJ)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    #@0
    .prologue
    .line 1008
    :try_start_0
    new-instance v1, Ljava/lang/String;

    #@2
    const-string/jumbo v2, "UTF-8"

    #@5
    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@8
    .line 1011
    .local v1, "str":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    #@a
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1012
    :try_start_1
    iget-object v2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    #@d
    if-eqz v2, :cond_0

    #@f
    iget-object v2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    #@11
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@14
    move-result-wide v4

    #@15
    cmp-long v2, p3, v4

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 1013
    new-instance v2, Ljava/lang/IllegalStateException;

    #@1b
    .line 1014
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v5, "Run #"

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    iget-object v5, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 1015
    const-string/jumbo v5, " in progress.  Cannot process run #"

    #@30
    .line 1014
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    .line 1013
    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 1011
    :catchall_0
    move-exception v2

    #@41
    :try_start_2
    monitor-exit v3

    #@42
    throw v2
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    #@43
    .line 1026
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@44
    .line 1027
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "WebVttTrack"

    #@47
    new-instance v3, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v4, "subtitle data is not UTF-8 encoded: "

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 1006
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-void

    #@5f
    .line 1017
    .restart local v1    # "str":Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@62
    move-result-object v2

    #@63
    iput-object v2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    #@65
    .line 1018
    iget-object v2, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    #@67
    invoke-virtual {v2, v1}, Landroid/media/WebVttParser;->parse(Ljava/lang/String;)V

    #@6a
    .line 1019
    if-eqz p2, :cond_1

    #@6c
    .line 1020
    invoke-virtual {p0, p3, p4}, Landroid/media/WebVttTrack;->finishedRun(J)V

    #@6f
    .line 1021
    iget-object v2, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    #@71
    invoke-virtual {v2}, Landroid/media/WebVttParser;->eos()V

    #@74
    .line 1022
    iget-object v2, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    #@76
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    #@79
    .line 1023
    const/4 v2, 0x0

    #@7a
    iput-object v2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7c
    :cond_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    #@7d
    goto :goto_0
.end method

.method public onRegionParsed(Landroid/media/TextTrackRegion;)V
    .locals 3
    .param p1, "region"    # Landroid/media/TextTrackRegion;

    #@0
    .prologue
    .line 1081
    iget-object v1, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    #@2
    monitor-enter v1

    #@3
    .line 1082
    :try_start_0
    iget-object v0, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    #@5
    iget-object v2, p1, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    #@7
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 1080
    return-void

    #@c
    .line 1081
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 8
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
    .line 1088
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    iget-boolean v1, p0, Landroid/media/WebVttTrack;->mVisible:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1090
    return-void

    #@5
    .line 1093
    :cond_0
    iget-boolean v1, p0, Landroid/media/WebVttTrack;->DEBUG:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    iget-object v1, p0, Landroid/media/WebVttTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 1095
    :try_start_0
    const-string/jumbo v1, "WebVttTrack"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "at "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 1096
    iget-object v3, p0, Landroid/media/WebVttTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@1e
    const/4 v4, 0x0

    #@1f
    const/4 v5, 0x1

    #@20
    invoke-interface {v3, v4, v5}, Landroid/media/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    #@23
    move-result-wide v4

    #@24
    const-wide/16 v6, 0x3e8

    #@26
    div-long/2addr v4, v6

    #@27
    .line 1095
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 1097
    const-string/jumbo v3, " ms the active cues are:"

    #@2e
    .line 1095
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 1103
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    #@3b
    if-eqz v1, :cond_2

    #@3d
    .line 1104
    iget-object v1, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    #@3f
    invoke-virtual {v1, p1}, Landroid/media/WebVttRenderingWidget;->setActiveCues(Ljava/util/Vector;)V

    #@42
    .line 1087
    :cond_2
    return-void

    #@43
    .line 1098
    :catch_0
    move-exception v0

    #@44
    .line 1099
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "WebVttTrack"

    #@47
    const-string/jumbo v2, "at (illegal state) the active cues are:"

    #@4a
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    goto :goto_0
.end method
