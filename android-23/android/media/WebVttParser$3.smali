.class Landroid/media/WebVttParser$3;
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
    const-class v0, Landroid/media/WebVttParser$3;

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
    sput-boolean v0, Landroid/media/WebVttParser$3;->-assertionsDisabled:Z

    #@b
    .line 714
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
    .line 714
    iput-object p1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 7
    .param p1, "line"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 793
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_1

    #@7
    .line 794
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #@9
    iget-object v5, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #@b
    invoke-static {v5}, Landroid/media/WebVttParser;->-get3(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    #@e
    move-result-object v5

    #@f
    invoke-static {v4, v5}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    #@12
    .line 792
    :cond_0
    :goto_0
    return-void

    #@13
    .line 795
    :cond_1
    const-string/jumbo v4, "-->"

    #@16
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_2

    #@1c
    .line 796
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #@1e
    iget-object v5, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #@20
    invoke-static {v5}, Landroid/media/WebVttParser;->-get5(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    #@23
    move-result-object v5

    #@24
    invoke-static {v4, v5}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    #@27
    .line 797
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #@29
    invoke-static {v4}, Landroid/media/WebVttParser;->-get7(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    #@2c
    move-result-object v4

    #@2d
    invoke-interface {v4, p1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    #@30
    goto :goto_0

    #@31
    .line 799
    :cond_2
    const/16 v4, 0x3a

    #@33
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    #@36
    move-result v0

    #@37
    .line 800
    .local v0, "colonAt":I
    if-lez v0, :cond_3

    #@39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3c
    move-result v4

    #@3d
    add-int/lit8 v4, v4, -0x1

    #@3f
    if-lt v0, v4, :cond_4

    #@41
    .line 801
    :cond_3
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #@43
    const-string/jumbo v5, "meta data header has invalid format"

    #@46
    invoke-static {v4, v5, p1}, Landroid/media/WebVttParser;->-wrap0(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V

    #@49
    .line 803
    :cond_4
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    .line 804
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    #@4f
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    .line 806
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "Region"

    #@56
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v4

    #@5a
    if-eqz v4, :cond_0

    #@5c
    .line 807
    invoke-virtual {p0, v3}, Landroid/media/WebVttParser$3;->parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;

    #@5f
    move-result-object v2

    #@60
    .line 808
    .local v2, "region":Landroid/media/TextTrackRegion;
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #@62
    invoke-static {v4}, Landroid/media/WebVttParser;->-get2(Landroid/media/WebVttParser;)Landroid/media/WebVttCueListener;

    #@65
    move-result-object v4

    #@66
    invoke-interface {v4, v2}, Landroid/media/WebVttCueListener;->onRegionParsed(Landroid/media/TextTrackRegion;)V

    #@69
    goto :goto_0
.end method

.method parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;
    .locals 30
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 716
    new-instance v23, Landroid/media/TextTrackRegion;

    #@2
    invoke-direct/range {v23 .. v23}, Landroid/media/TextTrackRegion;-><init>()V

    #@5
    .line 717
    .local v23, "region":Landroid/media/TextTrackRegion;
    const-string/jumbo v2, " +"

    #@8
    move-object/from16 v0, p1

    #@a
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@d
    move-result-object v28

    #@e
    const/4 v2, 0x0

    #@f
    move-object/from16 v0, v28

    #@11
    array-length v0, v0

    #@12
    move/from16 v29, v0

    #@14
    move/from16 v27, v2

    #@16
    :goto_0
    move/from16 v0, v27

    #@18
    move/from16 v1, v29

    #@1a
    if-ge v0, v1, :cond_c

    #@1c
    aget-object v24, v28, v27

    #@1e
    .line 718
    .local v24, "setting":Ljava/lang/String;
    const/16 v2, 0x3d

    #@20
    move-object/from16 v0, v24

    #@22
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    #@25
    move-result v22

    #@26
    .line 719
    .local v22, "equalAt":I
    if-lez v22, :cond_0

    #@28
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    #@2b
    move-result v2

    #@2c
    add-int/lit8 v2, v2, -0x1

    #@2e
    move/from16 v0, v22

    #@30
    if-ne v0, v2, :cond_1

    #@32
    .line 717
    :cond_0
    :goto_1
    add-int/lit8 v2, v27, 0x1

    #@34
    move/from16 v27, v2

    #@36
    goto :goto_0

    #@37
    .line 723
    :cond_1
    const/4 v2, 0x0

    #@38
    move-object/from16 v0, v24

    #@3a
    move/from16 v1, v22

    #@3c
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    .line 724
    .local v4, "name":Ljava/lang/String;
    add-int/lit8 v2, v22, 0x1

    #@42
    move-object/from16 v0, v24

    #@44
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@47
    move-result-object v7

    #@48
    .line 725
    .local v7, "value":Ljava/lang/String;
    const-string/jumbo v2, "id"

    #@4b
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_2

    #@51
    .line 726
    move-object/from16 v0, v23

    #@53
    iput-object v7, v0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    #@55
    goto :goto_1

    #@56
    .line 727
    :cond_2
    const-string/jumbo v2, "width"

    #@59
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_3

    #@5f
    .line 729
    :try_start_0
    invoke-static {v7}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    #@62
    move-result v2

    #@63
    move-object/from16 v0, v23

    #@65
    iput v2, v0, Landroid/media/TextTrackRegion;->mWidth:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    goto :goto_1

    #@68
    .line 730
    :catch_0
    move-exception v21

    #@69
    .line 731
    .local v21, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    #@6b
    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #@6d
    const-string/jumbo v3, "region setting"

    #@70
    .line 732
    const-string/jumbo v5, "has invalid value"

    #@73
    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@76
    move-result-object v6

    #@77
    .line 731
    invoke-static/range {v2 .. v7}, Landroid/media/WebVttParser;->-wrap1(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7a
    goto :goto_1

    #@7b
    .line 734
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string/jumbo v2, "lines"

    #@7e
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v2

    #@82
    if-eqz v2, :cond_6

    #@84
    .line 735
    const-string/jumbo v2, ".*[^0-9].*"

    #@87
    invoke-virtual {v7, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@8a
    move-result v2

    #@8b
    if-eqz v2, :cond_4

    #@8d
    .line 736
    move-object/from16 v0, p0

    #@8f
    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #@91
    const-string/jumbo v3, "lines"

    #@94
    const-string/jumbo v5, "contains an invalid character"

    #@97
    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9a
    goto :goto_1

    #@9b
    .line 739
    :cond_4
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9e
    move-result v2

    #@9f
    move-object/from16 v0, v23

    #@a1
    iput v2, v0, Landroid/media/TextTrackRegion;->mLines:I

    #@a3
    .line 740
    sget-boolean v2, Landroid/media/WebVttParser$3;->-assertionsDisabled:Z

    #@a5
    if-nez v2, :cond_0

    #@a7
    move-object/from16 v0, v23

    #@a9
    iget v2, v0, Landroid/media/TextTrackRegion;->mLines:I

    #@ab
    if-ltz v2, :cond_5

    #@ad
    const/4 v2, 0x1

    #@ae
    :goto_2
    if-nez v2, :cond_0

    #@b0
    new-instance v2, Ljava/lang/AssertionError;

    #@b2
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@b5
    throw v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@b6
    .line 741
    :catch_1
    move-exception v21

    #@b7
    .line 742
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    #@b9
    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #@bb
    const-string/jumbo v3, "region setting"

    #@be
    const-string/jumbo v5, "is not numeric"

    #@c1
    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c4
    goto/16 :goto_1

    #@c6
    .line 740
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const/4 v2, 0x0

    #@c7
    goto :goto_2

    #@c8
    .line 745
    :cond_6
    const-string/jumbo v2, "regionanchor"

    #@cb
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v2

    #@cf
    if-nez v2, :cond_7

    #@d1
    .line 746
    const-string/jumbo v2, "viewportanchor"

    #@d4
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d7
    move-result v2

    #@d8
    .line 745
    if-eqz v2, :cond_a

    #@da
    .line 747
    :cond_7
    const-string/jumbo v2, ","

    #@dd
    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@e0
    move-result v20

    #@e1
    .line 748
    .local v20, "commaAt":I
    if-gez v20, :cond_8

    #@e3
    .line 749
    move-object/from16 v0, p0

    #@e5
    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #@e7
    const-string/jumbo v3, "region setting"

    #@ea
    const-string/jumbo v5, "contains no comma"

    #@ed
    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f0
    goto/16 :goto_1

    #@f2
    .line 753
    :cond_8
    const/4 v2, 0x0

    #@f3
    move/from16 v0, v20

    #@f5
    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f8
    move-result-object v13

    #@f9
    .line 754
    .local v13, "anchorX":Ljava/lang/String;
    add-int/lit8 v2, v20, 0x1

    #@fb
    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@fe
    move-result-object v19

    #@ff
    .line 758
    .local v19, "anchorY":Ljava/lang/String;
    :try_start_2
    invoke-static {v13}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    #@102
    move-result v25

    #@103
    .line 765
    .local v25, "x":F
    :try_start_3
    invoke-static/range {v19 .. v19}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    #@106
    move-result v26

    #@107
    .line 772
    .local v26, "y":F
    const/4 v2, 0x0

    #@108
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    #@10b
    move-result v2

    #@10c
    const/16 v3, 0x72

    #@10e
    if-ne v2, v3, :cond_9

    #@110
    .line 773
    move/from16 v0, v25

    #@112
    move-object/from16 v1, v23

    #@114
    iput v0, v1, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    #@116
    .line 774
    move/from16 v0, v26

    #@118
    move-object/from16 v1, v23

    #@11a
    iput v0, v1, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    #@11c
    goto/16 :goto_1

    #@11e
    .line 759
    .end local v25    # "x":F
    .end local v26    # "y":F
    :catch_2
    move-exception v21

    #@11f
    .line 760
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    #@121
    iget-object v8, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #@123
    const-string/jumbo v9, "region setting"

    #@126
    .line 761
    const-string/jumbo v11, "has invalid x component"

    #@129
    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@12c
    move-result-object v12

    #@12d
    move-object v10, v4

    #@12e
    .line 760
    invoke-static/range {v8 .. v13}, Landroid/media/WebVttParser;->-wrap1(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@131
    goto/16 :goto_1

    #@133
    .line 766
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    .restart local v25    # "x":F
    :catch_3
    move-exception v21

    #@134
    .line 767
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    #@136
    iget-object v14, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #@138
    const-string/jumbo v15, "region setting"

    #@13b
    .line 768
    const-string/jumbo v17, "has invalid y component"

    #@13e
    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@141
    move-result-object v18

    #@142
    move-object/from16 v16, v4

    #@144
    .line 767
    invoke-static/range {v14 .. v19}, Landroid/media/WebVttParser;->-wrap1(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@147
    goto/16 :goto_1

    #@149
    .line 776
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    .restart local v26    # "y":F
    :cond_9
    move/from16 v0, v25

    #@14b
    move-object/from16 v1, v23

    #@14d
    iput v0, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    #@14f
    .line 777
    move/from16 v0, v26

    #@151
    move-object/from16 v1, v23

    #@153
    iput v0, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    #@155
    goto/16 :goto_1

    #@157
    .line 779
    .end local v13    # "anchorX":Ljava/lang/String;
    .end local v19    # "anchorY":Ljava/lang/String;
    .end local v20    # "commaAt":I
    .end local v25    # "x":F
    .end local v26    # "y":F
    :cond_a
    const-string/jumbo v2, "scroll"

    #@15a
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15d
    move-result v2

    #@15e
    if-eqz v2, :cond_0

    #@160
    .line 780
    const-string/jumbo v2, "up"

    #@163
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@166
    move-result v2

    #@167
    if-eqz v2, :cond_b

    #@169
    .line 782
    const/16 v2, 0x12d

    #@16b
    .line 781
    move-object/from16 v0, v23

    #@16d
    iput v2, v0, Landroid/media/TextTrackRegion;->mScrollValue:I

    #@16f
    goto/16 :goto_1

    #@171
    .line 784
    :cond_b
    move-object/from16 v0, p0

    #@173
    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #@175
    const-string/jumbo v3, "region setting"

    #@178
    const-string/jumbo v5, "has invalid value"

    #@17b
    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@17e
    goto/16 :goto_1

    #@180
    .line 788
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v22    # "equalAt":I
    .end local v24    # "setting":Ljava/lang/String;
    :cond_c
    return-object v23
.end method
