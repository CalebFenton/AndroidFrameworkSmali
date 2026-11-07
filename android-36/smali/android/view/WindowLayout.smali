.class public Landroid/view/WindowLayout;
.super Ljava/lang/Object;
.source "WindowLayout.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field static final blacklist MAX_X:I = 0x186a0

.field static final blacklist MAX_Y:I = 0x186a0

.field static final blacklist MIN_X:I = -0x186a0

.field static final blacklist MIN_Y:I = -0x186a0

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist UNSPECIFIED_LENGTH:I = -0x1


# instance fields
.field private final blacklist mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

.field private final blacklist mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const-class v0, Landroid/view/WindowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/WindowLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static blacklist computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V
    .registers 12
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "maxBounds"    # Landroid/graphics/Rect;
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I
    .param p4, "winFrame"    # Landroid/graphics/Rect;
    .param p5, "dragResizing"    # Z
    .param p6, "outSurfaceSize"    # Landroid/graphics/Point;

    .line 319
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_9

    .line 321
    move v0, p2

    .line 322
    .local v0, "width":I
    move v1, p3

    .local v1, "height":I
    goto :goto_1c

    .line 327
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_9
    if-eqz p5, :cond_14

    .line 330
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 331
    .restart local v0    # "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_1c

    .line 333
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_14
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 334
    .restart local v0    # "width":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 340
    .restart local v1    # "height":I
    :goto_1c
    const/4 v2, 0x1

    if-ge v0, v2, :cond_20

    .line 341
    const/4 v0, 0x1

    .line 343
    :cond_20
    if-ge v1, v2, :cond_23

    .line 344
    const/4 v1, 0x1

    .line 348
    :cond_23
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 349
    .local v2, "surfaceInsets":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 350
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 352
    invoke-virtual {p6, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 353
    return-void
.end method

.method public static blacklist extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p0, "displayCutoutSafe"    # Landroid/graphics/Rect;
    .param p1, "displayFrame"    # Landroid/graphics/Rect;
    .param p2, "inOutFrame"    # Landroid/graphics/Rect;
    .param p3, "tempRect"    # Landroid/graphics/Rect;

    .line 301
    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 302
    return-void

    .line 304
    :cond_7
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 307
    const/4 v0, 0x0

    invoke-static {v0, p0, p3}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 309
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 310
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 312
    :cond_17
    return-void
.end method

.method private static blacklist intersectOrClamp(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4
    .param p0, "inOutRect"    # Landroid/graphics/Rect;
    .param p1, "other"    # Landroid/graphics/Rect;

    .line 293
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 294
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 295
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 296
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 297
    return-void
.end method


# virtual methods
.method public blacklist computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V
    .registers 49
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "state"    # Landroid/view/InsetsState;
    .param p3, "displayCutoutSafe"    # Landroid/graphics/Rect;
    .param p4, "windowBounds"    # Landroid/graphics/Rect;
    .param p5, "windowingMode"    # I
    .param p6, "requestedWidth"    # I
    .param p7, "requestedHeight"    # I
    .param p8, "requestedVisibleTypes"    # I
    .param p9, "compatScale"    # F
    .param p10, "frames"    # Landroid/window/ClientWindowFrames;

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p10

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 70
    .local v6, "type":I
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 71
    .local v7, "fl":I
    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 72
    .local v8, "pfl":I
    and-int/lit16 v9, v7, 0x100

    const/16 v12, 0x100

    if-ne v9, v12, :cond_1a

    const/4 v9, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v9, 0x0

    .line 73
    .local v9, "layoutInScreen":Z
    :goto_1b
    iget-object v12, v5, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 74
    .local v12, "attachedWindowFrame":Landroid/graphics/Rect;
    iget-object v13, v5, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 75
    .local v13, "outDisplayFrame":Landroid/graphics/Rect;
    iget-object v14, v5, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    .line 76
    .local v14, "outParentFrame":Landroid/graphics/Rect;
    iget-object v15, v5, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 79
    .local v15, "outFrame":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v11

    .line 80
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v10

    .line 79
    invoke-virtual {v2, v4, v11, v10}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v10

    .line 81
    .local v10, "insets":Landroid/graphics/Insets;
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v11

    .line 82
    .local v11, "sides":I
    and-int/lit8 v18, v11, 0x1

    if-eqz v18, :cond_3c

    move/from16 v21, v7

    .end local v7    # "fl":I
    .local v21, "fl":I
    iget v7, v10, Landroid/graphics/Insets;->left:I

    goto :goto_3f

    .end local v21    # "fl":I
    .restart local v7    # "fl":I
    :cond_3c
    move/from16 v21, v7

    .end local v7    # "fl":I
    .restart local v21    # "fl":I
    const/4 v7, 0x0

    .line 83
    .local v7, "left":I
    :goto_3f
    and-int/lit8 v18, v11, 0x2

    if-eqz v18, :cond_48

    move/from16 v22, v7

    .end local v7    # "left":I
    .local v22, "left":I
    iget v7, v10, Landroid/graphics/Insets;->top:I

    goto :goto_4b

    .end local v22    # "left":I
    .restart local v7    # "left":I
    :cond_48
    move/from16 v22, v7

    .end local v7    # "left":I
    .restart local v22    # "left":I
    const/4 v7, 0x0

    .line 84
    .local v7, "top":I
    :goto_4b
    and-int/lit8 v18, v11, 0x4

    if-eqz v18, :cond_54

    move/from16 v23, v7

    .end local v7    # "top":I
    .local v23, "top":I
    iget v7, v10, Landroid/graphics/Insets;->right:I

    goto :goto_57

    .end local v23    # "top":I
    .restart local v7    # "top":I
    :cond_54
    move/from16 v23, v7

    .end local v7    # "top":I
    .restart local v23    # "top":I
    const/4 v7, 0x0

    .line 85
    .local v7, "right":I
    :goto_57
    and-int/lit8 v18, v11, 0x8

    if-eqz v18, :cond_60

    move/from16 v24, v7

    .end local v7    # "right":I
    .local v24, "right":I
    iget v7, v10, Landroid/graphics/Insets;->bottom:I

    goto :goto_63

    .end local v24    # "right":I
    .restart local v7    # "right":I
    :cond_60
    move/from16 v24, v7

    .end local v7    # "right":I
    .restart local v24    # "right":I
    const/4 v7, 0x0

    .line 86
    .local v7, "bottom":I
    :goto_63
    move/from16 v25, v7

    .end local v7    # "bottom":I
    .local v25, "bottom":I
    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int v7, v7, v22

    move/from16 v26, v8

    .end local v8    # "pfl":I
    .local v26, "pfl":I
    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int v8, v8, v23

    move/from16 v27, v9

    .end local v9    # "layoutInScreen":Z
    .local v27, "layoutInScreen":Z
    iget v9, v4, Landroid/graphics/Rect;->right:I

    sub-int v9, v9, v24

    move-object/from16 v28, v10

    .end local v10    # "insets":Landroid/graphics/Insets;
    .local v28, "insets":Landroid/graphics/Insets;
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v10, v25

    invoke-virtual {v13, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 89
    if-nez v12, :cond_9a

    .line 90
    invoke-virtual {v14, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 91
    const/high16 v7, 0x40000000    # 2.0f

    and-int v7, v26, v7

    if-eqz v7, :cond_a2

    .line 92
    sget v7, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v2, v7}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v7

    .line 93
    .local v7, "source":Landroid/view/InsetsSource;
    if-eqz v7, :cond_99

    .line 94
    const/4 v8, 0x0

    invoke-virtual {v7, v14, v8}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v9

    invoke-virtual {v14, v9}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 97
    .end local v7    # "source":Landroid/view/InsetsSource;
    :cond_99
    goto :goto_a2

    .line 99
    :cond_9a
    if-nez v27, :cond_9e

    move-object v7, v12

    goto :goto_9f

    :cond_9e
    move-object v7, v13

    :goto_9f
    invoke-virtual {v14, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 103
    :cond_a2
    :goto_a2
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 104
    .local v7, "cutoutMode":I
    invoke-virtual {v2}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v8

    .line 105
    .local v8, "cutout":Landroid/view/DisplayCutout;
    iget-object v9, v0, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 106
    .local v9, "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    invoke-virtual {v9, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 107
    const/4 v10, 0x0

    iput-boolean v10, v5, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 108
    const/4 v10, 0x3

    if-eq v7, v10, :cond_198

    invoke-virtual {v8}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_198

    .line 111
    invoke-virtual {v2}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v10

    .line 112
    .local v10, "displayFrame":Landroid/graphics/Rect;
    const/4 v4, 0x1

    if-ne v7, v4, :cond_e2

    .line 113
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v29, v8

    .end local v8    # "cutout":Landroid/view/DisplayCutout;
    .local v29, "cutout":Landroid/view/DisplayCutout;
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v4, v8, :cond_d7

    .line 114
    const v4, -0x186a0

    iput v4, v9, Landroid/graphics/Rect;->top:I

    .line 115
    const v8, 0x186a0

    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_e4

    .line 117
    :cond_d7
    const v4, -0x186a0

    const v8, 0x186a0

    iput v4, v9, Landroid/graphics/Rect;->left:I

    .line 118
    iput v8, v9, Landroid/graphics/Rect;->right:I

    goto :goto_e4

    .line 112
    .end local v29    # "cutout":Landroid/view/DisplayCutout;
    .restart local v8    # "cutout":Landroid/view/DisplayCutout;
    :cond_e2
    move-object/from16 v29, v8

    .line 121
    .end local v8    # "cutout":Landroid/view/DisplayCutout;
    .restart local v29    # "cutout":Landroid/view/DisplayCutout;
    :goto_e4
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10000

    and-int/2addr v4, v8

    if-eqz v4, :cond_ed

    const/4 v4, 0x1

    goto :goto_ee

    :cond_ed
    const/4 v4, 0x0

    .line 122
    .local v4, "layoutInsetDecor":Z
    :goto_ee
    if-eqz v27, :cond_149

    if-eqz v4, :cond_149

    if-eqz v7, :cond_fd

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f8

    goto :goto_fd

    :cond_f8
    move/from16 v20, v4

    move/from16 v30, v7

    goto :goto_14d

    .line 125
    :cond_fd
    :goto_fd
    nop

    .line 126
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v8

    .line 125
    move/from16 v20, v4

    move/from16 v4, p8

    .end local v4    # "layoutInsetDecor":Z
    .local v20, "layoutInsetDecor":Z
    invoke-virtual {v2, v10, v8, v4}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;II)Landroid/graphics/Insets;

    move-result-object v8

    .line 127
    .local v8, "systemBarsInsets":Landroid/graphics/Insets;
    iget v4, v8, Landroid/graphics/Insets;->left:I

    move/from16 v30, v7

    .end local v7    # "cutoutMode":I
    .local v30, "cutoutMode":I
    invoke-virtual/range {v29 .. v29}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v7

    if-lt v4, v7, :cond_11a

    .line 128
    const v4, -0x186a0

    iput v4, v9, Landroid/graphics/Rect;->left:I

    goto :goto_11d

    .line 127
    :cond_11a
    const v4, -0x186a0

    .line 130
    :goto_11d
    iget v7, v8, Landroid/graphics/Insets;->top:I

    invoke-virtual/range {v29 .. v29}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v4

    if-lt v7, v4, :cond_12a

    .line 131
    const v4, -0x186a0

    iput v4, v9, Landroid/graphics/Rect;->top:I

    .line 133
    :cond_12a
    iget v4, v8, Landroid/graphics/Insets;->right:I

    invoke-virtual/range {v29 .. v29}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v7

    if-lt v4, v7, :cond_138

    .line 134
    const v4, 0x186a0

    iput v4, v9, Landroid/graphics/Rect;->right:I

    goto :goto_13b

    .line 133
    :cond_138
    const v4, 0x186a0

    .line 136
    :goto_13b
    iget v7, v8, Landroid/graphics/Insets;->bottom:I

    invoke-virtual/range {v29 .. v29}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v4

    if-lt v7, v4, :cond_14d

    .line 137
    const v4, 0x186a0

    iput v4, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_14d

    .line 122
    .end local v8    # "systemBarsInsets":Landroid/graphics/Insets;
    .end local v20    # "layoutInsetDecor":Z
    .end local v30    # "cutoutMode":I
    .restart local v4    # "layoutInsetDecor":Z
    .restart local v7    # "cutoutMode":I
    :cond_149
    move/from16 v20, v4

    move/from16 v30, v7

    .line 140
    .end local v4    # "layoutInsetDecor":Z
    .end local v7    # "cutoutMode":I
    .restart local v20    # "layoutInsetDecor":Z
    .restart local v30    # "cutoutMode":I
    :cond_14d
    :goto_14d
    const/16 v4, 0x7db

    if-ne v6, v4, :cond_167

    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    const v8, 0x186a0

    if-eq v4, v8, :cond_167

    .line 142
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    const/4 v7, 0x1

    invoke-virtual {v2, v10, v4, v7}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    if-lez v4, :cond_167

    .line 144
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 146
    :cond_167
    if-eqz v12, :cond_16d

    if-nez v27, :cond_16d

    const/4 v4, 0x1

    goto :goto_16e

    :cond_16d
    const/4 v4, 0x0

    .line 150
    .local v4, "attachedInParent":Z
    :goto_16e
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v7

    if-nez v7, :cond_17b

    if-eqz v27, :cond_17b

    const/4 v7, 0x1

    if-eq v6, v7, :cond_17b

    const/4 v7, 0x1

    goto :goto_17c

    :cond_17b
    const/4 v7, 0x0

    .line 158
    .local v7, "floatingInScreenWindow":Z
    :goto_17c
    if-nez v4, :cond_194

    if-nez v7, :cond_194

    .line 159
    iget-object v8, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 160
    invoke-static {v14, v9}, Landroid/view/WindowLayout;->intersectOrClamp(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 161
    iget-object v8, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v14}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v16, 0x1

    xor-int/lit8 v8, v8, 0x1

    iput-boolean v8, v5, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 163
    :cond_194
    invoke-static {v13, v9}, Landroid/view/WindowLayout;->intersectOrClamp(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_19c

    .line 108
    .end local v4    # "attachedInParent":Z
    .end local v10    # "displayFrame":Landroid/graphics/Rect;
    .end local v20    # "layoutInsetDecor":Z
    .end local v29    # "cutout":Landroid/view/DisplayCutout;
    .end local v30    # "cutoutMode":I
    .local v7, "cutoutMode":I
    .local v8, "cutout":Landroid/view/DisplayCutout;
    :cond_198
    move/from16 v30, v7

    move-object/from16 v29, v8

    .line 166
    .end local v7    # "cutoutMode":I
    .end local v8    # "cutout":Landroid/view/DisplayCutout;
    .restart local v29    # "cutout":Landroid/view/DisplayCutout;
    .restart local v30    # "cutoutMode":I
    :goto_19c
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_1a4

    const/4 v8, 0x1

    goto :goto_1a5

    :cond_1a4
    const/4 v8, 0x0

    .line 167
    .local v8, "noLimits":Z
    :goto_1a5
    invoke-static/range {p5 .. p5}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v4

    .line 171
    .local v4, "inMultiWindowMode":Z
    if-eqz v8, :cond_1bf

    const/16 v7, 0x7da

    if-eq v6, v7, :cond_1bf

    if-nez v4, :cond_1bf

    .line 172
    const v7, -0x186a0

    iput v7, v13, Landroid/graphics/Rect;->left:I

    .line 173
    iput v7, v13, Landroid/graphics/Rect;->top:I

    .line 174
    const v7, 0x186a0

    iput v7, v13, Landroid/graphics/Rect;->right:I

    .line 175
    iput v7, v13, Landroid/graphics/Rect;->bottom:I

    .line 178
    :cond_1bf
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, p9, v7

    if-eqz v7, :cond_1c7

    const/4 v7, 0x1

    goto :goto_1c8

    :cond_1c7
    const/4 v7, 0x0

    .line 179
    .local v7, "hasCompatScale":Z
    :goto_1c8
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 180
    .local v10, "pw":I
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 181
    .local v2, "ph":I
    move/from16 v31, v4

    .end local v4    # "inMultiWindowMode":Z
    .local v31, "inMultiWindowMode":Z
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_1da

    const/4 v4, 0x1

    goto :goto_1db

    :cond_1da
    const/4 v4, 0x0

    .line 183
    .local v4, "extendedByCutout":Z
    :goto_1db
    move/from16 v18, p6

    .line 184
    .local v18, "rw":I
    move/from16 v19, p7

    .line 193
    .local v19, "rh":I
    move/from16 v32, v4

    .end local v4    # "extendedByCutout":Z
    .local v32, "extendedByCutout":Z
    const/4 v4, -0x1

    move/from16 v5, v18

    .end local v18    # "rw":I
    .local v5, "rw":I
    if-eq v5, v4, :cond_1e8

    if-eqz v32, :cond_1f1

    .line 194
    :cond_1e8
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ltz v4, :cond_1ef

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1f0

    :cond_1ef
    move v4, v10

    :goto_1f0
    move v5, v4

    .line 196
    :cond_1f1
    move/from16 v33, v6

    move/from16 v4, v19

    const/4 v6, -0x1

    .end local v6    # "type":I
    .end local v19    # "rh":I
    .local v4, "rh":I
    .local v33, "type":I
    if-eq v4, v6, :cond_1fa

    if-eqz v32, :cond_206

    .line 197
    :cond_1fa
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ltz v6, :cond_201

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_202

    :cond_201
    move v6, v2

    :goto_202
    move/from16 v19, v6

    move/from16 v4, v19

    .line 200
    :cond_206
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x4000

    const/high16 v19, 0x3f000000    # 0.5f

    if-eqz v6, :cond_24c

    .line 201
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v6, :cond_214

    .line 202
    move v6, v10

    .local v6, "w":I
    goto :goto_221

    .line 203
    .end local v6    # "w":I
    :cond_214
    if-eqz v7, :cond_21f

    .line 204
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v6, v6

    mul-float v6, v6, p9

    add-float v6, v6, v19

    float-to-int v6, v6

    .restart local v6    # "w":I
    goto :goto_221

    .line 206
    .end local v6    # "w":I
    :cond_21f
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 208
    .restart local v6    # "w":I
    :goto_221
    move/from16 v18, v6

    .end local v6    # "w":I
    .local v18, "w":I
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v6, :cond_230

    .line 209
    move v6, v2

    move/from16 v35, v5

    move v5, v6

    move/from16 v34, v7

    move/from16 v6, v18

    .local v6, "h":I
    goto :goto_272

    .line 210
    .end local v6    # "h":I
    :cond_230
    if-eqz v7, :cond_242

    .line 211
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v6, v6

    mul-float v6, v6, p9

    add-float v6, v6, v19

    float-to-int v6, v6

    move/from16 v35, v5

    move v5, v6

    move/from16 v34, v7

    move/from16 v6, v18

    .restart local v6    # "h":I
    goto :goto_272

    .line 213
    .end local v6    # "h":I
    :cond_242
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v35, v5

    move v5, v6

    move/from16 v34, v7

    move/from16 v6, v18

    .restart local v6    # "h":I
    goto :goto_272

    .line 216
    .end local v6    # "h":I
    .end local v18    # "w":I
    :cond_24c
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v34, v7

    const/4 v7, -0x1

    .end local v7    # "hasCompatScale":Z
    .local v34, "hasCompatScale":Z
    if-ne v6, v7, :cond_255

    .line 217
    move v6, v10

    .local v6, "w":I
    goto :goto_25f

    .line 218
    .end local v6    # "w":I
    :cond_255
    if-eqz v34, :cond_25e

    .line 219
    int-to-float v6, v5

    mul-float v6, v6, p9

    add-float v6, v6, v19

    float-to-int v6, v6

    .restart local v6    # "w":I
    goto :goto_25f

    .line 221
    .end local v6    # "w":I
    :cond_25e
    move v6, v5

    .line 223
    .restart local v6    # "w":I
    :goto_25f
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v35, v5

    const/4 v5, -0x1

    .end local v5    # "rw":I
    .local v35, "rw":I
    if-ne v7, v5, :cond_268

    .line 224
    move v5, v2

    .local v5, "h":I
    goto :goto_272

    .line 225
    .end local v5    # "h":I
    :cond_268
    if-eqz v34, :cond_271

    .line 226
    int-to-float v5, v4

    mul-float v5, v5, p9

    add-float v5, v5, v19

    float-to-int v5, v5

    .restart local v5    # "h":I
    goto :goto_272

    .line 228
    .end local v5    # "h":I
    :cond_271
    move v5, v4

    .line 232
    .restart local v5    # "h":I
    :goto_272
    if-eqz v34, :cond_281

    .line 233
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    mul-float v7, v7, p9

    .line 234
    .local v7, "x":F
    move/from16 v36, v4

    .end local v4    # "rh":I
    .local v36, "rh":I
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    mul-float v4, v4, p9

    .local v4, "y":F
    goto :goto_289

    .line 236
    .end local v7    # "x":F
    .end local v36    # "rh":I
    .local v4, "rh":I
    :cond_281
    move/from16 v36, v4

    .end local v4    # "rh":I
    .restart local v36    # "rh":I
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v4

    .line 237
    .restart local v7    # "x":F
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    .line 240
    .local v4, "y":F
    :goto_289
    if-eqz v31, :cond_29c

    move/from16 v37, v4

    .end local v4    # "y":F
    .local v37, "y":F
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x4000

    if-nez v4, :cond_29e

    .line 244
    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 245
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_29e

    .line 240
    .end local v37    # "y":F
    .restart local v4    # "y":F
    :cond_29c
    move/from16 v37, v4

    .line 255
    .end local v4    # "y":F
    .restart local v37    # "y":F
    :cond_29e
    :goto_29e
    if-eqz v31, :cond_2ac

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v18, v5

    const/4 v5, 0x1

    .end local v5    # "h":I
    .local v18, "h":I
    if-eq v4, v5, :cond_2aa

    if-nez v8, :cond_2aa

    goto :goto_2af

    :cond_2aa
    const/4 v5, 0x0

    goto :goto_2af

    .end local v18    # "h":I
    .restart local v5    # "h":I
    :cond_2ac
    move/from16 v18, v5

    const/4 v5, 0x1

    .line 259
    .local v5, "fitToDisplay":Z
    .restart local v18    # "h":I
    :goto_2af
    move-object/from16 v17, v14

    .end local v14    # "outParentFrame":Landroid/graphics/Rect;
    .local v17, "outParentFrame":Landroid/graphics/Rect;
    iget v14, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v16, v4

    int-to-float v4, v10

    mul-float v4, v4, v16

    add-float/2addr v4, v7

    float-to-int v4, v4

    move/from16 v16, v4

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v19, v4

    int-to-float v4, v2

    mul-float v4, v4, v19

    add-float v4, v37, v4

    float-to-int v4, v4

    move/from16 v19, v18

    move/from16 v18, v16

    move/from16 v16, v19

    move/from16 v19, v4

    move-object/from16 v20, v15

    move v15, v6

    .end local v6    # "w":I
    .end local v18    # "h":I
    .local v15, "w":I
    .local v16, "h":I
    .local v20, "outFrame":Landroid/graphics/Rect;
    invoke-static/range {v14 .. v20}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 264
    move-object/from16 v4, v20

    .end local v20    # "outFrame":Landroid/graphics/Rect;
    .local v4, "outFrame":Landroid/graphics/Rect;
    if-eqz v5, :cond_2df

    .line 265
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v6, v13, v4}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 268
    :cond_2df
    if-eqz v32, :cond_2e6

    .line 269
    iget-object v6, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v3, v13, v4, v6}, Landroid/view/WindowLayout;->extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 284
    :cond_2e6
    return-void
.end method
