.class Landroid/media/WebVttRenderingWidget;
.super Landroid/view/ViewGroup;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WebVttRenderingWidget$RegionLayout;,
        Landroid/media/WebVttRenderingWidget$CueLayout;,
        Landroid/media/WebVttRenderingWidget$SpanLayout;,
        Landroid/media/WebVttRenderingWidget$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_CUE_BACKGROUND:I = -0x7f010000

.field private static final DEBUG_REGION_BACKGROUND:I = -0x7fffff01

.field private static final DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final LINE_HEIGHT_RATIO:F = 0.0533f


# instance fields
.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private final mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private final mCueBoxes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/TextTrackCue;",
            "Landroid/media/WebVttRenderingWidget$CueLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mFontSize:F

.field private mHasChangeListener:Z

.field private mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private final mManager:Landroid/view/accessibility/CaptioningManager;

.field private final mRegionBoxes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/TextTrackRegion;",
            "Landroid/media/WebVttRenderingWidget$RegionLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/media/WebVttRenderingWidget;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/WebVttRenderingWidget;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    #@2
    return v0
.end method

.method static synthetic -wrap0(II)I
    .locals 1
    .param p0, "layoutDirection"    # I
    .param p1, "alignment"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/media/WebVttRenderingWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 0
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "fontSize"    # F

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1117
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@2
    sput-object v0, Landroid/media/WebVttRenderingWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@4
    .line 1114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1149
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 1148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1153
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 1152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 1157
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 1156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 1162
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 1127
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    .line 1126
    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    #@a
    .line 1131
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    .line 1130
    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    #@11
    .line 1507
    new-instance v0, Landroid/media/WebVttRenderingWidget$1;

    #@13
    invoke-direct {v0, p0}, Landroid/media/WebVttRenderingWidget$1;-><init>(Landroid/media/WebVttRenderingWidget;)V

    #@16
    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    #@18
    .line 1165
    const/4 v0, 0x1

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-virtual {p0, v0, v1}, Landroid/media/WebVttRenderingWidget;->setLayerType(ILandroid/graphics/Paint;)V

    #@1d
    .line 1167
    const-string/jumbo v0, "captioning"

    #@20
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    #@26
    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    #@28
    .line 1168
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    #@2a
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@30
    .line 1169
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    #@32
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    #@35
    move-result v0

    #@36
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    #@39
    move-result v1

    #@3a
    int-to-float v1, v1

    #@3b
    mul-float/2addr v0, v1

    #@3c
    const v1, 0x3d5a511a    # 0.0533f

    #@3f
    mul-float/2addr v0, v1

    #@40
    iput v0, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    #@42
    .line 1161
    return-void
.end method

