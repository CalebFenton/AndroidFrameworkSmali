.class public Landroid/graphics/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Paint$Align;,
        Landroid/graphics/Paint$Cap;,
        Landroid/graphics/Paint$FontMetrics;,
        Landroid/graphics/Paint$FontMetricsInt;,
        Landroid/graphics/Paint$Join;,
        Landroid/graphics/Paint$NoImagePreloadHolder;,
        Landroid/graphics/Paint$Style;
    }
.end annotation


# static fields
.field public static final ANTI_ALIAS_FLAG:I = 0x1

.field public static final AUTO_HINTING_TEXT_FLAG:I = 0x800

.field public static final BIDI_DEFAULT_LTR:I = 0x2

.field public static final BIDI_DEFAULT_RTL:I = 0x3

.field private static final BIDI_FLAG_MASK:I = 0x7

.field public static final BIDI_FORCE_LTR:I = 0x4

.field public static final BIDI_FORCE_RTL:I = 0x5

.field public static final BIDI_LTR:I = 0x0

.field private static final BIDI_MAX_FLAG_VALUE:I = 0x5

.field public static final BIDI_RTL:I = 0x1

.field public static final CURSOR_AFTER:I = 0x0

.field public static final CURSOR_AT:I = 0x4

.field public static final CURSOR_AT_OR_AFTER:I = 0x1

.field public static final CURSOR_AT_OR_BEFORE:I = 0x3

.field public static final CURSOR_BEFORE:I = 0x2

.field private static final CURSOR_OPT_MAX_VALUE:I = 0x4

.field public static final DEV_KERN_TEXT_FLAG:I = 0x100

.field public static final DIRECTION_LTR:I = 0x0

.field public static final DIRECTION_RTL:I = 0x1

.field public static final DITHER_FLAG:I = 0x4

.field public static final EMBEDDED_BITMAP_TEXT_FLAG:I = 0x400

.field public static final FAKE_BOLD_TEXT_FLAG:I = 0x20

.field public static final FILTER_BITMAP_FLAG:I = 0x2

.field static final HIDDEN_DEFAULT_PAINT_FLAGS:I = 0x500

.field public static final HINTING_OFF:I = 0x0

.field public static final HINTING_ON:I = 0x1

.field public static final LCD_RENDER_TEXT_FLAG:I = 0x200

.field public static final LINEAR_TEXT_FLAG:I = 0x40

.field private static final NATIVE_PAINT_SIZE:J = 0x62L

.field public static final STRIKE_THRU_TEXT_FLAG:I = 0x10

.field public static final SUBPIXEL_TEXT_FLAG:I = 0x80

.field public static final UNDERLINE_TEXT_FLAG:I = 0x8

.field public static final VERTICAL_TEXT_FLAG:I = 0x1000

