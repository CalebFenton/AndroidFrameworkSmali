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
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final synthetic blacklist this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 841
    const-class v0, Landroid/media/WebVttParser;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/WebVttParser;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/WebVttParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 841
    iput-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist parse(Ljava/lang/String;)V
    .registers 21
    .param p1, "line"    # Ljava/lang/String;

    .line 844
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "-->"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 845
    .local v3, "arrowAt":I
    if-gez v3, :cond_1e

    .line 846
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/media/WebVttParser;->-$$Nest$fputmCue(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)V

    .line 847
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    iget-object v4, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v4}, Landroid/media/WebVttParser;->-$$Nest$fgetmParseCueId(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/media/WebVttParser;->-$$Nest$fputmPhase(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)V

    .line 848
    return-void

    .line 851
    :cond_1e
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 853
    .local v5, "start":Ljava/lang/String;
    add-int/lit8 v0, v3, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 854
    const-string v6, "^\\s+"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "\\s+"

    const-string v8, " "

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 855
    .local v0, "rest":Ljava/lang/String;
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 856
    .local v6, "spaceAt":I
    if-lez v6, :cond_4a

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_4b

    :cond_4a
    move-object v8, v0

    .line 857
    .local v8, "end":Ljava/lang/String;
    :goto_4b
    if-lez v6, :cond_54

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_55

    :cond_54
    move-object v9, v7

    .line 859
    .end local v0    # "rest":Ljava/lang/String;
    .local v9, "rest":Ljava/lang/String;
    :goto_55
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v5}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 860
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v8}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 861
    const-string v0, " +"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v12, v4

    :goto_75
    if-ge v12, v11, :cond_217

    aget-object v13, v10, v12

    .line 862
    .local v13, "setting":Ljava/lang/String;
    const/16 v0, 0x3a

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 863
    .local v14, "colonAt":I
    if-lez v14, :cond_208

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v15, 0x1

    sub-int/2addr v0, v15

    if-ne v14, v0, :cond_8f

    .line 864
    move/from16 v17, v3

    move-object/from16 v18, v5

    goto/16 :goto_20c

    .line 866
    :cond_8f
    invoke-virtual {v13, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 867
    .local v15, "name":Ljava/lang/String;
    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 869
    .local v4, "value":Ljava/lang/String;
    const-string v0, "region"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 870
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    iput-object v4, v0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    move/from16 v17, v3

    move-object/from16 v18, v5

    goto/16 :goto_20c

    .line 871
    :cond_af
    const-string v0, "vertical"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    move/from16 v17, v0

    const-string v0, "has invalid value"

    const-string v2, "cue setting"

    if-eqz v17, :cond_f4

    .line 872
    move/from16 v17, v3

    .end local v3    # "arrowAt":I
    .local v17, "arrowAt":I
    const-string v3, "rl"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 873
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0x65

    iput v2, v0, Landroid/media/TextTrackCue;->mWritingDirection:I

    move-object/from16 v18, v5

    goto/16 :goto_20c

    .line 875
    :cond_d5
    const-string v3, "lr"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 876
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0x66

    iput v2, v0, Landroid/media/TextTrackCue;->mWritingDirection:I

    move-object/from16 v18, v5

    goto/16 :goto_20c

    .line 879
    :cond_eb
    iget-object v3, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v3, v2, v15, v0, v4}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v5

    goto/16 :goto_20c

    .line 881
    .end local v17    # "arrowAt":I
    .restart local v3    # "arrowAt":I
    :cond_f4
    move/from16 v17, v3

    .end local v3    # "arrowAt":I
    .restart local v17    # "arrowAt":I
    const-string v3, "line"

    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    move/from16 v18, v3

    const-string v3, "is not numeric or percentage"

    if-eqz v18, :cond_15f

    .line 884
    nop

    .line 885
    :try_start_103
    const-string v0, "%"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 886
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0
    :try_end_111
    .catch Ljava/lang/NumberFormatException; {:try_start_103 .. :try_end_111} :catch_155

    move-object/from16 v18, v5

    const/4 v5, 0x0

    .end local v5    # "start":Ljava/lang/String;
    .local v18, "start":Ljava/lang/String;
    :try_start_114
    iput-boolean v5, v0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 887
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v4}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    goto :goto_15d

    .line 888
    .end local v18    # "start":Ljava/lang/String;
    .restart local v5    # "start":Ljava/lang/String;
    :cond_127
    move-object/from16 v18, v5

    .end local v5    # "start":Ljava/lang/String;
    .restart local v18    # "start":Ljava/lang/String;
    const-string v0, ".*[^0-9].*"

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 889
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v5, "contains an invalid character"

    invoke-static {v0, v2, v15, v5, v4}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15d

    .line 892
    :cond_139
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 893
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;
    :try_end_152
    .catch Ljava/lang/NumberFormatException; {:try_start_114 .. :try_end_152} :catch_153

    goto :goto_15d

    .line 895
    :catch_153
    move-exception v0

    goto :goto_158

    .end local v18    # "start":Ljava/lang/String;
    .restart local v5    # "start":Ljava/lang/String;
    :catch_155
    move-exception v0

    move-object/from16 v18, v5

    .line 896
    .end local v5    # "start":Ljava/lang/String;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v18    # "start":Ljava/lang/String;
    :goto_158
    iget-object v5, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v5, v2, v15, v3, v4}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_15d
    goto/16 :goto_20c

    .line 900
    .end local v18    # "start":Ljava/lang/String;
    .restart local v5    # "start":Ljava/lang/String;
    :cond_15f
    move-object/from16 v18, v5

    .end local v5    # "start":Ljava/lang/String;
    .restart local v18    # "start":Ljava/lang/String;
    const-string v5, "position"

    invoke-virtual {v15, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17e

    .line 902
    :try_start_169
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v4}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/media/TextTrackCue;->mTextPosition:I
    :try_end_175
    .catch Ljava/lang/NumberFormatException; {:try_start_169 .. :try_end_175} :catch_176

    goto :goto_17c

    .line 903
    :catch_176
    move-exception v0

    .line 904
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    iget-object v5, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v5, v2, v15, v3, v4}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_17c
    goto/16 :goto_20c

    .line 907
    :cond_17e
    const-string v5, "size"

    invoke-virtual {v15, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19b

    .line 909
    :try_start_186
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v4}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/media/TextTrackCue;->mSize:I
    :try_end_192
    .catch Ljava/lang/NumberFormatException; {:try_start_186 .. :try_end_192} :catch_193

    goto :goto_199

    .line 910
    :catch_193
    move-exception v0

    .line 911
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    iget-object v5, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v5, v2, v15, v3, v4}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_199
    goto/16 :goto_20c

    .line 914
    :cond_19b
    const-string v3, "align"

    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20c

    .line 915
    const-string v3, "start"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b6

    .line 916
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0xc9

    iput v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    goto :goto_20c

    .line 917
    :cond_1b6
    const-string v3, "middle"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c9

    .line 918
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0xc8

    iput v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    goto :goto_20c

    .line 919
    :cond_1c9
    const-string v3, "end"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1dc

    .line 920
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0xca

    iput v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    goto :goto_20c

    .line 921
    :cond_1dc
    const-string v3, "left"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ef

    .line 922
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0xcb

    iput v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    goto :goto_20c

    .line 923
    :cond_1ef
    const-string v3, "right"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_202

    .line 924
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0xcc

    iput v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    goto :goto_20c

    .line 926
    :cond_202
    iget-object v3, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v3, v2, v15, v0, v4}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    goto :goto_20c

    .line 863
    .end local v4    # "value":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "arrowAt":I
    .end local v18    # "start":Ljava/lang/String;
    .restart local v3    # "arrowAt":I
    .restart local v5    # "start":Ljava/lang/String;
    :cond_208
    move/from16 v17, v3

    move-object/from16 v18, v5

    .line 861
    .end local v3    # "arrowAt":I
    .end local v5    # "start":Ljava/lang/String;
    .end local v13    # "setting":Ljava/lang/String;
    .end local v14    # "colonAt":I
    .restart local v17    # "arrowAt":I
    .restart local v18    # "start":Ljava/lang/String;
    :cond_20c
    :goto_20c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p1

    move/from16 v3, v17

    move-object/from16 v5, v18

    const/4 v4, 0x0

    goto/16 :goto_75

    .line 932
    .end local v17    # "arrowAt":I
    .end local v18    # "start":Ljava/lang/String;
    .restart local v3    # "arrowAt":I
    .restart local v5    # "start":Ljava/lang/String;
    :cond_217
    move/from16 v17, v3

    move-object/from16 v18, v5

    .end local v3    # "arrowAt":I
    .end local v5    # "start":Ljava/lang/String;
    .restart local v17    # "arrowAt":I
    .restart local v18    # "start":Ljava/lang/String;
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    iget-object v0, v0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v0, :cond_23b

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    iget v0, v0, Landroid/media/TextTrackCue;->mSize:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_23b

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    iget v0, v0, Landroid/media/TextTrackCue;->mWritingDirection:I

    if-eq v0, v2, :cond_243

    .line 936
    :cond_23b
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    iput-object v7, v0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 939
    :cond_243
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    iget-object v2, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v2}, Landroid/media/WebVttParser;->-$$Nest$fgetmParseCueText(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/media/WebVttParser;->-$$Nest$fputmPhase(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)V

    .line 940
    return-void
.end method
