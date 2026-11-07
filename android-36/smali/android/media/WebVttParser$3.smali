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
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final synthetic blacklist this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 716
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

    .line 716
    iput-object p1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist parse(Ljava/lang/String;)V
    .registers 7
    .param p1, "line"    # Ljava/lang/String;

    .line 795
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    .line 796
    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    iget-object v1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v1}, Landroid/media/WebVttParser;->-$$Nest$fgetmParseCueId(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/WebVttParser;->-$$Nest$fputmPhase(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)V

    goto :goto_66

    .line 797
    :cond_12
    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 798
    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    iget-object v1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v1}, Landroid/media/WebVttParser;->-$$Nest$fgetmParseCueTime(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/WebVttParser;->-$$Nest$fputmPhase(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)V

    .line 799
    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmPhase(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    goto :goto_66

    .line 801
    :cond_2f
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 802
    .local v0, "colonAt":I
    if-lez v0, :cond_3f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_46

    .line 803
    :cond_3f
    iget-object v1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v2, "meta data header has invalid format"

    invoke-static {v1, v2, p1}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_46
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 806
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 808
    .local v2, "value":Ljava/lang/String;
    const-string v3, "Region"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 809
    invoke-virtual {p0, v2}, Landroid/media/WebVttParser$3;->parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;

    move-result-object v3

    .line 810
    .local v3, "region":Landroid/media/TextTrackRegion;
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v4}, Landroid/media/WebVttParser;->-$$Nest$fgetmListener(Landroid/media/WebVttParser;)Landroid/media/WebVttCueListener;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/media/WebVttCueListener;->onRegionParsed(Landroid/media/TextTrackRegion;)V

    .line 813
    .end local v0    # "colonAt":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "region":Landroid/media/TextTrackRegion;
    :cond_66
    :goto_66
    return-void
.end method

.method blacklist parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;
    .registers 22
    .param p1, "s"    # Ljava/lang/String;

    .line 718
    move-object/from16 v1, p0

    new-instance v0, Landroid/media/TextTrackRegion;

    invoke-direct {v0}, Landroid/media/TextTrackRegion;-><init>()V

    move-object v2, v0

    .line 719
    .local v2, "region":Landroid/media/TextTrackRegion;
    const-string v0, " +"

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_13
    if-ge v7, v5, :cond_125

    aget-object v8, v4, v7

    .line 720
    .local v8, "setting":Ljava/lang/String;
    const/16 v0, 0x3d

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 721
    .local v9, "equalAt":I
    if-lez v9, :cond_120

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v9, v0, :cond_29

    .line 722
    goto/16 :goto_120

    .line 725
    :cond_29
    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 726
    .local v12, "name":Ljava/lang/String;
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 727
    .local v15, "value":Ljava/lang/String;
    const-string v0, "id"

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 728
    iput-object v15, v2, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    goto/16 :goto_120

    .line 729
    :cond_3f
    const-string v0, "width"

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 731
    :try_start_47
    invoke-static {v15}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Landroid/media/TextTrackRegion;->mWidth:F
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_4d} :catch_4f

    .line 735
    goto/16 :goto_120

    .line 732
    :catch_4f
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v10, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    .line 734
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 733
    const-string v11, "region setting"

    const-string v13, "has invalid value"

    invoke-static/range {v10 .. v15}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    move-object v10, v15

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v15    # "value":Ljava/lang/String;
    .local v10, "value":Ljava/lang/String;
    goto/16 :goto_120

    .line 736
    .end local v10    # "value":Ljava/lang/String;
    .restart local v15    # "value":Ljava/lang/String;
    :cond_60
    move-object v10, v15

    .end local v15    # "value":Ljava/lang/String;
    .restart local v10    # "value":Ljava/lang/String;
    const-string v0, "lines"

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v13, "region setting"

    if-eqz v11, :cond_8d

    .line 737
    const-string v11, ".*[^0-9].*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7c

    .line 738
    iget-object v11, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v13, "contains an invalid character"

    invoke-static {v11, v0, v12, v13, v10}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_120

    .line 741
    :cond_7c
    :try_start_7c
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Landroid/media/TextTrackRegion;->mLines:I
    :try_end_82
    .catch Ljava/lang/NumberFormatException; {:try_start_7c .. :try_end_82} :catch_83

    .line 742
    goto :goto_8b

    .line 743
    :catch_83
    move-exception v0

    .line 744
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    iget-object v11, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v14, "is not numeric"

    invoke-static {v11, v13, v12, v14, v10}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_8b
    goto/16 :goto_120

    .line 747
    :cond_8d
    const-string v0, "regionanchor"

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 748
    const-string v0, "viewportanchor"

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    goto :goto_bd

    .line 781
    :cond_9e
    const-string v0, "scroll"

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 782
    const-string v0, "up"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 783
    const/16 v0, 0x12d

    iput v0, v2, Landroid/media/TextTrackRegion;->mScrollValue:I

    goto/16 :goto_120

    .line 786
    :cond_b4
    iget-object v0, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v11, "has invalid value"

    invoke-static {v0, v13, v12, v11, v10}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_120

    .line 781
    :cond_bc
    :goto_bc
    goto :goto_120

    .line 749
    :cond_bd
    :goto_bd
    const-string v0, ","

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 750
    .local v11, "commaAt":I
    if-gez v11, :cond_cd

    .line 751
    iget-object v0, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v14, "contains no comma"

    invoke-static {v0, v13, v12, v14, v10}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    goto :goto_120

    .line 755
    :cond_cd
    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 756
    .local v16, "anchorX":Ljava/lang/String;
    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 760
    .local v15, "anchorY":Ljava/lang/String;
    :try_start_d7
    invoke-static/range {v16 .. v16}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v0
    :try_end_db
    .catch Ljava/lang/NumberFormatException; {:try_start_d7 .. :try_end_db} :catch_10a

    move v13, v0

    .line 765
    .local v13, "x":F
    nop

    .line 767
    :try_start_dd
    invoke-static {v15}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v0
    :try_end_e1
    .catch Ljava/lang/NumberFormatException; {:try_start_dd .. :try_end_e1} :catch_f4

    .line 772
    .local v0, "y":F
    nop

    .line 774
    invoke-virtual {v12, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v6, 0x72

    if-ne v14, v6, :cond_ef

    .line 775
    iput v13, v2, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    .line 776
    iput v0, v2, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    goto :goto_bc

    .line 778
    :cond_ef
    iput v13, v2, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    .line 779
    iput v0, v2, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    goto :goto_bc

    .line 768
    .end local v0    # "y":F
    :catch_f4
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object v6, v10

    .end local v10    # "value":Ljava/lang/String;
    .local v6, "value":Ljava/lang/String;
    iget-object v10, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    .line 770
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 769
    move/from16 v17, v11

    .end local v11    # "commaAt":I
    .local v17, "commaAt":I
    const-string v11, "region setting"

    move/from16 v18, v13

    .end local v13    # "x":F
    .local v18, "x":F
    const-string v13, "has invalid y component"

    invoke-static/range {v10 .. v15}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    move-object/from16 v19, v15

    .end local v15    # "anchorY":Ljava/lang/String;
    .local v19, "anchorY":Ljava/lang/String;
    goto :goto_120

    .line 761
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "value":Ljava/lang/String;
    .end local v17    # "commaAt":I
    .end local v18    # "x":F
    .end local v19    # "anchorY":Ljava/lang/String;
    .restart local v10    # "value":Ljava/lang/String;
    .restart local v11    # "commaAt":I
    .restart local v15    # "anchorY":Ljava/lang/String;
    :catch_10a
    move-exception v0

    move-object v6, v10

    move/from16 v17, v11

    move-object/from16 v19, v15

    .line 762
    .end local v10    # "value":Ljava/lang/String;
    .end local v11    # "commaAt":I
    .end local v15    # "anchorY":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "value":Ljava/lang/String;
    .restart local v17    # "commaAt":I
    .restart local v19    # "anchorY":Ljava/lang/String;
    iget-object v10, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    .line 763
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 762
    const-string v11, "region setting"

    const-string v13, "has invalid x component"

    move-object/from16 v15, v16

    .end local v16    # "anchorX":Ljava/lang/String;
    .local v15, "anchorX":Ljava/lang/String;
    invoke-static/range {v10 .. v15}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    nop

    .line 719
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "value":Ljava/lang/String;
    .end local v8    # "setting":Ljava/lang/String;
    .end local v9    # "equalAt":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "anchorX":Ljava/lang/String;
    .end local v17    # "commaAt":I
    .end local v19    # "anchorY":Ljava/lang/String;
    :cond_120
    :goto_120
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_13

    .line 790
    :cond_125
    return-object v2
.end method