.field static final sAlignArray:[Landroid/graphics/Paint$Align;

.field private static final sCacheLock:Ljava/lang/Object;

.field static final sCapArray:[Landroid/graphics/Paint$Cap;

.field static final sJoinArray:[Landroid/graphics/Paint$Join;

.field private static final sMinikinLangListIdCache:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final sStyleArray:[Landroid/graphics/Paint$Style;


# instance fields
.field public mBidiFlags:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCompatScaling:F

.field private mFontFeatureSettings:Ljava/lang/String;

.field private mHasCompatScaling:Z

.field private mInvCompatScaling:F

.field private mLocales:Landroid/os/LocaleList;

.field private mMaskFilter:Landroid/graphics/MaskFilter;

.field private mNativePaint:J

.field private mNativeShader:J

.field public mNativeTypeface:J

.field private mPathEffect:Landroid/graphics/PathEffect;

.field private mRasterizer:Landroid/graphics/Rasterizer;

.field private mShader:Landroid/graphics/Shader;

.field private mTypeface:Landroid/graphics/Typeface;

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static synthetic -wrap0()J
    .locals 2

    #@0
    invoke-static {}, Landroid/graphics/Paint;->nGetNativeFinalizer()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 73
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    sput-object v0, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    #@b
    .line 81
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@10
    sput-object v0, Landroid/graphics/Paint;->sMinikinLangListIdCache:Ljava/util/HashMap;

    #@12
    .line 88
    new-array v0, v5, [Landroid/graphics/Paint$Style;

    #@14
    .line 89
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@16
    aput-object v1, v0, v2

    #@18
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@1a
    aput-object v1, v0, v3

    #@1c
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    #@1e
    aput-object v1, v0, v4

    #@20
    .line 88
    sput-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    #@22
    .line 91
    new-array v0, v5, [Landroid/graphics/Paint$Cap;

    #@24
    .line 92
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    #@2e
    aput-object v1, v0, v4

    #@30
    .line 91
    sput-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    #@32
    .line 94
    new-array v0, v5, [Landroid/graphics/Paint$Join;

    #@34
    .line 95
    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    #@36
    aput-object v1, v0, v2

    #@38
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    #@3a
    aput-object v1, v0, v3

    #@3c
    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    #@3e
    aput-object v1, v0, v4

    #@40
    .line 94
    sput-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    #@42
    .line 97
    new-array v0, v5, [Landroid/graphics/Paint$Align;

    #@44
    .line 98
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    #@46
    aput-object v1, v0, v2

    #@48
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@4a
    aput-object v1, v0, v3

    #@4c
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    #@4e
    aput-object v1, v0, v4

    #@50
    .line 97
    sput-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    #@52
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 447
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    #@4
    .line 446
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "flags"    # I

    #@0
    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    #@2
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 42
    const-wide/16 v0, 0x0

    #@7
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    #@9
    .line 86
    const/4 v0, 0x2

    #@a
    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@c
    .line 457
    invoke-static {}, Landroid/graphics/Paint;->nInit()J

    #@f
    move-result-wide v0

    #@10
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@12
    .line 458
    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    #@14
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@16
    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    #@19
    .line 459
    or-int/lit16 v0, p1, 0x500

    #@1b
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    #@1e
    .line 464
    iput v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@20
    iput v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@22
    .line 465
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    #@29
    .line 456
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    #@7
    .line 86
    const/4 v0, 0x2

    #@8
    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@a
    .line 476
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    #@d
    move-result-wide v0

    #@e
    invoke-static {v0, v1}, Landroid/graphics/Paint;->nInitWithPaint(J)J

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@14
    .line 477
    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    #@16
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@18
    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    #@1b
    .line 478
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    #@1e
    .line 475
    return-void
.end method

.method private native nAscent(JJ)F
.end method

.method private static native nBreakText(JJLjava/lang/String;ZFI[F)I
.end method

.method private static native nBreakText(JJ[CIIFI[F)I
.end method

.method private native nDescent(JJ)F
.end method

.method private native nGetAlpha(J)I
.end method

.method private static native nGetCharArrayBounds(JJ[CIIILandroid/graphics/Rect;)V
.end method

.method private native nGetColor(J)I
.end method

.method private static native nGetFillPath(JJJ)Z
.end method

.method private native nGetFlags(J)I
.end method

.method private native nGetFontMetrics(JJLandroid/graphics/Paint$FontMetrics;)F
.end method

.method private native nGetFontMetricsInt(JJLandroid/graphics/Paint$FontMetricsInt;)I
.end method

.method private native nGetHinting(J)I
.end method

.method private static native nGetHyphenEdit(J)I
.end method

.method private static native nGetLetterSpacing(J)F
.end method

.method private static native nGetNativeFinalizer()J
.end method

.method private static native nGetOffsetForAdvance(JJ[CIIIIZF)I
.end method

.method private static native nGetRunAdvance(JJ[CIIIIZI)F
.end method

.method private static native nGetStringBounds(JJLjava/lang/String;IIILandroid/graphics/Rect;)V
.end method

.method private static native nGetStrokeCap(J)I
.end method

.method private static native nGetStrokeJoin(J)I
.end method

.method private native nGetStrokeMiter(J)F
.end method

.method private native nGetStrokeWidth(J)F
.end method

.method private static native nGetStyle(J)I
.end method

.method private static native nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F
.end method

.method private static native nGetTextAdvances(JJ[CIIIII[FI)F
.end method

.method private static native nGetTextAlign(J)I
.end method

.method private static native nGetTextPath(JJILjava/lang/String;IIFFJ)V
.end method

.method private static native nGetTextPath(JJI[CIIFFJ)V
.end method

.method private native nGetTextRunCursor(JLjava/lang/String;IIIII)I
.end method

.method private native nGetTextRunCursor(J[CIIIII)I
.end method

.method private native nGetTextScaleX(J)F
.end method

.method private native nGetTextSize(J)F
.end method

.method private native nGetTextSkewX(J)F
.end method

.method private static native nHasGlyph(JJILjava/lang/String;)Z
.end method

.method private static native nHasShadowLayer(J)Z
.end method

.method private static native nInit()J
.end method

.method private static native nInitWithPaint(J)J
.end method

.method private native nIsElegantTextHeight(J)Z
.end method

.method private static native nReset(J)V
.end method

.method private static native nSet(JJ)V
.end method

.method private native nSetAlpha(JI)V
.end method

.method private native nSetAntiAlias(JZ)V
.end method

.method private native nSetColor(JI)V
.end method

.method private static native nSetColorFilter(JJ)J
.end method

.method private native nSetDither(JZ)V
.end method

.method private native nSetElegantTextHeight(JZ)V
.end method

.method private native nSetFakeBoldText(JZ)V
.end method

.method private native nSetFilterBitmap(JZ)V
.end method

.method private native nSetFlags(JI)V
.end method

.method private static native nSetFontFeatureSettings(JLjava/lang/String;)V
.end method

.method private native nSetHinting(JI)V
.end method

.method private static native nSetHyphenEdit(JI)V
.end method

.method private static native nSetLetterSpacing(JF)V
.end method

.method private native nSetLinearText(JZ)V
.end method

.method private static native nSetMaskFilter(JJ)J
.end method

.method private static native nSetPathEffect(JJ)J
.end method

.method private static native nSetRasterizer(JJ)J
.end method

.method private static native nSetShader(JJ)J
.end method

.method private static native nSetShadowLayer(JFFFI)V
.end method

.method private native nSetStrikeThruText(JZ)V
.end method

.method private static native nSetStrokeCap(JI)V
.end method

.method private static native nSetStrokeJoin(JI)V
.end method

.method private native nSetStrokeMiter(JF)V
.end method

.method private native nSetStrokeWidth(JF)V
.end method

.method private static native nSetStyle(JI)V
.end method

.method private native nSetSubpixelText(JZ)V
.end method

.method private static native nSetTextAlign(JI)V
.end method

.method private static native nSetTextLocales(JLjava/lang/String;)I
.end method

.method private static native nSetTextLocalesByMinikinLangListId(JI)V
.end method

.method private native nSetTextScaleX(JF)V
.end method

.method private native nSetTextSize(JF)V
.end method

.method private native nSetTextSkewX(JF)V
.end method

.method private static native nSetTypeface(JJ)J
.end method

.method private native nSetUnderlineText(JZ)V
.end method

.method private static native nSetXfermode(JJ)J
.end method

.method private setClassVariablesFrom(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 529
    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    #@4
    .line 530
    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    #@6
    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    #@8
    .line 531
    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    #@a
    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    #@c
    .line 532
    iget-object v0, p1, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    #@e
    iput-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    #@10
    .line 533
    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    #@12
    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    #@14
    .line 534
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeShader:J

    #@16
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    #@18
    .line 535
    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    #@1a
    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    #@1c
    .line 536
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeTypeface:J

    #@1e
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@20
    .line 537
    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    #@22
    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    #@24
    .line 539
    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@26
    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@28
    .line 540
    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    #@2a
    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@2c
    .line 541
    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@2e
    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@30
    .line 543
    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    #@32
    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@34
    .line 544
    iget-object v0, p1, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    #@36
    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    #@38
    .line 545
    iget-object v0, p1, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    #@3a
    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    #@3c
    .line 528
    return-void
.end method

.method private syncTextLocalesWithMinikin()V
    .locals 8

    #@0
    .prologue
    .line 1367
    iget-object v3, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    #@2
    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 1369
    .local v0, "languageTags":Ljava/lang/String;
    sget-object v4, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    #@8
    monitor-enter v4

    #@9
    .line 1370
    :try_start_0
    sget-object v3, Landroid/graphics/Paint;->sMinikinLangListIdCache:Ljava/util/HashMap;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/lang/Integer;

    #@11
    .line 1371
    .local v1, "minikinLangListId":Ljava/lang/Integer;
    if-nez v1, :cond_0

    #@13
    .line 1372
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@15
    invoke-static {v6, v7, v0}, Landroid/graphics/Paint;->nSetTextLocales(JLjava/lang/String;)I

    #@18
    move-result v2

    #@19
    .line 1373
    .local v2, "newID":I
    sget-object v3, Landroid/graphics/Paint;->sMinikinLangListIdCache:Ljava/util/HashMap;

    #@1b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit v4

    #@23
    .line 1374
    return-void

    #@24
    .end local v2    # "newID":I
    :cond_0
    monitor-exit v4

    #@25
    .line 1377
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@2a
    move-result v3

    #@2b
    invoke-static {v4, v5, v3}, Landroid/graphics/Paint;->nSetTextLocalesByMinikinLangListId(JI)V

    #@2e
    .line 1366
    return-void

    #@2f
    .line 1369
    .end local v1    # "minikinLangListId":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    #@30
    monitor-exit v4

    #@31
    throw v3
.end method


# virtual methods
.method public ascent()F
    .locals 4

    #@0
    .prologue
    .line 1564
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@4
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/graphics/Paint;->nAscent(JJ)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public breakText(Ljava/lang/CharSequence;IIZF[F)I
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "measureForwards"    # Z
    .param p5, "maxWidth"    # F
    .param p6, "measuredWidth"    # [F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1868
    if-nez p1, :cond_0

    #@3
    .line 1869
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "text cannot be null"

    #@8
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 1871
    :cond_0
    or-int v0, p2, p3

    #@e
    sub-int v3, p3, p2

    #@10
    or-int/2addr v0, v3

    #@11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@14
    move-result v3

    #@15
    sub-int/2addr v3, p3

    #@16
    or-int/2addr v0, v3

    #@17
    if-gez v0, :cond_1

    #@19
    .line 1872
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@1b
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@1e
    throw v0

    #@1f
    .line 1875
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_2

    #@25
    if-ne p2, p3, :cond_3

    #@27
    .line 1876
    :cond_2
    return v2

    #@28
    .line 1878
    :cond_3
    if-nez p2, :cond_4

    #@2a
    instance-of v0, p1, Ljava/lang/String;

    #@2c
    if-eqz v0, :cond_4

    #@2e
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@31
    move-result v0

    #@32
    if-ne p3, v0, :cond_4

    #@34
    .line 1879
    check-cast p1, Ljava/lang/String;

    #@36
    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    #@39
    move-result v0

    #@3a
    return v0

    #@3b
    .line 1883
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_4
    sub-int v0, p3, p2

    #@3d
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@40
    move-result-object v1

    #@41
    .line 1886
    .local v1, "buf":[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@44
    .line 1888
    if-eqz p4, :cond_5

    #@46
    .line 1889
    sub-int v3, p3, p2

    #@48
    move-object v0, p0

    #@49
    move v4, p5

    #@4a
    move-object v5, p6

    #@4b
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    #@4e
    move-result v6

    #@4f
    .line 1894
    .local v6, "result":I
    :goto_0
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    #@52
    .line 1895
    return v6

    #@53
    .line 1891
    .end local v6    # "result":I
    :cond_5
    sub-int v0, p3, p2

    #@55
    neg-int v3, v0

    #@56
    move-object v0, p0

    #@57
    move v4, p5

    #@58
    move-object v5, p6

    #@59
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    #@5c
    move-result v6

    #@5d
    .restart local v6    # "result":I
    goto :goto_0
.end method

.method public breakText(Ljava/lang/String;ZF[F)I
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "measureForwards"    # Z
    .param p3, "maxWidth"    # F
    .param p4, "measuredWidth"    # [F

    #@0
    .prologue
    .line 1916
    if-nez p1, :cond_0

    #@2
    .line 1917
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "text cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1920
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1

    #@11
    .line 1921
    const/4 v0, 0x0

    #@12
    return v0

    #@13
    .line 1923
    :cond_1
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@15
    if-nez v0, :cond_2

    #@17
    .line 1924
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@19
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@1b
    .line 1925
    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@1d
    move-object v4, p1

    #@1e
    move v5, p2

    #@1f
    move v6, p3

    #@20
    move-object v8, p4

    #@21
    .line 1924
    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nBreakText(JJLjava/lang/String;ZFI[F)I

    #@24
    move-result v0

    #@25
    return v0

    #@26
    .line 1928
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    #@29
    move-result v9

    #@2a
    .line 1929
    .local v9, "oldSize":F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@2c
    mul-float/2addr v0, v9

    #@2d
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    #@30
    .line 1930
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@32
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@34
    .line 1931
    iget v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@36
    mul-float v6, p3, v4

    #@38
    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@3a
    move-object v4, p1

    #@3b
    move v5, p2

    #@3c
    move-object v8, p4

    #@3d
    .line 1930
    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nBreakText(JJLjava/lang/String;ZFI[F)I

    #@40
    move-result v10

    #@41
    .line 1932
    .local v10, "res":I
    invoke-virtual {p0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    #@44
    .line 1933
    if-eqz p4, :cond_3

    #@46
    const/4 v0, 0x0

    #@47
    aget v1, p4, v0

    #@49
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@4b
    mul-float/2addr v1, v2

    #@4c
    aput v1, p4, v0

    #@4e
    .line 1934
    :cond_3
    return v10
.end method

.method public breakText([CIIF[F)I
    .locals 12
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "maxWidth"    # F
    .param p5, "measuredWidth"    # [F

    #@0
    .prologue
    .line 1821
    if-nez p1, :cond_0

    #@2
    .line 1822
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "text cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1824
    :cond_0
    if-ltz p2, :cond_1

    #@d
    array-length v0, p1

    #@e
    sub-int/2addr v0, p2

    #@f
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@12
    move-result v1

    #@13
    if-ge v0, v1, :cond_2

    #@15
    .line 1825
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@17
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@1a
    throw v0

    #@1b
    .line 1828
    :cond_2
    array-length v0, p1

    #@1c
    if-eqz v0, :cond_3

    #@1e
    if-nez p3, :cond_4

    #@20
    .line 1829
    :cond_3
    const/4 v0, 0x0

    #@21
    return v0

    #@22
    .line 1831
    :cond_4
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@24
    if-nez v0, :cond_5

    #@26
    .line 1832
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@28
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@2a
    .line 1833
    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@2c
    move-object v4, p1

    #@2d
    move v5, p2

    #@2e
    move v6, p3

    #@2f
    move/from16 v7, p4

    #@31
    move-object/from16 v9, p5

    #@33
    .line 1832
    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nBreakText(JJ[CIIFI[F)I

    #@36
    move-result v0

    #@37
    return v0

    #@38
    .line 1836
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    #@3b
    move-result v10

    #@3c
    .line 1837
    .local v10, "oldSize":F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@3e
    mul-float/2addr v0, v10

    #@3f
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    #@42
    .line 1838
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@44
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@46
    .line 1839
    iget v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@48
    mul-float v7, p4, v4

    #@4a
    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@4c
    move-object v4, p1

    #@4d
    move v5, p2

    #@4e
    move v6, p3

    #@4f
    move-object/from16 v9, p5

    #@51
    .line 1838
    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nBreakText(JJ[CIIFI[F)I

    #@54
    move-result v11

    #@55
    .line 1840
    .local v11, "res":I
    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    #@58
    .line 1841
    if-eqz p5, :cond_6

    #@5a
    const/4 v0, 0x0

    #@5b
    aget v1, p5, v0

    #@5d
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@5f
    mul-float/2addr v1, v2

    #@60
    aput v1, p5, v0

    #@62
    .line 1842
    :cond_6
    return v11
.end method

.method public clearShadowLayer()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1253
    const/4 v0, 0x0

    #@2
    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    #@5
    .line 1252
    return-void
.end method

.method public descent()F
    .locals 4

    #@0
    .prologue
    .line 1577
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@4
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/graphics/Paint;->nDescent(JJ)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getAlpha()I
    .locals 2

    #@0
    .prologue
    .line 887
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetAlpha(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getBidiFlags()I
    .locals 1

    #@0
    .prologue
    .line 582
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@2
    return v0
.end method

.method public getColor()I
    .locals 2

    #@0
    .prologue
    .line 860
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetColor(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    #@0
    .prologue
    .line 1062
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    return-object v0
.end method

.method public getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .locals 6
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "dst"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 1024
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-virtual {p1}, Landroid/graphics/Path;->ni()J

    #@5
    move-result-wide v2

    #@6
    invoke-virtual {p2}, Landroid/graphics/Path;->ni()J

    #@9
    move-result-wide v4

    #@a
    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nGetFillPath(JJJ)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public getFlags()I
    .locals 2

    #@0
    .prologue
    .line 604
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetFlags(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1507
    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
    .locals 7
    .param p1, "metrics"    # Landroid/graphics/Paint$FontMetrics;

    #@0
    .prologue
    .line 1623
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@4
    move-object v1, p0

    #@5
    move-object v6, p1

    #@6
    invoke-direct/range {v1 .. v6}, Landroid/graphics/Paint;->nGetFontMetrics(JJLandroid/graphics/Paint$FontMetrics;)F

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    #@0
    .prologue
    .line 1634
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    #@2
    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    #@5
    .line 1635
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    #@8
    .line 1636
    return-object v0
.end method

.method public getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
    .locals 7
    .param p1, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    #@0
    .prologue
    .line 1668
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@4
    move-object v1, p0

    #@5
    move-object v6, p1

    #@6
    invoke-direct/range {v1 .. v6}, Landroid/graphics/Paint;->nGetFontMetricsInt(JJLandroid/graphics/Paint$FontMetricsInt;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    #@0
    .prologue
    .line 1675
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    #@2
    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    #@5
    .line 1676
    .local v0, "fm":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    #@8
    .line 1677
    return-object v0
.end method

.method public getFontSpacing()F
    .locals 1

    #@0
    .prologue
    .line 1688
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getHinting()I
    .locals 2

    #@0
    .prologue
    .line 625
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetHinting(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHyphenEdit()I
    .locals 2

    #@0
    .prologue
    .line 1541
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetHyphenEdit(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLetterSpacing()F
    .locals 2

    #@0
    .prologue
    .line 1482
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetLetterSpacing(J)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    #@0
    .prologue
    .line 1141
    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    #@2
    return-object v0
.end method

.method public getNativeInstance()J
    .locals 6

    #@0
    .prologue
    .line 567
    iget-object v2, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    #@2
    if-nez v2, :cond_1

    #@4
    const-wide/16 v0, 0x0

    #@6
    .line 568
    .local v0, "newNativeShader":J
    :goto_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeShader:J

    #@8
    cmp-long v2, v0, v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 569
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    #@e
    .line 570
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@10
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeShader:J

    #@12
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Paint;->nSetShader(JJ)J

    #@15
    .line 572
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@17
    return-wide v2

    #@18
    .line 567
    .end local v0    # "newNativeShader":J
    :cond_1
    iget-object v2, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    #@1a
    invoke-virtual {v2}, Landroid/graphics/Shader;->getNativeInstance()J

    #@1d
    move-result-wide v0

    #@1e
    .restart local v0    # "newNativeShader":J
    goto :goto_0
.end method

.method public getOffsetForAdvance(Ljava/lang/CharSequence;IIIIZF)I
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advance"    # F

    #@0
    .prologue
    .line 2628
    if-nez p1, :cond_0

    #@2
    .line 2629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "text cannot be null"

    #@7
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2631
    :cond_0
    or-int v0, p4, p2

    #@d
    or-int/2addr v0, p3

    #@e
    or-int/2addr v0, p5

    #@f
    .line 2632
    sub-int v2, p2, p4

    #@11
    .line 2631
    or-int/2addr v0, v2

    #@12
    .line 2632
    sub-int v2, p3, p2

    #@14
    .line 2631
    or-int/2addr v0, v2

    #@15
    .line 2632
    sub-int v2, p5, p3

    #@17
    .line 2631
    or-int/2addr v0, v2

    #@18
    .line 2633
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@1b
    move-result v2

    #@1c
    sub-int/2addr v2, p5

    #@1d
    .line 2631
    or-int/2addr v0, v2

    #@1e
    if-gez v0, :cond_1

    #@20
    .line 2634
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@22
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@25
    throw v0

    #@26
    .line 2637
    :cond_1
    sub-int v0, p5, p4

    #@28
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@2b
    move-result-object v1

    #@2c
    .line 2638
    .local v1, "buf":[C
    const/4 v0, 0x0

    #@2d
    invoke-static {p1, p4, p5, v1, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@30
    .line 2639
    sub-int v2, p2, p4

    #@32
    sub-int v3, p3, p4

    #@34
    .line 2640
    sub-int v5, p5, p4

    #@36
    .line 2639
    const/4 v4, 0x0

    #@37
    move-object v0, p0

    #@38
    move v6, p6

    #@39
    move/from16 v7, p7

    #@3b
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Paint;->getOffsetForAdvance([CIIIIZF)I

    #@3e
    move-result v0

    #@3f
    add-int v8, v0, p4

    #@41
    .line 2641
    .local v8, "result":I
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    #@44
    .line 2642
    return v8
.end method

.method public getOffsetForAdvance([CIIIIZF)I
    .locals 11
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advance"    # F

    #@0
    .prologue
    .line 2601
    if-nez p1, :cond_0

    #@2
    .line 2602
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "text cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2604
    :cond_0
    or-int v0, p4, p2

    #@d
    or-int/2addr v0, p3

    #@e
    or-int v0, v0, p5

    #@10
    .line 2605
    sub-int v1, p2, p4

    #@12
    .line 2604
    or-int/2addr v0, v1

    #@13
    .line 2605
    sub-int v1, p3, p2

    #@15
    .line 2604
    or-int/2addr v0, v1

    #@16
    .line 2605
    sub-int v1, p5, p3

    #@18
    .line 2604
    or-int/2addr v0, v1

    #@19
    .line 2606
    array-length v1, p1

    #@1a
    sub-int v1, v1, p5

    #@1c
    .line 2604
    or-int/2addr v0, v1

    #@1d
    if-gez v0, :cond_1

    #@1f
    .line 2607
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@21
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@24
    throw v0

    #@25
    .line 2610
    :cond_1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@27
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@29
    move-object v4, p1

    #@2a
    move v5, p2

    #@2b
    move v6, p3

    #@2c
    move v7, p4

    #@2d
    move/from16 v8, p5

    #@2f
    move/from16 v9, p6

    #@31
    move/from16 v10, p7

    #@33
    invoke-static/range {v0 .. v10}, Landroid/graphics/Paint;->nGetOffsetForAdvance(JJ[CIIIIZF)I

    #@36
    move-result v0

    #@37
    return v0
.end method

.method public getPathEffect()Landroid/graphics/PathEffect;
    .locals 1

    #@0
    .prologue
    .line 1113
    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    #@2
    return-object v0
.end method

.method public getRasterizer()Landroid/graphics/Rasterizer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1207
    iget-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    #@2
    return-object v0
.end method

.method public getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I

    #@0
    .prologue
    .line 2551
    if-nez p1, :cond_0

    #@2
    .line 2552
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "text cannot be null"

    #@7
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2554
    :cond_0
    or-int v0, p4, p2

    #@d
    or-int v0, v0, p7

    #@f
    or-int/2addr v0, p3

    #@10
    or-int/2addr v0, p5

    #@11
    .line 2555
    sub-int v2, p2, p4

    #@13
    .line 2554
    or-int/2addr v0, v2

    #@14
    .line 2555
    sub-int v2, p7, p2

    #@16
    .line 2554
    or-int/2addr v0, v2

    #@17
    .line 2555
    sub-int v2, p3, p7

    #@19
    .line 2554
    or-int/2addr v0, v2

    #@1a
    .line 2556
    sub-int v2, p5, p3

    #@1c
    .line 2554
    or-int/2addr v0, v2

    #@1d
    .line 2556
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@20
    move-result v2

    #@21
    sub-int/2addr v2, p5

    #@22
    .line 2554
    or-int/2addr v0, v2

    #@23
    if-gez v0, :cond_1

    #@25
    .line 2557
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@27
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@2a
    throw v0

    #@2b
    .line 2559
    :cond_1
    if-ne p3, p2, :cond_2

    #@2d
    .line 2560
    const/4 v0, 0x0

    #@2e
    return v0

    #@2f
    .line 2563
    :cond_2
    sub-int v0, p5, p4

    #@31
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@34
    move-result-object v1

    #@35
    .line 2564
    .local v1, "buf":[C
    const/4 v0, 0x0

    #@36
    invoke-static {p1, p4, p5, v1, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@39
    .line 2565
    sub-int v2, p2, p4

    #@3b
    sub-int v3, p3, p4

    #@3d
    .line 2566
    sub-int v5, p5, p4

    #@3f
    sub-int v7, p7, p4

    #@41
    .line 2565
    const/4 v4, 0x0

    #@42
    move-object v0, p0

    #@43
    move v6, p6

    #@44
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Paint;->getRunAdvance([CIIIIZI)F

    #@47
    move-result v8

    #@48
    .line 2567
    .local v8, "result":F
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    #@4b
    .line 2568
    return v8
.end method

.method public getRunAdvance([CIIIIZI)F
    .locals 11
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I

    #@0
    .prologue
    .line 2521
    if-nez p1, :cond_0

    #@2
    .line 2522
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "text cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2524
    :cond_0
    or-int v0, p4, p2

    #@d
    or-int v0, v0, p7

    #@f
    or-int/2addr v0, p3

    #@10
    or-int v0, v0, p5

    #@12
    .line 2525
    sub-int v1, p2, p4

    #@14
    .line 2524
    or-int/2addr v0, v1

    #@15
    .line 2525
    sub-int v1, p7, p2

    #@17
    .line 2524
    or-int/2addr v0, v1

    #@18
    .line 2525
    sub-int v1, p3, p7

    #@1a
    .line 2524
    or-int/2addr v0, v1

    #@1b
    .line 2526
    sub-int v1, p5, p3

    #@1d
    .line 2524
    or-int/2addr v0, v1

    #@1e
    .line 2526
    array-length v1, p1

    #@1f
    sub-int v1, v1, p5

    #@21
    .line 2524
    or-int/2addr v0, v1

    #@22
    if-gez v0, :cond_1

    #@24
    .line 2527
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@26
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@29
    throw v0

    #@2a
    .line 2529
    :cond_1
    if-ne p3, p2, :cond_2

    #@2c
    .line 2530
    const/4 v0, 0x0

    #@2d
    return v0

    #@2e
    .line 2533
    :cond_2
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@30
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@32
    move-object v4, p1

    #@33
    move v5, p2

    #@34
    move v6, p3

    #@35
    move v7, p4

    #@36
    move/from16 v8, p5

    #@38
    move/from16 v9, p6

    #@3a
    move/from16 v10, p7

    #@3c
    invoke-static/range {v0 .. v10}, Landroid/graphics/Paint;->nGetRunAdvance(JJ[CIIIIZI)F

    #@3f
    move-result v0

    #@40
    return v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    #@0
    .prologue
    .line 1033
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    #@2
    return-object v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 4

    #@0
    .prologue
    .line 980
    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    #@2
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@4
    invoke-static {v2, v3}, Landroid/graphics/Paint;->nGetStrokeCap(J)I

    #@7
    move-result v1

    #@8
    aget-object v0, v0, v1

    #@a
    return-object v0
.end method

.method public getStrokeJoin()Landroid/graphics/Paint$Join;
    .locals 4

    #@0
    .prologue
    .line 999
    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    #@2
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@4
    invoke-static {v2, v3}, Landroid/graphics/Paint;->nGetStrokeJoin(J)I

    #@7
    move-result v1

    #@8
    aget-object v0, v0, v1

    #@a
    return-object v0
.end method

.method public getStrokeMiter()F
    .locals 2

    #@0
    .prologue
    .line 954
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetStrokeMiter(J)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getStrokeWidth()F
    .locals 2

    #@0
    .prologue
    .line 927
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetStrokeWidth(J)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getStyle()Landroid/graphics/Paint$Style;
    .locals 4

    #@0
    .prologue
    .line 836
    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    #@2
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@4
    invoke-static {v2, v3}, Landroid/graphics/Paint;->nGetStyle(J)I

    #@7
    move-result v1

    #@8
    aget-object v0, v0, v1

    #@a
    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 4

    #@0
    .prologue
    .line 1275
    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    #@2
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@4
    invoke-static {v2, v3}, Landroid/graphics/Paint;->nGetTextAlign(J)I

    #@7
    move-result v1

    #@8
    aget-object v0, v0, v1

    #@a
    return-object v0
.end method

.method public getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 2433
    or-int v0, p2, p3

    #@2
    sub-int v1, p3, p2

    #@4
    or-int/2addr v0, v1

    #@5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    sub-int/2addr v1, p3

    #@a
    or-int/2addr v0, v1

    #@b
    if-gez v0, :cond_0

    #@d
    .line 2434
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@f
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@12
    throw v0

    #@13
    .line 2436
    :cond_0
    if-nez p4, :cond_1

    #@15
    .line 2437
    new-instance v0, Ljava/lang/NullPointerException;

    #@17
    const-string/jumbo v1, "need bounds Rect"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 2439
    :cond_1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@20
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@22
    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@24
    move-object v4, p1

    #@25
    move v5, p2

    #@26
    move v6, p3

    #@27
    move-object v8, p4

    #@28
    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetStringBounds(JJLjava/lang/String;IIILandroid/graphics/Rect;)V

    #@2b
    .line 2432
    return-void
.end method

.method public getTextBounds([CIILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 2453
    or-int v0, p2, p3

    #@2
    if-ltz v0, :cond_0

    #@4
    add-int v0, p2, p3

    #@6
    array-length v1, p1

    #@7
    if-le v0, v1, :cond_1

    #@9
    .line 2454
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@b
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@e
    throw v0

    #@f
    .line 2456
    :cond_1
    if-nez p4, :cond_2

    #@11
    .line 2457
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v1, "need bounds Rect"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 2459
    :cond_2
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@1c
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@1e
    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@20
    move-object v4, p1

    #@21
    move v5, p2

    #@22
    move v6, p3

    #@23
    move-object v8, p4

    #@24
    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetCharArrayBounds(JJ[CIIILandroid/graphics/Rect;)V

    #@27
    .line 2452
    return-void
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 2

    #@0
    .prologue
    .line 1298
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getTextLocales()Landroid/os/LocaleList;
    .locals 1

    #@0
    .prologue
    .line 1308
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    #@2
    return-object v0
.end method

.method public getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 2415
    or-int v0, p2, p3

    #@2
    sub-int v1, p3, p2

    #@4
    or-int/2addr v0, v1

    #@5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    sub-int/2addr v1, p3

    #@a
    or-int/2addr v0, v1

    #@b
    if-gez v0, :cond_0

    #@d
    .line 2416
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@f
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@12
    throw v0

    #@13
    .line 2418
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@15
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@17
    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@19
    .line 2419
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->ni()J

    #@1c
    move-result-wide v10

    #@1d
    move-object v5, p1

    #@1e
    move v6, p2

    #@1f
    move v7, p3

    #@20
    move/from16 v8, p4

    #@22
    move/from16 v9, p5

    #@24
    .line 2418
    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->nGetTextPath(JJILjava/lang/String;IIFFJ)V

    #@27
    .line 2414
    return-void
.end method

.method public getTextPath([CIIFFLandroid/graphics/Path;)V
    .locals 12
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 2393
    or-int v0, p2, p3

    #@2
    if-ltz v0, :cond_0

    #@4
    add-int v0, p2, p3

    #@6
    array-length v1, p1

    #@7
    if-le v0, v1, :cond_1

    #@9
    .line 2394
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@b
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@e
    throw v0

    #@f
    .line 2396
    :cond_1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@11
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@13
    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@15
    .line 2397
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->ni()J

    #@18
    move-result-wide v10

    #@19
    move-object v5, p1

    #@1a
    move v6, p2

    #@1b
    move v7, p3

    #@1c
    move/from16 v8, p4

    #@1e
    move/from16 v9, p5

    #@20
    .line 2396
    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->nGetTextPath(JJI[CIIFFJ)V

    #@23
    .line 2392
    return-void
.end method

.method public getTextRunAdvances(Ljava/lang/CharSequence;IIIIZ[FI)F
    .locals 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advances"    # [F
    .param p8, "advancesIndex"    # I

    #@0
    .prologue
    .line 2135
    if-nez p1, :cond_0

    #@2
    .line 2136
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "text cannot be null"

    #@7
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 2138
    :cond_0
    or-int v1, p2, p3

    #@d
    or-int/2addr v1, p4

    #@e
    or-int v1, v1, p5

    #@10
    or-int v1, v1, p8

    #@12
    sub-int v3, p3, p2

    #@14
    or-int/2addr v1, v3

    #@15
    .line 2139
    sub-int v3, p2, p4

    #@17
    .line 2138
    or-int/2addr v1, v3

    #@18
    .line 2139
    sub-int v3, p5, p3

    #@1a
    .line 2138
    or-int/2addr v1, v3

    #@1b
    .line 2140
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@1e
    move-result v3

    #@1f
    sub-int v3, v3, p5

    #@21
    .line 2138
    or-int/2addr v3, v1

    #@22
    .line 2141
    if-nez p7, :cond_1

    #@24
    const/4 v1, 0x0

    #@25
    .line 2138
    :goto_0
    or-int/2addr v1, v3

    #@26
    if-gez v1, :cond_2

    #@28
    .line 2143
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@2a
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@2d
    throw v1

    #@2e
    .line 2142
    :cond_1
    move-object/from16 v0, p7

    #@30
    array-length v1, v0

    #@31
    sub-int v1, v1, p8

    #@33
    sub-int v5, p3, p2

    #@35
    sub-int/2addr v1, v5

    #@36
    goto :goto_0

    #@37
    .line 2146
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    #@39
    if-eqz v1, :cond_3

    #@3b
    move-object v2, p1

    #@3c
    .line 2147
    check-cast v2, Ljava/lang/String;

    #@3e
    move-object v1, p0

    #@3f
    move v3, p2

    #@40
    move v4, p3

    #@41
    move v5, p4

    #@42
    move/from16 v6, p5

    #@44
    move/from16 v7, p6

    #@46
    move-object/from16 v8, p7

    #@48
    move/from16 v9, p8

    #@4a
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F

    #@4d
    move-result v1

    #@4e
    return v1

    #@4f
    .line 2150
    :cond_3
    instance-of v1, p1, Landroid/text/SpannedString;

    #@51
    if-nez v1, :cond_4

    #@53
    .line 2151
    instance-of v1, p1, Landroid/text/SpannableString;

    #@55
    .line 2150
    if-eqz v1, :cond_5

    #@57
    .line 2152
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    move-object v1, p0

    #@5c
    move v3, p2

    #@5d
    move v4, p3

    #@5e
    move v5, p4

    #@5f
    move/from16 v6, p5

    #@61
    move/from16 v7, p6

    #@63
    move-object/from16 v8, p7

    #@65
    move/from16 v9, p8

    #@67
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F

    #@6a
    move-result v1

    #@6b
    return v1

    #@6c
    .line 2155
    :cond_5
    instance-of v1, p1, Landroid/text/GraphicsOperations;

    #@6e
    if-eqz v1, :cond_6

    #@70
    move-object v1, p1

    #@71
    .line 2156
    check-cast v1, Landroid/text/GraphicsOperations;

    #@73
    move v2, p2

    #@74
    move v3, p3

    #@75
    move v4, p4

    #@76
    move/from16 v5, p5

    #@78
    move/from16 v6, p6

    #@7a
    move-object/from16 v7, p7

    #@7c
    move/from16 v8, p8

    #@7e
    move-object v9, p0

    #@7f
    invoke-interface/range {v1 .. v9}, Landroid/text/GraphicsOperations;->getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F

    #@82
    move-result v1

    #@83
    return v1

    #@84
    .line 2159
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@87
    move-result v1

    #@88
    if-eqz v1, :cond_7

    #@8a
    if-ne p3, p2, :cond_8

    #@8c
    .line 2160
    :cond_7
    const/4 v1, 0x0

    #@8d
    return v1

    #@8e
    .line 2163
    :cond_8
    sub-int v6, p5, p4

    #@90
    .line 2164
    .local v6, "contextLen":I
    sub-int v4, p3, p2

    #@92
    .line 2165
    .local v4, "len":I
    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@95
    move-result-object v2

    #@96
    .line 2166
    .local v2, "buf":[C
    const/4 v1, 0x0

    #@97
    move/from16 v0, p5

    #@99
    invoke-static {p1, p4, v0, v2, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@9c
    .line 2167
    sub-int v3, p2, p4

    #@9e
    .line 2168
    const/4 v5, 0x0

    #@9f
    move-object v1, p0

    #@a0
    move/from16 v7, p6

    #@a2
    move-object/from16 v8, p7

    #@a4
    move/from16 v9, p8

    #@a6
    .line 2167
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    #@a9
    move-result v10

    #@aa
    .line 2169
    .local v10, "result":F
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    #@ad
    .line 2170
    return v10
.end method

.method public getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F
    .locals 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advances"    # [F
    .param p8, "advancesIndex"    # I

    #@0
    .prologue
    .line 2216
    if-nez p1, :cond_0

    #@2
    .line 2217
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "text cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 2219
    :cond_0
    or-int v2, p2, p3

    #@d
    or-int v2, v2, p4

    #@f
    or-int v2, v2, p5

    #@11
    or-int v2, v2, p8

    #@13
    sub-int v3, p3, p2

    #@15
    or-int/2addr v2, v3

    #@16
    .line 2220
    sub-int v3, p2, p4

    #@18
    .line 2219
    or-int/2addr v2, v3

    #@19
    .line 2220
    sub-int v3, p5, p3

    #@1b
    .line 2219
    or-int/2addr v2, v3

    #@1c
    .line 2221
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@1f
    move-result v3

    #@20
    sub-int v3, v3, p5

    #@22
    .line 2219
    or-int/2addr v3, v2

    #@23
    .line 2222
    if-nez p7, :cond_1

    #@25
    const/4 v2, 0x0

    #@26
    .line 2219
    :goto_0
    or-int/2addr v2, v3

    #@27
    if-gez v2, :cond_2

    #@29
    .line 2224
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@2b
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@2e
    throw v2

    #@2f
    .line 2223
    :cond_1
    move-object/from16 v0, p7

    #@31
    array-length v2, v0

    #@32
    sub-int v2, v2, p8

    #@34
    sub-int v4, p3, p2

    #@36
    sub-int/2addr v2, v4

    #@37
    goto :goto_0

    #@38
    .line 2227
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_3

    #@3e
    move/from16 v0, p2

    #@40
    move/from16 v1, p3

    #@42
    if-ne v0, v1, :cond_4

    #@44
    .line 2228
    :cond_3
    const/4 v2, 0x0

    #@45
    return v2

    #@46
    .line 2231
    :cond_4
    move-object/from16 v0, p0

    #@48
    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@4a
    if-nez v2, :cond_6

    #@4c
    .line 2232
    move-object/from16 v0, p0

    #@4e
    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    #@50
    move-object/from16 v0, p0

    #@52
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@54
    .line 2233
    if-eqz p6, :cond_5

    #@56
    const/4 v11, 0x5

    #@57
    :goto_1
    move-object/from16 v6, p1

    #@59
    move/from16 v7, p2

    #@5b
    move/from16 v8, p3

    #@5d
    move/from16 v9, p4

    #@5f
    move/from16 v10, p5

    #@61
    move-object/from16 v12, p7

    #@63
    move/from16 v13, p8

    #@65
    .line 2232
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    #@68
    move-result v2

    #@69
    return v2

    #@6a
    .line 2233
    :cond_5
    const/4 v11, 0x4

    #@6b
    goto :goto_1

    #@6c
    .line 2237
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    #@6f
    move-result v16

    #@70
    .line 2238
    .local v16, "oldSize":F
    move-object/from16 v0, p0

    #@72
    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    #@74
    mul-float v2, v2, v16

    #@76
    move-object/from16 v0, p0

    #@78
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@7b
    .line 2239
    move-object/from16 v0, p0

    #@7d
    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    #@7f
    move-object/from16 v0, p0

    #@81
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@83
    .line 2240
    if-eqz p6, :cond_7

    #@85
    const/4 v11, 0x5

    #@86
    :goto_2
    move-object/from16 v6, p1

    #@88
    move/from16 v7, p2

    #@8a
    move/from16 v8, p3

    #@8c
    move/from16 v9, p4

    #@8e
    move/from16 v10, p5

    #@90
    move-object/from16 v12, p7

    #@92
    move/from16 v13, p8

    #@94
    .line 2239
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    #@97
    move-result v17

    #@98
    .line 2242
    .local v17, "totalAdvance":F
    move-object/from16 v0, p0

    #@9a
    move/from16 v1, v16

    #@9c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    #@9f
    .line 2244
    if-eqz p7, :cond_8

    #@a1
    .line 2245
    move/from16 v15, p8

    #@a3
    .local v15, "i":I
    sub-int v2, p3, p2

    #@a5
    add-int v14, p8, v2

    #@a7
    .local v14, "e":I
    :goto_3
    if-ge v15, v14, :cond_8

    #@a9
    .line 2246
    aget v2, p7, v15

    #@ab
    move-object/from16 v0, p0

    #@ad
    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@af
    mul-float/2addr v2, v3

    #@b0
    aput v2, p7, v15

    #@b2
    .line 2245
    add-int/lit8 v15, v15, 0x1

    #@b4
    goto :goto_3

    #@b5
    .line 2240
    .end local v14    # "e":I
    .end local v15    # "i":I
    .end local v17    # "totalAdvance":F
    :cond_7
    const/4 v11, 0x4

    #@b6
    goto :goto_2

    #@b7
    .line 2249
    .restart local v17    # "totalAdvance":F
    :cond_8
    move-object/from16 v0, p0

    #@b9
    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@bb
    mul-float v2, v2, v17

    #@bd
    return v2
.end method

.method public getTextRunAdvances([CIIIIZ[FI)F
    .locals 18
    .param p1, "chars"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advances"    # [F
    .param p8, "advancesIndex"    # I

    #@0
    .prologue
    .line 2089
    if-nez p1, :cond_0

    #@2
    .line 2090
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "text cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 2092
    :cond_0
    or-int v2, p2, p3

    #@d
    or-int v2, v2, p4

    #@f
    or-int v2, v2, p5

    #@11
    or-int v2, v2, p8

    #@13
    .line 2093
    sub-int v3, p2, p4

    #@15
    .line 2092
    or-int/2addr v2, v3

    #@16
    .line 2093
    sub-int v3, p5, p3

    #@18
    .line 2092
    or-int/2addr v2, v3

    #@19
    .line 2094
    add-int v3, p4, p5

    #@1b
    add-int v4, p2, p3

    #@1d
    sub-int/2addr v3, v4

    #@1e
    .line 2092
    or-int/2addr v2, v3

    #@1f
    .line 2095
    move-object/from16 v0, p1

    #@21
    array-length v3, v0

    #@22
    add-int v4, p4, p5

    #@24
    sub-int/2addr v3, v4

    #@25
    .line 2092
    or-int/2addr v3, v2

    #@26
    .line 2096
    if-nez p7, :cond_1

    #@28
    const/4 v2, 0x0

    #@29
    .line 2092
    :goto_0
    or-int/2addr v2, v3

    #@2a
    if-gez v2, :cond_2

    #@2c
    .line 2098
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@2e
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@31
    throw v2

    #@32
    .line 2097
    :cond_1
    move-object/from16 v0, p7

    #@34
    array-length v2, v0

    #@35
    add-int v4, p8, p3

    #@37
    sub-int/2addr v2, v4

    #@38
    goto :goto_0

    #@39
    .line 2101
    :cond_2
    move-object/from16 v0, p1

    #@3b
    array-length v2, v0

    #@3c
    if-eqz v2, :cond_3

    #@3e
    if-nez p3, :cond_4

    #@40
    .line 2102
    :cond_3
    const/4 v2, 0x0

    #@41
    return v2

    #@42
    .line 2104
    :cond_4
    move-object/from16 v0, p0

    #@44
    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@46
    if-nez v2, :cond_6

    #@48
    .line 2105
    move-object/from16 v0, p0

    #@4a
    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@50
    .line 2106
    if-eqz p6, :cond_5

    #@52
    const/4 v11, 0x5

    #@53
    :goto_1
    move-object/from16 v6, p1

    #@55
    move/from16 v7, p2

    #@57
    move/from16 v8, p3

    #@59
    move/from16 v9, p4

    #@5b
    move/from16 v10, p5

    #@5d
    move-object/from16 v12, p7

    #@5f
    move/from16 v13, p8

    #@61
    .line 2105
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    #@64
    move-result v2

    #@65
    return v2

    #@66
    .line 2106
    :cond_5
    const/4 v11, 0x4

    #@67
    goto :goto_1

    #@68
    .line 2110
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    #@6b
    move-result v16

    #@6c
    .line 2111
    .local v16, "oldSize":F
    move-object/from16 v0, p0

    #@6e
    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    #@70
    mul-float v2, v2, v16

    #@72
    move-object/from16 v0, p0

    #@74
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@77
    .line 2112
    move-object/from16 v0, p0

    #@79
    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    #@7b
    move-object/from16 v0, p0

    #@7d
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@7f
    .line 2113
    if-eqz p6, :cond_7

    #@81
    const/4 v11, 0x5

    #@82
    :goto_2
    move-object/from16 v6, p1

    #@84
    move/from16 v7, p2

    #@86
    move/from16 v8, p3

    #@88
    move/from16 v9, p4

    #@8a
    move/from16 v10, p5

    #@8c
    move-object/from16 v12, p7

    #@8e
    move/from16 v13, p8

    #@90
    .line 2112
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    #@93
    move-result v17

    #@94
    .line 2115
    .local v17, "res":F
    move-object/from16 v0, p0

    #@96
    move/from16 v1, v16

    #@98
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    #@9b
    .line 2117
    if-eqz p7, :cond_8

    #@9d
    .line 2118
    move/from16 v15, p8

    #@9f
    .local v15, "i":I
    add-int v14, p8, p3

    #@a1
    .local v14, "e":I
    :goto_3
    if-ge v15, v14, :cond_8

    #@a3
    .line 2119
    aget v2, p7, v15

    #@a5
    move-object/from16 v0, p0

    #@a7
    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@a9
    mul-float/2addr v2, v3

    #@aa
    aput v2, p7, v15

    #@ac
    .line 2118
    add-int/lit8 v15, v15, 0x1

    #@ae
    goto :goto_3

    #@af
    .line 2113
    .end local v14    # "e":I
    .end local v15    # "i":I
    .end local v17    # "res":F
    :cond_7
    const/4 v11, 0x4

    #@b0
    goto :goto_2

    #@b1
    .line 2122
    .restart local v17    # "res":F
    :cond_8
    move-object/from16 v0, p0

    #@b3
    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@b5
    mul-float v2, v2, v17

    #@b7
    return v2
.end method

.method public getTextRunCursor(Ljava/lang/CharSequence;IIIII)I
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "contextStart"    # I
    .param p3, "contextEnd"    # I
    .param p4, "dir"    # I
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v8, -0x1

    #@2
    .line 2321
    instance-of v0, p1, Ljava/lang/String;

    #@4
    if-nez v0, :cond_0

    #@6
    instance-of v0, p1, Landroid/text/SpannedString;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 2322
    instance-of v0, p1, Landroid/text/SpannableString;

    #@c
    .line 2321
    if-eqz v0, :cond_1

    #@e
    .line 2323
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    move-object v0, p0

    #@13
    move v2, p2

    #@14
    move v3, p3

    #@15
    move v4, p4

    #@16
    move v5, p5

    #@17
    move v6, p6

    #@18
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/String;IIIII)I

    #@1b
    move-result v0

    #@1c
    return v0

    #@1d
    .line 2326
    :cond_1
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    #@1f
    if-eqz v0, :cond_2

    #@21
    move-object v0, p1

    #@22
    .line 2327
    check-cast v0, Landroid/text/GraphicsOperations;

    #@24
    move v1, p2

    #@25
    move v2, p3

    #@26
    move v3, p4

    #@27
    move v4, p5

    #@28
    move v5, p6

    #@29
    move-object v6, p0

    #@2a
    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->getTextRunCursor(IIIIILandroid/graphics/Paint;)I

    #@2d
    move-result v0

    #@2e
    return v0

    #@2f
    .line 2331
    :cond_2
    sub-int v3, p3, p2

    #@31
    .line 2332
    .local v3, "contextLen":I
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@34
    move-result-object v1

    #@35
    .line 2333
    .local v1, "buf":[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@38
    .line 2334
    sub-int v5, p5, p2

    #@3a
    move-object v0, p0

    #@3b
    move v4, p4

    #@3c
    move v6, p6

    #@3d
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    #@40
    move-result v7

    #@41
    .line 2335
    .local v7, "relPos":I
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    #@44
    .line 2336
    if-ne v7, v8, :cond_3

    #@46
    move v0, v8

    #@47
    :goto_0
    return v0

    #@48
    :cond_3
    add-int v0, v7, p2

    #@4a
    goto :goto_0
.end method

.method public getTextRunCursor(Ljava/lang/String;IIIII)I
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "contextStart"    # I
    .param p3, "contextEnd"    # I
    .param p4, "dir"    # I
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    #@0
    .prologue
    .line 2367
    or-int v2, p2, p3

    #@2
    or-int v2, v2, p5

    #@4
    sub-int v3, p3, p2

    #@6
    or-int/2addr v2, v3

    #@7
    .line 2368
    sub-int v3, p5, p2

    #@9
    .line 2367
    or-int/2addr v2, v3

    #@a
    .line 2368
    sub-int v3, p3, p5

    #@c
    .line 2367
    or-int/2addr v2, v3

    #@d
    .line 2369
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@10
    move-result v3

    #@11
    sub-int/2addr v3, p3

    #@12
    .line 2367
    or-int/2addr v2, v3

    #@13
    or-int v2, v2, p6

    #@15
    if-ltz v2, :cond_0

    #@17
    .line 2370
    const/4 v2, 0x4

    #@18
    move/from16 v0, p6

    #@1a
    if-le v0, v2, :cond_1

    #@1c
    .line 2371
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@1e
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@21
    throw v2

    #@22
    .line 2374
    :cond_1
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@24
    move-object v3, p0

    #@25
    move-object v6, p1

    #@26
    move v7, p2

    #@27
    move v8, p3

    #@28
    move/from16 v9, p4

    #@2a
    move/from16 v10, p5

    #@2c
    move/from16 v11, p6

    #@2e
    invoke-direct/range {v3 .. v11}, Landroid/graphics/Paint;->nGetTextRunCursor(JLjava/lang/String;IIIII)I

    #@31
    move-result v2

    #@32
    return v2
.end method

.method public getTextRunCursor([CIIIII)I
    .locals 12
    .param p1, "text"    # [C
    .param p2, "contextStart"    # I
    .param p3, "contextLength"    # I
    .param p4, "dir"    # I
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    #@0
    .prologue
    .line 2280
    add-int v2, p2, p3

    #@2
    .line 2281
    .local v2, "contextEnd":I
    or-int v3, p2, v2

    #@4
    or-int v3, v3, p5

    #@6
    sub-int v4, v2, p2

    #@8
    or-int/2addr v3, v4

    #@9
    .line 2282
    sub-int v4, p5, p2

    #@b
    .line 2281
    or-int/2addr v3, v4

    #@c
    .line 2282
    sub-int v4, v2, p5

    #@e
    .line 2281
    or-int/2addr v3, v4

    #@f
    .line 2283
    array-length v4, p1

    #@10
    sub-int/2addr v4, v2

    #@11
    .line 2281
    or-int/2addr v3, v4

    #@12
    or-int v3, v3, p6

    #@14
    if-ltz v3, :cond_0

    #@16
    .line 2284
    const/4 v3, 0x4

    #@17
    move/from16 v0, p6

    #@19
    if-le v0, v3, :cond_1

    #@1b
    .line 2285
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@1d
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@20
    throw v3

    #@21
    .line 2288
    :cond_1
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@23
    move-object v3, p0

    #@24
    move-object v6, p1

    #@25
    move v7, p2

    #@26
    move v8, p3

    #@27
    move/from16 v9, p4

    #@29
    move/from16 v10, p5

    #@2b
    move/from16 v11, p6

    #@2d
    invoke-direct/range {v3 .. v11}, Landroid/graphics/Paint;->nGetTextRunCursor(J[CIIIII)I

    #@30
    move-result v3

    #@31
    return v3
.end method

.method public getTextScaleX()F
    .locals 2

    #@0
    .prologue
    .line 1433
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetTextScaleX(J)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTextSize()F
    .locals 2

    #@0
    .prologue
    .line 1410
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetTextSize(J)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTextSkewX()F
    .locals 2

    #@0
    .prologue
    .line 1458
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetTextSkewX(J)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTextWidths(Ljava/lang/CharSequence;II[F)I
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1993
    if-nez p1, :cond_0

    #@3
    .line 1994
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "text cannot be null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 1996
    :cond_0
    or-int v2, p2, p3

    #@e
    sub-int v3, p3, p2

    #@10
    or-int/2addr v2, v3

    #@11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@14
    move-result v3

    #@15
    sub-int/2addr v3, p3

    #@16
    or-int/2addr v2, v3

    #@17
    if-gez v2, :cond_1

    #@19
    .line 1997
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@1b
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@1e
    throw v2

    #@1f
    .line 1999
    :cond_1
    sub-int v2, p3, p2

    #@21
    array-length v3, p4

    #@22
    if-le v2, v3, :cond_2

    #@24
    .line 2000
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@26
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@29
    throw v2

    #@2a
    .line 2003
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_3

    #@30
    if-ne p2, p3, :cond_4

    #@32
    .line 2004
    :cond_3
    return v4

    #@33
    .line 2006
    :cond_4
    instance-of v2, p1, Ljava/lang/String;

    #@35
    if-eqz v2, :cond_5

    #@37
    .line 2007
    check-cast p1, Ljava/lang/String;

    #@39
    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    #@3c
    move-result v2

    #@3d
    return v2

    #@3e
    .line 2009
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_5
    instance-of v2, p1, Landroid/text/SpannedString;

    #@40
    if-nez v2, :cond_6

    #@42
    .line 2010
    instance-of v2, p1, Landroid/text/SpannableString;

    #@44
    .line 2009
    if-eqz v2, :cond_7

    #@46
    .line 2011
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {p0, v2, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    #@4d
    move-result v2

    #@4e
    return v2

    #@4f
    .line 2013
    :cond_7
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    #@51
    if-eqz v2, :cond_8

    #@53
    .line 2014
    check-cast p1, Landroid/text/GraphicsOperations;

    #@55
    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-interface {p1, p2, p3, p4, p0}, Landroid/text/GraphicsOperations;->getTextWidths(II[FLandroid/graphics/Paint;)I

    #@58
    move-result v2

    #@59
    return v2

    #@5a
    .line 2018
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_8
    sub-int v2, p3, p2

    #@5c
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@5f
    move-result-object v0

    #@60
    .line 2019
    .local v0, "buf":[C
    invoke-static {p1, p2, p3, v0, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@63
    .line 2020
    sub-int v2, p3, p2

    #@65
    invoke-virtual {p0, v0, v4, v2, p4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    #@68
    move-result v1

    #@69
    .line 2021
    .local v1, "result":I
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    #@6c
    .line 2022
    return v1
.end method

.method public getTextWidths(Ljava/lang/String;II[F)I
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    #@0
    .prologue
    .line 2036
    if-nez p1, :cond_0

    #@2
    .line 2037
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "text cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 2039
    :cond_0
    or-int v2, p2, p3

    #@d
    sub-int v3, p3, p2

    #@f
    or-int/2addr v2, v3

    #@10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@13
    move-result v3

    #@14
    sub-int v3, v3, p3

    #@16
    or-int/2addr v2, v3

    #@17
    if-gez v2, :cond_1

    #@19
    .line 2040
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@1b
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@1e
    throw v2

    #@1f
    .line 2042
    :cond_1
    sub-int v2, p3, p2

    #@21
    move-object/from16 v0, p4

    #@23
    array-length v3, v0

    #@24
    if-le v2, v3, :cond_2

    #@26
    .line 2043
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@28
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@2b
    throw v2

    #@2c
    .line 2046
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_3

    #@32
    move/from16 v0, p2

    #@34
    move/from16 v1, p3

    #@36
    if-ne v0, v1, :cond_4

    #@38
    .line 2047
    :cond_3
    const/4 v2, 0x0

    #@39
    return v2

    #@3a
    .line 2049
    :cond_4
    move-object/from16 v0, p0

    #@3c
    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@3e
    if-nez v2, :cond_5

    #@40
    .line 2050
    move-object/from16 v0, p0

    #@42
    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    #@44
    move-object/from16 v0, p0

    #@46
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@48
    .line 2051
    move-object/from16 v0, p0

    #@4a
    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    #@4c
    const/4 v13, 0x0

    #@4d
    move-object/from16 v6, p1

    #@4f
    move/from16 v7, p2

    #@51
    move/from16 v8, p3

    #@53
    move/from16 v9, p2

    #@55
    move/from16 v10, p3

    #@57
    move-object/from16 v12, p4

    #@59
    .line 2050
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    #@5c
    .line 2052
    sub-int v2, p3, p2

    #@5e
    return v2

    #@5f
    .line 2055
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    #@62
    move-result v15

    #@63
    .line 2056
    .local v15, "oldSize":F
    move-object/from16 v0, p0

    #@65
    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    #@67
    mul-float/2addr v2, v15

    #@68
    move-object/from16 v0, p0

    #@6a
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@6d
    .line 2057
    move-object/from16 v0, p0

    #@6f
    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    #@71
    move-object/from16 v0, p0

    #@73
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@75
    .line 2058
    move-object/from16 v0, p0

    #@77
    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    #@79
    const/4 v13, 0x0

    #@7a
    move-object/from16 v6, p1

    #@7c
    move/from16 v7, p2

    #@7e
    move/from16 v8, p3

    #@80
    move/from16 v9, p2

    #@82
    move/from16 v10, p3

    #@84
    move-object/from16 v12, p4

    #@86
    .line 2057
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    #@89
    .line 2059
    move-object/from16 v0, p0

    #@8b
    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    #@8e
    .line 2060
    const/4 v14, 0x0

    #@8f
    .local v14, "i":I
    :goto_0
    sub-int v2, p3, p2

    #@91
    if-ge v14, v2, :cond_6

    #@93
    .line 2061
    aget v2, p4, v14

    #@95
    move-object/from16 v0, p0

    #@97
    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@99
    mul-float/2addr v2, v3

    #@9a
    aput v2, p4, v14

    #@9c
    .line 2060
    add-int/lit8 v14, v14, 0x1

    #@9e
    goto :goto_0

    #@9f
    .line 2063
    :cond_6
    sub-int v2, p3, p2

    #@a1
    return v2
.end method

.method public getTextWidths(Ljava/lang/String;[F)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "widths"    # [F

    #@0
    .prologue
    .line 2075
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getTextWidths([CII[F)I
    .locals 16
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "widths"    # [F

    #@0
    .prologue
    .line 1953
    if-nez p1, :cond_0

    #@2
    .line 1954
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "text cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1956
    :cond_0
    or-int v2, p2, p3

    #@d
    if-ltz v2, :cond_1

    #@f
    add-int v2, p2, p3

    #@11
    move-object/from16 v0, p1

    #@13
    array-length v3, v0

    #@14
    if-le v2, v3, :cond_2

    #@16
    .line 1958
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@18
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@1b
    throw v2

    #@1c
    .line 1957
    :cond_2
    move-object/from16 v0, p4

    #@1e
    array-length v2, v0

    #@1f
    move/from16 v0, p3

    #@21
    if-gt v0, v2, :cond_1

    #@23
    .line 1961
    move-object/from16 v0, p1

    #@25
    array-length v2, v0

    #@26
    if-eqz v2, :cond_3

    #@28
    if-nez p3, :cond_4

    #@2a
    .line 1962
    :cond_3
    const/4 v2, 0x0

    #@2b
    return v2

    #@2c
    .line 1964
    :cond_4
    move-object/from16 v0, p0

    #@2e
    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@30
    if-nez v2, :cond_5

    #@32
    .line 1965
    move-object/from16 v0, p0

    #@34
    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    #@36
    move-object/from16 v0, p0

    #@38
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@3a
    .line 1966
    move-object/from16 v0, p0

    #@3c
    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    #@3e
    const/4 v13, 0x0

    #@3f
    move-object/from16 v6, p1

    #@41
    move/from16 v7, p2

    #@43
    move/from16 v8, p3

    #@45
    move/from16 v9, p2

    #@47
    move/from16 v10, p3

    #@49
    move-object/from16 v12, p4

    #@4b
    .line 1965
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    #@4e
    .line 1967
    return p3

    #@4f
    .line 1970
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    #@52
    move-result v15

    #@53
    .line 1971
    .local v15, "oldSize":F
    move-object/from16 v0, p0

    #@55
    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    #@57
    mul-float/2addr v2, v15

    #@58
    move-object/from16 v0, p0

    #@5a
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@5d
    .line 1972
    move-object/from16 v0, p0

    #@5f
    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    #@61
    move-object/from16 v0, p0

    #@63
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@65
    .line 1973
    move-object/from16 v0, p0

    #@67
    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    #@69
    const/4 v13, 0x0

    #@6a
    move-object/from16 v6, p1

    #@6c
    move/from16 v7, p2

    #@6e
    move/from16 v8, p3

    #@70
    move/from16 v9, p2

    #@72
    move/from16 v10, p3

    #@74
    move-object/from16 v12, p4

    #@76
    .line 1972
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    #@79
    .line 1974
    move-object/from16 v0, p0

    #@7b
    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    #@7e
    .line 1975
    const/4 v14, 0x0

    #@7f
    .local v14, "i":I
    :goto_0
    move/from16 v0, p3

    #@81
    if-ge v14, v0, :cond_6

    #@83
    .line 1976
    aget v2, p4, v14

    #@85
    move-object/from16 v0, p0

    #@87
    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@89
    mul-float/2addr v2, v3

    #@8a
    aput v2, p4, v14

    #@8c
    .line 1975
    add-int/lit8 v14, v14, 0x1

    #@8e
    goto :goto_0

    #@8f
    .line 1978
    :cond_6
    return p3
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    #@0
    .prologue
    .line 1173
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    #@2
    return-object v0
.end method

.method public getXfermode()Landroid/graphics/Xfermode;
    .locals 1

    #@0
    .prologue
    .line 1086
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    #@2
    return-object v0
.end method

.method public hasGlyph(Ljava/lang/String;)Z
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2480
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@4
    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@6
    move-object v5, p1

    #@7
    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nHasGlyph(JJILjava/lang/String;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public hasShadowLayer()Z
    .locals 2

    #@0
    .prologue
    .line 1263
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Paint;->nHasShadowLayer(J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final isAntiAlias()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 649
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    #@4
    move-result v1

    #@5
    and-int/lit8 v1, v1, 0x1

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public final isDither()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 677
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    #@4
    move-result v1

    #@5
    and-int/lit8 v1, v1, 0x4

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isElegantTextHeight()Z
    .locals 2

    #@0
    .prologue
    .line 1386
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nIsElegantTextHeight(J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final isFakeBoldText()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 786
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    #@4
    move-result v1

    #@5
    and-int/lit8 v1, v1, 0x20

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public final isFilterBitmap()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 810
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    #@4
    move-result v1

    #@5
    and-int/lit8 v1, v1, 0x2

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public final isLinearText()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 702
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    #@4
    move-result v1

    #@5
    and-int/lit8 v1, v1, 0x40

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public final isStrikeThruText()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 765
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    #@4
    move-result v1

    #@5
    and-int/lit8 v1, v1, 0x10

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public final isSubpixelText()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 723
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    #@4
    move-result v1

    #@5
    and-int/lit16 v1, v1, 0x80

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public final isUnderlineText()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 744
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    #@4
    move-result v1

    #@5
    and-int/lit8 v1, v1, 0x8

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public measureText(Ljava/lang/CharSequence;II)F
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1776
    if-nez p1, :cond_0

    #@3
    .line 1777
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "text cannot be null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 1779
    :cond_0
    or-int v2, p2, p3

    #@e
    sub-int v3, p3, p2

    #@10
    or-int/2addr v2, v3

    #@11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@14
    move-result v3

    #@15
    sub-int/2addr v3, p3

    #@16
    or-int/2addr v2, v3

    #@17
    if-gez v2, :cond_1

    #@19
    .line 1780
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@1b
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@1e
    throw v2

    #@1f
    .line 1783
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2

    #@25
    if-ne p2, p3, :cond_3

    #@27
    .line 1784
    :cond_2
    const/4 v2, 0x0

    #@28
    return v2

    #@29
    .line 1786
    :cond_3
    instance-of v2, p1, Ljava/lang/String;

    #@2b
    if-eqz v2, :cond_4

    #@2d
    .line 1787
    check-cast p1, Ljava/lang/String;

    #@2f
    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    #@32
    move-result v2

    #@33
    return v2

    #@34
    .line 1789
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_4
    instance-of v2, p1, Landroid/text/SpannedString;

    #@36
    if-nez v2, :cond_5

    #@38
    .line 1790
    instance-of v2, p1, Landroid/text/SpannableString;

    #@3a
    .line 1789
    if-eqz v2, :cond_6

    #@3c
    .line 1791
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {p0, v2, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    #@43
    move-result v2

    #@44
    return v2

    #@45
    .line 1793
    :cond_6
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    #@47
    if-eqz v2, :cond_7

    #@49
    .line 1794
    check-cast p1, Landroid/text/GraphicsOperations;

    #@4b
    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-interface {p1, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    #@4e
    move-result v2

    #@4f
    return v2

    #@50
    .line 1797
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_7
    sub-int v2, p3, p2

    #@52
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@55
    move-result-object v0

    #@56
    .line 1798
    .local v0, "buf":[C
    invoke-static {p1, p2, p3, v0, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@59
    .line 1799
    sub-int v2, p3, p2

    #@5b
    invoke-virtual {p0, v0, v4, v2}, Landroid/graphics/Paint;->measureText([CII)F

    #@5e
    move-result v1

    #@5f
    .line 1800
    .local v1, "result":F
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    #@62
    .line 1801
    return v1
.end method

.method public measureText(Ljava/lang/String;)F
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1761
    if-nez p1, :cond_0

    #@2
    .line 1762
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "text cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1764
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x0

    #@10
    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public measureText(Ljava/lang/String;II)F
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 1732
    if-nez p1, :cond_0

    #@2
    .line 1733
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "text cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1735
    :cond_0
    or-int v2, p2, p3

    #@d
    sub-int v3, p3, p2

    #@f
    or-int/2addr v2, v3

    #@10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@13
    move-result v3

    #@14
    sub-int v3, v3, p3

    #@16
    or-int/2addr v2, v3

    #@17
    if-gez v2, :cond_1

    #@19
    .line 1736
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@1b
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@1e
    throw v2

    #@1f
    .line 1739
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2

    #@25
    move/from16 v0, p2

    #@27
    move/from16 v1, p3

    #@29
    if-ne v0, v1, :cond_3

    #@2b
    .line 1740
    :cond_2
    const/4 v2, 0x0

    #@2c
    return v2

    #@2d
    .line 1742
    :cond_3
    move-object/from16 v0, p0

    #@2f
    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@31
    if-nez v2, :cond_4

    #@33
    .line 1743
    move-object/from16 v0, p0

    #@35
    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    #@37
    move-object/from16 v0, p0

    #@39
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@3b
    .line 1744
    move-object/from16 v0, p0

    #@3d
    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    #@3f
    const/4 v12, 0x0

    #@40
    const/4 v13, 0x0

    #@41
    move-object/from16 v6, p1

    #@43
    move/from16 v7, p2

    #@45
    move/from16 v8, p3

    #@47
    move/from16 v9, p2

    #@49
    move/from16 v10, p3

    #@4b
    .line 1743
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    #@4e
    move-result v2

    #@4f
    float-to-double v2, v2

    #@50
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@53
    move-result-wide v2

    #@54
    double-to-float v2, v2

    #@55
    return v2

    #@56
    .line 1746
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    #@59
    move-result v14

    #@5a
    .line 1747
    .local v14, "oldSize":F
    move-object/from16 v0, p0

    #@5c
    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    #@5e
    mul-float/2addr v2, v14

    #@5f
    move-object/from16 v0, p0

    #@61
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@64
    .line 1748
    move-object/from16 v0, p0

    #@66
    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    #@68
    move-object/from16 v0, p0

    #@6a
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@6c
    .line 1749
    move-object/from16 v0, p0

    #@6e
    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    #@70
    const/4 v12, 0x0

    #@71
    const/4 v13, 0x0

    #@72
    move-object/from16 v6, p1

    #@74
    move/from16 v7, p2

    #@76
    move/from16 v8, p3

    #@78
    move/from16 v9, p2

    #@7a
    move/from16 v10, p3

    #@7c
    .line 1748
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    #@7f
    move-result v15

    #@80
    .line 1750
    .local v15, "w":F
    move-object/from16 v0, p0

    #@82
    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    #@85
    .line 1751
    move-object/from16 v0, p0

    #@87
    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@89
    mul-float/2addr v2, v15

    #@8a
    float-to-double v2, v2

    #@8b
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@8e
    move-result-wide v2

    #@8f
    double-to-float v2, v2

    #@90
    return v2
.end method

.method public measureText([CII)F
    .locals 14
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 1700
    if-nez p1, :cond_0

    #@2
    .line 1701
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "text cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1703
    :cond_0
    or-int v0, p2, p3

    #@d
    if-ltz v0, :cond_1

    #@f
    add-int v0, p2, p3

    #@11
    array-length v1, p1

    #@12
    if-le v0, v1, :cond_2

    #@14
    .line 1704
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@16
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@19
    throw v0

    #@1a
    .line 1707
    :cond_2
    array-length v0, p1

    #@1b
    if-eqz v0, :cond_3

    #@1d
    if-nez p3, :cond_4

    #@1f
    .line 1708
    :cond_3
    const/4 v0, 0x0

    #@20
    return v0

    #@21
    .line 1710
    :cond_4
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@23
    if-nez v0, :cond_5

    #@25
    .line 1711
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@27
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@29
    .line 1712
    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@2b
    const/4 v10, 0x0

    #@2c
    const/4 v11, 0x0

    #@2d
    move-object v4, p1

    #@2e
    move/from16 v5, p2

    #@30
    move/from16 v6, p3

    #@32
    move/from16 v7, p2

    #@34
    move/from16 v8, p3

    #@36
    .line 1711
    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    #@39
    move-result v0

    #@3a
    float-to-double v0, v0

    #@3b
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@3e
    move-result-wide v0

    #@3f
    double-to-float v0, v0

    #@40
    return v0

    #@41
    .line 1715
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    #@44
    move-result v12

    #@45
    .line 1716
    .local v12, "oldSize":F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@47
    mul-float/2addr v0, v12

    #@48
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    #@4b
    .line 1717
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@4d
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@4f
    .line 1718
    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@51
    const/4 v10, 0x0

    #@52
    const/4 v11, 0x0

    #@53
    move-object v4, p1

    #@54
    move/from16 v5, p2

    #@56
    move/from16 v6, p3

    #@58
    move/from16 v7, p2

    #@5a
    move/from16 v8, p3

    #@5c
    .line 1717
    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    #@5f
    move-result v13

    #@60
    .line 1719
    .local v13, "w":F
    invoke-virtual {p0, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    #@63
    .line 1720
    iget v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@65
    mul-float/2addr v0, v13

    #@66
    float-to-double v0, v0

    #@67
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@6a
    move-result-wide v0

    #@6b
    double-to-float v0, v0

    #@6c
    return v0
.end method

.method public reset()V
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    const/high16 v3, 0x3f800000    # 1.0f

    #@5
    const/4 v2, 0x0

    #@6
    .line 483
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/Paint;->nReset(J)V

    #@b
    .line 484
    const/16 v0, 0x500

    #@d
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    #@10
    .line 491
    iput-object v2, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    #@12
    .line 492
    iput-object v2, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    #@14
    .line 493
    iput-object v2, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    #@16
    .line 494
    iput-object v2, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    #@18
    .line 495
    iput-object v2, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    #@1a
    .line 496
    iput-wide v6, p0, Landroid/graphics/Paint;->mNativeShader:J

    #@1c
    .line 497
    iput-object v2, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    #@1e
    .line 498
    iput-wide v6, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@20
    .line 499
    iput-object v2, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    #@22
    .line 501
    iput-boolean v4, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@24
    .line 502
    iput v3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@26
    .line 503
    iput v3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@28
    .line 505
    const/4 v0, 0x2

    #@29
    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@2b
    .line 506
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    #@32
    .line 507
    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setElegantTextHeight(Z)V

    #@35
    .line 508
    iput-object v2, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    #@37
    .line 482
    return-void
.end method

.method public set(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 517
    if-eq p0, p1, :cond_0

    #@2
    .line 519
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@4
    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSet(JJ)V

    #@9
    .line 520
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    #@c
    .line 516
    :cond_0
    return-void
.end method

.method public setARGB(IIII)V
    .locals 2
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    #@0
    .prologue
    .line 914
    shl-int/lit8 v0, p1, 0x18

    #@2
    shl-int/lit8 v1, p2, 0x10

    #@4
    or-int/2addr v0, v1

    #@5
    shl-int/lit8 v1, p3, 0x8

    #@7
    or-int/2addr v0, v1

    #@8
    or-int/2addr v0, p4

    #@9
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@c
    .line 913
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "a"    # I

    #@0
    .prologue
    .line 900
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetAlpha(JI)V

    #@5
    .line 899
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 2
    .param p1, "aa"    # Z

    #@0
    .prologue
    .line 661
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetAntiAlias(JZ)V

    #@5
    .line 660
    return-void
.end method

.method public setBidiFlags(I)V
    .locals 3
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 591
    and-int/lit8 p1, p1, 0x7

    #@2
    .line 592
    const/4 v0, 0x5

    #@3
    if-le p1, v0, :cond_0

    #@5
    .line 593
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "unknown bidi flag: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 595
    :cond_0
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@21
    .line 589
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    #@0
    .prologue
    .line 874
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetColor(JI)V

    #@5
    .line 873
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .locals 4
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 1072
    const-wide/16 v0, 0x0

    #@2
    .line 1073
    .local v0, "filterNative":J
    if-eqz p1, :cond_0

    #@4
    .line 1074
    iget-wide v0, p1, Landroid/graphics/ColorFilter;->native_instance:J

    #@6
    .line 1075
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@8
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetColorFilter(JJ)J

    #@b
    .line 1076
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    #@d
    .line 1077
    return-object p1
.end method

.method public setCompatibilityScaling(F)V
    .locals 5
    .param p1, "factor"    # F

    #@0
    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    #@2
    .line 550
    float-to-double v0, p1

    #@3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@5
    cmpl-double v0, v0, v2

    #@7
    if-nez v0, :cond_0

    #@9
    .line 551
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@c
    .line 552
    iput v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@e
    iput v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@10
    .line 549
    :goto_0
    return-void

    #@11
    .line 554
    :cond_0
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@14
    .line 555
    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@16
    .line 556
    div-float v0, v4, p1

    #@18
    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@1a
    goto :goto_0
.end method

.method public setDither(Z)V
    .locals 2
    .param p1, "dither"    # Z

    #@0
    .prologue
    .line 691
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetDither(JZ)V

    #@5
    .line 690
    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 2
    .param p1, "elegant"    # Z

    #@0
    .prologue
    .line 1399
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetElegantTextHeight(JZ)V

    #@5
    .line 1398
    return-void
.end method

.method public setFakeBoldText(Z)V
    .locals 2
    .param p1, "fakeBoldText"    # Z

    #@0
    .prologue
    .line 796
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetFakeBoldText(JZ)V

    #@5
    .line 795
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 2
    .param p1, "filter"    # Z

    #@0
    .prologue
    .line 823
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetFilterBitmap(JZ)V

    #@5
    .line 822
    return-void
.end method

.method public setFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 615
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetFlags(JI)V

    #@5
    .line 614
    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 2
    .param p1, "settings"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1522
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1523
    const/4 p1, 0x0

    #@c
    .line 1525
    .end local p1    # "settings":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_2

    #@e
    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    #@10
    if-nez v0, :cond_2

    #@12
    .line 1527
    :cond_1
    return-void

    #@13
    .line 1526
    :cond_2
    if-eqz p1, :cond_3

    #@15
    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    #@17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    .line 1525
    if-nez v0, :cond_1

    #@1d
    .line 1529
    :cond_3
    iput-object p1, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    #@1f
    .line 1530
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@21
    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFontFeatureSettings(JLjava/lang/String;)V

    #@24
    .line 1521
    return-void
.end method

.method public setHinting(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 635
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetHinting(JI)V

    #@5
    .line 634
    return-void
.end method

.method public setHyphenEdit(I)V
    .locals 2
    .param p1, "hyphen"    # I

    #@0
    .prologue
    .line 1553
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetHyphenEdit(JI)V

    #@5
    .line 1552
    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 2
    .param p1, "letterSpacing"    # F

    #@0
    .prologue
    .line 1493
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLetterSpacing(JF)V

    #@5
    .line 1492
    return-void
.end method

.method public setLinearText(Z)V
    .locals 2
    .param p1, "linearText"    # Z

    #@0
    .prologue
    .line 712
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetLinearText(JZ)V

    #@5
    .line 711
    return-void
.end method

.method public setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .locals 4
    .param p1, "maskfilter"    # Landroid/graphics/MaskFilter;

    #@0
    .prologue
    .line 1155
    const-wide/16 v0, 0x0

    #@2
    .line 1156
    .local v0, "maskfilterNative":J
    if-eqz p1, :cond_0

    #@4
    .line 1157
    iget-wide v0, p1, Landroid/graphics/MaskFilter;->native_instance:J

    #@6
    .line 1159
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@8
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetMaskFilter(JJ)J

    #@b
    .line 1160
    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    #@d
    .line 1161
    return-object p1
.end method

.method public setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .locals 4
    .param p1, "effect"    # Landroid/graphics/PathEffect;

    #@0
    .prologue
    .line 1126
    const-wide/16 v0, 0x0

    #@2
    .line 1127
    .local v0, "effectNative":J
    if-eqz p1, :cond_0

    #@4
    .line 1128
    iget-wide v0, p1, Landroid/graphics/PathEffect;->native_instance:J

    #@6
    .line 1130
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@8
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetPathEffect(JJ)J

    #@b
    .line 1131
    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    #@d
    .line 1132
    return-object p1
.end method

.method public setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .locals 4
    .param p1, "rasterizer"    # Landroid/graphics/Rasterizer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1224
    const-wide/16 v0, 0x0

    #@2
    .line 1225
    .local v0, "rasterizerNative":J
    if-eqz p1, :cond_0

    #@4
    .line 1226
    iget-wide v0, p1, Landroid/graphics/Rasterizer;->native_instance:J

    #@6
    .line 1228
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@8
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetRasterizer(JJ)J

    #@b
    .line 1229
    iput-object p1, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    #@d
    .line 1230
    return-object p1
.end method

.method public setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .locals 2
    .param p1, "shader"    # Landroid/graphics/Shader;

    #@0
    .prologue
    .line 1048
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1049
    const-wide/16 v0, -0x1

    #@6
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    #@8
    .line 1052
    :cond_0
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    #@a
    .line 1053
    return-object p1
.end method

.method public setShadowLayer(FFFI)V
    .locals 6
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "shadowColor"    # I

    #@0
    .prologue
    .line 1246
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    move v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nSetShadowLayer(JFFFI)V

    #@9
    .line 1245
    return-void
.end method

.method public setStrikeThruText(Z)V
    .locals 2
    .param p1, "strikeThruText"    # Z

    #@0
    .prologue
    .line 775
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetStrikeThruText(JZ)V

    #@5
    .line 774
    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 3
    .param p1, "cap"    # Landroid/graphics/Paint$Cap;

    #@0
    .prologue
    .line 990
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    iget v2, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    #@4
    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeCap(JI)V

    #@7
    .line 989
    return-void
.end method

.method public setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .locals 3
    .param p1, "join"    # Landroid/graphics/Paint$Join;

    #@0
    .prologue
    .line 1009
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    iget v2, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    #@4
    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeJoin(JI)V

    #@7
    .line 1008
    return-void
.end method

.method public setStrokeMiter(F)V
    .locals 2
    .param p1, "miter"    # F

    #@0
    .prologue
    .line 967
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeMiter(JF)V

    #@5
    .line 966
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .param p1, "width"    # F

    #@0
    .prologue
    .line 941
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeWidth(JF)V

    #@5
    .line 940
    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 3
    .param p1, "style"    # Landroid/graphics/Paint$Style;

    #@0
    .prologue
    .line 847
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    iget v2, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    #@4
    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStyle(JI)V

    #@7
    .line 846
    return-void
.end method

.method public setSubpixelText(Z)V
    .locals 2
    .param p1, "subpixelText"    # Z

    #@0
    .prologue
    .line 733
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetSubpixelText(JZ)V

    #@5
    .line 732
    return-void
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 3
    .param p1, "align"    # Landroid/graphics/Paint$Align;

    #@0
    .prologue
    .line 1287
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    iget v2, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    #@4
    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetTextAlign(JI)V

    #@7
    .line 1286
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1320
    if-nez p1, :cond_0

    #@4
    .line 1321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "locale cannot be null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1323
    :cond_0
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    #@f
    if-eqz v0, :cond_1

    #@11
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    #@13
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    #@16
    move-result v0

    #@17
    if-ne v0, v1, :cond_1

    #@19
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 1324
    return-void

    #@26
    .line 1326
    :cond_1
    new-instance v0, Landroid/os/LocaleList;

    #@28
    new-array v1, v1, [Ljava/util/Locale;

    #@2a
    aput-object p1, v1, v2

    #@2c
    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    #@2f
    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    #@31
    .line 1327
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    #@34
    .line 1319
    return-void
.end method

.method public setTextLocales(Landroid/os/LocaleList;)V
    .locals 2
    .param p1, "locales"    # Landroid/os/LocaleList;

    #@0
    .prologue
    .line 1358
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 1359
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "locales cannot be null or empty"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 1361
    :cond_1
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    #@13
    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_2

    #@19
    return-void

    #@1a
    .line 1362
    :cond_2
    iput-object p1, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    #@1c
    .line 1363
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    #@1f
    .line 1357
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 2
    .param p1, "scaleX"    # F

    #@0
    .prologue
    .line 1446
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetTextScaleX(JF)V

    #@5
    .line 1445
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    #@0
    .prologue
    .line 1421
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSize(JF)V

    #@5
    .line 1420
    return-void
.end method

.method public setTextSkewX(F)V
    .locals 2
    .param p1, "skewX"    # F

    #@0
    .prologue
    .line 1470
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSkewX(JF)V

    #@5
    .line 1469
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    #@0
    .prologue
    .line 1186
    const-wide/16 v0, 0x0

    #@2
    .line 1187
    .local v0, "typefaceNative":J
    if-eqz p1, :cond_0

    #@4
    .line 1188
    iget-wide v0, p1, Landroid/graphics/Typeface;->native_instance:J

    #@6
    .line 1190
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@8
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetTypeface(JJ)J

    #@b
    .line 1191
    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    #@d
    .line 1192
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@f
    .line 1193
    return-object p1
.end method

.method public setUnderlineText(Z)V
    .locals 2
    .param p1, "underlineText"    # Z

    #@0
    .prologue
    .line 754
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetUnderlineText(JZ)V

    #@5
    .line 753
    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .locals 4
    .param p1, "xfermode"    # Landroid/graphics/Xfermode;

    #@0
    .prologue
    .line 1099
    const-wide/16 v0, 0x0

    #@2
    .line 1100
    .local v0, "xfermodeNative":J
    if-eqz p1, :cond_0

    #@4
    .line 1101
    iget-wide v0, p1, Landroid/graphics/Xfermode;->native_instance:J

    #@6
    .line 1102
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@8
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetXfermode(JJ)J

    #@b
    .line 1103
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    #@d
    .line 1104
    return-object p1
.end method