.method private calculateLinePosition(Landroid/media/WebVttRenderingWidget$CueLayout;)I
    .locals 6
    .param p1, "cueBox"    # Landroid/media/WebVttRenderingWidget$CueLayout;

    #@0
    .prologue
    const/16 v5, 0x64

    #@2
    .line 1472
    invoke-virtual {p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    #@5
    move-result-object v1

    #@6
    .line 1473
    .local v1, "cue":Landroid/media/TextTrackCue;
    iget-object v2, v1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    #@8
    .line 1474
    .local v2, "linePosition":Ljava/lang/Integer;
    iget-boolean v3, v1, Landroid/media/TextTrackCue;->mSnapToLines:Z

    #@a
    .line 1475
    .local v3, "snapToLines":Z
    if-nez v2, :cond_1

    #@c
    const/4 v0, 0x1

    #@d
    .line 1477
    .local v0, "autoPosition":Z
    :goto_0
    if-nez v3, :cond_0

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 1480
    :cond_0
    if-nez v0, :cond_4

    #@13
    .line 1482
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v4

    #@17
    return v4

    #@18
    .line 1475
    .end local v0    # "autoPosition":Z
    :cond_1
    const/4 v0, 0x0

    #@19
    .restart local v0    # "autoPosition":Z
    goto :goto_0

    #@1a
    .line 1477
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@1d
    move-result v4

    #@1e
    if-ltz v4, :cond_3

    #@20
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@23
    move-result v4

    #@24
    if-le v4, v5, :cond_0

    #@26
    .line 1479
    :cond_3
    return v5

    #@27
    .line 1483
    :cond_4
    if-nez v3, :cond_5

    #@29
    .line 1485
    return v5

    #@2a
    .line 1488
    :cond_5
    invoke-static {p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->-get0(Landroid/media/WebVttRenderingWidget$CueLayout;)I

    #@2d
    move-result v4

    #@2e
    add-int/lit8 v4, v4, 0x1

    #@30
    neg-int v4, v4

    #@31
    return v4
.end method

.method private layoutCue(IILandroid/media/WebVttRenderingWidget$CueLayout;)V
    .locals 19
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "cueBox"    # Landroid/media/WebVttRenderingWidget$CueLayout;

    #@0
    .prologue
    .line 1400
    invoke-virtual/range {p3 .. p3}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    #@3
    move-result-object v4

    #@4
    .line 1401
    .local v4, "cue":Landroid/media/TextTrackCue;
    invoke-virtual/range {p0 .. p0}, Landroid/media/WebVttRenderingWidget;->getLayoutDirection()I

    #@7
    move-result v6

    #@8
    .line 1402
    .local v6, "direction":I
    iget v0, v4, Landroid/media/TextTrackCue;->mAlignment:I

    #@a
    move/from16 v17, v0

    #@c
    move/from16 v0, v17

    #@e
    invoke-static {v6, v0}, Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I

    #@11
    move-result v3

    #@12
    .line 1403
    .local v3, "absAlignment":I
    iget-boolean v5, v4, Landroid/media/TextTrackCue;->mSnapToLines:Z

    #@14
    .line 1405
    .local v5, "cueSnapToLines":Z
    invoke-virtual/range {p3 .. p3}, Landroid/media/WebVttRenderingWidget$CueLayout;->getMeasuredWidth()I

    #@17
    move-result v17

    #@18
    mul-int/lit8 v17, v17, 0x64

    #@1a
    div-int v12, v17, p1

    #@1c
    .line 1409
    .local v12, "size":I
    packed-switch v3, :pswitch_data_0

    #@1f
    .line 1418
    iget v0, v4, Landroid/media/TextTrackCue;->mTextPosition:I

    #@21
    move/from16 v17, v0

    #@23
    div-int/lit8 v18, v12, 0x2

    #@25
    sub-int v15, v17, v18

    #@27
    .line 1423
    .local v15, "xPosition":I
    :goto_0
    const/16 v17, 0x1

    #@29
    move/from16 v0, v17

    #@2b
    if-ne v6, v0, :cond_0

    #@2d
    .line 1424
    rsub-int/lit8 v15, v15, 0x64

    #@2f
    .line 1430
    :cond_0
    if-eqz v5, :cond_2

    #@31
    .line 1431
    invoke-virtual/range {p0 .. p0}, Landroid/media/WebVttRenderingWidget;->getPaddingLeft()I

    #@34
    move-result v17

    #@35
    mul-int/lit8 v17, v17, 0x64

    #@37
    div-int v9, v17, p1

    #@39
    .line 1432
    .local v9, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/WebVttRenderingWidget;->getPaddingRight()I

    #@3c
    move-result v17

    #@3d
    mul-int/lit8 v17, v17, 0x64

    #@3f
    div-int v10, v17, p1

    #@41
    .line 1433
    .local v10, "paddingRight":I
    if-ge v15, v9, :cond_1

    #@43
    add-int v17, v15, v12

    #@45
    move/from16 v0, v17

    #@47
    if-le v0, v9, :cond_1

    #@49
    .line 1434
    add-int/2addr v15, v9

    #@4a
    .line 1435
    sub-int/2addr v12, v9

    #@4b
    .line 1437
    :cond_1
    rsub-int/lit8 v17, v10, 0x64

    #@4d
    move/from16 v0, v17

    #@4f
    int-to-float v11, v0

    #@50
    .line 1438
    .local v11, "rightEdge":F
    int-to-float v0, v15

    #@51
    move/from16 v17, v0

    #@53
    cmpg-float v17, v17, v11

    #@55
    if-gez v17, :cond_2

    #@57
    add-int v17, v15, v12

    #@59
    move/from16 v0, v17

    #@5b
    int-to-float v0, v0

    #@5c
    move/from16 v17, v0

    #@5e
    cmpl-float v17, v17, v11

    #@60
    if-lez v17, :cond_2

    #@62
    .line 1439
    sub-int/2addr v12, v10

    #@63
    .line 1444
    .end local v9    # "paddingLeft":I
    .end local v10    # "paddingRight":I
    .end local v11    # "rightEdge":F
    :cond_2
    mul-int v17, v15, p1

    #@65
    div-int/lit8 v8, v17, 0x64

    #@67
    .line 1445
    .local v8, "left":I
    mul-int v17, v12, p1

    #@69
    div-int/lit8 v14, v17, 0x64

    #@6b
    .line 1448
    .local v14, "width":I
    move-object/from16 v0, p0

    #@6d
    move-object/from16 v1, p3

    #@6f
    invoke-direct {v0, v1}, Landroid/media/WebVttRenderingWidget;->calculateLinePosition(Landroid/media/WebVttRenderingWidget$CueLayout;)I

    #@72
    move-result v16

    #@73
    .line 1451
    .local v16, "yPosition":I
    invoke-virtual/range {p3 .. p3}, Landroid/media/WebVttRenderingWidget$CueLayout;->getMeasuredHeight()I

    #@76
    move-result v7

    #@77
    .line 1453
    .local v7, "height":I
    if-gez v16, :cond_3

    #@79
    .line 1455
    mul-int v17, v16, v7

    #@7b
    add-int v13, p2, v17

    #@7d
    .line 1461
    .local v13, "top":I
    :goto_1
    add-int v17, v8, v14

    #@7f
    add-int v18, v13, v7

    #@81
    move-object/from16 v0, p3

    #@83
    move/from16 v1, v17

    #@85
    move/from16 v2, v18

    #@87
    invoke-virtual {v0, v8, v13, v1, v2}, Landroid/media/WebVttRenderingWidget$CueLayout;->layout(IIII)V

    #@8a
    .line 1399
    return-void

    #@8b
    .line 1411
    .end local v7    # "height":I
    .end local v8    # "left":I
    .end local v13    # "top":I
    .end local v14    # "width":I
    .end local v15    # "xPosition":I
    .end local v16    # "yPosition":I
    :pswitch_0
    iget v15, v4, Landroid/media/TextTrackCue;->mTextPosition:I

    #@8d
    .restart local v15    # "xPosition":I
    goto :goto_0

    #@8e
    .line 1414
    .end local v15    # "xPosition":I
    :pswitch_1
    iget v0, v4, Landroid/media/TextTrackCue;->mTextPosition:I

    #@90
    move/from16 v17, v0

    #@92
    sub-int v15, v17, v12

    #@94
    .line 1415
    .restart local v15    # "xPosition":I
    goto :goto_0

    #@95
    .line 1457
    .restart local v7    # "height":I
    .restart local v8    # "left":I
    .restart local v14    # "width":I
    .restart local v16    # "yPosition":I
    :cond_3
    sub-int v17, p2, v7

    #@97
    mul-int v17, v17, v16

    #@99
    div-int/lit8 v13, v17, 0x64

    #@9b
    .restart local v13    # "top":I
    goto :goto_1

    #@9c
    .line 1409
    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private layoutRegion(IILandroid/media/WebVttRenderingWidget$RegionLayout;)V
    .locals 9
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "regionBox"    # Landroid/media/WebVttRenderingWidget$RegionLayout;

    #@0
    .prologue
    const/high16 v8, 0x42c80000    # 100.0f

    #@2
    .line 1382
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getRegion()Landroid/media/TextTrackRegion;

    #@5
    move-result-object v1

    #@6
    .line 1383
    .local v1, "region":Landroid/media/TextTrackRegion;
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getMeasuredHeight()I

    #@9
    move-result v2

    #@a
    .line 1384
    .local v2, "regionHeight":I
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getMeasuredWidth()I

    #@d
    move-result v3

    #@e
    .line 1387
    .local v3, "regionWidth":I
    iget v5, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    #@10
    .line 1388
    .local v5, "x":F
    iget v6, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    #@12
    .line 1389
    .local v6, "y":F
    sub-int v7, p1, v3

    #@14
    int-to-float v7, v7

    #@15
    mul-float/2addr v7, v5

    #@16
    div-float/2addr v7, v8

    #@17
    float-to-int v0, v7

    #@18
    .line 1390
    .local v0, "left":I
    sub-int v7, p2, v2

    #@1a
    int-to-float v7, v7

    #@1b
    mul-float/2addr v7, v6

    #@1c
    div-float/2addr v7, v8

    #@1d
    float-to-int v4, v7

    #@1e
    .line 1392
    .local v4, "top":I
    add-int v7, v0, v3

    #@20
    add-int v8, v4, v2

    #@22
    invoke-virtual {p3, v0, v4, v7, v8}, Landroid/media/WebVttRenderingWidget$RegionLayout;->layout(IIII)V

    #@25
    .line 1381
    return-void
.end method

.method private manageChangeListener()V
    .locals 5

    #@0
    .prologue
    .line 1215
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->isAttachedToWindow()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getVisibility()I

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_1

    #@c
    const/4 v2, 0x1

    #@d
    .line 1216
    .local v2, "needsListener":Z
    :goto_0
    iget-boolean v3, p0, Landroid/media/WebVttRenderingWidget;->mHasChangeListener:Z

    #@f
    if-eq v3, v2, :cond_0

    #@11
    .line 1217
    iput-boolean v2, p0, Landroid/media/WebVttRenderingWidget;->mHasChangeListener:Z

    #@13
    .line 1219
    if-eqz v2, :cond_2

    #@15
    .line 1220
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    #@17
    iget-object v4, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    #@19
    invoke-virtual {v3, v4}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    #@1c
    .line 1222
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    #@1e
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@21
    move-result-object v0

    #@22
    .line 1223
    .local v0, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    #@24
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    #@27
    move-result v3

    #@28
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    #@2b
    move-result v4

    #@2c
    int-to-float v4, v4

    #@2d
    mul-float/2addr v3, v4

    #@2e
    const v4, 0x3d5a511a    # 0.0533f

    #@31
    mul-float v1, v3, v4

    #@33
    .line 1224
    .local v1, "fontSize":F
    invoke-direct {p0, v0, v1}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    #@36
    .line 1214
    .end local v0    # "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v1    # "fontSize":F
    :cond_0
    :goto_1
    return-void

    #@37
    .line 1215
    .end local v2    # "needsListener":Z
    :cond_1
    const/4 v2, 0x0

    #@38
    .restart local v2    # "needsListener":Z
    goto :goto_0

    #@39
    .line 1226
    :cond_2
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    #@3b
    iget-object v4, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    #@3d
    invoke-virtual {v3, v4}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    #@40
    goto :goto_1
.end method

.method private prepForPrune()V
    .locals 6

    #@0
    .prologue
    .line 1324
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v4

    #@6
    .line 1325
    .local v4, "regionCount":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    #@9
    .line 1326
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    #@11
    .line 1327
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->prepForPrune()V

    #@14
    .line 1325
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1330
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_0
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@1c
    move-result v1

    #@1d
    .line 1331
    .local v1, "cueCount":I
    const/4 v2, 0x0

    #@1e
    :goto_1
    if-ge v2, v1, :cond_1

    #@20
    .line 1332
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    #@22
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    #@28
    .line 1333
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0}, Landroid/media/WebVttRenderingWidget$CueLayout;->prepForPrune()V

    #@2b
    .line 1331
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 1323
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_1
    return-void
.end method

.method private prune()V
    .locals 6

    #@0
    .prologue
    .line 1297
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v4

    #@6
    .line 1298
    .local v4, "regionCount":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    #@9
    .line 1299
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    #@11
    .line 1300
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->prune()Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    .line 1301
    invoke-virtual {p0, v3}, Landroid/media/WebVttRenderingWidget;->removeView(Landroid/view/View;)V

    #@1a
    .line 1302
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@1f
    .line 1303
    add-int/lit8 v4, v4, -0x1

    #@21
    .line 1304
    add-int/lit8 v2, v2, -0x1

    #@23
    .line 1298
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1308
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_1
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    #@28
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@2b
    move-result v1

    #@2c
    .line 1309
    .local v1, "cueCount":I
    const/4 v2, 0x0

    #@2d
    :goto_1
    if-ge v2, v1, :cond_3

    #@2f
    .line 1310
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    #@31
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    #@37
    .line 1311
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0}, Landroid/media/WebVttRenderingWidget$CueLayout;->isActive()Z

    #@3a
    move-result v5

    #@3b
    if-nez v5, :cond_2

    #@3d
    .line 1312
    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget;->removeView(Landroid/view/View;)V

    #@40
    .line 1313
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    #@42
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@45
    .line 1314
    add-int/lit8 v1, v1, -0x1

    #@47
    .line 1315
    add-int/lit8 v2, v2, -0x1

    #@49
    .line 1309
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 1296
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_3
    return-void
