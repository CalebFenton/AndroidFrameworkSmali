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
        Landroid/media/WebVttRenderingWidget$SpanLayout;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DEBUG_CUE_BACKGROUND:I = -0x7f010000

.field private static final greylist-max-o DEBUG_REGION_BACKGROUND:I = -0x7fffff01

.field private static final greylist-max-o DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final greylist-max-o LINE_HEIGHT_RATIO:F = 0.0533f


# instance fields
.field private greylist-max-o mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private final greylist-max-o mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private final greylist-max-o mCueBoxes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/TextTrackCue;",
            "Landroid/media/WebVttRenderingWidget$CueLayout;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFontSize:F

.field private greylist-max-o mHasChangeListener:Z

.field private greylist-max-o mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private final greylist-max-o mManager:Landroid/view/accessibility/CaptioningManager;

.field private final greylist-max-o mRegionBoxes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/TextTrackRegion;",
            "Landroid/media/WebVttRenderingWidget$RegionLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCaptionStyle(Landroid/media/WebVttRenderingWidget;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFontSize(Landroid/media/WebVttRenderingWidget;)F
    .registers 1

    iget p0, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetCaptionStyle(Landroid/media/WebVttRenderingWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smresolveCueAlignment(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1119
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/media/WebVttRenderingWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1152
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1156
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 1159
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1160
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 1164
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1128
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    .line 1132
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    .line 1509
    new-instance v0, Landroid/media/WebVttRenderingWidget$1;

    invoke-direct {v0, p0}, Landroid/media/WebVttRenderingWidget$1;-><init>(Landroid/media/WebVttRenderingWidget;)V

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 1167
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/WebVttRenderingWidget;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1169
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    .line 1170
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1171
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x3d5a511a    # 0.0533f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .line 1172
    return-void
.end method

.method private greylist-max-o calculateLinePosition(Landroid/media/WebVttRenderingWidget$CueLayout;)I
    .registers 9
    .param p1, "cueBox"    # Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1474
    invoke-virtual {p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    move-result-object v0

    .line 1475
    .local v0, "cue":Landroid/media/TextTrackCue;
    iget-object v1, v0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 1476
    .local v1, "linePosition":Ljava/lang/Integer;
    iget-boolean v2, v0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 1477
    .local v2, "snapToLines":Z
    const/4 v3, 0x1

    if-nez v1, :cond_d

    move v4, v3

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    .line 1479
    .local v4, "autoPosition":Z
    :goto_e
    const/16 v5, 0x64

    if-nez v2, :cond_21

    if-nez v4, :cond_21

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_20

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v5, :cond_21

    .line 1481
    :cond_20
    return v5

    .line 1482
    :cond_21
    if-nez v4, :cond_28

    .line 1484
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 1485
    :cond_28
    if-nez v2, :cond_2b

    .line 1487
    return v5

    .line 1490
    :cond_2b
    invoke-static {p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->-$$Nest$fgetmOrder(Landroid/media/WebVttRenderingWidget$CueLayout;)I

    move-result v5

    add-int/2addr v5, v3

    neg-int v3, v5

    return v3
.end method

.method private greylist-max-o layoutCue(IILandroid/media/WebVttRenderingWidget$CueLayout;)V
    .registers 18
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "cueBox"    # Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1402
    move-object/from16 v0, p3

    invoke-virtual {v0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    move-result-object v1

    .line 1403
    .local v1, "cue":Landroid/media/TextTrackCue;
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getLayoutDirection()I

    move-result v2

    .line 1404
    .local v2, "direction":I
    iget v3, v1, Landroid/media/TextTrackCue;->mAlignment:I

    invoke-static {v2, v3}, Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I

    move-result v3

    .line 1405
    .local v3, "absAlignment":I
    iget-boolean v4, v1, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 1407
    .local v4, "cueSnapToLines":Z
    invoke-virtual {v0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getMeasuredWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x64

    div-int/2addr v5, p1

    .line 1411
    .local v5, "size":I
    packed-switch v3, :pswitch_data_7a

    .line 1420
    iget v6, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    .local v6, "xPosition":I
    goto :goto_29

    .line 1416
    .end local v6    # "xPosition":I
    :pswitch_22
    iget v6, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    sub-int/2addr v6, v5

    .line 1417
    .restart local v6    # "xPosition":I
    goto :goto_29

    .line 1413
    .end local v6    # "xPosition":I
    :pswitch_26
    iget v6, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 1414
    .restart local v6    # "xPosition":I
    nop

    .line 1425
    :goto_29
    const/4 v7, 0x1

    if-ne v2, v7, :cond_2e

    .line 1426
    rsub-int/lit8 v6, v6, 0x64

    .line 1432
    :cond_2e
    if-eqz v4, :cond_56

    .line 1433
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getPaddingLeft()I

    move-result v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, p1

    .line 1434
    .local v7, "paddingLeft":I
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getPaddingRight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, p1

    .line 1435
    .local v8, "paddingRight":I
    if-ge v6, v7, :cond_46

    add-int v9, v6, v5

    if-le v9, v7, :cond_46

    .line 1436
    add-int/2addr v6, v7

    .line 1437
    sub-int/2addr v5, v7

    .line 1439
    :cond_46
    rsub-int/lit8 v9, v8, 0x64

    int-to-float v9, v9

    .line 1440
    .local v9, "rightEdge":F
    int-to-float v10, v6

    cmpg-float v10, v10, v9

    if-gez v10, :cond_56

    add-int v10, v6, v5

    int-to-float v10, v10

    cmpl-float v10, v10, v9

    if-lez v10, :cond_56

    .line 1441
    sub-int/2addr v5, v8

    .line 1446
    .end local v7    # "paddingLeft":I
    .end local v8    # "paddingRight":I
    .end local v9    # "rightEdge":F
    :cond_56
    mul-int v7, v6, p1

    div-int/lit8 v7, v7, 0x64

    .line 1447
    .local v7, "left":I
    mul-int v8, v5, p1

    div-int/lit8 v8, v8, 0x64

    .line 1450
    .local v8, "width":I
    invoke-direct {p0, v0}, Landroid/media/WebVttRenderingWidget;->calculateLinePosition(Landroid/media/WebVttRenderingWidget$CueLayout;)I

    move-result v9

    .line 1453
    .local v9, "yPosition":I
    invoke-virtual {v0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getMeasuredHeight()I

    move-result v10

    .line 1455
    .local v10, "height":I
    if-gez v9, :cond_6d

    .line 1457
    mul-int v11, v9, v10

    add-int v11, p2, v11

    .local v11, "top":I
    goto :goto_72

    .line 1459
    .end local v11    # "top":I
    :cond_6d
    sub-int v11, p2, v10

    mul-int/2addr v11, v9

    div-int/lit8 v11, v11, 0x64

    .line 1463
    .restart local v11    # "top":I
    :goto_72
    add-int v12, v7, v8

    add-int v13, v11, v10

    invoke-virtual {v0, v7, v11, v12, v13}, Landroid/media/WebVttRenderingWidget$CueLayout;->layout(IIII)V

    .line 1464
    return-void

    :pswitch_data_7a
    .packed-switch 0xcb
        :pswitch_26
        :pswitch_22
    .end packed-switch
.end method

.method private greylist-max-o layoutRegion(IILandroid/media/WebVttRenderingWidget$RegionLayout;)V
    .registers 13
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "regionBox"    # Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1384
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getRegion()Landroid/media/TextTrackRegion;

    move-result-object v0

    .line 1385
    .local v0, "region":Landroid/media/TextTrackRegion;
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getMeasuredHeight()I

    move-result v1

    .line 1386
    .local v1, "regionHeight":I
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getMeasuredWidth()I

    move-result v2

    .line 1389
    .local v2, "regionWidth":I
    iget v3, v0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    .line 1390
    .local v3, "x":F
    iget v4, v0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    .line 1391
    .local v4, "y":F
    sub-int v5, p1, v2

    int-to-float v5, v5

    mul-float/2addr v5, v3

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 1392
    .local v5, "left":I
    sub-int v7, p2, v1

    int-to-float v7, v7

    mul-float/2addr v7, v4

    div-float/2addr v7, v6

    float-to-int v6, v7

    .line 1394
    .local v6, "top":I
    add-int v7, v5, v2

    add-int v8, v6, v1

    invoke-virtual {p3, v5, v6, v7, v8}, Landroid/media/WebVttRenderingWidget$RegionLayout;->layout(IIII)V

    .line 1395
    return-void
.end method

.method private greylist-max-o manageChangeListener()V
    .registers 5

    .line 1217
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1218
    .local v0, "needsListener":Z
    :goto_f
    iget-boolean v1, p0, Landroid/media/WebVttRenderingWidget;->mHasChangeListener:Z

    if-eq v1, v0, :cond_3f

    .line 1219
    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget;->mHasChangeListener:Z

    .line 1221
    if-eqz v0, :cond_38

    .line 1222
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 1224
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    .line 1225
    .local v1, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const v3, 0x3d5a511a    # 0.0533f

    mul-float/2addr v2, v3

    .line 1226
    .local v2, "fontSize":F
    invoke-direct {p0, v1, v2}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1227
    .end local v1    # "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v2    # "fontSize":F
    goto :goto_3f

    .line 1228
    :cond_38
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 1231
    :cond_3f
    :goto_3f
    return-void
.end method

.method private greylist-max-o prepForPrune()V
    .registers 5

    .line 1326
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1327
    .local v0, "regionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 1328
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1329
    .local v2, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->prepForPrune()V

    .line 1327
    .end local v2    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1332
    .end local v1    # "i":I
    :cond_17
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1333
    .local v1, "cueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v1, :cond_2e

    .line 1334
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1335
    .local v3, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$CueLayout;->prepForPrune()V

    .line 1333
    .end local v3    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1337
    .end local v2    # "i":I
    :cond_2e
    return-void
.end method

.method private greylist-max-o prune()V
    .registers 6

    .line 1299
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1300
    .local v0, "regionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_26

    .line 1301
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1302
    .local v2, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->prune()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1303
    invoke-virtual {p0, v2}, Landroid/media/WebVttRenderingWidget;->removeView(Landroid/view/View;)V

    .line 1304
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1305
    add-int/lit8 v0, v0, -0x1

    .line 1306
    add-int/lit8 v1, v1, -0x1

    .line 1300
    .end local v2    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1310
    .end local v1    # "i":I
    :cond_26
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1311
    .local v1, "cueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2d
    if-ge v2, v1, :cond_4c

    .line 1312
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1313
    .local v3, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$CueLayout;->isActive()Z

    move-result v4

    if-nez v4, :cond_49

    .line 1314
    invoke-virtual {p0, v3}, Landroid/media/WebVttRenderingWidget;->removeView(Landroid/view/View;)V

    .line 1315
    iget-object v4, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1316
    add-int/lit8 v1, v1, -0x1

    .line 1317
    add-int/lit8 v2, v2, -0x1

    .line 1311
    .end local v3    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 1320
    .end local v2    # "i":I
    :cond_4c
    return-void
.end method

.method private static greylist-max-o resolveCueAlignment(II)I
    .registers 4
    .param p0, "layoutDirection"    # I
    .param p1, "alignment"    # I

    .line 1498
    const/16 v0, 0xcb

    const/16 v1, 0xcc

    packed-switch p1, :pswitch_data_14

    .line 1506
    return p1

    .line 1503
    :pswitch_8
    if-nez p0, :cond_c

    .line 1504
    move v0, v1

    goto :goto_d

    :cond_c
    nop

    .line 1503
    :goto_d
    return v0

    .line 1500
    :pswitch_e
    if-nez p0, :cond_11

    .line 1501
    goto :goto_12

    :cond_11
    move v0, v1

    .line 1500
    :goto_12
    return v0

    nop

    :pswitch_data_14
    .packed-switch 0xc9
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method

.method private greylist-max-o setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .registers 7
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "fontSize"    # F

    .line 1278
    sget-object v0, Landroid/media/WebVttRenderingWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p1

    .line 1279
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1280
    iput p2, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .line 1282
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1283
    .local v0, "cueCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_21

    .line 1284
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1285
    .local v2, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v2, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1283
    .end local v2    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1288
    .end local v1    # "i":I
    :cond_21
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1289
    .local v1, "regionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v1, :cond_38

    .line 1290
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1291
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1289
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1293
    .end local v2    # "i":I
    :cond_38
    return-void
.end method


# virtual methods
.method public whitelist onAttachedToWindow()V
    .registers 1

    .line 1185
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1187
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    .line 1188
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 1

    .line 1192
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1194
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    .line 1195
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 12
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1358
    sub-int v0, p4, p2

    .line 1359
    .local v0, "viewportWidth":I
    sub-int v1, p5, p3

    .line 1361
    .local v1, "viewportHeight":I
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    .line 1362
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v3

    const v4, 0x3d5a511a    # 0.0533f

    mul-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    .line 1361
    invoke-direct {p0, v2, v3}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1364
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1365
    .local v2, "regionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v2, :cond_2c

    .line 1366
    iget-object v4, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1367
    .local v4, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-direct {p0, v0, v1, v4}, Landroid/media/WebVttRenderingWidget;->layoutRegion(IILandroid/media/WebVttRenderingWidget$RegionLayout;)V

    .line 1365
    .end local v4    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1370
    .end local v3    # "i":I
    :cond_2c
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1371
    .local v3, "cueCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_33
    if-ge v4, v3, :cond_43

    .line 1372
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1373
    .local v5, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-direct {p0, v0, v1, v5}, Landroid/media/WebVttRenderingWidget;->layoutCue(IILandroid/media/WebVttRenderingWidget$CueLayout;)V

    .line 1371
    .end local v5    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 1375
    .end local v4    # "i":I
    :cond_43
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1341
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1343
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1344
    .local v0, "regionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 1345
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1346
    .local v2, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v2, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->measureForParent(II)V

    .line 1344
    .end local v2    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1349
    .end local v1    # "i":I
    :cond_1a
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1350
    .local v1, "cueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v1, :cond_31

    .line 1351
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1352
    .local v3, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->measureForParent(II)V

    .line 1350
    .end local v3    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1354
    .end local v2    # "i":I
    :cond_31
    return-void
.end method

.method public greylist-max-o setActiveCues(Ljava/util/Vector;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .line 1234
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1235
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1236
    .local v1, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget v2, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .line 1238
    .local v2, "fontSize":F
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->prepForPrune()V

    .line 1241
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    .line 1242
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    if-ge v4, v3, :cond_5a

    .line 1243
    invoke-virtual {p1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/TextTrackCue;

    .line 1244
    .local v5, "cue":Landroid/media/TextTrackCue;
    iget-object v6, v5, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    .line 1245
    .local v6, "region":Landroid/media/TextTrackRegion;
    const/4 v7, -0x2

    if-eqz v6, :cond_39

    .line 1246
    iget-object v8, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1247
    .local v8, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    if-nez v8, :cond_35

    .line 1248
    new-instance v9, Landroid/media/WebVttRenderingWidget$RegionLayout;

    invoke-direct {v9, v0, v6, v1, v2}, Landroid/media/WebVttRenderingWidget$RegionLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackRegion;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    move-object v8, v9

    .line 1249
    iget-object v9, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    invoke-virtual {p0, v8, v7, v7}, Landroid/media/WebVttRenderingWidget;->addView(Landroid/view/View;II)V

    .line 1252
    :cond_35
    invoke-virtual {v8, v5}, Landroid/media/WebVttRenderingWidget$RegionLayout;->put(Landroid/media/TextTrackCue;)V

    .line 1253
    .end local v8    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    goto :goto_57

    .line 1254
    :cond_39
    iget-object v8, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1255
    .local v8, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    if-nez v8, :cond_51

    .line 1256
    new-instance v9, Landroid/media/WebVttRenderingWidget$CueLayout;

    invoke-direct {v9, v0, v5, v1, v2}, Landroid/media/WebVttRenderingWidget$CueLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    move-object v8, v9

    .line 1257
    iget-object v9, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    invoke-virtual {p0, v8, v7, v7}, Landroid/media/WebVttRenderingWidget;->addView(Landroid/view/View;II)V

    .line 1260
    :cond_51
    invoke-virtual {v8}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    .line 1261
    invoke-virtual {v8, v4}, Landroid/media/WebVttRenderingWidget$CueLayout;->setOrder(I)V

    .line 1242
    .end local v5    # "cue":Landroid/media/TextTrackCue;
    .end local v6    # "region":Landroid/media/TextTrackRegion;
    .end local v8    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :goto_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1265
    .end local v4    # "i":I
    :cond_5a
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->prune()V

    .line 1268
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getWidth()I

    move-result v4

    .line 1269
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    move-result v5

    .line 1270
    .local v5, "height":I
    invoke-virtual {p0, v4, v5}, Landroid/media/WebVttRenderingWidget;->setSize(II)V

    .line 1272
    iget-object v6, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz v6, :cond_71

    .line 1273
    iget-object v6, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {v6, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 1275
    :cond_71
    return-void
.end method

.method public greylist-max-o setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 1199
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 1200
    return-void
.end method

.method public greylist-max-o setSize(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1176
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1177
    .local v1, "widthSpec":I
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1179
    .local v0, "heightSpec":I
    invoke-virtual {p0, v1, v0}, Landroid/media/WebVttRenderingWidget;->measure(II)V

    .line 1180
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/media/WebVttRenderingWidget;->layout(IIII)V

    .line 1181
    return-void
.end method

.method public greylist-max-o setVisible(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .line 1204
    if-eqz p1, :cond_7

    .line 1205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget;->setVisibility(I)V

    goto :goto_c

    .line 1207
    :cond_7
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget;->setVisibility(I)V

    .line 1210
    :goto_c
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    .line 1211
    return-void
.end method
