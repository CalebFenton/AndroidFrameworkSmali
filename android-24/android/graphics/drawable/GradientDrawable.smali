.class public Landroid/graphics/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/GradientDrawable$GradientState;,
        Landroid/graphics/drawable/GradientDrawable$Orientation;
    }
.end annotation


# static fields
.field private static final synthetic -android-graphics-drawable-GradientDrawable$OrientationSwitchesValues:[I = null

.field private static final DEFAULT_INNER_RADIUS_RATIO:F = 3.0f

.field private static final DEFAULT_THICKNESS_RATIO:F = 9.0f

.field public static final LINE:I = 0x2

.field public static final LINEAR_GRADIENT:I = 0x0

.field public static final OVAL:I = 0x1

.field public static final RADIAL_GRADIENT:I = 0x1

.field private static final RADIUS_TYPE_FRACTION:I = 0x1

.field private static final RADIUS_TYPE_FRACTION_PARENT:I = 0x2

.field private static final RADIUS_TYPE_PIXELS:I = 0x0

.field public static final RECTANGLE:I = 0x0

.field public static final RING:I = 0x3

.field public static final SWEEP_GRADIENT:I = 0x2


# instance fields
.field private mAlpha:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mGradientIsDirty:Z

.field private mGradientRadius:F

.field private mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

.field private mLayerPaint:Landroid/graphics/Paint;

.field private mMutated:Z

.field private mPadding:Landroid/graphics/Rect;

.field private final mPath:Landroid/graphics/Path;

.field private mPathIsDirty:Z

.field private final mRect:Landroid/graphics/RectF;

.field private mRingPath:Landroid/graphics/Path;

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method private static synthetic -getandroid-graphics-drawable-GradientDrawable$OrientationSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/graphics/drawable/GradientDrawable;->-android-graphics-drawable-GradientDrawable$OrientationSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/graphics/drawable/GradientDrawable;->-android-graphics-drawable-GradientDrawable$OrientationSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/graphics/drawable/GradientDrawable$Orientation;->values()[Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@10
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@19
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@22
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@2b
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@34
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@3d
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    #@40
    move-result v1

    #@41
    const/16 v2, 0x8

    #@43
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    #@45
    :goto_5
    :try_start_6
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@47
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    #@4a
    move-result v1

    #@4b
    const/4 v2, 0x6

    #@4c
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    #@4e
    :goto_6
    :try_start_7
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@50
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    #@53
    move-result v1

    #@54
    const/4 v2, 0x7

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    #@57
    :goto_7
    sput-object v0, Landroid/graphics/drawable/GradientDrawable;->-android-graphics-drawable-GradientDrawable$OrientationSwitchesValues:[I

    #@59
    return-object v0

    #@5a
    :catch_0
    move-exception v1

    #@5b
    goto :goto_7

    #@5c
    :catch_1
    move-exception v1

    #@5d
    goto :goto_6

    #@5e
    :catch_2
    move-exception v1

    #@5f
    goto :goto_5

    #@60
    :catch_3
    move-exception v1

    #@61
    goto :goto_4

    #@62
    :catch_4
    move-exception v1

    #@63
    goto :goto_3

    #@64
    :catch_5
    move-exception v1

    #@65
    goto :goto_2

    #@66
    :catch_6
    move-exception v1

    #@67
    goto :goto_1

    #@68
    :catch_7
    move-exception v1

    #@69
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 201
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@3
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@5
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    #@8
    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    #@b
    .line 200
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/GradientDrawable$GradientState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2070
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@4
    .line 159
    new-instance v0, Landroid/graphics/Paint;

    #@6
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@9
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@b
    .line 164
    const/16 v0, 0xff

    #@d
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    #@f
    .line 166
    new-instance v0, Landroid/graphics/Path;

    #@11
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@14
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    #@16
    .line 167
    new-instance v0, Landroid/graphics/RectF;

    #@18
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@1b
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@1d
    .line 173
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    #@1f
    .line 2071
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@21
    .line 2073
    invoke-direct {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@24
    .line 2070
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/GradientDrawable$GradientState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 2
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "colors"    # [I

    #@0
    .prologue
    .line 209
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    #@9
    .line 208
    return-void
.end method

.method private applyThemeChildElements(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1290
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    .line 1292
    .local v2, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 1294
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    #@8
    sget-object v4, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    #@a
    .line 1293
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@d
    move-result-object v0

    #@e
    .line 1295
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/TypedArray;)V

    #@11
    .line 1296
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@14
    .line 1299
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 1301
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    #@1a
    sget-object v4, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    #@1c
    .line 1300
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@1f
    move-result-object v0

    #@20
    .line 1303
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@23
    move-result-object v3

    #@24
    invoke-direct {p0, v3, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1307
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2a
    .line 1311
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :goto_0
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    #@2c
    if-eqz v3, :cond_2

    #@2e
    .line 1313
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    #@30
    sget-object v4, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    #@32
    .line 1312
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@35
    move-result-object v0

    #@36
    .line 1314
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    #@39
    .line 1315
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3c
    .line 1318
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    #@3e
    if-eqz v3, :cond_3

    #@40
    .line 1320
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    #@42
    sget-object v4, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    #@44
    .line 1319
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@47
    move-result-object v0

    #@48
    .line 1321
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    #@4b
    .line 1322
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@4e
    .line 1325
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_3
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    #@50
    if-eqz v3, :cond_4

    #@52
    .line 1327
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    #@54
    sget-object v4, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    #@56
    .line 1326
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@59
    move-result-object v0

    #@5a
    .line 1328
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    #@5d
    .line 1329
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@60
    .line 1332
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_4
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    #@62
    if-eqz v3, :cond_5

    #@64
    .line 1334
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    #@66
    sget-object v4, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    #@68
    .line 1333
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@6b
    move-result-object v0

    #@6c
    .line 1335
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    #@6f
    .line 1336
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@72
    .line 1289
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_5
    return-void

    #@73
    .line 1304
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    #@74
    .line 1305
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-static {v1}, Landroid/graphics/drawable/GradientDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@77
    .line 1307
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@7a
    goto :goto_0

    #@7b
    .line 1306
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    #@7c
    .line 1307
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@7f
    .line 1306
    throw v3
.end method

.method private buildPathIfDirty()V
    .locals 5

    #@0
    .prologue
    .line 789
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    .line 790
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 791
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    #@9
    .line 792
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    #@b
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    #@e
    .line 793
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    #@10
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@12
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@14
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@16
    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    #@19
    .line 794
    const/4 v1, 0x0

    #@1a
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    #@1c
    .line 788
    :cond_0
    return-void
.end method

.method private buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;
    .locals 14
    .param p1, "st"    # Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@0
    .prologue
    const/4 v13, -0x1

    #@1
    const/high16 v12, 0x43b40000    # 360.0f

    #@3
    const/high16 v11, 0x40000000    # 2.0f

    #@5
    const/4 v10, 0x0

    #@6
    .line 799
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    #@8
    if-eqz v8, :cond_0

    #@a
    iget-boolean v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    #@c
    if-eqz v8, :cond_1

    #@e
    iget-boolean v8, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    #@10
    if-eqz v8, :cond_1

    #@12
    .line 800
    :cond_0
    iput-boolean v10, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    #@14
    .line 802
    iget-boolean v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    #@16
    if-eqz v8, :cond_2

    #@18
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    #@1b
    move-result v8

    #@1c
    int-to-float v8, v8

    #@1d
    mul-float/2addr v8, v12

    #@1e
    const v9, 0x461c4000    # 10000.0f

    #@21
    div-float v4, v8, v9

    #@23
    .line 804
    .local v4, "sweep":F
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    #@25
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@27
    invoke-direct {v0, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    #@2a
    .line 806
    .local v0, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    #@2d
    move-result v8

    #@2e
    div-float v6, v8, v11

    #@30
    .line 807
    .local v6, "x":F
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    #@33
    move-result v8

    #@34
    div-float v7, v8, v11

    #@36
    .line 809
    .local v7, "y":F
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    #@38
    if-eq v8, v13, :cond_3

    #@3a
    .line 810
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    #@3c
    int-to-float v5, v8

    #@3d
    .line 812
    .local v5, "thickness":F
    :goto_1
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    #@3f
    if-eq v8, v13, :cond_4

    #@41
    .line 813
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    #@43
    int-to-float v2, v8

    #@44
    .line 815
    .local v2, "radius":F
    :goto_2
    new-instance v1, Landroid/graphics/RectF;

    #@46
    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    #@49
    .line 816
    .local v1, "innerBounds":Landroid/graphics/RectF;
    sub-float v8, v6, v2

    #@4b
    sub-float v9, v7, v2

    #@4d
    invoke-virtual {v1, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    #@50
    .line 818
    new-instance v0, Landroid/graphics/RectF;

    #@52
    .end local v0    # "bounds":Landroid/graphics/RectF;
    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    #@55
    .line 819
    .restart local v0    # "bounds":Landroid/graphics/RectF;
    neg-float v8, v5

    #@56
    neg-float v9, v5

    #@57
    invoke-virtual {v0, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    #@5a
    .line 821
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    #@5c
    if-nez v8, :cond_5

    #@5e
    .line 822
    new-instance v8, Landroid/graphics/Path;

    #@60
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    #@63
    iput-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    #@65
    .line 827
    :goto_3
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    #@67
    .line 830
    .local v3, "ringPath":Landroid/graphics/Path;
    cmpg-float v8, v4, v12

    #@69
    if-gez v8, :cond_6

    #@6b
    const/high16 v8, -0x3c4c0000    # -360.0f

    #@6d
    cmpl-float v8, v4, v8

    #@6f
    if-lez v8, :cond_6

    #@71
    .line 831
    sget-object v8, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    #@73
    invoke-virtual {v3, v8}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    #@76
    .line 833
    add-float v8, v6, v2

    #@78
    invoke-virtual {v3, v8, v7}, Landroid/graphics/Path;->moveTo(FF)V

    #@7b
    .line 835
    add-float v8, v6, v2

    #@7d
    add-float/2addr v8, v5

    #@7e
    invoke-virtual {v3, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    #@81
    .line 837
    const/4 v8, 0x0

    #@82
    invoke-virtual {v3, v0, v8, v4, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    #@85
    .line 839
    neg-float v8, v4

    #@86
    invoke-virtual {v3, v1, v4, v8, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    #@89
    .line 840
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    #@8c
    .line 847
    :goto_4
    return-object v3

    #@8d
    .line 799
    .end local v0    # "bounds":Landroid/graphics/RectF;
    .end local v1    # "innerBounds":Landroid/graphics/RectF;
    .end local v2    # "radius":F
    .end local v3    # "ringPath":Landroid/graphics/Path;
    .end local v4    # "sweep":F
    .end local v5    # "thickness":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_1
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    #@8f
    return-object v8

    #@90
    .line 802
    :cond_2
    const/high16 v4, 0x43b40000    # 360.0f

    #@92
    .restart local v4    # "sweep":F
    goto :goto_0

    #@93
    .line 810
    .restart local v0    # "bounds":Landroid/graphics/RectF;
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    #@96
    move-result v8

    #@97
    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    #@99
    div-float v5, v8, v9

    #@9b
    .restart local v5    # "thickness":F
    goto :goto_1

    #@9c
    .line 813
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    #@9f
    move-result v8

    #@a0
    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    #@a2
    div-float v2, v8, v9

    #@a4
    .restart local v2    # "radius":F
    goto :goto_2

    #@a5
    .line 824
    .restart local v1    # "innerBounds":Landroid/graphics/RectF;
    :cond_5
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    #@a7
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    #@aa
    goto :goto_3

    #@ab
    .line 843
    .restart local v3    # "ringPath":Landroid/graphics/Path;
    :cond_6
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@ad
    invoke-virtual {v3, v0, v8}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    #@b0
    .line 844
    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    #@b2
    invoke-virtual {v3, v1, v8}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    #@b5
    goto :goto_4
.end method

.method private ensureValidRect()Z
    .locals 27

    #@0
    .prologue
    .line 1045
    move-object/from16 v0, p0

    #@2
    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    #@4
    if-eqz v2, :cond_2

    #@6
    .line 1046
    const/4 v2, 0x0

    #@7
    move-object/from16 v0, p0

    #@9
    iput-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    #@b
    .line 1048
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    #@e
    move-result-object v15

    #@f
    .line 1049
    .local v15, "bounds":Landroid/graphics/Rect;
    const/16 v19, 0x0

    #@11
    .line 1051
    .local v19, "inset":F
    move-object/from16 v0, p0

    #@13
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 1052
    move-object/from16 v0, p0

    #@19
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@1b
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    #@1e
    move-result v2

    #@1f
    const/high16 v8, 0x3f000000    # 0.5f

    #@21
    mul-float v19, v2, v8

    #@23
    .line 1055
    :cond_0
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@27
    move-object/from16 v23, v0

    #@29
    .line 1057
    .local v23, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    move-object/from16 v0, p0

    #@2b
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@2d
    iget v8, v15, Landroid/graphics/Rect;->left:I

    #@2f
    int-to-float v8, v8

    #@30
    add-float v8, v8, v19

    #@32
    iget v9, v15, Landroid/graphics/Rect;->top:I

    #@34
    int-to-float v9, v9

    #@35
    add-float v9, v9, v19

    #@37
    .line 1058
    iget v10, v15, Landroid/graphics/Rect;->right:I

    #@39
    int-to-float v10, v10

    #@3a
    sub-float v10, v10, v19

    #@3c
    iget v12, v15, Landroid/graphics/Rect;->bottom:I

    #@3e
    int-to-float v12, v12

    #@3f
    sub-float v12, v12, v19

    #@41
    .line 1057
    invoke-virtual {v2, v8, v9, v10, v12}, Landroid/graphics/RectF;->set(FFFF)V

    #@44
    .line 1060
    move-object/from16 v0, v23

    #@46
    iget-object v7, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@48
    .line 1061
    .local v7, "gradientColors":[I
    if-eqz v7, :cond_2

    #@4a
    .line 1062
    move-object/from16 v0, p0

    #@4c
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@4e
    move-object/from16 v22, v0

    #@50
    .line 1065
    .local v22, "r":Landroid/graphics/RectF;
    move-object/from16 v0, v23

    #@52
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@54
    if-nez v2, :cond_4

    #@56
    .line 1066
    move-object/from16 v0, v23

    #@58
    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    #@5a
    if-eqz v2, :cond_3

    #@5c
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    #@5f
    move-result v2

    #@60
    int-to-float v2, v2

    #@61
    const v8, 0x461c4000    # 10000.0f

    #@64
    div-float v21, v2, v8

    #@66
    .line 1067
    .local v21, "level":F
    :goto_0
    invoke-static {}, Landroid/graphics/drawable/GradientDrawable;->-getandroid-graphics-drawable-GradientDrawable$OrientationSwitchesValues()[I

    #@69
    move-result-object v2

    #@6a
    move-object/from16 v0, v23

    #@6c
    iget-object v8, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@6e
    invoke-virtual {v8}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    #@71
    move-result v8

    #@72
    aget v2, v2, v8

    #@74
    packed-switch v2, :pswitch_data_0

    #@77
    .line 1097
    move-object/from16 v0, v22

    #@79
    iget v3, v0, Landroid/graphics/RectF;->left:F

    #@7b
    .local v3, "x0":F
    move-object/from16 v0, v22

    #@7d
    iget v4, v0, Landroid/graphics/RectF;->top:F

    #@7f
    .line 1098
    .local v4, "y0":F
    move-object/from16 v0, v22

    #@81
    iget v2, v0, Landroid/graphics/RectF;->right:F

    #@83
    mul-float v5, v21, v2

    #@85
    .local v5, "x1":F
    move-object/from16 v0, v22

    #@87
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    #@89
    mul-float v6, v21, v2

    #@8b
    .line 1102
    .local v6, "y1":F
    :goto_1
    move-object/from16 v0, p0

    #@8d
    iget-object v10, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@8f
    new-instance v2, Landroid/graphics/LinearGradient;

    #@91
    .line 1103
    move-object/from16 v0, v23

    #@93
    iget-object v8, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    #@95
    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@97
    .line 1102
    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@9a
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@9d
    .line 1167
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    .end local v21    # "level":F
    :cond_1
    :goto_2
    move-object/from16 v0, v23

    #@9f
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@a1
    if-nez v2, :cond_2

    #@a3
    .line 1168
    move-object/from16 v0, p0

    #@a5
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@a7
    const/high16 v8, -0x1000000

    #@a9
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    #@ac
    .line 1172
    .end local v7    # "gradientColors":[I
    .end local v15    # "bounds":Landroid/graphics/Rect;
    .end local v19    # "inset":F
    .end local v22    # "r":Landroid/graphics/RectF;
    .end local v23    # "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_2
    move-object/from16 v0, p0

    #@ae
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@b0
    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    #@b3
    move-result v2

    #@b4
    if-eqz v2, :cond_12

    #@b6
    const/4 v2, 0x0

    #@b7
    :goto_3
    return v2

    #@b8
    .line 1066
    .restart local v7    # "gradientColors":[I
    .restart local v15    # "bounds":Landroid/graphics/Rect;
    .restart local v19    # "inset":F
    .restart local v22    # "r":Landroid/graphics/RectF;
    .restart local v23    # "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_3
    const/high16 v21, 0x3f800000    # 1.0f

    #@ba
    .restart local v21    # "level":F
    goto :goto_0

    #@bb
    .line 1069
    :pswitch_0
    move-object/from16 v0, v22

    #@bd
    iget v3, v0, Landroid/graphics/RectF;->left:F

    #@bf
    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    #@c1
    iget v4, v0, Landroid/graphics/RectF;->top:F

    #@c3
    .line 1070
    .restart local v4    # "y0":F
    move v5, v3

    #@c4
    .restart local v5    # "x1":F
    move-object/from16 v0, v22

    #@c6
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    #@c8
    mul-float v6, v21, v2

    #@ca
    .line 1071
    .restart local v6    # "y1":F
    goto :goto_1

    #@cb
    .line 1073
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    :pswitch_1
    move-object/from16 v0, v22

    #@cd
    iget v3, v0, Landroid/graphics/RectF;->right:F

    #@cf
    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    #@d1
    iget v4, v0, Landroid/graphics/RectF;->top:F

    #@d3
    .line 1074
    .restart local v4    # "y0":F
    move-object/from16 v0, v22

    #@d5
    iget v2, v0, Landroid/graphics/RectF;->left:F

    #@d7
    mul-float v5, v21, v2

    #@d9
    .restart local v5    # "x1":F
    move-object/from16 v0, v22

    #@db
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    #@dd
    mul-float v6, v21, v2

    #@df
    .line 1075
    .restart local v6    # "y1":F
    goto :goto_1

    #@e0
    .line 1077
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    :pswitch_2
    move-object/from16 v0, v22

    #@e2
    iget v3, v0, Landroid/graphics/RectF;->right:F

    #@e4
    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    #@e6
    iget v4, v0, Landroid/graphics/RectF;->top:F

    #@e8
    .line 1078
    .restart local v4    # "y0":F
    move-object/from16 v0, v22

    #@ea
    iget v2, v0, Landroid/graphics/RectF;->left:F

    #@ec
    mul-float v5, v21, v2

    #@ee
    .restart local v5    # "x1":F
    move v6, v4

    #@ef
    .line 1079
    .restart local v6    # "y1":F
    goto :goto_1

    #@f0
    .line 1081
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    :pswitch_3
    move-object/from16 v0, v22

    #@f2
    iget v3, v0, Landroid/graphics/RectF;->right:F

    #@f4
    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    #@f6
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    #@f8
    .line 1082
    .restart local v4    # "y0":F
    move-object/from16 v0, v22

    #@fa
    iget v2, v0, Landroid/graphics/RectF;->left:F

    #@fc
    mul-float v5, v21, v2

    #@fe
    .restart local v5    # "x1":F
    move-object/from16 v0, v22

    #@100
    iget v2, v0, Landroid/graphics/RectF;->top:F

    #@102
    mul-float v6, v21, v2

    #@104
    .line 1083
    .restart local v6    # "y1":F
    goto :goto_1

    #@105
    .line 1085
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    :pswitch_4
    move-object/from16 v0, v22

    #@107
    iget v3, v0, Landroid/graphics/RectF;->left:F

    #@109
    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    #@10b
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    #@10d
    .line 1086
    .restart local v4    # "y0":F
    move v5, v3

    #@10e
    .restart local v5    # "x1":F
    move-object/from16 v0, v22

    #@110
    iget v2, v0, Landroid/graphics/RectF;->top:F

    #@112
    mul-float v6, v21, v2

    #@114
    .line 1087
    .restart local v6    # "y1":F
    goto/16 :goto_1

    #@116
    .line 1089
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    :pswitch_5
    move-object/from16 v0, v22

    #@118
    iget v3, v0, Landroid/graphics/RectF;->left:F

    #@11a
    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    #@11c
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    #@11e
    .line 1090
    .restart local v4    # "y0":F
    move-object/from16 v0, v22

    #@120
    iget v2, v0, Landroid/graphics/RectF;->right:F

    #@122
    mul-float v5, v21, v2

    #@124
    .restart local v5    # "x1":F
    move-object/from16 v0, v22

    #@126
    iget v2, v0, Landroid/graphics/RectF;->top:F

    #@128
    mul-float v6, v21, v2

    #@12a
    .line 1091
    .restart local v6    # "y1":F
    goto/16 :goto_1

    #@12c
    .line 1093
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    :pswitch_6
    move-object/from16 v0, v22

    #@12e
    iget v3, v0, Landroid/graphics/RectF;->left:F

    #@130
    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    #@132
    iget v4, v0, Landroid/graphics/RectF;->top:F

    #@134
    .line 1094
    .restart local v4    # "y0":F
    move-object/from16 v0, v22

    #@136
    iget v2, v0, Landroid/graphics/RectF;->right:F

    #@138
    mul-float v5, v21, v2

    #@13a
    .restart local v5    # "x1":F
    move v6, v4

    #@13b
    .line 1095
    .restart local v6    # "y1":F
    goto/16 :goto_1

    #@13d
    .line 1104
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    .end local v21    # "level":F
    :cond_4
    move-object/from16 v0, v23

    #@13f
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@141
    const/4 v8, 0x1

    #@142
    if-ne v2, v8, :cond_b

    #@144
    .line 1105
    move-object/from16 v0, v22

    #@146
    iget v2, v0, Landroid/graphics/RectF;->left:F

    #@148
    move-object/from16 v0, v22

    #@14a
    iget v8, v0, Landroid/graphics/RectF;->right:F

    #@14c
    move-object/from16 v0, v22

    #@14e
    iget v9, v0, Landroid/graphics/RectF;->left:F

    #@150
    sub-float/2addr v8, v9

    #@151
    move-object/from16 v0, v23

    #@153
    iget v9, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    #@155
    mul-float/2addr v8, v9

    #@156
    add-float v3, v2, v8

    #@158
    .line 1106
    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    #@15a
    iget v2, v0, Landroid/graphics/RectF;->top:F

    #@15c
    move-object/from16 v0, v22

    #@15e
    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    #@160
    move-object/from16 v0, v22

    #@162
    iget v9, v0, Landroid/graphics/RectF;->top:F

    #@164
    sub-float/2addr v8, v9

    #@165
    move-object/from16 v0, v23

    #@167
    iget v9, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    #@169
    mul-float/2addr v8, v9

    #@16a
    add-float v4, v2, v8

    #@16c
    .line 1108
    .restart local v4    # "y0":F
    move-object/from16 v0, v23

    #@16e
    iget v11, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    #@170
    .line 1109
    .local v11, "radius":F
    move-object/from16 v0, v23

    #@172
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    #@174
    const/4 v8, 0x1

    #@175
    if-ne v2, v8, :cond_a

    #@177
    .line 1112
    move-object/from16 v0, v23

    #@179
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@17b
    if-ltz v2, :cond_8

    #@17d
    move-object/from16 v0, v23

    #@17f
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@181
    int-to-float v0, v2

    #@182
    move/from16 v26, v0

    #@184
    .line 1113
    .local v26, "width":F
    :goto_4
    move-object/from16 v0, v23

    #@186
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@188
    if-ltz v2, :cond_9

    #@18a
    move-object/from16 v0, v23

    #@18c
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@18e
    int-to-float v0, v2

    #@18f
    move/from16 v17, v0

    #@191
    .line 1114
    .local v17, "height":F
    :goto_5
    move/from16 v0, v26

    #@193
    move/from16 v1, v17

    #@195
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    #@198
    move-result v2

    #@199
    mul-float/2addr v11, v2

    #@19a
    .line 1119
    .end local v17    # "height":F
    .end local v26    # "width":F
    :cond_5
    :goto_6
    move-object/from16 v0, v23

    #@19c
    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    #@19e
    if-eqz v2, :cond_6

    #@1a0
    .line 1120
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    #@1a3
    move-result v2

    #@1a4
    int-to-float v2, v2

    #@1a5
    const v8, 0x461c4000    # 10000.0f

    #@1a8
    div-float/2addr v2, v8

    #@1a9
    mul-float/2addr v11, v2

    #@1aa
    .line 1123
    :cond_6
    move-object/from16 v0, p0

    #@1ac
    iput v11, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    #@1ae
    .line 1125
    const/4 v2, 0x0

    #@1af
    cmpg-float v2, v11, v2

    #@1b1
    if-gtz v2, :cond_7

    #@1b3
    .line 1128
    const v11, 0x3a83126f    # 0.001f

    #@1b6
    .line 1131
    :cond_7
    move-object/from16 v0, p0

    #@1b8
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@1ba
    new-instance v8, Landroid/graphics/RadialGradient;

    #@1bc
    .line 1132
    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@1be
    const/4 v13, 0x0

    #@1bf
    move v9, v3

    #@1c0
    move v10, v4

    #@1c1
    move-object v12, v7

    #@1c2
    .line 1131
    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@1c5
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@1c8
    goto/16 :goto_2

    #@1ca
    .line 1112
    :cond_8
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    #@1cd
    move-result v26

    #@1ce
    .restart local v26    # "width":F
    goto :goto_4

    #@1cf
    .line 1113
    :cond_9
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    #@1d2
    move-result v17

    #@1d3
    goto :goto_5

    #@1d4
    .line 1115
    .end local v26    # "width":F
    :cond_a
    move-object/from16 v0, v23

    #@1d6
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    #@1d8
    const/4 v8, 0x2

    #@1d9
    if-ne v2, v8, :cond_5

    #@1db
    .line 1116
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    #@1de
    move-result v2

    #@1df
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    #@1e2
    move-result v8

    #@1e3
    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    #@1e6
    move-result v2

    #@1e7
    mul-float/2addr v11, v2

    #@1e8
    goto :goto_6

    #@1e9
    .line 1133
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v11    # "radius":F
    :cond_b
    move-object/from16 v0, v23

    #@1eb
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@1ed
    const/4 v8, 0x2

    #@1ee
    if-ne v2, v8, :cond_1

    #@1f0
    .line 1134
    move-object/from16 v0, v22

    #@1f2
    iget v2, v0, Landroid/graphics/RectF;->left:F

    #@1f4
    move-object/from16 v0, v22

    #@1f6
    iget v8, v0, Landroid/graphics/RectF;->right:F

    #@1f8
    move-object/from16 v0, v22

    #@1fa
    iget v9, v0, Landroid/graphics/RectF;->left:F

    #@1fc
    sub-float/2addr v8, v9

    #@1fd
    move-object/from16 v0, v23

    #@1ff
    iget v9, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    #@201
    mul-float/2addr v8, v9

    #@202
    add-float v3, v2, v8

    #@204
    .line 1135
    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    #@206
    iget v2, v0, Landroid/graphics/RectF;->top:F

    #@208
    move-object/from16 v0, v22

    #@20a
    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    #@20c
    move-object/from16 v0, v22

    #@20e
    iget v9, v0, Landroid/graphics/RectF;->top:F

    #@210
    sub-float/2addr v8, v9

    #@211
    move-object/from16 v0, v23

    #@213
    iget v9, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    #@215
    mul-float/2addr v8, v9

    #@216
    add-float v4, v2, v8

    #@218
    .line 1137
    .restart local v4    # "y0":F
    move-object/from16 v24, v7

    #@21a
    .line 1138
    .local v24, "tempColors":[I
    const/16 v25, 0x0

    #@21c
    .line 1140
    .local v25, "tempPositions":[F
    move-object/from16 v0, v23

    #@21e
    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    #@220
    if-eqz v2, :cond_11

    #@222
    .line 1141
    move-object/from16 v0, v23

    #@224
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    #@226
    move-object/from16 v24, v0

    #@228
    .line 1142
    array-length v0, v7

    #@229
    move/from16 v20, v0

    #@22b
    .line 1143
    .local v20, "length":I
    if-eqz v24, :cond_c

    #@22d
    move-object/from16 v0, v24

    #@22f
    array-length v2, v0

    #@230
    add-int/lit8 v8, v20, 0x1

    #@232
    if-eq v2, v8, :cond_d

    #@234
    .line 1144
    :cond_c
    add-int/lit8 v2, v20, 0x1

    #@236
    new-array v0, v2, [I

    #@238
    move-object/from16 v24, v0

    #@23a
    .end local v24    # "tempColors":[I
    move-object/from16 v0, v24

    #@23c
    move-object/from16 v1, v23

    #@23e
    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    #@240
    .line 1146
    .restart local v24    # "tempColors":[I
    :cond_d
    const/4 v2, 0x0

    #@241
    const/4 v8, 0x0

    #@242
    move-object/from16 v0, v24

    #@244
    move/from16 v1, v20

    #@246
    invoke-static {v7, v2, v0, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@249
    .line 1147
    add-int/lit8 v2, v20, -0x1

    #@24b
    aget v2, v7, v2

    #@24d
    aput v2, v24, v20

    #@24f
    .line 1149
    move-object/from16 v0, v23

    #@251
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    #@253
    move-object/from16 v25, v0

    #@255
    .line 1150
    .local v25, "tempPositions":[F
    add-int/lit8 v2, v20, -0x1

    #@257
    int-to-float v2, v2

    #@258
    const/high16 v8, 0x3f800000    # 1.0f

    #@25a
    div-float v16, v8, v2

    #@25c
    .line 1151
    .local v16, "fraction":F
    if-eqz v25, :cond_e

    #@25e
    move-object/from16 v0, v25

    #@260
    array-length v2, v0

    #@261
    add-int/lit8 v8, v20, 0x1

    #@263
    if-eq v2, v8, :cond_f

    #@265
    .line 1152
    :cond_e
    add-int/lit8 v2, v20, 0x1

    #@267
    new-array v0, v2, [F

    #@269
    move-object/from16 v25, v0

    #@26b
    .end local v25    # "tempPositions":[F
    move-object/from16 v0, v25

    #@26d
    move-object/from16 v1, v23

    #@26f
    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    #@271
    .line 1155
    .restart local v25    # "tempPositions":[F
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    #@274
    move-result v2

    #@275
    int-to-float v2, v2

    #@276
    const v8, 0x461c4000    # 10000.0f

    #@279
    div-float v21, v2, v8

    #@27b
    .line 1156
    .restart local v21    # "level":F
    const/16 v18, 0x0

    #@27d
    .local v18, "i":I
    :goto_7
    move/from16 v0, v18

    #@27f
    move/from16 v1, v20

    #@281
    if-ge v0, v1, :cond_10

    #@283
    .line 1157
    move/from16 v0, v18

    #@285
    int-to-float v2, v0

    #@286
    mul-float v2, v2, v16

    #@288
    mul-float v2, v2, v21

    #@28a
    aput v2, v25, v18

    #@28c
    .line 1156
    add-int/lit8 v18, v18, 0x1

    #@28e
    goto :goto_7

    #@28f
    .line 1159
    :cond_10
    const/high16 v2, 0x3f800000    # 1.0f

    #@291
    aput v2, v25, v20

    #@293
    .line 1162
    .end local v16    # "fraction":F
    .end local v18    # "i":I
    .end local v20    # "length":I
    .end local v21    # "level":F
    .end local v25    # "tempPositions":[F
    :cond_11
    move-object/from16 v0, p0

    #@295
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@297
    new-instance v8, Landroid/graphics/SweepGradient;

    #@299
    move-object/from16 v0, v24

    #@29b
    move-object/from16 v1, v25

    #@29d
    invoke-direct {v8, v3, v4, v0, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    #@2a0
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@2a3
    goto/16 :goto_2

    #@2a5
    .line 1172
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v7    # "gradientColors":[I
    .end local v15    # "bounds":Landroid/graphics/Rect;
    .end local v19    # "inset":F
    .end local v22    # "r":Landroid/graphics/RectF;
    .end local v23    # "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    .end local v24    # "tempColors":[I
    :cond_12
    const/4 v2, 0x1

    #@2a6
    goto/16 :goto_3

    #@2a8
    .line 1067
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getFloatOrFraction(Landroid/content/res/TypedArray;IF)F
    .locals 6
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "defaultValue"    # F

    #@0
    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    #@2
    .line 1625
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@5
    move-result-object v0

    #@6
    .line 1626
    .local v0, "tv":Landroid/util/TypedValue;
    move v1, p2

    #@7
    .line 1627
    .local v1, "v":F
    if-eqz v0, :cond_0

    #@9
    .line 1628
    iget v3, v0, Landroid/util/TypedValue;->type:I

    #@b
    const/4 v4, 0x6

    #@c
    if-ne v3, v4, :cond_1

    #@e
    const/4 v2, 0x1

    #@f
    .line 1629
    .local v2, "vIsFraction":Z
    :goto_0
    if-eqz v2, :cond_2

    #@11
    invoke-virtual {v0, v5, v5}, Landroid/util/TypedValue;->getFraction(FF)F

    #@14
    move-result v1

    #@15
    .line 1631
    .end local v2    # "vIsFraction":Z
    :cond_0
    :goto_1
    return v1

    #@16
    .line 1628
    :cond_1
    const/4 v2, 0x0

    #@17
    goto :goto_0

    #@18
    .line 1629
    .restart local v2    # "vIsFraction":Z
    :cond_2
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    #@1b
    move-result v1

    #@1c
    goto :goto_1
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 8
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1345
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v5

    #@4
    add-int/lit8 v2, v5, 0x1

    #@6
    .line 1347
    .local v2, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@9
    move-result v4

    #@a
    .local v4, "type":I
    const/4 v5, 0x1

    #@b
    if-eq v4, v5, :cond_8

    #@d
    .line 1348
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@10
    move-result v1

    #@11
    .local v1, "depth":I
    if-ge v1, v2, :cond_1

    #@13
    .line 1349
    const/4 v5, 0x3

    #@14
    if-eq v4, v5, :cond_8

    #@16
    .line 1350
    :cond_1
    const/4 v5, 0x2

    #@17
    if-ne v4, v5, :cond_0

    #@19
    .line 1354
    if-gt v1, v2, :cond_0

    #@1b
    .line 1358
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 1360
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v5, "size"

    #@22
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_2

    #@28
    .line 1361
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    #@2a
    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@2d
    move-result-object v0

    #@2e
    .line 1362
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/TypedArray;)V

    #@31
    .line 1363
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@34
    goto :goto_0

    #@35
    .line 1364
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2
    const-string/jumbo v5, "gradient"

    #@38
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v5

    #@3c
    if-eqz v5, :cond_3

    #@3e
    .line 1365
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    #@40
    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@43
    move-result-object v0

    #@44
    .line 1366
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V

    #@47
    .line 1367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@4a
    goto :goto_0

    #@4b
    .line 1368
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_3
    const-string/jumbo v5, "solid"

    #@4e
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v5

    #@52
    if-eqz v5, :cond_4

    #@54
    .line 1369
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    #@56
    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@59
    move-result-object v0

    #@5a
    .line 1370
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    #@5d
    .line 1371
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@60
    goto :goto_0

    #@61
    .line 1372
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_4
    const-string/jumbo v5, "stroke"

    #@64
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v5

    #@68
    if-eqz v5, :cond_5

    #@6a
    .line 1373
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    #@6c
    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@6f
    move-result-object v0

    #@70
    .line 1374
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    #@73
    .line 1375
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@76
    goto :goto_0

    #@77
    .line 1376
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_5
    const-string/jumbo v5, "corners"

    #@7a
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v5

    #@7e
    if-eqz v5, :cond_6

    #@80
    .line 1377
    sget-object v5, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    #@82
    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@85
    move-result-object v0

    #@86
    .line 1378
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    #@89
    .line 1379
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@8c
    goto/16 :goto_0

    #@8e
    .line 1380
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_6
    const-string/jumbo v5, "padding"

    #@91
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v5

    #@95
    if-eqz v5, :cond_7

    #@97
    .line 1381
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    #@99
    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9c
    move-result-object v0

    #@9d
    .line 1382
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    #@a0
    .line 1383
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@a3
    goto/16 :goto_0

    #@a5
    .line 1385
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_7
    const-string/jumbo v5, "drawable"

    #@a8
    new-instance v6, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v7, "Bad element under <shape>: "

    #@b0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v6

    #@b4
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v6

    #@b8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v6

    #@bc
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@bf
    goto/16 :goto_0

    #@c1
    .line 1341
    .end local v1    # "depth":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method static isOpaque(I)Z
    .locals 2
    .param p0, "color"    # I

    #@0
    .prologue
    .line 2060
    shr-int/lit8 v0, p0, 0x18

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    const/16 v1, 0xff

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private isOpaqueForState()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1657
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@3
    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@5
    if-ltz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1658
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@d
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    #@10
    move-result v0

    #@11
    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 1664
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@19
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@1b
    if-nez v0, :cond_1

    #@1d
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@1f
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    #@22
    move-result v0

    #@23
    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 1668
    :cond_1
    const/4 v0, 0x1

    #@2a
    return v0

    #@2b
    .line 1659
    :cond_2
    return v1

    #@2c
    .line 1665
    :cond_3
    return v1
.end method

.method private modulateAlpha(I)I
    .locals 3
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 590
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    #@2
    iget v2, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    #@4
    shr-int/lit8 v2, v2, 0x7

    #@6
    add-int v0, v1, v2

    #@8
    .line 591
    .local v0, "scale":I
    mul-int v1, p1, v0

    #@a
    shr-int/lit8 v1, v1, 0x8

    #@c
    return v1
.end method

.method private setStrokeInternal(IIFF)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "color"    # I
    .param p3, "dashWidth"    # F
    .param p4, "dashGap"    # F

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 381
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 382
    new-instance v1, Landroid/graphics/Paint;

    #@8
    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    #@b
    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@d
    .line 383
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@f
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@11
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@14
    .line 385
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@16
    int-to-float v2, p1

    #@17
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@1a
    .line 386
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@1c
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    #@1f
    .line 388
    const/4 v0, 0x0

    #@20
    .line 389
    .local v0, "e":Landroid/graphics/DashPathEffect;
    cmpl-float v1, p3, v3

    #@22
    if-lez v1, :cond_1

    #@24
    .line 390
    new-instance v0, Landroid/graphics/DashPathEffect;

    #@26
    .end local v0    # "e":Landroid/graphics/DashPathEffect;
    const/4 v1, 0x2

    #@27
    new-array v1, v1, [F

    #@29
    const/4 v2, 0x0

    #@2a
    aput p3, v1, v2

    #@2c
    aput p4, v1, v4

    #@2e
    invoke-direct {v0, v1, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    #@31
    .line 392
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@33
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    #@36
    .line 393
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@39
    .line 380
    return-void
.end method

.method private updateDrawableCorners(Landroid/content/res/TypedArray;)V
    .locals 13
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v12, 0x4

    #@1
    const/4 v11, 0x3

    #@2
    const/4 v10, 0x2

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v8, 0x0

    #@5
    .line 1412
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@7
    .line 1415
    .local v3, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v6, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@c
    move-result v7

    #@d
    or-int/2addr v6, v7

    #@e
    iput v6, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@10
    .line 1418
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@13
    move-result-object v6

    #@14
    iput-object v6, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    #@16
    .line 1421
    iget v6, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@18
    float-to-int v6, v6

    #@19
    .line 1420
    invoke-virtual {p1, v8, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1c
    move-result v2

    #@1d
    .line 1422
    .local v2, "radius":I
    int-to-float v6, v2

    #@1e
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    #@21
    .line 1425
    invoke-virtual {p1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@24
    move-result v4

    #@25
    .line 1427
    .local v4, "topLeftRadius":I
    invoke-virtual {p1, v10, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@28
    move-result v5

    #@29
    .line 1429
    .local v5, "topRightRadius":I
    invoke-virtual {p1, v11, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2c
    move-result v0

    #@2d
    .line 1431
    .local v0, "bottomLeftRadius":I
    invoke-virtual {p1, v12, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@30
    move-result v1

    #@31
    .line 1433
    .local v1, "bottomRightRadius":I
    if-ne v4, v2, :cond_0

    #@33
    if-eq v5, v2, :cond_2

    #@35
    .line 1436
    :cond_0
    :goto_0
    const/16 v6, 0x8

    #@37
    new-array v6, v6, [F

    #@39
    .line 1437
    int-to-float v7, v4

    #@3a
    aput v7, v6, v8

    #@3c
    int-to-float v7, v4

    #@3d
    aput v7, v6, v9

    #@3f
    .line 1438
    int-to-float v7, v5

    #@40
    aput v7, v6, v10

    #@42
    int-to-float v7, v5

    #@43
    aput v7, v6, v11

    #@45
    .line 1439
    int-to-float v7, v1

    #@46
    aput v7, v6, v12

    #@48
    int-to-float v7, v1

    #@49
    const/4 v8, 0x5

    #@4a
    aput v7, v6, v8

    #@4c
    .line 1440
    int-to-float v7, v0

    #@4d
    const/4 v8, 0x6

    #@4e
    aput v7, v6, v8

    #@50
    int-to-float v7, v0

    #@51
    const/4 v8, 0x7

    #@52
    aput v7, v6, v8

    #@54
    .line 1436
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    #@57
    .line 1411
    :cond_1
    return-void

    #@58
    .line 1434
    :cond_2
    if-ne v0, v2, :cond_0

    #@5a
    if-eq v1, v2, :cond_1

    #@5c
    goto :goto_0
.end method

.method private updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    .locals 13
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1495
    iget-object v6, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    .line 1498
    .local v6, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@7
    move-result v11

    #@8
    or-int/2addr v10, v11

    #@9
    iput v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@b
    .line 1501
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@e
    move-result-object v10

    #@f
    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    #@11
    .line 1504
    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    #@13
    const/4 v11, 0x5

    #@14
    .line 1503
    invoke-static {p2, v11, v10}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    #@17
    move-result v10

    #@18
    iput v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    #@1a
    .line 1506
    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    #@1c
    const/4 v11, 0x6

    #@1d
    .line 1505
    invoke-static {p2, v11, v10}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    #@20
    move-result v10

    #@21
    iput v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    #@23
    .line 1508
    iget-boolean v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    #@25
    const/4 v11, 0x2

    #@26
    .line 1507
    invoke-virtual {p2, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@29
    move-result v10

    #@2a
    iput-boolean v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    #@2c
    .line 1510
    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@2e
    const/4 v11, 0x4

    #@2f
    .line 1509
    invoke-virtual {p2, v11, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    #@32
    move-result v10

    #@33
    iput v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@35
    .line 1514
    const/4 v10, 0x0

    #@36
    const/4 v11, 0x0

    #@37
    .line 1513
    invoke-virtual {p2, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    #@3a
    move-result v7

    #@3b
    .line 1516
    .local v7, "startColor":I
    const/16 v10, 0x8

    #@3d
    .line 1515
    invoke-virtual {p2, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@40
    move-result v3

    #@41
    .line 1518
    .local v3, "hasCenterColor":Z
    const/16 v10, 0x8

    #@43
    const/4 v11, 0x0

    #@44
    .line 1517
    invoke-virtual {p2, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    #@47
    move-result v1

    #@48
    .line 1520
    .local v1, "centerColor":I
    const/4 v10, 0x1

    #@49
    const/4 v11, 0x0

    #@4a
    .line 1519
    invoke-virtual {p2, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    #@4d
    move-result v2

    #@4e
    .line 1522
    .local v2, "endColor":I
    if-eqz v3, :cond_1

    #@50
    .line 1523
    const/4 v10, 0x3

    #@51
    new-array v10, v10, [I

    #@53
    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@55
    .line 1524
    iget-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@57
    const/4 v11, 0x0

    #@58
    aput v7, v10, v11

    #@5a
    .line 1525
    iget-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@5c
    const/4 v11, 0x1

    #@5d
    aput v1, v10, v11

    #@5f
    .line 1526
    iget-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@61
    const/4 v11, 0x2

    #@62
    aput v2, v10, v11

    #@64
    .line 1528
    const/4 v10, 0x3

    #@65
    new-array v10, v10, [F

    #@67
    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    #@69
    .line 1529
    iget-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    #@6b
    const/4 v11, 0x0

    #@6c
    const/4 v12, 0x0

    #@6d
    aput v11, v10, v12

    #@6f
    .line 1531
    iget-object v11, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    #@71
    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    #@73
    const/high16 v12, 0x3f000000    # 0.5f

    #@75
    cmpl-float v10, v10, v12

    #@77
    if-eqz v10, :cond_0

    #@79
    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    #@7b
    :goto_0
    const/4 v12, 0x1

    #@7c
    aput v10, v11, v12

    #@7e
    .line 1532
    iget-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    #@80
    const/high16 v11, 0x3f800000    # 1.0f

    #@82
    const/4 v12, 0x2

    #@83
    aput v11, v10, v12

    #@85
    .line 1539
    :goto_1
    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@87
    if-nez v10, :cond_4

    #@89
    .line 1540
    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    #@8b
    int-to-float v10, v10

    #@8c
    const/4 v11, 0x3

    #@8d
    invoke-virtual {p2, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@90
    move-result v10

    #@91
    float-to-int v0, v10

    #@92
    .line 1541
    .local v0, "angle":I
    rem-int/lit16 v0, v0, 0x168

    #@94
    .line 1543
    rem-int/lit8 v10, v0, 0x2d

    #@96
    if-eqz v10, :cond_2

    #@98
    .line 1544
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    #@9a
    new-instance v11, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@a2
    move-result-object v12

    #@a3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v11

    #@a7
    .line 1545
    const-string/jumbo v12, "<gradient> tag requires \'angle\' attribute to "

    #@aa
    .line 1544
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v11

    #@ae
    .line 1546
    const-string/jumbo v12, "be a multiple of 45"

    #@b1
    .line 1544
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v11

    #@b5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v11

    #@b9
    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@bc
    throw v10

    #@bd
    .line 1531
    .end local v0    # "angle":I
    :cond_0
    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    #@bf
    goto :goto_0

    #@c0
    .line 1534
    :cond_1
    const/4 v10, 0x2

    #@c1
    new-array v10, v10, [I

    #@c3
    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@c5
    .line 1535
    iget-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@c7
    const/4 v11, 0x0

    #@c8
    aput v7, v10, v11

    #@ca
    .line 1536
    iget-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@cc
    const/4 v11, 0x1

    #@cd
    aput v2, v10, v11

    #@cf
    goto :goto_1

    #@d0
    .line 1549
    .restart local v0    # "angle":I
    :cond_2
    iput v0, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    #@d2
    .line 1551
    sparse-switch v0, :sswitch_data_0

    #@d5
    .line 1494
    .end local v0    # "angle":I
    :cond_3
    :goto_2
    return-void

    #@d6
    .line 1553
    .restart local v0    # "angle":I
    :sswitch_0
    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@d8
    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@da
    goto :goto_2

    #@db
    .line 1556
    :sswitch_1
    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@dd
    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@df
    goto :goto_2

    #@e0
    .line 1559
    :sswitch_2
    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@e2
    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@e4
    goto :goto_2

    #@e5
    .line 1562
    :sswitch_3
    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@e7
    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@e9
    goto :goto_2

    #@ea
    .line 1565
    :sswitch_4
    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@ec
    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@ee
    goto :goto_2

    #@ef
    .line 1568
    :sswitch_5
    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@f1
    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@f3
    goto :goto_2

    #@f4
    .line 1571
    :sswitch_6
    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@f6
    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@f8
    goto :goto_2

    #@f9
    .line 1574
    :sswitch_7
    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@fb
    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@fd
    goto :goto_2

    #@fe
    .line 1578
    .end local v0    # "angle":I
    :cond_4
    const/4 v10, 0x7

    #@ff
    invoke-virtual {p2, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@102
    move-result-object v8

    #@103
    .line 1579
    .local v8, "tv":Landroid/util/TypedValue;
    if-eqz v8, :cond_8

    #@105
    .line 1582
    iget v10, v8, Landroid/util/TypedValue;->type:I

    #@107
    const/4 v11, 0x6

    #@108
    if-ne v10, v11, :cond_6

    #@10a
    .line 1583
    const/high16 v10, 0x3f800000    # 1.0f

    #@10c
    const/high16 v11, 0x3f800000    # 1.0f

    #@10e
    invoke-virtual {v8, v10, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    #@111
    move-result v4

    #@112
    .line 1585
    .local v4, "radius":F
    iget v10, v8, Landroid/util/TypedValue;->data:I

    #@114
    shr-int/lit8 v10, v10, 0x0

    #@116
    and-int/lit8 v9, v10, 0xf

    #@118
    .line 1587
    .local v9, "unit":I
    const/4 v10, 0x1

    #@119
    if-ne v9, v10, :cond_5

    #@11b
    .line 1588
    const/4 v5, 0x2

    #@11c
    .line 1600
    .end local v9    # "unit":I
    .local v5, "radiusType":I
    :goto_3
    iput v4, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    #@11e
    .line 1601
    iput v5, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    #@120
    goto :goto_2

    #@121
    .line 1590
    .end local v5    # "radiusType":I
    .restart local v9    # "unit":I
    :cond_5
    const/4 v5, 0x1

    #@122
    .restart local v5    # "radiusType":I
    goto :goto_3

    #@123
    .line 1592
    .end local v4    # "radius":F
    .end local v5    # "radiusType":I
    .end local v9    # "unit":I
    :cond_6
    iget v10, v8, Landroid/util/TypedValue;->type:I

    #@125
    const/4 v11, 0x5

    #@126
    if-ne v10, v11, :cond_7

    #@128
    .line 1593
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@12b
    move-result-object v10

    #@12c
    invoke-virtual {v8, v10}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@12f
    move-result v4

    #@130
    .line 1594
    .restart local v4    # "radius":F
    const/4 v5, 0x0

    #@131
    .restart local v5    # "radiusType":I
    goto :goto_3

    #@132
    .line 1596
    .end local v4    # "radius":F
    .end local v5    # "radiusType":I
    :cond_7
    invoke-virtual {v8}, Landroid/util/TypedValue;->getFloat()F

    #@135
    move-result v4

    #@136
    .line 1597
    .restart local v4    # "radius":F
    const/4 v5, 0x0

    #@137
    .restart local v5    # "radiusType":I
    goto :goto_3

    #@138
    .line 1602
    .end local v4    # "radius":F
    .end local v5    # "radiusType":I
    :cond_8
    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@13a
    const/4 v11, 0x1

    #@13b
    if-ne v10, v11, :cond_3

    #@13d
    .line 1603
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    #@13f
    .line 1604
    new-instance v11, Ljava/lang/StringBuilder;

    #@141
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@144
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@147
    move-result-object v12

    #@148
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v11

    #@14c
    .line 1605
    const-string/jumbo v12, "<gradient> tag requires \'gradientRadius\' "

    #@14f
    .line 1604
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v11

    #@153
    .line 1606
    const-string/jumbo v12, "attribute with radial type"

    #@156
    .line 1604
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v11

    #@15a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15d
    move-result-object v11

    #@15e
    .line 1603
    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@161
    throw v10

    #@162
    .line 1551
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2d -> :sswitch_1
        0x5a -> :sswitch_2
        0x87 -> :sswitch_3
        0xb4 -> :sswitch_4
        0xe1 -> :sswitch_5
        0x10e -> :sswitch_6
        0x13b -> :sswitch_7
    .end sparse-switch
.end method

.method private updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V
    .locals 7
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 1391
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    .line 1394
    .local v1, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@7
    move-result v3

    #@8
    or-int/2addr v2, v3

    #@9
    iput v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@b
    .line 1397
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@e
    move-result-object v2

    #@f
    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    #@11
    .line 1399
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@13
    if-nez v2, :cond_0

    #@15
    .line 1400
    new-instance v2, Landroid/graphics/Rect;

    #@17
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@1a
    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@1c
    .line 1403
    :cond_0
    iget-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@1e
    .line 1404
    .local v0, "pad":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@20
    const/4 v3, 0x0

    #@21
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@24
    move-result v2

    #@25
    .line 1405
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@27
    const/4 v4, 0x1

    #@28
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@2b
    move-result v3

    #@2c
    .line 1406
    iget v4, v0, Landroid/graphics/Rect;->right:I

    #@2e
    const/4 v5, 0x2

    #@2f
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@32
    move-result v4

    #@33
    .line 1407
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    #@35
    const/4 v6, 0x3

    #@36
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@39
    move-result v5

    #@3a
    .line 1404
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    #@3d
    .line 1408
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    #@3f
    .line 1390
    return-void
.end method

.method private updateGradientDrawableSize(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 1612
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    .line 1615
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@7
    move-result v2

    #@8
    or-int/2addr v1, v2

    #@9
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@b
    .line 1618
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    #@11
    .line 1620
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@13
    const/4 v2, 0x1

    #@14
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@17
    move-result v1

    #@18
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@1a
    .line 1621
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@1c
    const/4 v2, 0x0

    #@1d
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@20
    move-result v1

    #@21
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@23
    .line 1611
    return-void
.end method

.method private updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 1478
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    .line 1481
    .local v1, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@7
    move-result v3

    #@8
    or-int/2addr v2, v3

    #@9
    iput v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@b
    .line 1484
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@e
    move-result-object v2

    #@f
    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    #@11
    .line 1487
    const/4 v2, 0x0

    #@12
    .line 1486
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@15
    move-result-object v0

    #@16
    .line 1488
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    #@18
    .line 1489
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    #@1b
    .line 1477
    :cond_0
    return-void
.end method

.method private updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1446
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@3
    .line 1449
    .local v4, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v6, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@8
    move-result v7

    #@9
    or-int/2addr v6, v7

    #@a
    iput v6, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@c
    .line 1452
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@f
    move-result-object v6

    #@10
    iput-object v6, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    #@12
    .line 1456
    iget v6, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@14
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    #@17
    move-result v3

    #@18
    .line 1457
    .local v3, "defaultStrokeWidth":I
    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1b
    move-result v5

    #@1c
    .line 1460
    .local v5, "width":I
    iget v6, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    #@1e
    const/4 v7, 0x2

    #@1f
    .line 1459
    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@22
    move-result v2

    #@23
    .line 1463
    .local v2, "dashWidth":F
    const/4 v6, 0x1

    #@24
    .line 1462
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@27
    move-result-object v0

    #@28
    .line 1464
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    #@2a
    .line 1465
    iget-object v0, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@2c
    .line 1468
    :cond_0
    const/4 v6, 0x0

    #@2d
    cmpl-float v6, v2, v6

    #@2f
    if-eqz v6, :cond_1

    #@31
    .line 1470
    iget v6, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    #@33
    const/4 v7, 0x3

    #@34
    .line 1469
    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@37
    move-result v1

    #@38
    .line 1471
    .local v1, "dashGap":F
    invoke-virtual {p0, v5, v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    #@3b
    .line 1445
    .end local v1    # "dashGap":F
    :goto_0
    return-void

    #@3c
    .line 1473
    :cond_1
    invoke-virtual {p0, v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    #@3f
    goto :goto_0
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 2077
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@5
    .line 2079
    .local v2, "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@7
    if-eqz v5, :cond_2

    #@9
    .line 2080
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    #@c
    move-result-object v0

    #@d
    .line 2081
    .local v0, "currentState":[I
    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@f
    invoke-virtual {v5, v0, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@12
    move-result v3

    #@13
    .line 2082
    .local v3, "stateColor":I
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@15
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    #@18
    .line 2093
    .end local v0    # "currentState":[I
    .end local v3    # "stateColor":I
    :goto_0
    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    #@1a
    iput-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    #@1c
    .line 2095
    iget v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@1e
    if-ltz v5, :cond_1

    #@20
    .line 2096
    new-instance v5, Landroid/graphics/Paint;

    #@22
    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    #@25
    iput-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@27
    .line 2097
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@29
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@2b
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@2e
    .line 2098
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@30
    iget v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@32
    int-to-float v6, v6

    #@33
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@36
    .line 2100
    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@38
    if-eqz v5, :cond_0

    #@3a
    .line 2101
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    #@3d
    move-result-object v0

    #@3e
    .line 2102
    .restart local v0    # "currentState":[I
    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@40
    invoke-virtual {v5, v0, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@43
    move-result v4

    #@44
    .line 2104
    .local v4, "strokeStateColor":I
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@46
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@49
    .line 2107
    .end local v0    # "currentState":[I
    .end local v4    # "strokeStateColor":I
    :cond_0
    iget v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    #@4b
    cmpl-float v5, v5, v9

    #@4d
    if-eqz v5, :cond_1

    #@4f
    .line 2108
    new-instance v1, Landroid/graphics/DashPathEffect;

    #@51
    .line 2109
    const/4 v5, 0x2

    #@52
    new-array v5, v5, [F

    #@54
    iget v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    #@56
    aput v6, v5, v7

    #@58
    iget v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    #@5a
    aput v6, v5, v8

    #@5c
    .line 2108
    invoke-direct {v1, v5, v9}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    #@5f
    .line 2110
    .local v1, "e":Landroid/graphics/DashPathEffect;
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@61
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    #@64
    .line 2114
    .end local v1    # "e":Landroid/graphics/DashPathEffect;
    :cond_1
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@66
    iget-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@68
    iget-object v7, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@6a
    invoke-virtual {p0, v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@6d
    move-result-object v5

    #@6e
    iput-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@70
    .line 2115
    iput-boolean v8, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    #@72
    .line 2117
    invoke-static {v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->-wrap0(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    #@75
    .line 2076
    return-void

    #@76
    .line 2083
    :cond_2
    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@78
    if-nez v5, :cond_3

    #@7a
    .line 2087
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@7c
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    #@7f
    goto :goto_0

    #@80
    .line 2090
    :cond_3
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@82
    const/high16 v6, -0x1000000

    #@84
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    #@87
    goto :goto_0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 11
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v9, -0x1

    #@2
    .line 1231
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@4
    .line 1234
    .local v4, "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@9
    move-result v8

    #@a
    or-int/2addr v7, v8

    #@b
    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@d
    .line 1237
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@10
    move-result-object v7

    #@11
    iput-object v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    #@13
    .line 1239
    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@15
    invoke-virtual {p1, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@18
    move-result v7

    #@19
    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@1b
    .line 1240
    iget-boolean v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    #@1d
    const/4 v8, 0x0

    #@1e
    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@21
    move-result v7

    #@22
    iput-boolean v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    #@24
    .line 1242
    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@26
    if-ne v7, v10, :cond_2

    #@28
    .line 1244
    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    #@2a
    const/4 v8, 0x7

    #@2b
    .line 1243
    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2e
    move-result v7

    #@2f
    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    #@31
    .line 1246
    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    #@33
    if-ne v7, v9, :cond_0

    #@35
    .line 1248
    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    #@37
    const/4 v8, 0x4

    #@38
    .line 1247
    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3b
    move-result v7

    #@3c
    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    #@3e
    .line 1252
    :cond_0
    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    #@40
    const/16 v8, 0x8

    #@42
    .line 1251
    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@45
    move-result v7

    #@46
    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    #@48
    .line 1254
    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    #@4a
    if-ne v7, v9, :cond_1

    #@4c
    .line 1256
    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    #@4e
    const/4 v8, 0x5

    #@4f
    .line 1255
    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@52
    move-result v7

    #@53
    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    #@55
    .line 1260
    :cond_1
    iget-boolean v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    #@57
    const/4 v8, 0x6

    #@58
    .line 1259
    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@5b
    move-result v7

    #@5c
    iput-boolean v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    #@5e
    .line 1263
    :cond_2
    const/16 v7, 0x9

    #@60
    invoke-virtual {p1, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    #@63
    move-result v6

    #@64
    .line 1264
    .local v6, "tintMode":I
    if-eq v6, v9, :cond_3

    #@66
    .line 1265
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@68
    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@6b
    move-result-object v7

    #@6c
    iput-object v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@6e
    .line 1268
    :cond_3
    const/4 v7, 0x1

    #@6f
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@72
    move-result-object v5

    #@73
    .line 1269
    .local v5, "tint":Landroid/content/res/ColorStateList;
    if-eqz v5, :cond_4

    #@75
    .line 1270
    iput-object v5, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@77
    .line 1274
    :cond_4
    iget-object v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@79
    iget v7, v7, Landroid/graphics/Insets;->left:I

    #@7b
    const/16 v8, 0xa

    #@7d
    .line 1273
    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@80
    move-result v1

    #@81
    .line 1276
    .local v1, "insetLeft":I
    iget-object v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@83
    iget v7, v7, Landroid/graphics/Insets;->top:I

    #@85
    const/16 v8, 0xb

    #@87
    .line 1275
    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@8a
    move-result v3

    #@8b
    .line 1278
    .local v3, "insetTop":I
    iget-object v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@8d
    iget v7, v7, Landroid/graphics/Insets;->right:I

    #@8f
    const/16 v8, 0xc

    #@91
    .line 1277
    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@94
    move-result v2

    #@95
    .line 1280
    .local v2, "insetRight":I
    iget-object v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@97
    iget v7, v7, Landroid/graphics/Insets;->bottom:I

    #@99
    const/16 v8, 0xd

    #@9b
    .line 1279
    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@9e
    move-result v0

    #@9f
    .line 1281
    .local v0, "insetBottom":I
    invoke-static {v1, v3, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@a2
    move-result-object v7

    #@a3
    iput-object v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@a5
    .line 1230
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1194
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 1196
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@5
    .line 1197
    .local v1, "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    if-nez v1, :cond_0

    #@7
    .line 1198
    return-void

    #@8
    .line 1201
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@10
    move-result v2

    #@11
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    #@14
    .line 1203
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 1205
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    #@1a
    sget-object v3, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    #@1c
    .line 1204
    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@1f
    move-result-object v0

    #@20
    .line 1206
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@23
    .line 1207
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@26
    .line 1210
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@28
    if-eqz v2, :cond_2

    #@2a
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@2c
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_2

    #@32
    .line 1211
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@34
    invoke-virtual {v2, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@37
    move-result-object v2

    #@38
    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@3a
    .line 1214
    :cond_2
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@3c
    if-eqz v2, :cond_3

    #@3e
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@40
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_3

    #@46
    .line 1215
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@48
    invoke-virtual {v2, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@4b
    move-result-object v2

    #@4c
    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@4e
    .line 1218
    :cond_3
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@50
    if-eqz v2, :cond_4

    #@52
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@54
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@57
    move-result v2

    #@58
    if-eqz v2, :cond_4

    #@5a
    .line 1219
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@5c
    invoke-virtual {v2, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@5f
    move-result-object v2

    #@60
    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@62
    .line 1222
    :cond_4
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->applyThemeChildElements(Landroid/content/res/Resources$Theme;)V

    #@65
    .line 1224
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@68
    move-result-object v2

    #@69
    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@6c
    .line 1193
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 1286
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->canApplyTheme()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@f
    move-result v0

    #@10
    :goto_0
    return v0

    #@11
    :cond_1
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method public clearMutated()V
    .locals 1

    #@0
    .prologue
    .line 1733
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@3
    .line 1734
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    #@6
    .line 1732
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 657
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 659
    return-void

    #@7
    .line 664
    :cond_0
    move-object/from16 v0, p0

    #@9
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@b
    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    #@e
    move-result v16

    #@f
    .line 665
    .local v16, "prevFillAlpha":I
    move-object/from16 v0, p0

    #@11
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@13
    if-eqz v3, :cond_6

    #@15
    move-object/from16 v0, p0

    #@17
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@19
    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    #@1c
    move-result v17

    #@1d
    .line 667
    .local v17, "prevStrokeAlpha":I
    :goto_0
    move-object/from16 v0, p0

    #@1f
    move/from16 v1, v16

    #@21
    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    #@24
    move-result v11

    #@25
    .line 668
    .local v11, "currFillAlpha":I
    move-object/from16 v0, p0

    #@27
    move/from16 v1, v17

    #@29
    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    #@2c
    move-result v12

    #@2d
    .line 670
    .local v12, "currStrokeAlpha":I
    if-lez v12, :cond_8

    #@2f
    move-object/from16 v0, p0

    #@31
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@33
    if-eqz v3, :cond_8

    #@35
    .line 671
    move-object/from16 v0, p0

    #@37
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@39
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    #@3c
    move-result v3

    #@3d
    const/4 v4, 0x0

    #@3e
    cmpl-float v3, v3, v4

    #@40
    if-lez v3, :cond_7

    #@42
    const/4 v14, 0x1

    #@43
    .line 672
    .local v14, "haveStroke":Z
    :goto_1
    if-lez v11, :cond_9

    #@45
    const/4 v13, 0x1

    #@46
    .line 673
    .local v13, "haveFill":Z
    :goto_2
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@4a
    move-object/from16 v20, v0

    #@4c
    .line 674
    .local v20, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    move-object/from16 v0, p0

    #@4e
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@50
    if-eqz v3, :cond_a

    #@52
    move-object/from16 v0, p0

    #@54
    iget-object v10, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@56
    .line 681
    .local v10, "colorFilter":Landroid/graphics/ColorFilter;
    :goto_3
    if-eqz v14, :cond_c

    #@58
    if-eqz v13, :cond_c

    #@5a
    move-object/from16 v0, v20

    #@5c
    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@5e
    const/4 v4, 0x2

    #@5f
    if-eq v3, v4, :cond_c

    #@61
    .line 682
    const/16 v3, 0xff

    #@63
    if-ge v12, v3, :cond_c

    #@65
    move-object/from16 v0, p0

    #@67
    iget v3, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    #@69
    const/16 v4, 0xff

    #@6b
    if-lt v3, v4, :cond_1

    #@6d
    if-eqz v10, :cond_b

    #@6f
    :cond_1
    const/4 v3, 0x1

    #@70
    :goto_4
    move/from16 v21, v3

    #@72
    .line 691
    .local v21, "useLayer":Z
    :goto_5
    if-eqz v21, :cond_d

    #@74
    .line 692
    move-object/from16 v0, p0

    #@76
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    #@78
    if-nez v3, :cond_2

    #@7a
    .line 693
    new-instance v3, Landroid/graphics/Paint;

    #@7c
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    #@7f
    move-object/from16 v0, p0

    #@81
    iput-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    #@83
    .line 695
    :cond_2
    move-object/from16 v0, p0

    #@85
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    #@87
    move-object/from16 v0, v20

    #@89
    iget-boolean v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    #@8b
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    #@8e
    .line 696
    move-object/from16 v0, p0

    #@90
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    #@92
    move-object/from16 v0, p0

    #@94
    iget v4, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    #@96
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    #@99
    .line 697
    move-object/from16 v0, p0

    #@9b
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    #@9d
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@a0
    .line 699
    move-object/from16 v0, p0

    #@a2
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@a4
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    #@a7
    move-result v19

    #@a8
    .line 700
    .local v19, "rad":F
    move-object/from16 v0, p0

    #@aa
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@ac
    iget v3, v3, Landroid/graphics/RectF;->left:F

    #@ae
    sub-float v4, v3, v19

    #@b0
    move-object/from16 v0, p0

    #@b2
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@b4
    iget v3, v3, Landroid/graphics/RectF;->top:F

    #@b6
    sub-float v5, v3, v19

    #@b8
    .line 701
    move-object/from16 v0, p0

    #@ba
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@bc
    iget v3, v3, Landroid/graphics/RectF;->right:F

    #@be
    add-float v6, v3, v19

    #@c0
    move-object/from16 v0, p0

    #@c2
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@c4
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    #@c6
    add-float v7, v3, v19

    #@c8
    .line 702
    move-object/from16 v0, p0

    #@ca
    iget-object v8, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    #@cc
    const/4 v9, 0x4

    #@cd
    move-object/from16 v3, p1

    #@cf
    .line 700
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    #@d2
    .line 706
    move-object/from16 v0, p0

    #@d4
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@d6
    const/4 v4, 0x0

    #@d7
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@da
    .line 707
    move-object/from16 v0, p0

    #@dc
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@de
    const/4 v4, 0x0

    #@df
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@e2
    .line 725
    .end local v19    # "rad":F
    :cond_3
    :goto_6
    move-object/from16 v0, v20

    #@e4
    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@e6
    packed-switch v3, :pswitch_data_0

    #@e9
    .line 778
    :cond_4
    :goto_7
    if-eqz v21, :cond_14

    #@eb
    .line 779
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    #@ee
    .line 656
    :cond_5
    :goto_8
    return-void

    #@ef
    .line 665
    .end local v10    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v11    # "currFillAlpha":I
    .end local v12    # "currStrokeAlpha":I
    .end local v13    # "haveFill":Z
    .end local v14    # "haveStroke":Z
    .end local v17    # "prevStrokeAlpha":I
    .end local v20    # "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    .end local v21    # "useLayer":Z
    :cond_6
    const/16 v17, 0x0

    #@f1
    .restart local v17    # "prevStrokeAlpha":I
    goto/16 :goto_0

    #@f3
    .line 671
    .restart local v11    # "currFillAlpha":I
    .restart local v12    # "currStrokeAlpha":I
    :cond_7
    const/4 v14, 0x0

    #@f4
    .restart local v14    # "haveStroke":Z
    goto/16 :goto_1

    #@f6
    .line 670
    .end local v14    # "haveStroke":Z
    :cond_8
    const/4 v14, 0x0

    #@f7
    .restart local v14    # "haveStroke":Z
    goto/16 :goto_1

    #@f9
    .line 672
    :cond_9
    const/4 v13, 0x0

    #@fa
    .restart local v13    # "haveFill":Z
    goto/16 :goto_2

    #@fc
    .line 674
    .restart local v20    # "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_a
    move-object/from16 v0, p0

    #@fe
    iget-object v10, v0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@100
    .restart local v10    # "colorFilter":Landroid/graphics/ColorFilter;
    goto/16 :goto_3

    #@102
    .line 682
    :cond_b
    const/4 v3, 0x0

    #@103
    goto/16 :goto_4

    #@105
    .line 681
    :cond_c
    const/16 v21, 0x0

    #@107
    goto/16 :goto_5

    #@109
    .line 712
    .restart local v21    # "useLayer":Z
    :cond_d
    move-object/from16 v0, p0

    #@10b
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@10d
    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    #@110
    .line 713
    move-object/from16 v0, p0

    #@112
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@114
    move-object/from16 v0, v20

    #@116
    iget-boolean v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    #@118
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    #@11b
    .line 714
    move-object/from16 v0, p0

    #@11d
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@11f
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@122
    .line 715
    if-eqz v10, :cond_e

    #@124
    move-object/from16 v0, v20

    #@126
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@128
    if-nez v3, :cond_e

    #@12a
    .line 716
    move-object/from16 v0, p0

    #@12c
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@12e
    move-object/from16 v0, p0

    #@130
    iget v4, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    #@132
    shl-int/lit8 v4, v4, 0x18

    #@134
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@137
    .line 718
    :cond_e
    if-eqz v14, :cond_3

    #@139
    .line 719
    move-object/from16 v0, p0

    #@13b
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@13d
    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    #@140
    .line 720
    move-object/from16 v0, p0

    #@142
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@144
    move-object/from16 v0, v20

    #@146
    iget-boolean v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    #@148
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    #@14b
    .line 721
    move-object/from16 v0, p0

    #@14d
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@14f
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@152
    goto :goto_6

    #@153
    .line 727
    :pswitch_0
    move-object/from16 v0, v20

    #@155
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@157
    if-eqz v3, :cond_f

    #@159
    .line 728
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    #@15c
    .line 729
    move-object/from16 v0, p0

    #@15e
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    #@160
    move-object/from16 v0, p0

    #@162
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@164
    move-object/from16 v0, p1

    #@166
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@169
    .line 730
    if-eqz v14, :cond_4

    #@16b
    .line 731
    move-object/from16 v0, p0

    #@16d
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    #@16f
    move-object/from16 v0, p0

    #@171
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@173
    move-object/from16 v0, p1

    #@175
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@178
    goto/16 :goto_7

    #@17a
    .line 733
    :cond_f
    move-object/from16 v0, v20

    #@17c
    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@17e
    const/4 v4, 0x0

    #@17f
    cmpl-float v3, v3, v4

    #@181
    if-lez v3, :cond_10

    #@183
    .line 739
    move-object/from16 v0, v20

    #@185
    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@187
    .line 740
    move-object/from16 v0, p0

    #@189
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@18b
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    #@18e
    move-result v4

    #@18f
    move-object/from16 v0, p0

    #@191
    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@193
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    #@196
    move-result v6

    #@197
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    #@19a
    move-result v4

    #@19b
    const/high16 v6, 0x3f000000    # 0.5f

    #@19d
    mul-float/2addr v4, v6

    #@19e
    .line 739
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    #@1a1
    move-result v19

    #@1a2
    .line 741
    .restart local v19    # "rad":F
    move-object/from16 v0, p0

    #@1a4
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@1aa
    move-object/from16 v0, p1

    #@1ac
    move/from16 v1, v19

    #@1ae
    move/from16 v2, v19

    #@1b0
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    #@1b3
    .line 742
    if-eqz v14, :cond_4

    #@1b5
    .line 743
    move-object/from16 v0, p0

    #@1b7
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@1bd
    move-object/from16 v0, p1

    #@1bf
    move/from16 v1, v19

    #@1c1
    move/from16 v2, v19

    #@1c3
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    #@1c6
    goto/16 :goto_7

    #@1c8
    .line 746
    .end local v19    # "rad":F
    :cond_10
    move-object/from16 v0, p0

    #@1ca
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@1cc
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    #@1cf
    move-result v3

    #@1d0
    if-nez v3, :cond_11

    #@1d2
    if-eqz v10, :cond_13

    #@1d4
    .line 748
    :cond_11
    :goto_9
    move-object/from16 v0, p0

    #@1d6
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@1d8
    move-object/from16 v0, p0

    #@1da
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@1dc
    move-object/from16 v0, p1

    #@1de
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@1e1
    .line 750
    :cond_12
    if-eqz v14, :cond_4

    #@1e3
    .line 751
    move-object/from16 v0, p0

    #@1e5
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@1eb
    move-object/from16 v0, p1

    #@1ed
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@1f0
    goto/16 :goto_7

    #@1f2
    .line 747
    :cond_13
    move-object/from16 v0, p0

    #@1f4
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@1f6
    invoke-virtual {v3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    #@1f9
    move-result-object v3

    #@1fa
    if-eqz v3, :cond_12

    #@1fc
    goto :goto_9

    #@1fd
    .line 756
    :pswitch_1
    move-object/from16 v0, p0

    #@1ff
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@201
    move-object/from16 v0, p0

    #@203
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@205
    move-object/from16 v0, p1

    #@207
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@20a
    .line 757
    if-eqz v14, :cond_4

    #@20c
    .line 758
    move-object/from16 v0, p0

    #@20e
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@210
    move-object/from16 v0, p0

    #@212
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@214
    move-object/from16 v0, p1

    #@216
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@219
    goto/16 :goto_7

    #@21b
    .line 762
    :pswitch_2
    move-object/from16 v0, p0

    #@21d
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    #@21f
    move-object/from16 v18, v0

    #@221
    .line 763
    .local v18, "r":Landroid/graphics/RectF;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->centerY()F

    #@224
    move-result v5

    #@225
    .line 764
    .local v5, "y":F
    if-eqz v14, :cond_4

    #@227
    .line 765
    move-object/from16 v0, v18

    #@229
    iget v4, v0, Landroid/graphics/RectF;->left:F

    #@22b
    move-object/from16 v0, v18

    #@22d
    iget v6, v0, Landroid/graphics/RectF;->right:F

    #@22f
    move-object/from16 v0, p0

    #@231
    iget-object v8, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@233
    move-object/from16 v3, p1

    #@235
    move v7, v5

    #@236
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@239
    goto/16 :goto_7

    #@23b
    .line 770
    .end local v5    # "y":F
    .end local v18    # "r":Landroid/graphics/RectF;
    :pswitch_3
    move-object/from16 v0, p0

    #@23d
    move-object/from16 v1, v20

    #@23f
    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;

    #@242
    move-result-object v15

    #@243
    .line 771
    .local v15, "path":Landroid/graphics/Path;
    move-object/from16 v0, p0

    #@245
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@247
    move-object/from16 v0, p1

    #@249
    invoke-virtual {v0, v15, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@24c
    .line 772
    if-eqz v14, :cond_4

    #@24e
    .line 773
    move-object/from16 v0, p0

    #@250
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@252
    move-object/from16 v0, p1

    #@254
    invoke-virtual {v0, v15, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@257
    goto/16 :goto_7

    #@259
    .line 781
    .end local v15    # "path":Landroid/graphics/Path;
    :cond_14
    move-object/from16 v0, p0

    #@25b
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@25d
    move/from16 v0, v16

    #@25f
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    #@262
    .line 782
    if-eqz v14, :cond_5

    #@264
    .line 783
    move-object/from16 v0, p0

    #@266
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@268
    move/from16 v0, v17

    #@26a
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    #@26d
    goto/16 :goto_8

    #@26f
    .line 725
    nop

    #@270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 976
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    #@2
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 963
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@6
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->getChangingConfigurations()I

    #@9
    move-result v1

    #@a
    or-int/2addr v0, v1

    #@b
    return v0
.end method

.method public getColor()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 908
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@4
    return-object v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    #@0
    .prologue
    .line 990
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    return-object v0
.end method

.method public getColors()[I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 651
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@3
    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@5
    if-nez v1, :cond_0

    #@7
    :goto_0
    return-object v0

    #@8
    .line 652
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@a
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    #@c
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, [I

    #@12
    goto :goto_0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    #@0
    .prologue
    .line 1652
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getChangingConfigurations()I

    #@5
    move-result v1

    #@6
    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    #@8
    .line 1653
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@a
    return-object v0
.end method

.method public getCornerRadii()[F
    .locals 1

    #@0
    .prologue
    .line 259
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@4
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [F

    #@a
    return-object v0
.end method

.method public getCornerRadius()F
    .locals 1

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@4
    return v0
.end method

.method public getGradientCenterX()F
    .locals 1

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    #@4
    return v0
.end method

.method public getGradientCenterY()F
    .locals 1

    #@0
    .prologue
    .line 517
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    #@4
    return v0
.end method

.method public getGradientRadius()F
    .locals 2

    #@0
    .prologue
    .line 548
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@4
    const/4 v1, 0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 549
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 552
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    #@c
    .line 553
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    #@e
    return v0
.end method

.method public getGradientType()I
    .locals 1

    #@0
    .prologue
    .line 474
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    #@4
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 1641
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    #@4
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 1636
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    #@4
    return v0
.end method

.method public getOpacity()I
    .locals 2

    #@0
    .prologue
    .line 1017
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    #@2
    const/16 v1, 0xff

    #@4
    if-ne v0, v1, :cond_0

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@8
    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->isOpaqueForState()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1018
    const/4 v0, -0x1

    #@13
    .line 1017
    :goto_0
    return v0

    #@14
    .line 1018
    :cond_0
    const/4 v0, -0x3

    #@15
    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    #@0
    .prologue
    .line 1647
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    #@4
    return-object v0
.end method

.method public getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1

    #@0
    .prologue
    .line 601
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@4
    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 13
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/high16 v12, 0x3f000000    # 0.5f

    #@3
    const/4 v9, 0x0

    #@4
    const/4 v8, 0x0

    #@5
    .line 1673
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@7
    .line 1674
    .local v5, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    #@a
    move-result-object v1

    #@b
    .line 1677
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-boolean v10, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    #@d
    if-eqz v10, :cond_2

    #@f
    iget-object v10, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@11
    iget v10, v10, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    #@13
    if-lez v10, :cond_0

    #@15
    .line 1678
    iget-object v10, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@17
    if-nez v10, :cond_1

    #@19
    .line 1680
    .local v7, "useFillOpacity":Z
    :cond_0
    :goto_0
    if-eqz v7, :cond_3

    #@1b
    .line 1681
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@1d
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    #@20
    move-result v8

    #@21
    invoke-direct {p0, v8}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    #@24
    move-result v8

    #@25
    int-to-float v8, v8

    #@26
    const/high16 v10, 0x437f0000    # 255.0f

    #@28
    div-float/2addr v8, v10

    #@29
    .line 1680
    :goto_1
    invoke-virtual {p1, v8}, Landroid/graphics/Outline;->setAlpha(F)V

    #@2c
    .line 1684
    iget v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@2e
    packed-switch v8, :pswitch_data_0

    #@31
    .line 1672
    return-void

    #@32
    .line 1679
    .end local v7    # "useFillOpacity":Z
    :cond_1
    iget-object v10, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@34
    invoke-virtual {v10}, Landroid/graphics/Paint;->getAlpha()I

    #@37
    move-result v10

    #@38
    iget-object v11, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@3a
    invoke-virtual {v11}, Landroid/graphics/Paint;->getAlpha()I

    #@3d
    move-result v11

    #@3e
    if-eq v10, v11, :cond_0

    #@40
    move v7, v8

    #@41
    goto :goto_0

    #@42
    :cond_2
    move v7, v8

    #@43
    .line 1677
    goto :goto_0

    #@44
    .restart local v7    # "useFillOpacity":Z
    :cond_3
    move v8, v9

    #@45
    .line 1682
    goto :goto_1

    #@46
    .line 1686
    :pswitch_0
    iget-object v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    #@48
    if-eqz v8, :cond_4

    #@4a
    .line 1687
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    #@4d
    .line 1688
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    #@4f
    invoke-virtual {p1, v8}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    #@52
    .line 1689
    return-void

    #@53
    .line 1692
    :cond_4
    const/4 v4, 0x0

    #@54
    .line 1693
    .local v4, "rad":F
    iget v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@56
    cmpl-float v8, v8, v9

    #@58
    if-lez v8, :cond_5

    #@5a
    .line 1695
    iget v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    #@5c
    .line 1696
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@5f
    move-result v9

    #@60
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@63
    move-result v10

    #@64
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    #@67
    move-result v9

    #@68
    int-to-float v9, v9

    #@69
    mul-float/2addr v9, v12

    #@6a
    .line 1695
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    #@6d
    move-result v4

    #@6e
    .line 1698
    :cond_5
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    #@71
    .line 1699
    return-void

    #@72
    .line 1701
    .end local v4    # "rad":F
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    #@75
    .line 1702
    return-void

    #@76
    .line 1706
    :pswitch_2
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@78
    if-nez v8, :cond_6

    #@7a
    .line 1707
    const v3, 0x38d1b717    # 1.0E-4f

    #@7d
    .line 1708
    .local v3, "halfStrokeWidth":F
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    #@80
    move-result v8

    #@81
    int-to-float v2, v8

    #@82
    .line 1709
    .local v2, "centerY":F
    sub-float v8, v2, v3

    #@84
    float-to-double v8, v8

    #@85
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    #@88
    move-result-wide v8

    #@89
    double-to-int v6, v8

    #@8a
    .line 1710
    .local v6, "top":I
    add-float v8, v2, v3

    #@8c
    float-to-double v8, v8

    #@8d
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    #@90
    move-result-wide v8

    #@91
    double-to-int v0, v8

    #@92
    .line 1712
    .local v0, "bottom":I
    iget v8, v1, Landroid/graphics/Rect;->left:I

    #@94
    iget v9, v1, Landroid/graphics/Rect;->right:I

    #@96
    invoke-virtual {p1, v8, v6, v9, v0}, Landroid/graphics/Outline;->setRect(IIII)V

    #@99
    .line 1713
    return-void

    #@9a
    .line 1707
    .end local v0    # "bottom":I
    .end local v2    # "centerY":F
    .end local v3    # "halfStrokeWidth":F
    .end local v6    # "top":I
    :cond_6
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@9c
    invoke-virtual {v8}, Landroid/graphics/Paint;->getStrokeWidth()F

    #@9f
    move-result v8

    #@a0
    mul-float v3, v8, v12

    #@a2
    .restart local v3    # "halfStrokeWidth":F
    goto :goto_2

    #@a3
    .line 1684
    nop

    #@a4
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 215
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    #@6
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@9
    .line 216
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 218
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getShape()I
    .locals 1

    #@0
    .prologue
    .line 442
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    #@4
    return v0
.end method

.method public getUseLevel()Z
    .locals 1

    #@0
    .prologue
    .line 586
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    #@4
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@3
    .line 1181
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {p1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@9
    move-result v2

    #@a
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    #@d
    .line 1183
    sget-object v1, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    #@f
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@12
    move-result-object v0

    #@13
    .line 1184
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@16
    .line 1185
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@19
    .line 1187
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@1c
    .line 1189
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@1f
    .line 1178
    return-void
.end method

.method public isStateful()Z
    .locals 2

    #@0
    .prologue
    .line 954
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    .line 955
    .local v0, "s":Landroid/graphics/drawable/GradientDrawable$GradientState;
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_2

    #@8
    .line 956
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@a
    if-eqz v1, :cond_0

    #@c
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@e
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@11
    move-result v1

    #@12
    .line 955
    if-nez v1, :cond_2

    #@14
    .line 957
    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@16
    if-eqz v1, :cond_1

    #@18
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@1a
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@1d
    move-result v1

    #@1e
    .line 955
    if-nez v1, :cond_2

    #@20
    .line 958
    :cond_1
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@22
    if-eqz v1, :cond_3

    #@24
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@26
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@29
    move-result v1

    #@2a
    .line 955
    :goto_0
    return v1

    #@2b
    :cond_2
    const/4 v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 958
    :cond_3
    const/4 v1, 0x0

    #@2e
    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1721
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    #@3
    if-nez v0, :cond_0

    #@5
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object v0

    #@9
    if-ne v0, p0, :cond_0

    #@b
    .line 1722
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@d
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@f
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    #@12
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@14
    .line 1723
    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@17
    .line 1724
    const/4 v0, 0x1

    #@18
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    #@1a
    .line 1726
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1023
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@4
    .line 1024
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    #@7
    .line 1025
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    #@9
    .line 1026
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    #@b
    .line 1022
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1031
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    #@4
    .line 1032
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    #@6
    .line 1033
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    #@8
    .line 1034
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@b
    .line 1035
    return v0
.end method

.method protected onStateChange([I)Z
    .locals 11
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 913
    const/4 v0, 0x0

    #@2
    .line 915
    .local v0, "invalidateSelf":Z
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@4
    .line 916
    .local v3, "s":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v4, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    #@6
    .line 917
    .local v4, "solidColors":Landroid/content/res/ColorStateList;
    if-eqz v4, :cond_0

    #@8
    .line 918
    invoke-virtual {v4, p1, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@b
    move-result v1

    #@c
    .line 919
    .local v1, "newColor":I
    iget-object v7, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@e
    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    #@11
    move-result v2

    #@12
    .line 920
    .local v2, "oldColor":I
    if-eq v2, v1, :cond_0

    #@14
    .line 921
    iget-object v7, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@16
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@19
    .line 922
    const/4 v0, 0x1

    #@1a
    .line 926
    .end local v1    # "newColor":I
    .end local v2    # "oldColor":I
    :cond_0
    iget-object v6, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    #@1c
    .line 927
    .local v6, "strokePaint":Landroid/graphics/Paint;
    if-eqz v6, :cond_1

    #@1e
    .line 928
    iget-object v5, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    #@20
    .line 929
    .local v5, "strokeColors":Landroid/content/res/ColorStateList;
    if-eqz v5, :cond_1

    #@22
    .line 930
    invoke-virtual {v5, p1, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@25
    move-result v1

    #@26
    .line 931
    .restart local v1    # "newColor":I
    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    #@29
    move-result v2

    #@2a
    .line 932
    .restart local v2    # "oldColor":I
    if-eq v2, v1, :cond_1

    #@2c
    .line 933
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@2f
    .line 934
    const/4 v0, 0x1

    #@30
    .line 939
    .end local v1    # "newColor":I
    .end local v2    # "oldColor":I
    .end local v5    # "strokeColors":Landroid/content/res/ColorStateList;
    :cond_1
    iget-object v7, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@32
    if-eqz v7, :cond_2

    #@34
    iget-object v7, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@36
    if-eqz v7, :cond_2

    #@38
    .line 940
    iget-object v7, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@3a
    iget-object v8, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@3c
    iget-object v9, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@3e
    invoke-virtual {p0, v7, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@41
    move-result-object v7

    #@42
    iput-object v7, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@44
    .line 941
    const/4 v0, 0x1

    #@45
    .line 944
    :cond_2
    if-eqz v0, :cond_3

    #@47
    .line 945
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@4a
    .line 946
    const/4 v7, 0x1

    #@4b
    return v7

    #@4c
    .line 949
    :cond_3
    return v10
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 968
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 969
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    #@6
    .line 970
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@9
    .line 967
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "argb"    # I

    #@0
    .prologue
    .line 864
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    #@9
    .line 865
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@b
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@e
    .line 866
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@11
    .line 863
    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 885
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    #@5
    .line 887
    if-nez p1, :cond_0

    #@7
    .line 888
    const/4 v0, 0x0

    #@8
    .line 893
    .local v0, "color":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    #@a
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@d
    .line 894
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@10
    .line 884
    return-void

    #@11
    .line 890
    .end local v0    # "color":I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    #@14
    move-result-object v1

    #@15
    .line 891
    .local v1, "stateSet":[I
    const/4 v2, 0x0

    #@16
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@19
    move-result v0

    #@1a
    .restart local v0    # "color":I
    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 995
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 996
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@6
    .line 997
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@9
    .line 994
    :cond_0
    return-void
.end method

.method public setColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    #@0
    .prologue
    .line 637
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientColors([I)V

    #@5
    .line 638
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    #@8
    .line 639
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@b
    .line 636
    return-void
.end method

.method public setCornerRadii([F)V
    .locals 1
    .param p1, "radii"    # [F

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadii([F)V

    #@5
    .line 241
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    #@8
    .line 242
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@b
    .line 239
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadius(F)V

    #@5
    .line 280
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    #@8
    .line 281
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@b
    .line 278
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    #@0
    .prologue
    .line 981
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    #@4
    if-eq p1, v0, :cond_0

    #@6
    .line 982
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@8
    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    #@a
    .line 983
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@d
    .line 980
    :cond_0
    return-void
.end method

.method public setGradientCenter(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 495
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientCenter(FF)V

    #@5
    .line 496
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    #@8
    .line 497
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@b
    .line 494
    return-void
.end method

.method public setGradientRadius(F)V
    .locals 2
    .param p1, "gradientRadius"    # F

    #@0
    .prologue
    .line 535
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientRadius(FI)V

    #@6
    .line 536
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    #@9
    .line 537
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@c
    .line 534
    return-void
.end method

.method public setGradientType(I)V
    .locals 1
    .param p1, "gradient"    # I

    #@0
    .prologue
    .line 459
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientType(I)V

    #@5
    .line 460
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    #@8
    .line 461
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@b
    .line 458
    return-void
.end method

.method public setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V
    .locals 1
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@0
    .prologue
    .line 617
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@4
    .line 618
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    #@7
    .line 619
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@a
    .line 616
    return-void
.end method

.method public setShape(I)V
    .locals 1
    .param p1, "shape"    # I

    #@0
    .prologue
    .line 427
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    #@3
    .line 428
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    #@6
    .line 429
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setShape(I)V

    #@b
    .line 430
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@e
    .line 426
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 410
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSize(II)V

    #@5
    .line 411
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    #@8
    .line 412
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@b
    .line 409
    return-void
.end method

.method public setStroke(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "color"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 311
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    #@4
    .line 310
    return-void
.end method

.method public setStroke(IIFF)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "color"    # I
    .param p3, "dashWidth"    # F
    .param p4, "dashGap"    # F

    #@0
    .prologue
    .line 347
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, p1, v1, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    #@9
    .line 348
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    #@c
    .line 346
    return-void
.end method

.method public setStroke(ILandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 328
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    #@4
    .line 327
    return-void
.end method

.method public setStroke(ILandroid/content/res/ColorStateList;FF)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;
    .param p3, "dashWidth"    # F
    .param p4, "dashGap"    # F

    #@0
    .prologue
    .line 369
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    #@5
    .line 371
    if-nez p2, :cond_0

    #@7
    .line 372
    const/4 v0, 0x0

    #@8
    .line 377
    .local v0, "color":I
    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    #@b
    .line 368
    return-void

    #@c
    .line 374
    .end local v0    # "color":I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    #@f
    move-result-object v1

    #@10
    .line 375
    .local v1, "stateSet":[I
    const/4 v2, 0x0

    #@11
    invoke-virtual {p2, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@14
    move-result v0

    #@15
    .restart local v0    # "color":I
    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 1003
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    .line 1004
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@6
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@8
    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a
    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@10
    .line 1005
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@13
    .line 1002
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 1010
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@4
    .line 1011
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@6
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@8
    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    #@a
    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@10
    .line 1012
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@13
    .line 1009
    return-void
.end method

.method public setUseLevel(Z)V
    .locals 1
    .param p1, "useLevel"    # Z

    #@0
    .prologue
    .line 572
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #@2
    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    #@4
    .line 573
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    #@7
    .line 574
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    #@a
    .line 571
    return-void
.end method