.end method

.method private static resolveCueAlignment(II)I
    .locals 2
    .param p0, "layoutDirection"    # I
    .param p1, "alignment"    # I

    #@0
    .prologue
    const/16 v1, 0xcc

    #@2
    const/16 v0, 0xcb

    #@4
    .line 1496
    packed-switch p1, :pswitch_data_0

    #@7
    .line 1504
    return p1

    #@8
    .line 1498
    :pswitch_0
    if-nez p0, :cond_0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    move v0, v1

    #@c
    .line 1499
    goto :goto_0

    #@d
    .line 1501
    :pswitch_1
    if-nez p0, :cond_1

    #@f
    :goto_1
    return v1

    #@10
    :cond_1
    move v1, v0

    #@11
    .line 1502
    goto :goto_1

    #@12
    .line 1496
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 6
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "fontSize"    # F

    #@0
    .prologue
    .line 1276
    sget-object v5, Landroid/media/WebVttRenderingWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@2
    invoke-virtual {v5, p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@5
    move-result-object p1

    #@6
    .line 1277
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@8
    .line 1278
    iput p2, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    #@a
    .line 1280
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@f
    move-result v1

    #@10
    .line 1281
    .local v1, "cueCount":I
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@13
    .line 1282
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    #@1b
    .line 1283
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    #@1e
    .line 1281
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1286
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_0
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    #@23
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@26
    move-result v4

    #@27
    .line 1287
    .local v4, "regionCount":I
    const/4 v2, 0x0

    #@28
    :goto_1
    if-ge v2, v4, :cond_1

    #@2a
    .line 1288
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    #@2c
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    #@32
    .line 1289
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    #@35
    .line 1287
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_1

    #@38
    .line 1275
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_1
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    #@0
    .prologue
    .line 1183
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    .line 1185
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    #@6
    .line 1182
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 1190
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    .line 1192
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    #@6
    .line 1189
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 1356
    sub-int v6, p4, p2

    #@2
    .line 1357
    .local v6, "viewportWidth":I
    sub-int v5, p5, p3

    #@4
    .line 1359
    .local v5, "viewportHeight":I
    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@6
    .line 1360
    iget-object v8, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    #@8
    invoke-virtual {v8}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    #@b
    move-result v8

    #@c
    const v9, 0x3d5a511a    # 0.0533f

    #@f
    mul-float/2addr v8, v9

    #@10
    int-to-float v9, v5

    #@11
    mul-float/2addr v8, v9

    #@12
    .line 1359
    invoke-direct {p0, v7, v8}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    #@15
    .line 1362
    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@1a
    move-result v4

    #@1b
    .line 1363
    .local v4, "regionCount":I
    const/4 v2, 0x0

    #@1c
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    #@1e
    .line 1364
    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    #@20
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    #@26
    .line 1365
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-direct {p0, v6, v5, v3}, Landroid/media/WebVttRenderingWidget;->layoutRegion(IILandroid/media/WebVttRenderingWidget$RegionLayout;)V

    #@29
    .line 1363
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 1368
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_0
    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    #@2e
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@31
    move-result v1

    #@32
    .line 1369
    .local v1, "cueCount":I
    const/4 v2, 0x0

    #@33
    :goto_1
    if-ge v2, v1, :cond_1

    #@35
    .line 1370
    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    #@37
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    #@3d
    .line 1371
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-direct {p0, v6, v5, v0}, Landroid/media/WebVttRenderingWidget;->layoutCue(IILandroid/media/WebVttRenderingWidget$CueLayout;)V

    #@40
    .line 1369
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_1

    #@43
    .line 1355
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 1339
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    #@3
    .line 1341
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@8
    move-result v4

    #@9
    .line 1342
    .local v4, "regionCount":I
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    #@c
    .line 1343
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    #@14
    .line 1344
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->measureForParent(II)V

    #@17
    .line 1342
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1347
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_0
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@1f
    move-result v1

    #@20
    .line 1348
    .local v1, "cueCount":I
    const/4 v2, 0x0

    #@21
    :goto_1
    if-ge v2, v1, :cond_1

    #@23
    .line 1349
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    #@25
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    #@2b
    .line 1350
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->measureForParent(II)V

    #@2e
    .line 1348
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_1

    #@31
    .line 1338
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_1
    return-void
.end method

.method public setActiveCues(Ljava/util/Vector;)V
    .locals 13
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
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    const/4 v12, -0x2

    #@1
    .line 1232
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getContext()Landroid/content/Context;

    #@4
    move-result-object v1

    #@5
    .line 1233
    .local v1, "context":Landroid/content/Context;
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@7
    .line 1234
    .local v0, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget v5, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    #@9
    .line 1236
    .local v5, "fontSize":F
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->prepForPrune()V

    #@c
    .line 1239
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@f
    move-result v2

    #@10
    .line 1240
    .local v2, "count":I
    const/4 v7, 0x0

    #@11
    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_3

    #@13
    .line 1241
    invoke-virtual {p1, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Landroid/media/TextTrackCue;

    #@19
    .line 1242
    .local v3, "cue":Landroid/media/TextTrackCue;
    iget-object v8, v3, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    #@1b
    .line 1243
    .local v8, "region":Landroid/media/TextTrackRegion;
    if-eqz v8, :cond_1

    #@1d
    .line 1244
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v9

    #@23
    check-cast v9, Landroid/media/WebVttRenderingWidget$RegionLayout;

    #@25
    .line 1245
    .local v9, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    if-nez v9, :cond_0

    #@27
    .line 1246
    new-instance v9, Landroid/media/WebVttRenderingWidget$RegionLayout;

    #@29
    .end local v9    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-direct {v9, v1, v8, v0, v5}, Landroid/media/WebVttRenderingWidget$RegionLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackRegion;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    #@2c
    .line 1247
    .restart local v9    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    #@2e
    invoke-virtual {v11, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 1248
    invoke-virtual {p0, v9, v12, v12}, Landroid/media/WebVttRenderingWidget;->addView(Landroid/view/View;II)V

    #@34
    .line 1250
    :cond_0
    invoke-virtual {v9, v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->put(Landroid/media/TextTrackCue;)V

    #@37
    .line 1240
    .end local v9    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 1252
    :cond_1
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    #@3c
    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v4

    #@40
    check-cast v4, Landroid/media/WebVttRenderingWidget$CueLayout;

    #@42
    .line 1253
    .local v4, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    if-nez v4, :cond_2

    #@44
    .line 1254
    new-instance v4, Landroid/media/WebVttRenderingWidget$CueLayout;

    #@46
    .end local v4    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-direct {v4, v1, v3, v0, v5}, Landroid/media/WebVttRenderingWidget$CueLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    #@49
    .line 1255
    .restart local v4    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    #@4b
    invoke-virtual {v11, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    .line 1256
    invoke-virtual {p0, v4, v12, v12}, Landroid/media/WebVttRenderingWidget;->addView(Landroid/view/View;II)V

    #@51
    .line 1258
    :cond_2
    invoke-virtual {v4}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    #@54
    .line 1259
    invoke-virtual {v4, v7}, Landroid/media/WebVttRenderingWidget$CueLayout;->setOrder(I)V

    #@57
    goto :goto_1

    #@58
    .line 1263
    .end local v3    # "cue":Landroid/media/TextTrackCue;
    .end local v4    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    .end local v8    # "region":Landroid/media/TextTrackRegion;
    :cond_3
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->prune()V

    #@5b
    .line 1266
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getWidth()I

    #@5e
    move-result v10

    #@5f
    .line 1267
    .local v10, "width":I
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    #@62
    move-result v6

    #@63
    .line 1268
    .local v6, "height":I
    invoke-virtual {p0, v10, v6}, Landroid/media/WebVttRenderingWidget;->setSize(II)V

    #@66
    .line 1270
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    #@68
    if-eqz v11, :cond_4

    #@6a
    .line 1271
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    #@6c
    invoke-interface {v11, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    #@6f
    .line 1231
    :cond_4
    return-void
.end method

.method public setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    #@0
    .prologue
    .line 1197
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    #@2
    .line 1196
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    #@2
    const/4 v2, 0x0

    #@3
    .line 1174
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@6
    move-result v1

    #@7
    .line 1175
    .local v1, "widthSpec":I
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@a
    move-result v0

    #@b
    .line 1177
    .local v0, "heightSpec":I
    invoke-virtual {p0, v1, v0}, Landroid/media/WebVttRenderingWidget;->measure(II)V

    #@e
    .line 1178
    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/media/WebVttRenderingWidget;->layout(IIII)V

    #@11
    .line 1173
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 1202
    if-eqz p1, :cond_0

    #@2
    .line 1203
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget;->setVisibility(I)V

    #@6
    .line 1208
    :goto_0
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    #@9
    .line 1201
    return-void

    #@a
    .line 1205
    :cond_0
    const/16 v0, 0x8

    #@c
    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget;->setVisibility(I)V

    #@f
    goto :goto_0
.end method
