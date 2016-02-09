.class Landroid/media/WebVttParser$5;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/media/WebVttParser$5;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/media/WebVttParser$5;->-assertionsDisabled:Z

    #@b
    .line 839
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Landroid/media/WebVttParser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/WebVttParser;

    #@0
    .prologue
    .line 839
    iput-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 18
    .param p1, "line"    # Ljava/lang/String;

    #@0
    .prologue
    .line 842
    const-string/jumbo v12, "-->"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@8
    move-result v2

    #@9
    .line 843
    .local v2, "arrowAt":I
    if-gez v2, :cond_0

    #@b
    .line 844
    move-object/from16 v0, p0

    #@d
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@f
    const/4 v13, 0x0

    #@10
    invoke-static {v12, v13}, Landroid/media/WebVttParser;->-set0(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)Landroid/media/TextTrackCue;

    #@13
    .line 845
    move-object/from16 v0, p0

    #@15
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@17
    move-object/from16 v0, p0

    #@19
    iget-object v13, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@1b
    invoke-static {v13}, Landroid/media/WebVttParser;->-get3(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    #@1e
    move-result-object v13

    #@1f
    invoke-static {v12, v13}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    #@22
    .line 846
    return-void

    #@23
    .line 849
    :cond_0
    const/4 v12, 0x0

    #@24
    move-object/from16 v0, p1

    #@26
    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object v12

    #@2a
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2d
    move-result-object v10

    #@2e
    .line 851
    .local v10, "start":Ljava/lang/String;
    add-int/lit8 v12, v2, 0x3

    #@30
    move-object/from16 v0, p1

    #@32
    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@35
    move-result-object v12

    #@36
    .line 852
    const-string/jumbo v13, "^\\s+"

    #@39
    const-string/jumbo v14, ""

    #@3c
    .line 851
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3f
    move-result-object v12

    #@40
    .line 852
    const-string/jumbo v13, "\\s+"

    #@43
    const-string/jumbo v14, " "

    #@46
    .line 851
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    .line 853
    .local v7, "rest":Ljava/lang/String;
    const/16 v12, 0x20

    #@4c
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    #@4f
    move-result v9

    #@50
    .line 854
    .local v9, "spaceAt":I
    if-lez v9, :cond_2

    #@52
    const/4 v12, 0x0

    #@53
    invoke-virtual {v7, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    .line 855
    .local v5, "end":Ljava/lang/String;
    :goto_0
    if-lez v9, :cond_3

    #@59
    add-int/lit8 v12, v9, 0x1

    #@5b
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5e
    move-result-object v7

    #@5f
    .line 857
    :goto_1
    move-object/from16 v0, p0

    #@61
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@63
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@66
    move-result-object v12

    #@67
    invoke-static {v10}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    #@6a
    move-result-wide v14

    #@6b
    iput-wide v14, v12, Landroid/media/TextTrackCue;->mStartTimeMs:J

    #@6d
    .line 858
    move-object/from16 v0, p0

    #@6f
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@71
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@74
    move-result-object v12

    #@75
    invoke-static {v5}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    #@78
    move-result-wide v14

    #@79
    iput-wide v14, v12, Landroid/media/TextTrackCue;->mEndTimeMs:J

    #@7b
    .line 859
    const-string/jumbo v12, " +"

    #@7e
    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@81
    move-result-object v14

    #@82
    const/4 v12, 0x0

    #@83
    array-length v15, v14

    #@84
    move v13, v12

    #@85
    :goto_2
    if-ge v13, v15, :cond_15

    #@87
    aget-object v8, v14, v13

    #@89
    .line 860
    .local v8, "setting":Ljava/lang/String;
    const/16 v12, 0x3a

    #@8b
    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(I)I

    #@8e
    move-result v3

    #@8f
    .line 861
    .local v3, "colonAt":I
    if-lez v3, :cond_1

    #@91
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@94
    move-result v12

    #@95
    add-int/lit8 v12, v12, -0x1

    #@97
    if-ne v3, v12, :cond_4

    #@99
    .line 859
    :cond_1
    :goto_3
    add-int/lit8 v12, v13, 0x1

    #@9b
    move v13, v12

    #@9c
    goto :goto_2

    #@9d
    .line 854
    .end local v3    # "colonAt":I
    .end local v5    # "end":Ljava/lang/String;
    .end local v8    # "setting":Ljava/lang/String;
    :cond_2
    move-object v5, v7

    #@9e
    .restart local v5    # "end":Ljava/lang/String;
    goto :goto_0

    #@9f
    .line 855
    :cond_3
    const-string/jumbo v7, ""

    #@a2
    goto :goto_1

    #@a3
    .line 864
    .restart local v3    # "colonAt":I
    .restart local v8    # "setting":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    #@a4
    invoke-virtual {v8, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a7
    move-result-object v6

    #@a8
    .line 865
    .local v6, "name":Ljava/lang/String;
    add-int/lit8 v12, v3, 0x1

    #@aa
    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@ad
    move-result-object v11

    #@ae
    .line 867
    .local v11, "value":Ljava/lang/String;
    const-string/jumbo v12, "region"

    #@b1
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v12

    #@b5
    if-eqz v12, :cond_5

    #@b7
    .line 868
    move-object/from16 v0, p0

    #@b9
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@bb
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@be
    move-result-object v12

    #@bf
    iput-object v11, v12, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    #@c1
    goto :goto_3

    #@c2
    .line 869
    :cond_5
    const-string/jumbo v12, "vertical"

    #@c5
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c8
    move-result v12

    #@c9
    if-eqz v12, :cond_8

    #@cb
    .line 870
    const-string/jumbo v12, "rl"

    #@ce
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d1
    move-result v12

    #@d2
    if-eqz v12, :cond_6

    #@d4
    .line 871
    move-object/from16 v0, p0

    #@d6
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@d8
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@db
    move-result-object v12

    #@dc
    .line 872
    const/16 v16, 0x65

    #@de
    .line 871
    move/from16 v0, v16

    #@e0
    iput v0, v12, Landroid/media/TextTrackCue;->mWritingDirection:I

    #@e2
    goto :goto_3

    #@e3
    .line 873
    :cond_6
    const-string/jumbo v12, "lr"

    #@e6
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e9
    move-result v12

    #@ea
    if-eqz v12, :cond_7

    #@ec
    .line 874
    move-object/from16 v0, p0

    #@ee
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@f0
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@f3
    move-result-object v12

    #@f4
    .line 875
    const/16 v16, 0x66

    #@f6
    .line 874
    move/from16 v0, v16

    #@f8
    iput v0, v12, Landroid/media/TextTrackCue;->mWritingDirection:I

    #@fa
    goto :goto_3

    #@fb
    .line 877
    :cond_7
    move-object/from16 v0, p0

    #@fd
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@ff
    const-string/jumbo v16, "cue setting"

    #@102
    const-string/jumbo v17, "has invalid value"

    #@105
    move-object/from16 v0, v16

    #@107
    move-object/from16 v1, v17

    #@109
    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@10c
    goto :goto_3

    #@10d
    .line 879
    :cond_8
    const-string/jumbo v12, "line"

    #@110
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@113
    move-result v12

    #@114
    if-eqz v12, :cond_d

    #@116
    .line 882
    :try_start_0
    sget-boolean v12, Landroid/media/WebVttParser$5;->-assertionsDisabled:Z

    #@118
    if-nez v12, :cond_a

    #@11a
    const/16 v12, 0x20

    #@11c
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    #@11f
    move-result v12

    #@120
    if-gez v12, :cond_9

    #@122
    const/4 v12, 0x1

    #@123
    :goto_4
    if-nez v12, :cond_a

    #@125
    new-instance v12, Ljava/lang/AssertionError;

    #@127
    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    #@12a
    throw v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@12b
    .line 893
    :catch_0
    move-exception v4

    #@12c
    .line 894
    .local v4, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    #@12e
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@130
    const-string/jumbo v16, "cue setting"

    #@133
    .line 895
    const-string/jumbo v17, "is not numeric or percentage"

    #@136
    .line 894
    move-object/from16 v0, v16

    #@138
    move-object/from16 v1, v17

    #@13a
    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@13d
    goto/16 :goto_3

    #@13f
    .line 882
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    const/4 v12, 0x0

    #@140
    goto :goto_4

    #@141
    .line 883
    :cond_a
    :try_start_1
    const-string/jumbo v12, "%"

    #@144
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@147
    move-result v12

    #@148
    if-eqz v12, :cond_b

    #@14a
    .line 884
    move-object/from16 v0, p0

    #@14c
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@14e
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@151
    move-result-object v12

    #@152
    const/16 v16, 0x0

    #@154
    move/from16 v0, v16

    #@156
    iput-boolean v0, v12, Landroid/media/TextTrackCue;->mSnapToLines:Z

    #@158
    .line 885
    move-object/from16 v0, p0

    #@15a
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@15c
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@15f
    move-result-object v12

    #@160
    invoke-static {v11}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    #@163
    move-result v16

    #@164
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@167
    move-result-object v16

    #@168
    move-object/from16 v0, v16

    #@16a
    iput-object v0, v12, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    #@16c
    goto/16 :goto_3

    #@16e
    .line 886
    :cond_b
    const-string/jumbo v12, ".*[^0-9].*"

    #@171
    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@174
    move-result v12

    #@175
    if-eqz v12, :cond_c

    #@177
    .line 887
    move-object/from16 v0, p0

    #@179
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@17b
    const-string/jumbo v16, "cue setting"

    #@17e
    .line 888
    const-string/jumbo v17, "contains an invalid character"

    #@181
    .line 887
    move-object/from16 v0, v16

    #@183
    move-object/from16 v1, v17

    #@185
    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@188
    goto/16 :goto_3

    #@18a
    .line 890
    :cond_c
    move-object/from16 v0, p0

    #@18c
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@18e
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@191
    move-result-object v12

    #@192
    const/16 v16, 0x1

    #@194
    move/from16 v0, v16

    #@196
    iput-boolean v0, v12, Landroid/media/TextTrackCue;->mSnapToLines:Z

    #@198
    .line 891
    move-object/from16 v0, p0

    #@19a
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@19c
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@19f
    move-result-object v12

    #@1a0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a3
    move-result v16

    #@1a4
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a7
    move-result-object v16

    #@1a8
    move-object/from16 v0, v16

    #@1aa
    iput-object v0, v12, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@1ac
    goto/16 :goto_3

    #@1ae
    .line 898
    :cond_d
    const-string/jumbo v12, "position"

    #@1b1
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b4
    move-result v12

    #@1b5
    if-eqz v12, :cond_e

    #@1b7
    .line 900
    :try_start_2
    move-object/from16 v0, p0

    #@1b9
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@1bb
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@1be
    move-result-object v12

    #@1bf
    invoke-static {v11}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    #@1c2
    move-result v16

    #@1c3
    move/from16 v0, v16

    #@1c5
    iput v0, v12, Landroid/media/TextTrackCue;->mTextPosition:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    #@1c7
    goto/16 :goto_3

    #@1c9
    .line 901
    :catch_1
    move-exception v4

    #@1ca
    .line 902
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    #@1cc
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@1ce
    const-string/jumbo v16, "cue setting"

    #@1d1
    .line 903
    const-string/jumbo v17, "is not numeric or percentage"

    #@1d4
    .line 902
    move-object/from16 v0, v16

    #@1d6
    move-object/from16 v1, v17

    #@1d8
    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1db
    goto/16 :goto_3

    #@1dd
    .line 905
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    const-string/jumbo v12, "size"

    #@1e0
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e3
    move-result v12

    #@1e4
    if-eqz v12, :cond_f

    #@1e6
    .line 907
    :try_start_3
    move-object/from16 v0, p0

    #@1e8
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@1ea
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@1ed
    move-result-object v12

    #@1ee
    invoke-static {v11}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    #@1f1
    move-result v16

    #@1f2
    move/from16 v0, v16

    #@1f4
    iput v0, v12, Landroid/media/TextTrackCue;->mSize:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    #@1f6
    goto/16 :goto_3

    #@1f8
    .line 908
    :catch_2
    move-exception v4

    #@1f9
    .line 909
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    #@1fb
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@1fd
    const-string/jumbo v16, "cue setting"

    #@200
    .line 910
    const-string/jumbo v17, "is not numeric or percentage"

    #@203
    .line 909
    move-object/from16 v0, v16

    #@205
    move-object/from16 v1, v17

    #@207
    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@20a
    goto/16 :goto_3

    #@20c
    .line 912
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    const-string/jumbo v12, "align"

    #@20f
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@212
    move-result v12

    #@213
    if-eqz v12, :cond_1

    #@215
    .line 913
    const-string/jumbo v12, "start"

    #@218
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21b
    move-result v12

    #@21c
    if-eqz v12, :cond_10

    #@21e
    .line 914
    move-object/from16 v0, p0

    #@220
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@222
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@225
    move-result-object v12

    #@226
    const/16 v16, 0xc9

    #@228
    move/from16 v0, v16

    #@22a
    iput v0, v12, Landroid/media/TextTrackCue;->mAlignment:I

    #@22c
    goto/16 :goto_3

    #@22e
    .line 915
    :cond_10
    const-string/jumbo v12, "middle"

    #@231
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@234
    move-result v12

    #@235
    if-eqz v12, :cond_11

    #@237
    .line 916
    move-object/from16 v0, p0

    #@239
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@23b
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@23e
    move-result-object v12

    #@23f
    const/16 v16, 0xc8

    #@241
    move/from16 v0, v16

    #@243
    iput v0, v12, Landroid/media/TextTrackCue;->mAlignment:I

    #@245
    goto/16 :goto_3

    #@247
    .line 917
    :cond_11
    const-string/jumbo v12, "end"

    #@24a
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24d
    move-result v12

    #@24e
    if-eqz v12, :cond_12

    #@250
    .line 918
    move-object/from16 v0, p0

    #@252
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@254
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@257
    move-result-object v12

    #@258
    const/16 v16, 0xca

    #@25a
    move/from16 v0, v16

    #@25c
    iput v0, v12, Landroid/media/TextTrackCue;->mAlignment:I

    #@25e
    goto/16 :goto_3

    #@260
    .line 919
    :cond_12
    const-string/jumbo v12, "left"

    #@263
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@266
    move-result v12

    #@267
    if-eqz v12, :cond_13

    #@269
    .line 920
    move-object/from16 v0, p0

    #@26b
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@26d
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@270
    move-result-object v12

    #@271
    const/16 v16, 0xcb

    #@273
    move/from16 v0, v16

    #@275
    iput v0, v12, Landroid/media/TextTrackCue;->mAlignment:I

    #@277
    goto/16 :goto_3

    #@279
    .line 921
    :cond_13
    const-string/jumbo v12, "right"

    #@27c
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27f
    move-result v12

    #@280
    if-eqz v12, :cond_14

    #@282
    .line 922
    move-object/from16 v0, p0

    #@284
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@286
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@289
    move-result-object v12

    #@28a
    const/16 v16, 0xcc

    #@28c
    move/from16 v0, v16

    #@28e
    iput v0, v12, Landroid/media/TextTrackCue;->mAlignment:I

    #@290
    goto/16 :goto_3

    #@292
    .line 924
    :cond_14
    move-object/from16 v0, p0

    #@294
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@296
    const-string/jumbo v16, "cue setting"

    #@299
    const-string/jumbo v17, "has invalid value"

    #@29c
    move-object/from16 v0, v16

    #@29e
    move-object/from16 v1, v17

    #@2a0
    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2a3
    goto/16 :goto_3

    #@2a5
    .line 930
    .end local v3    # "colonAt":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "setting":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    #@2a7
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@2a9
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@2ac
    move-result-object v12

    #@2ad
    iget-object v12, v12, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    #@2af
    if-nez v12, :cond_16

    #@2b1
    .line 931
    move-object/from16 v0, p0

    #@2b3
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@2b5
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@2b8
    move-result-object v12

    #@2b9
    iget v12, v12, Landroid/media/TextTrackCue;->mSize:I

    #@2bb
    const/16 v13, 0x64

    #@2bd
    if-eq v12, v13, :cond_18

    #@2bf
    .line 934
    :cond_16
    :goto_5
    move-object/from16 v0, p0

    #@2c1
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@2c3
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@2c6
    move-result-object v12

    #@2c7
    const-string/jumbo v13, ""

    #@2ca
    iput-object v13, v12, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    #@2cc
    .line 937
    :cond_17
    move-object/from16 v0, p0

    #@2ce
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@2d0
    move-object/from16 v0, p0

    #@2d2
    iget-object v13, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@2d4
    invoke-static {v13}, Landroid/media/WebVttParser;->-get4(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    #@2d7
    move-result-object v13

    #@2d8
    invoke-static {v12, v13}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    #@2db
    .line 841
    return-void

    #@2dc
    .line 932
    :cond_18
    move-object/from16 v0, p0

    #@2de
    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    #@2e0
    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@2e3
    move-result-object v12

    #@2e4
    iget v12, v12, Landroid/media/TextTrackCue;->mWritingDirection:I

    #@2e6
    .line 933
    const/16 v13, 0x64

    #@2e8
    .line 932
    if-eq v12, v13, :cond_17

    #@2ea
    goto :goto_5
.end method
