.class Lcom/android/server/wm/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# instance fields
.field private final mDeltaX:I

.field private final mDeltaY:I

.field private final mDisplay:Landroid/view/Display;

.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mText:Ljava/lang/String;

.field private final mTextHeight:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextWidth:I

.field private final mTokens:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/Display;Landroid/util/DisplayMetrics;Landroid/view/SurfaceSession;[Ljava/lang/String;)V
    .locals 23
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "tokens"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    new-instance v3, Landroid/view/Surface;

    #@5
    invoke-direct {v3}, Landroid/view/Surface;-><init>()V

    #@8
    move-object/from16 v0, p0

    #@a
    iput-object v3, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    #@c
    .line 62
    move-object/from16 v0, p1

    #@e
    move-object/from16 v1, p0

    #@10
    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    #@12
    .line 63
    move-object/from16 v0, p4

    #@14
    move-object/from16 v1, p0

    #@16
    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    #@18
    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    #@1a
    const/16 v3, 0x20

    #@1c
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1f
    .line 66
    .local v9, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@21
    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    #@23
    const/4 v4, 0x0

    #@24
    aget-object v3, v3, v4

    #@26
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@29
    move-result v18

    #@2a
    .line 67
    .local v18, "len":I
    and-int/lit8 v18, v18, -0x2

    #@2c
    .line 68
    const/16 v17, 0x0

    #@2e
    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    #@30
    move/from16 v1, v18

    #@32
    if-ge v0, v1, :cond_4

    #@34
    .line 69
    move-object/from16 v0, p0

    #@36
    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    #@38
    const/4 v4, 0x0

    #@39
    aget-object v3, v3, v4

    #@3b
    move/from16 v0, v17

    #@3d
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@40
    move-result v10

    #@41
    .line 70
    .local v10, "c1":I
    move-object/from16 v0, p0

    #@43
    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    #@45
    const/4 v4, 0x0

    #@46
    aget-object v3, v3, v4

    #@48
    add-int/lit8 v4, v17, 0x1

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@4d
    move-result v11

    #@4e
    .line 71
    .local v11, "c2":I
    const/16 v3, 0x61

    #@50
    if-lt v10, v3, :cond_0

    #@52
    const/16 v3, 0x66

    #@54
    if-gt v10, v3, :cond_0

    #@56
    add-int/lit8 v3, v10, -0x61

    #@58
    add-int/lit8 v10, v3, 0xa

    #@5a
    .line 74
    :goto_1
    const/16 v3, 0x61

    #@5c
    if-lt v11, v3, :cond_2

    #@5e
    const/16 v3, 0x66

    #@60
    if-gt v11, v3, :cond_2

    #@62
    add-int/lit8 v3, v11, -0x61

    #@64
    add-int/lit8 v11, v3, 0xa

    #@66
    .line 77
    :goto_2
    mul-int/lit8 v3, v10, 0x10

    #@68
    add-int/2addr v3, v11

    #@69
    rsub-int v3, v3, 0xff

    #@6b
    int-to-char v3, v3

    #@6c
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6f
    .line 68
    add-int/lit8 v17, v17, 0x2

    #@71
    goto :goto_0

    #@72
    .line 72
    :cond_0
    const/16 v3, 0x41

    #@74
    if-lt v10, v3, :cond_1

    #@76
    const/16 v3, 0x46

    #@78
    if-gt v10, v3, :cond_1

    #@7a
    add-int/lit8 v3, v10, -0x41

    #@7c
    add-int/lit8 v10, v3, 0xa

    #@7e
    goto :goto_1

    #@7f
    .line 73
    :cond_1
    add-int/lit8 v10, v10, -0x30

    #@81
    goto :goto_1

    #@82
    .line 75
    :cond_2
    const/16 v3, 0x41

    #@84
    if-lt v11, v3, :cond_3

    #@86
    const/16 v3, 0x46

    #@88
    if-gt v11, v3, :cond_3

    #@8a
    add-int/lit8 v3, v11, -0x41

    #@8c
    add-int/lit8 v11, v3, 0xa

    #@8e
    goto :goto_2

    #@8f
    .line 76
    :cond_3
    add-int/lit8 v11, v11, -0x30

    #@91
    goto :goto_2

    #@92
    .line 79
    .end local v10    # "c1":I
    .end local v11    # "c2":I
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v3

    #@96
    move-object/from16 v0, p0

    #@98
    iput-object v3, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    #@9a
    .line 84
    const/4 v3, 0x1

    #@9b
    .line 85
    const/4 v4, 0x1

    #@9c
    const/16 v5, 0x14

    #@9e
    .line 84
    move-object/from16 v0, p4

    #@a0
    move-object/from16 v1, p2

    #@a2
    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    #@a5
    move-result v16

    #@a6
    .line 87
    .local v16, "fontSize":I
    new-instance v3, Landroid/graphics/Paint;

    #@a8
    const/4 v4, 0x1

    #@a9
    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    #@ac
    move-object/from16 v0, p0

    #@ae
    iput-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    #@b0
    .line 88
    move-object/from16 v0, p0

    #@b2
    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    #@b4
    move/from16 v0, v16

    #@b6
    int-to-float v4, v0

    #@b7
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    #@ba
    .line 89
    move-object/from16 v0, p0

    #@bc
    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    #@be
    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    #@c0
    const/4 v5, 0x1

    #@c1
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    #@c4
    move-result-object v4

    #@c5
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@c8
    .line 91
    move-object/from16 v0, p0

    #@ca
    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    #@cc
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    #@cf
    move-result-object v15

    #@d0
    .line 92
    .local v15, "fm":Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, p0

    #@d2
    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    #@d4
    move-object/from16 v0, p0

    #@d6
    iget-object v4, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    #@d8
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    #@db
    move-result v3

    #@dc
    float-to-int v3, v3

    #@dd
    move-object/from16 v0, p0

    #@df
    iput v3, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    #@e1
    .line 93
    iget v3, v15, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@e3
    iget v4, v15, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@e5
    sub-int/2addr v3, v4

    #@e6
    move-object/from16 v0, p0

    #@e8
    iput v3, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    #@ea
    .line 96
    move-object/from16 v0, p0

    #@ec
    iget v3, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    #@ee
    mul-int/lit8 v3, v3, 0x2

    #@f0
    .line 95
    const/4 v4, 0x2

    #@f1
    .line 96
    const/4 v5, 0x0

    #@f2
    .line 95
    move-object/from16 v0, p4

    #@f4
    move-object/from16 v1, p2

    #@f6
    invoke-static {v0, v4, v5, v3, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    #@f9
    move-result v3

    #@fa
    move-object/from16 v0, p0

    #@fc
    iput v3, v0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    #@fe
    .line 98
    move-object/from16 v0, p0

    #@100
    iget v3, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    #@102
    mul-int/lit8 v3, v3, 0x3

    #@104
    .line 97
    const/4 v4, 0x3

    #@105
    .line 98
    const/4 v5, 0x0

    #@106
    .line 97
    move-object/from16 v0, p4

    #@108
    move-object/from16 v1, p2

    #@10a
    invoke-static {v0, v4, v5, v3, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    #@10d
    move-result v3

    #@10e
    move-object/from16 v0, p0

    #@110
    iput v3, v0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    #@112
    .line 99
    const/4 v3, 0x4

    #@113
    .line 100
    const/4 v4, 0x0

    #@114
    const/high16 v5, -0x50000000

    #@116
    .line 99
    move-object/from16 v0, p4

    #@118
    move-object/from16 v1, p2

    #@11a
    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    #@11d
    move-result v19

    #@11e
    .line 101
    .local v19, "shadowColor":I
    const/4 v3, 0x5

    #@11f
    .line 102
    const/4 v4, 0x0

    #@120
    const v5, 0x60ffffff

    #@123
    .line 101
    move-object/from16 v0, p4

    #@125
    move-object/from16 v1, p2

    #@127
    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    #@12a
    move-result v12

    #@12b
    .line 103
    .local v12, "color":I
    const/4 v3, 0x6

    #@12c
    .line 104
    const/4 v4, 0x0

    #@12d
    const/4 v5, 0x7

    #@12e
    .line 103
    move-object/from16 v0, p4

    #@130
    move-object/from16 v1, p2

    #@132
    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    #@135
    move-result v22

    #@136
    .line 105
    .local v22, "shadowRadius":I
    const/16 v3, 0x8

    #@138
    .line 106
    const/4 v4, 0x0

    #@139
    const/4 v5, 0x0

    #@13a
    .line 105
    move-object/from16 v0, p4

    #@13c
    move-object/from16 v1, p2

    #@13e
    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    #@141
    move-result v20

    #@142
    .line 107
    .local v20, "shadowDx":I
    const/16 v3, 0x9

    #@144
    .line 108
    const/4 v4, 0x0

    #@145
    const/4 v5, 0x0

    #@146
    .line 107
    move-object/from16 v0, p4

    #@148
    move-object/from16 v1, p2

    #@14a
    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    #@14d
    move-result v21

    #@14e
    .line 110
    .local v21, "shadowDy":I
    move-object/from16 v0, p0

    #@150
    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    #@152
    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setColor(I)V

    #@155
    .line 111
    move-object/from16 v0, p0

    #@157
    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    #@159
    move/from16 v0, v22

    #@15b
    int-to-float v4, v0

    #@15c
    move/from16 v0, v20

    #@15e
    int-to-float v5, v0

    #@15f
    move/from16 v0, v21

    #@161
    int-to-float v6, v0

    #@162
    move/from16 v0, v19

    #@164
    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    #@167
    .line 113
    const/4 v13, 0x0

    #@168
    .line 115
    .local v13, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    new-instance v2, Landroid/view/SurfaceControl;

    #@16a
    const-string/jumbo v4, "WatermarkSurface"

    #@16d
    .line 116
    const/4 v5, 0x1

    #@16e
    const/4 v6, 0x1

    #@16f
    const/4 v7, -0x3

    #@170
    const/4 v8, 0x4

    #@171
    move-object/from16 v3, p3

    #@173
    .line 115
    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    #@176
    .line 117
    .local v2, "ctrl":Landroid/view/SurfaceControl;
    :try_start_1
    move-object/from16 v0, p0

    #@178
    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    #@17a
    .end local v13    # "ctrl":Landroid/view/SurfaceControl;
    invoke-virtual {v3}, Landroid/view/Display;->getLayerStack()I

    #@17d
    move-result v3

    #@17e
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@181
    .line 118
    const v3, 0xf4240

    #@184
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@187
    .line 119
    const/4 v3, 0x0

    #@188
    const/4 v4, 0x0

    #@189
    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@18c
    .line 120
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    #@18f
    .line 121
    move-object/from16 v0, p0

    #@191
    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    #@193
    invoke-virtual {v3, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    #@196
    .line 124
    :goto_3
    move-object/from16 v0, p0

    #@198
    iput-object v2, v0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@19a
    .line 54
    return-void

    #@19b
    .line 122
    .end local v2    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v13    # "ctrl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v14

    #@19c
    .local v14, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object v2, v13

    #@19d
    .restart local v2    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_3

    #@19e
    .end local v13    # "ctrl":Landroid/view/SurfaceControl;
    .end local v14    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v14

    #@19f
    .restart local v14    # "e":Landroid/view/Surface$OutOfResourcesException;
    goto :goto_3
.end method


# virtual methods
.method drawIfNeeded()V
    .locals 21

    #@0
    .prologue
    .line 137
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    #@4
    move/from16 v17, v0

    #@6
    if-eqz v17, :cond_4

    #@8
    .line 138
    move-object/from16 v0, p0

    #@a
    iget v10, v0, Lcom/android/server/wm/Watermark;->mLastDW:I

    #@c
    .line 139
    .local v10, "dw":I
    move-object/from16 v0, p0

    #@e
    iget v7, v0, Lcom/android/server/wm/Watermark;->mLastDH:I

    #@10
    .line 141
    .local v7, "dh":I
    const/16 v17, 0x0

    #@12
    move/from16 v0, v17

    #@14
    move-object/from16 v1, p0

    #@16
    iput-boolean v0, v1, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    #@18
    .line 142
    new-instance v8, Landroid/graphics/Rect;

    #@1a
    const/16 v17, 0x0

    #@1c
    const/16 v18, 0x0

    #@1e
    move/from16 v0, v17

    #@20
    move/from16 v1, v18

    #@22
    invoke-direct {v8, v0, v1, v10, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    #@25
    .line 143
    .local v8, "dirty":Landroid/graphics/Rect;
    const/4 v4, 0x0

    #@26
    .line 145
    .local v4, "c":Landroid/graphics/Canvas;
    :try_start_0
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    #@2a
    move-object/from16 v17, v0

    #@2c
    move-object/from16 v0, v17

    #@2e
    invoke-virtual {v0, v8}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1

    #@31
    move-result-object v4

    #@32
    .line 149
    .end local v4    # "c":Landroid/graphics/Canvas;
    :goto_0
    if-eqz v4, :cond_4

    #@34
    .line 150
    sget-object v17, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@36
    const/16 v18, 0x0

    #@38
    move/from16 v0, v18

    #@3a
    move-object/from16 v1, v17

    #@3c
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@3f
    .line 152
    move-object/from16 v0, p0

    #@41
    iget v5, v0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    #@43
    .line 153
    .local v5, "deltaX":I
    move-object/from16 v0, p0

    #@45
    iget v6, v0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    #@47
    .line 157
    .local v6, "deltaY":I
    move-object/from16 v0, p0

    #@49
    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    #@4b
    move/from16 v17, v0

    #@4d
    add-int v17, v17, v10

    #@4f
    div-int v9, v17, v5

    #@51
    .line 158
    .local v9, "div":I
    move-object/from16 v0, p0

    #@53
    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    #@55
    move/from16 v17, v0

    #@57
    add-int v17, v17, v10

    #@59
    mul-int v18, v9, v5

    #@5b
    sub-int v14, v17, v18

    #@5d
    .line 159
    .local v14, "rem":I
    div-int/lit8 v13, v5, 0x4

    #@5f
    .line 160
    .local v13, "qdelta":I
    if-lt v14, v13, :cond_0

    #@61
    sub-int v17, v5, v13

    #@63
    move/from16 v0, v17

    #@65
    if-le v14, v0, :cond_1

    #@67
    .line 161
    :cond_0
    div-int/lit8 v17, v5, 0x3

    #@69
    add-int v5, v5, v17

    #@6b
    .line 164
    :cond_1
    move-object/from16 v0, p0

    #@6d
    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    #@6f
    move/from16 v17, v0

    #@71
    move/from16 v0, v17

    #@73
    neg-int v0, v0

    #@74
    move/from16 v16, v0

    #@76
    .line 165
    .local v16, "y":I
    move-object/from16 v0, p0

    #@78
    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    #@7a
    move/from16 v17, v0

    #@7c
    move/from16 v0, v17

    #@7e
    neg-int v15, v0

    #@7f
    .line 166
    .local v15, "x":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    #@81
    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    #@83
    move/from16 v17, v0

    #@85
    add-int v17, v17, v7

    #@87
    move/from16 v0, v16

    #@89
    move/from16 v1, v17

    #@8b
    if-ge v0, v1, :cond_3

    #@8d
    .line 167
    move-object/from16 v0, p0

    #@8f
    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    #@91
    move-object/from16 v17, v0

    #@93
    int-to-float v0, v15

    #@94
    move/from16 v18, v0

    #@96
    move/from16 v0, v16

    #@98
    int-to-float v0, v0

    #@99
    move/from16 v19, v0

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    #@9f
    move-object/from16 v20, v0

    #@a1
    move-object/from16 v0, v17

    #@a3
    move/from16 v1, v18

    #@a5
    move/from16 v2, v19

    #@a7
    move-object/from16 v3, v20

    #@a9
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@ac
    .line 168
    add-int/2addr v15, v5

    #@ad
    .line 169
    if-lt v15, v10, :cond_2

    #@af
    .line 170
    move-object/from16 v0, p0

    #@b1
    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    #@b3
    move/from16 v17, v0

    #@b5
    add-int v17, v17, v10

    #@b7
    sub-int v15, v15, v17

    #@b9
    .line 171
    add-int v16, v16, v6

    #@bb
    goto :goto_1

    #@bc
    .line 174
    :cond_3
    move-object/from16 v0, p0

    #@be
    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    #@c0
    move-object/from16 v17, v0

    #@c2
    move-object/from16 v0, v17

    #@c4
    invoke-virtual {v0, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    #@c7
    .line 136
    .end local v5    # "deltaX":I
    .end local v6    # "deltaY":I
    .end local v7    # "dh":I
    .end local v8    # "dirty":Landroid/graphics/Rect;
    .end local v9    # "div":I
    .end local v10    # "dw":I
    .end local v13    # "qdelta":I
    .end local v14    # "rem":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_4
    return-void

    #@c8
    .line 146
    .restart local v4    # "c":Landroid/graphics/Canvas;
    .restart local v7    # "dh":I
    .restart local v8    # "dirty":Landroid/graphics/Rect;
    .restart local v10    # "dw":I
    :catch_0
    move-exception v12

    #@c9
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_0

    #@cb
    .line 147
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v11

    #@cc
    .local v11, "e":Landroid/view/Surface$OutOfResourcesException;
    goto/16 :goto_0
.end method

.method positionSurface(II)V
    .locals 1
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    #@0
    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    #@6
    if-eq v0, p2, :cond_1

    #@8
    .line 129
    :cond_0
    iput p1, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    #@a
    .line 130
    iput p2, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    #@c
    .line 131
    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@e
    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    #@11
    .line 132
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    #@14
    .line 127
    :cond_1
    return-void
.end method
