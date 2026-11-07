.class public Landroid/graphics/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Paint$NoImagePreloadHolder;,
        Landroid/graphics/Paint$Style;,
        Landroid/graphics/Paint$Cap;,
        Landroid/graphics/Paint$Join;,
        Landroid/graphics/Paint$Align;,
        Landroid/graphics/Paint$FontMetrics;,
        Landroid/graphics/Paint$FontMetricsInt;,
        Landroid/graphics/Paint$RunInfo;,
        Landroid/graphics/Paint$EndHyphenEdit;,
        Landroid/graphics/Paint$StartHyphenEdit;,
        Landroid/graphics/Paint$CursorOption;,
        Landroid/graphics/Paint$PaintFlag;
    }
.end annotation


# static fields
.field public static final whitelist ANTI_ALIAS_FLAG:I = 0x1

.field public static final greylist-max-o AUTO_HINTING_TEXT_FLAG:I = 0x800

.field public static final greylist-max-o BIDI_DEFAULT_LTR:I = 0x2

.field public static final greylist-max-o BIDI_DEFAULT_RTL:I = 0x3

.field private static final greylist-max-o BIDI_FLAG_MASK:I = 0x7

.field public static final greylist-max-o BIDI_FORCE_LTR:I = 0x4

.field public static final greylist-max-o BIDI_FORCE_RTL:I = 0x5

.field public static final greylist-max-o BIDI_LTR:I = 0x0

.field private static final greylist-max-o BIDI_MAX_FLAG_VALUE:I = 0x5

.field public static final greylist-max-o BIDI_RTL:I = 0x1

.field public static final whitelist CURSOR_AFTER:I = 0x0

.field public static final whitelist CURSOR_AT:I = 0x4

.field public static final whitelist CURSOR_AT_OR_AFTER:I = 0x1

.field public static final whitelist CURSOR_AT_OR_BEFORE:I = 0x3

.field public static final whitelist CURSOR_BEFORE:I = 0x2

.field private static final greylist-max-o CURSOR_OPT_MAX_VALUE:I = 0x4

.field public static final blacklist DEPRECATE_UI_FONT:J = 0x10ab11ddL

.field public static final blacklist DEPRECATE_UI_FONT_ENFORCE:J = 0x14d53e73L

.field public static final whitelist DEV_KERN_TEXT_FLAG:I = 0x100

.field public static final greylist-max-o DIRECTION_LTR:I = 0x0

.field public static final greylist-max-o DIRECTION_RTL:I = 0x1

.field public static final whitelist DITHER_FLAG:I = 0x4

.field private static final blacklist ELEGANT_TEXT_HEIGHT_DISABLED:I = 0x1

.field private static final blacklist ELEGANT_TEXT_HEIGHT_ENABLED:I = 0x0

.field private static final blacklist ELEGANT_TEXT_HEIGHT_UNSET:I = -0x1

.field public static final whitelist EMBEDDED_BITMAP_TEXT_FLAG:I = 0x400

.field public static final whitelist END_HYPHEN_EDIT_INSERT_ARMENIAN_HYPHEN:I = 0x3

.field public static final whitelist END_HYPHEN_EDIT_INSERT_HYPHEN:I = 0x2

.field public static final whitelist END_HYPHEN_EDIT_INSERT_MAQAF:I = 0x4

.field public static final whitelist END_HYPHEN_EDIT_INSERT_UCAS_HYPHEN:I = 0x5

.field public static final whitelist END_HYPHEN_EDIT_INSERT_ZWJ_AND_HYPHEN:I = 0x6

.field public static final whitelist END_HYPHEN_EDIT_NO_EDIT:I = 0x0

.field public static final whitelist END_HYPHEN_EDIT_REPLACE_WITH_HYPHEN:I = 0x1

.field public static final whitelist FAKE_BOLD_TEXT_FLAG:I = 0x20

.field public static final whitelist FILTER_BITMAP_FLAG:I = 0x2

.field static final greylist-max-o HIDDEN_DEFAULT_PAINT_FLAGS:I = 0x502

.field public static final whitelist HINTING_OFF:I = 0x0

.field public static final whitelist HINTING_ON:I = 0x1

.field public static final greylist-max-o LCD_RENDER_TEXT_FLAG:I = 0x200

.field public static final whitelist LINEAR_TEXT_FLAG:I = 0x40

.field public static final whitelist START_HYPHEN_EDIT_INSERT_HYPHEN:I = 0x1

.field public static final whitelist START_HYPHEN_EDIT_INSERT_ZWJ:I = 0x2

.field public static final whitelist START_HYPHEN_EDIT_NO_EDIT:I = 0x0

.field public static final whitelist STRIKE_THRU_TEXT_FLAG:I = 0x10

.field public static final whitelist SUBPIXEL_TEXT_FLAG:I = 0x80

.field private static final blacklist TAG:Ljava/lang/String; = "Paint"

.field public static final whitelist TEXT_RUN_FLAG_LEFT_EDGE:I = 0x2000

.field public static final whitelist TEXT_RUN_FLAG_RIGHT_EDGE:I = 0x4000

.field public static final whitelist UNDERLINE_TEXT_FLAG:I = 0x8

.field public static final whitelist VERTICAL_TEXT_FLAG:I = 0x1000

.field static final greylist-max-o sAlignArray:[Landroid/graphics/Paint$Align;

.field private static final greylist-max-o sCacheLock:Ljava/lang/Object;

.field static final greylist-max-o sCapArray:[Landroid/graphics/Paint$Cap;

.field static final greylist-max-o sJoinArray:[Landroid/graphics/Paint$Join;

.field private static final greylist-max-o sMinikinLocaleListIdCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o sStyleArray:[Landroid/graphics/Paint$Style;


# instance fields
.field public greylist-max-o mBidiFlags:I

.field private blacklist mColor:J

.field private greylist-max-o mColorFilter:Landroid/graphics/ColorFilter;

.field private greylist-max-o mCompatScaling:F

.field private greylist-max-o mFontFeatureSettings:Ljava/lang/String;

.field private blacklist mFontVariationOverride:Ljava/lang/String;

.field private greylist-max-o mFontVariationSettings:Ljava/lang/String;

.field private greylist-max-o mHasCompatScaling:Z

.field private greylist-max-o mInvCompatScaling:F

.field private greylist-max-o mLocales:Landroid/os/LocaleList;

.field private greylist-max-o mMaskFilter:Landroid/graphics/MaskFilter;

.field private greylist-max-o mNativeColorFilter:J

.field private greylist-max-r mNativePaint:J

.field private greylist-max-o mNativeShader:J

.field private blacklist mNativeXfermode:J

.field private greylist-max-o mPathEffect:Landroid/graphics/PathEffect;

.field private greylist-max-o mShader:Landroid/graphics/Shader;

.field private blacklist mShadowLayerColor:J

.field private greylist-max-o mShadowLayerDx:F

.field private greylist-max-o mShadowLayerDy:F

.field private greylist-max-o mShadowLayerRadius:F

.field private greylist-max-p mTypeface:Landroid/graphics/Typeface;

.field private greylist-max-o mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetNativeFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/Paint;->nGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sMinikinLocaleListIdCache:Ljava/util/HashMap;

    .line 124
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Paint$Style;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    .line 127
    new-array v1, v0, [Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    .line 130
    new-array v1, v0, [Landroid/graphics/Paint$Join;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    .line 133
    new-array v0, v0, [Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v5

    sput-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 684
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 685
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 701
    invoke-static {}, Landroid/graphics/Paint;->nInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 702
    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 703
    or-int/lit16 v0, p1, 0x502

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 708
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 709
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 710
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 711
    invoke-direct {p0}, Landroid/graphics/Paint;->resetElegantTextHeight()V

    .line 712
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Paint;)V
    .registers 5
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 722
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nInitWithPaint(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 723
    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 724
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 725
    return-void
.end method

.method private blacklist installXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .registers 6
    .param p1, "xfermode"    # Landroid/graphics/Xfermode;

    .line 1479
    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->runtimeColorFiltersBlenders()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1480
    instance-of v0, p1, Landroid/graphics/RuntimeXfermode;

    if-eqz v0, :cond_19

    .line 1481
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 1482
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    check-cast v2, Landroid/graphics/RuntimeXfermode;

    invoke-virtual {v2}, Landroid/graphics/RuntimeXfermode;->createNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSetXfermode(JJ)V

    .line 1483
    return-object p1

    .line 1486
    :cond_19
    instance-of v0, p1, Landroid/graphics/PorterDuffXfermode;

    if-eqz v0, :cond_23

    .line 1487
    move-object v0, p1

    check-cast v0, Landroid/graphics/PorterDuffXfermode;

    iget v0, v0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    goto :goto_25

    :cond_23
    sget v0, Landroid/graphics/PorterDuffXfermode;->DEFAULT:I

    .line 1488
    .local v0, "newMode":I
    :goto_25
    iget-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    instance-of v1, v1, Landroid/graphics/PorterDuffXfermode;

    if-eqz v1, :cond_32

    .line 1489
    iget-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    check-cast v1, Landroid/graphics/PorterDuffXfermode;

    iget v1, v1, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    goto :goto_34

    :cond_32
    sget v1, Landroid/graphics/PorterDuffXfermode;->DEFAULT:I

    .line 1490
    .local v1, "curMode":I
    :goto_34
    if-eq v0, v1, :cond_3b

    .line 1491
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0}, Landroid/graphics/Paint;->nSetXfermode(JI)V

    .line 1493
    :cond_3b
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 1494
    return-object p1
.end method

.method private static native blacklist nAddFontVariationToBuilder(JIF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nAscent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nBreakText(JLjava/lang/String;ZFI[F)I
.end method

.method private static native greylist-max-o nBreakText(J[CIIFI[F)I
.end method

.method private static native blacklist nCreateFontVariationBuilder(I)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nDescent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nEqualsForTextMeasurement(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetCharArrayBounds(J[CIIILandroid/graphics/Rect;)V
.end method

.method private static native blacklist nGetElegantTextHeight(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetEndHyphenEdit(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFillPath(JJJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetFontMetrics(JLandroid/graphics/Paint$FontMetrics;Z)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nGetFontMetricsInt(JLandroid/graphics/Paint$FontMetricsInt;Z)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nGetFontMetricsIntForText(JLjava/lang/String;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V
.end method

.method private static native blacklist nGetFontMetricsIntForText(J[CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V
.end method

.method private static native greylist-max-o nGetHinting(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetLetterSpacing(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetNativeFinalizer()J
.end method

.method private static native greylist-max-o nGetOffsetForAdvance(J[CIIIIZF)I
.end method

.method private static native greylist-max-o nGetRunAdvance(J[CIIIIZI)F
.end method

.method private static native blacklist nGetRunCharacterAdvance(J[CIIIIZI[FILandroid/graphics/RectF;)F
.end method

.method private static native blacklist nGetRunCharacterAdvance(J[CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F
.end method

.method private static native blacklist nGetStartHyphenEdit(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrikeThruPosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrikeThruThickness(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStringBounds(JLjava/lang/String;IIILandroid/graphics/Rect;)V
.end method

.method private static native greylist-max-o nGetStrokeCap(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrokeJoin(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrokeMiter(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrokeWidth(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStyle(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTextAdvances(JLjava/lang/String;IIIII[FI)F
.end method

.method private static native greylist-max-o nGetTextAdvances(J[CIIIII[FI)F
.end method

.method private static native greylist-max-o nGetTextAlign(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTextPath(JILjava/lang/String;IIFFJ)V
.end method

.method private static native greylist-max-o nGetTextPath(JI[CIIFFJ)V
.end method

.method private native greylist-max-o nGetTextRunCursor(JLjava/lang/String;IIIII)I
.end method

.method private native greylist-max-o nGetTextRunCursor(J[CIIIII)I
.end method

.method private static native greylist-max-o nGetTextScaleX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTextSize(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTextSkewX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetUnderlinePosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetUnderlineThickness(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetWordSpacing(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nHasGlyph(JILjava/lang/String;)Z
.end method

.method private static native greylist-max-o nHasShadowLayer(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nInit()J
.end method

.method private static native greylist-max-o nInitWithPaint(J)J
.end method

.method private static native greylist-max-o nReset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSet(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetAlpha(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetAntiAlias(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetColor(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetColor(JJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetColorFilter(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetDither(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetElegantTextHeight(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetEndHyphenEdit(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetFakeBoldText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetFilterBitmap(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetFontFeatureSettings(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nSetFontVariationOverride(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetHinting(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetLetterSpacing(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetLinearText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetMaskFilter(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetPathEffect(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetShader(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetShadowLayer(JFFFJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetStartHyphenEdit(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrikeThruText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeCap(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeJoin(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeMiter(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeWidth(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStyle(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetSubpixelText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextAlign(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextLocales(JLjava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextLocalesByMinikinLocaleListId(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextScaleX(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextSize(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextSkewX(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTypeface(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetUnderlineText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetWordSpacing(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetXfermode(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetXfermode(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private blacklist resetElegantTextHeight()V
    .registers 4

    .line 1945
    const-wide/32 v0, 0x10ab11dd

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1946
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetElegantTextHeight(JI)V

    goto :goto_16

    .line 1948
    :cond_10
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetElegantTextHeight(JI)V

    .line 1950
    :goto_16
    return-void
.end method

.method private greylist-max-o setClassVariablesFrom(Landroid/graphics/Paint;)V
    .registers 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 781
    iget-wide v0, p1, Landroid/graphics/Paint;->mColor:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 782
    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 783
    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 784
    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 785
    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 786
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeShader:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 787
    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 788
    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 789
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeXfermode:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeXfermode:J

    .line 791
    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 792
    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 793
    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 795
    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 796
    iget-object v0, p1, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 797
    iget-object v0, p1, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 798
    iget-object v0, p1, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 800
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerRadius:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 801
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerDx:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 802
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerDy:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 803
    iget-wide v0, p1, Landroid/graphics/Paint;->mShadowLayerColor:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    .line 804
    return-void
.end method

.method private blacklist setTypefaceWithoutWarning(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 6
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 1604
    if-nez p1, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_7

    :cond_5
    iget-wide v0, p1, Landroid/graphics/Typeface;->native_instance:J

    .line 1605
    .local v0, "typefaceNative":J
    :goto_7
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetTypeface(JJ)V

    .line 1606
    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 1607
    return-object p1
.end method

.method private greylist-max-o syncTextLocalesWithMinikin()V
    .registers 7

    .line 1850
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 1852
    .local v0, "languageTags":Ljava/lang/String;
    sget-object v1, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1853
    :try_start_9
    sget-object v2, Landroid/graphics/Paint;->sMinikinLocaleListIdCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1854
    .local v2, "minikinLocaleListId":Ljava/lang/Integer;
    if-nez v2, :cond_24

    .line 1855
    iget-wide v3, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v3, v4, v0}, Landroid/graphics/Paint;->nSetTextLocales(JLjava/lang/String;)I

    move-result v3

    .line 1856
    .local v3, "newID":I
    sget-object v4, Landroid/graphics/Paint;->sMinikinLocaleListIdCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    monitor-exit v1

    return-void

    .line 1859
    .end local v3    # "newID":I
    :cond_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_2f

    .line 1860
    iget-wide v3, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v4, v1}, Landroid/graphics/Paint;->nSetTextLocalesByMinikinLocaleListId(JI)V

    .line 1861
    return-void

    .line 1859
    .end local v2    # "minikinLocaleListId":Ljava/lang/Integer;
    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v2
.end method


# virtual methods
.method public whitelist ascent()F
    .registers 3

    .line 2332
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nAscent(J)F

    move-result v0

    return v0
.end method

.method public whitelist breakText(Ljava/lang/CharSequence;IIZF[F)I
    .registers 15
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "measureForwards"    # Z
    .param p5, "maxWidth"    # F
    .param p6, "measuredWidth"    # [F

    .line 2912
    if-eqz p1, :cond_5e

    .line 2915
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_57

    .line 2919
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    if-ne p2, p3, :cond_1b

    move v6, p5

    move-object v7, p6

    goto :goto_56

    .line 2922
    :cond_1b
    if-nez p2, :cond_2f

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_2f

    .line 2923
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    return v0

    .line 2927
    :cond_2f
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v3

    .line 2930
    .local v3, "buf":[C
    invoke-static {p1, p2, p3, v3, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2932
    if-eqz p4, :cond_45

    .line 2933
    const/4 v4, 0x0

    sub-int v5, p3, p2

    move-object v2, p0

    move v6, p5

    move-object v7, p6

    .end local p5    # "maxWidth":F
    .end local p6    # "measuredWidth":[F
    .local v6, "maxWidth":F
    .local v7, "measuredWidth":[F
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result p5

    .local p5, "result":I
    goto :goto_50

    .line 2935
    .end local v6    # "maxWidth":F
    .end local v7    # "measuredWidth":[F
    .local p5, "maxWidth":F
    .restart local p6    # "measuredWidth":[F
    :cond_45
    move v6, p5

    move-object v7, p6

    .end local p5    # "maxWidth":F
    .end local p6    # "measuredWidth":[F
    .restart local v6    # "maxWidth":F
    .restart local v7    # "measuredWidth":[F
    sub-int p5, p3, p2

    neg-int v5, p5

    const/4 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result p5

    .line 2938
    .local p5, "result":I
    :goto_50
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2939
    return p5

    .line 2919
    .end local v3    # "buf":[C
    .end local v6    # "maxWidth":F
    .end local v7    # "measuredWidth":[F
    .local p5, "maxWidth":F
    .restart local p6    # "measuredWidth":[F
    :cond_54
    move v6, p5

    move-object v7, p6

    .line 2920
    .end local p5    # "maxWidth":F
    .end local p6    # "measuredWidth":[F
    .restart local v6    # "maxWidth":F
    .restart local v7    # "measuredWidth":[F
    :goto_56
    return v1

    .line 2916
    .end local v6    # "maxWidth":F
    .end local v7    # "measuredWidth":[F
    .restart local p5    # "maxWidth":F
    .restart local p6    # "measuredWidth":[F
    :cond_57
    move v6, p5

    .end local p5    # "maxWidth":F
    .restart local v6    # "maxWidth":F
    new-instance p5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p5

    .line 2913
    .end local v6    # "maxWidth":F
    .restart local p5    # "maxWidth":F
    :cond_5e
    move v6, p5

    move-object v7, p6

    .end local p5    # "maxWidth":F
    .end local p6    # "measuredWidth":[F
    .restart local v6    # "maxWidth":F
    .restart local v7    # "measuredWidth":[F
    new-instance p5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p6, "text cannot be null"

    invoke-direct {p5, p6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p5
.end method

.method public whitelist breakText(Ljava/lang/String;ZF[F)I
    .registers 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "measureForwards"    # Z
    .param p3, "maxWidth"    # F
    .param p4, "measuredWidth"    # [F

    .line 2960
    if-eqz p1, :cond_43

    .line 2964
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2965
    return v1

    .line 2967
    :cond_a
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1c

    .line 2968
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "measureForwards":Z
    .end local p3    # "maxWidth":F
    .end local p4    # "measuredWidth":[F
    .local v4, "text":Ljava/lang/String;
    .local v5, "measureForwards":Z
    .local v6, "maxWidth":F
    .local v8, "measuredWidth":[F
    invoke-static/range {v2 .. v8}, Landroid/graphics/Paint;->nBreakText(JLjava/lang/String;ZFI[F)I

    move-result p1

    move p2, v6

    .end local v6    # "maxWidth":F
    .local p2, "maxWidth":F
    return p1

    .line 2972
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "measureForwards":Z
    .end local v8    # "measuredWidth":[F
    .restart local p1    # "text":Ljava/lang/String;
    .local p2, "measureForwards":Z
    .restart local p3    # "maxWidth":F
    .restart local p4    # "measuredWidth":[F
    :cond_1c
    move-object v4, p1

    move v5, p2

    move p2, p3

    move-object v8, p4

    .end local p1    # "text":Ljava/lang/String;
    .end local p3    # "maxWidth":F
    .end local p4    # "measuredWidth":[F
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "measureForwards":Z
    .restart local v8    # "measuredWidth":[F
    .local p2, "maxWidth":F
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    .line 2973
    .local p1, "oldSize":F
    iget p3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr p3, p1

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2974
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget p3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v6, p2, p3

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-static/range {v2 .. v8}, Landroid/graphics/Paint;->nBreakText(JLjava/lang/String;ZFI[F)I

    move-result p3

    .line 2976
    .local p3, "res":I
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2977
    if-eqz v8, :cond_42

    aget p4, v8, v1

    iget v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p4, v0

    aput p4, v8, v1

    .line 2978
    :cond_42
    return p3

    .line 2961
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "measureForwards":Z
    .end local v8    # "measuredWidth":[F
    .local p1, "text":Ljava/lang/String;
    .local p2, "measureForwards":Z
    .local p3, "maxWidth":F
    .restart local p4    # "measuredWidth":[F
    :cond_43
    move-object v4, p1

    move v5, p2

    move p2, p3

    .end local p1    # "text":Ljava/lang/String;
    .end local p3    # "maxWidth":F
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "measureForwards":Z
    .local p2, "maxWidth":F
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p3, "text cannot be null"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist breakText([CIIF[F)I
    .registers 16
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "maxWidth"    # F
    .param p5, "measuredWidth"    # [F

    .line 2869
    if-eqz p1, :cond_64

    .line 2872
    if-ltz p2, :cond_59

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v0, v1, :cond_59

    .line 2876
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    if-nez p3, :cond_18

    move-object v4, p1

    move v5, p2

    move v6, p3

    move p2, p4

    move-object v9, p5

    goto :goto_58

    .line 2879
    :cond_18
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_2b

    .line 2880
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v9, p5

    .end local p1    # "text":[C
    .end local p2    # "index":I
    .end local p3    # "count":I
    .end local p4    # "maxWidth":F
    .end local p5    # "measuredWidth":[F
    .local v4, "text":[C
    .local v5, "index":I
    .local v6, "count":I
    .local v7, "maxWidth":F
    .local v9, "measuredWidth":[F
    invoke-static/range {v2 .. v9}, Landroid/graphics/Paint;->nBreakText(J[CIIFI[F)I

    move-result p1

    move p2, v7

    .end local v7    # "maxWidth":F
    .local p2, "maxWidth":F
    return p1

    .line 2884
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .end local v9    # "measuredWidth":[F
    .restart local p1    # "text":[C
    .local p2, "index":I
    .restart local p3    # "count":I
    .restart local p4    # "maxWidth":F
    .restart local p5    # "measuredWidth":[F
    :cond_2b
    move-object v4, p1

    move v5, p2

    move v6, p3

    move p2, p4

    move-object v9, p5

    .end local p1    # "text":[C
    .end local p3    # "count":I
    .end local p4    # "maxWidth":F
    .end local p5    # "measuredWidth":[F
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    .restart local v6    # "count":I
    .restart local v9    # "measuredWidth":[F
    .local p2, "maxWidth":F
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    .line 2885
    .local p1, "oldSize":F
    iget p3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr p3, p1

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2886
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget p3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v7, p2, p3

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-static/range {v2 .. v9}, Landroid/graphics/Paint;->nBreakText(J[CIIFI[F)I

    move-result p3

    .line 2888
    .local p3, "res":I
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2889
    if-eqz v9, :cond_52

    aget p4, v9, v1

    iget p5, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p4, p5

    aput p4, v9, v1

    .line 2890
    :cond_52
    return p3

    .line 2876
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .end local v9    # "measuredWidth":[F
    .local p1, "text":[C
    .local p2, "index":I
    .local p3, "count":I
    .restart local p4    # "maxWidth":F
    .restart local p5    # "measuredWidth":[F
    :cond_53
    move-object v4, p1

    move v5, p2

    move v6, p3

    move p2, p4

    move-object v9, p5

    .line 2877
    .end local p1    # "text":[C
    .end local p3    # "count":I
    .end local p4    # "maxWidth":F
    .end local p5    # "measuredWidth":[F
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    .restart local v6    # "count":I
    .restart local v9    # "measuredWidth":[F
    .local p2, "maxWidth":F
    :goto_58
    return v1

    .line 2872
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .end local v9    # "measuredWidth":[F
    .restart local p1    # "text":[C
    .local p2, "index":I
    .restart local p3    # "count":I
    .restart local p4    # "maxWidth":F
    .restart local p5    # "measuredWidth":[F
    :cond_59
    move-object v4, p1

    move v5, p2

    move v6, p3

    move p2, p4

    move-object v9, p5

    .line 2873
    .end local p1    # "text":[C
    .end local p3    # "count":I
    .end local p4    # "maxWidth":F
    .end local p5    # "measuredWidth":[F
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    .restart local v6    # "count":I
    .restart local v9    # "measuredWidth":[F
    .local p2, "maxWidth":F
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 2870
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .end local v9    # "measuredWidth":[F
    .restart local p1    # "text":[C
    .local p2, "index":I
    .restart local p3    # "count":I
    .restart local p4    # "maxWidth":F
    .restart local p5    # "measuredWidth":[F
    :cond_64
    move-object v4, p1

    move v6, p3

    .end local p1    # "text":[C
    .end local p3    # "count":I
    .restart local v4    # "text":[C
    .restart local v6    # "count":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p3, "text cannot be null"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist clearShadowLayer()V
    .registers 3

    .line 1688
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1689
    return-void
.end method

.method public whitelist descent()F
    .registers 3

    .line 2346
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nDescent(J)F

    move-result v0

    return v0
.end method

.method public whitelist equalsForTextMeasurement(Landroid/graphics/Paint;)Z
    .registers 6
    .param p1, "other"    # Landroid/graphics/Paint;

    .line 3813
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nEqualsForTextMeasurement(JJ)Z

    move-result v0

    return v0
.end method

.method public whitelist getAlpha()I
    .registers 3

    .line 1243
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->alpha(J)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getBidiFlags()I
    .registers 2

    .line 862
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return v0
.end method

.method public whitelist getBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 1453
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    instance-of v0, v0, Landroid/graphics/PorterDuffXfermode;

    if-nez v0, :cond_b

    goto :goto_16

    .line 1456
    :cond_b
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    check-cast v0, Landroid/graphics/PorterDuffXfermode;

    iget v0, v0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    return-object v0

    .line 1454
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getColor()I
    .registers 3

    .line 1186
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->toArgb(J)I

    move-result v0

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 1415
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public whitelist getColorLong()J
    .registers 3

    .line 1200
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    return-wide v0
.end method

.method public whitelist getEndHyphenEdit()I
    .registers 3

    .line 2265
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetEndHyphenEdit(J)I

    move-result v0

    return v0
.end method

.method public whitelist getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .registers 9
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "dst"    # Landroid/graphics/Path;

    .line 1375
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nGetFillPath(JJJ)Z

    move-result v0

    return v0
.end method

.method public whitelist getFlags()I
    .registers 3

    .line 884
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetFlags(J)I

    move-result v0

    return v0
.end method

.method public whitelist getFontFeatureSettings()Ljava/lang/String;
    .registers 2

    .line 2068
    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
    .registers 5
    .param p1, "metrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 2418
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Paint;->nGetFontMetrics(JLandroid/graphics/Paint$FontMetrics;Z)F

    move-result v0

    return v0
.end method

.method public whitelist getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .registers 2

    .line 2426
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 2427
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 2428
    return-object v0
.end method

.method public whitelist getFontMetricsForLocale(Landroid/graphics/Paint$FontMetrics;)V
    .registers 5
    .param p1, "metrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 2454
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Paint;->nGetFontMetrics(JLandroid/graphics/Paint$FontMetrics;Z)F

    .line 2455
    return-void
.end method

.method public whitelist getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
    .registers 5
    .param p1, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 2664
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Paint;->nGetFontMetricsInt(JLandroid/graphics/Paint$FontMetricsInt;Z)I

    move-result v0

    return v0
.end method

.method public whitelist getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .registers 2

    .line 2668
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 2669
    .local v0, "fm":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2670
    return-object v0
.end method

.method public whitelist getFontMetricsInt(Ljava/lang/CharSequence;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    .registers 17
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextCount"    # I
    .param p6, "isRtl"    # Z
    .param p7, "outMetrics"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 2481
    move-object/from16 v8, p7

    if-eqz p1, :cond_8d

    .line 2484
    if-ltz p2, :cond_84

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_84

    .line 2487
    if-ltz p3, :cond_7c

    add-int v0, p2, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_7c

    .line 2490
    if-ltz p4, :cond_74

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p4, v0, :cond_74

    .line 2493
    if-ltz p5, :cond_6c

    add-int v0, p4, p5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_6c

    .line 2496
    if-eqz v8, :cond_63

    .line 2500
    if-nez p3, :cond_30

    .line 2501
    invoke-virtual {p0, v8}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2502
    return-void

    .line 2505
    :cond_30
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_42

    .line 2506
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetFontMetricsIntForText(JLjava/lang/String;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_5d

    .line 2509
    :cond_42
    invoke-static {p5}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 2511
    .local v2, "buf":[C
    add-int v0, p4, p5

    const/4 v1, 0x0

    :try_start_49
    invoke-static {p1, p4, v0, v2, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2512
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    sub-int v3, p2, p4

    const/4 v5, 0x0

    move v4, p3

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetFontMetricsIntForText(J[CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_5e

    .line 2515
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2516
    nop

    .line 2519
    .end local v2    # "buf":[C
    :goto_5d
    return-void

    .line 2515
    .restart local v2    # "buf":[C
    :catchall_5e
    move-exception v0

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2516
    throw v0

    .line 2497
    .end local v2    # "buf":[C
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outMetrics must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2494
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctxCount argument is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2491
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctxStart argument is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2488
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count argument is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2485
    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start argument is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2482
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFontMetricsInt([CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    .registers 17
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextCount"    # I
    .param p6, "isRtl"    # Z
    .param p7, "outMetrics"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 2543
    move-object/from16 v8, p7

    if-eqz p1, :cond_5a

    .line 2546
    if-ltz p2, :cond_51

    array-length v0, p1

    if-ge p2, v0, :cond_51

    .line 2549
    if-ltz p3, :cond_49

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_49

    .line 2552
    if-ltz p4, :cond_41

    array-length v0, p1

    if-ge p4, v0, :cond_41

    .line 2555
    if-ltz p5, :cond_39

    add-int v0, p4, p5

    array-length v1, p1

    if-gt v0, v1, :cond_39

    .line 2558
    if-eqz v8, :cond_30

    .line 2562
    if-nez p3, :cond_24

    .line 2563
    invoke-virtual {p0, v8}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2564
    return-void

    .line 2567
    :cond_24
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetFontMetricsIntForText(J[CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    .line 2569
    return-void

    .line 2559
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outMetrics must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2556
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctxCount argument is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2553
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctxStart argument is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2550
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count argument is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2547
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start argument is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2544
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFontMetricsIntForLocale(Landroid/graphics/Paint$FontMetricsInt;)V
    .registers 5
    .param p1, "metrics"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 2696
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Paint;->nGetFontMetricsInt(JLandroid/graphics/Paint$FontMetricsInt;Z)I

    .line 2697
    return-void
.end method

.method public whitelist getFontSpacing()F
    .registers 2

    .line 2723
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public blacklist getFontVariationOverride()Ljava/lang/String;
    .registers 2

    .line 2241
    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationOverride:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFontVariationSettings()Ljava/lang/String;
    .registers 2

    .line 2102
    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHinting()I
    .registers 3

    .line 901
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetHinting(J)I

    move-result v0

    return v0
.end method

.method public whitelist getLetterSpacing()F
    .registers 3

    .line 2018
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetLetterSpacing(J)F

    move-result v0

    return v0
.end method

.method public whitelist getMaskFilter()Landroid/graphics/MaskFilter;
    .registers 2

    .line 1547
    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public declared-synchronized greylist getNativeInstance()J
    .registers 13

    monitor-enter p0

    .line 832
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v0

    .line 833
    .local v0, "filter":Z
    iget-object v1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_d

    move-wide v4, v2

    goto :goto_13

    :cond_d
    iget-object v1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v4

    .line 834
    .local v4, "newNativeShader":J
    :goto_13
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativeShader:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_22

    .line 835
    iput-wide v4, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 836
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v8, p0, Landroid/graphics/Paint;->mNativeShader:J

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Paint;->nSetShader(JJ)J

    .line 838
    .end local p0    # "this":Landroid/graphics/Paint;
    :cond_22
    iget-object v1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v1, :cond_27

    :goto_26
    goto :goto_2e

    :cond_27
    iget-object v1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v2

    goto :goto_26

    .line 839
    .local v2, "newNativeColorFilter":J
    :goto_2e
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_3d

    .line 840
    iput-wide v2, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    .line 841
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v8, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Paint;->nSetColorFilter(JJ)J

    .line 843
    :cond_3d
    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->runtimeColorFiltersBlenders()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 844
    iget-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    instance-of v1, v1, Landroid/graphics/RuntimeXfermode;

    if-eqz v1, :cond_60

    .line 845
    iget-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    check-cast v1, Landroid/graphics/RuntimeXfermode;

    invoke-virtual {v1}, Landroid/graphics/RuntimeXfermode;->createNativeInstance()J

    move-result-wide v6

    .line 846
    .local v6, "newNativeXfermode":J
    iget-wide v8, p0, Landroid/graphics/Paint;->mNativeXfermode:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_60

    .line 847
    iput-wide v6, p0, Landroid/graphics/Paint;->mNativeXfermode:J

    .line 848
    iget-wide v8, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v10, p0, Landroid/graphics/Paint;->mNativeXfermode:J

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Paint;->nSetXfermode(JJ)V

    .line 852
    .end local v6    # "newNativeXfermode":J
    :cond_60
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativePaint:J
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_64

    monitor-exit p0

    return-wide v6

    .line 831
    .end local v0    # "filter":Z
    .end local v2    # "newNativeColorFilter":J
    .end local v4    # "newNativeShader":J
    :catchall_64
    move-exception v0

    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v0
.end method

.method public whitelist getOffsetForAdvance(Ljava/lang/CharSequence;IIIIZF)I
    .registers 17
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advance"    # F

    .line 3789
    if-eqz p1, :cond_3b

    .line 3792
    or-int v0, p4, p2

    or-int/2addr v0, p3

    or-int/2addr v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    .line 3794
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p5

    or-int/2addr v0, v1

    if-ltz v0, :cond_35

    .line 3798
    sub-int v0, p5, p4

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 3799
    .local v2, "buf":[C
    const/4 v0, 0x0

    invoke-static {p1, p4, p5, v2, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3800
    sub-int v3, p2, p4

    sub-int v4, p3, p4

    const/4 v5, 0x0

    sub-int v6, p5, p4

    move-object v1, p0

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Paint;->getOffsetForAdvance([CIIIIZF)I

    move-result v0

    add-int/2addr v0, p4

    .line 3802
    .local v0, "result":I
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3803
    return v0

    .line 3795
    .end local v0    # "result":I
    .end local v2    # "buf":[C
    :cond_35
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3790
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getOffsetForAdvance([CIIIIZF)I
    .registers 17
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advance"    # F

    .line 3762
    if-eqz p1, :cond_29

    .line 3765
    or-int v0, p4, p2

    or-int/2addr v0, p3

    or-int/2addr v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p5

    or-int/2addr v0, v1

    if-ltz v0, :cond_23

    .line 3771
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetOffsetForAdvance(J[CIIIIZF)I

    move-result v0

    return v0

    .line 3768
    :cond_23
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3763
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPathEffect()Landroid/graphics/PathEffect;
    .registers 2

    .line 1519
    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public greylist getRasterizer()Landroid/graphics/Rasterizer;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1622
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F
    .registers 19
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I

    .line 3534
    move v0, p4

    move/from16 v1, p5

    if-eqz p1, :cond_47

    .line 3537
    or-int v2, v0, p2

    or-int v2, v2, p7

    or-int/2addr v2, p3

    or-int/2addr v2, v1

    sub-int v3, p2, v0

    or-int/2addr v2, v3

    sub-int v3, p7, p2

    or-int/2addr v2, v3

    sub-int v3, p3, p7

    or-int/2addr v2, v3

    sub-int v3, v1, p3

    or-int/2addr v2, v3

    .line 3539
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v1

    or-int/2addr v2, v3

    if-ltz v2, :cond_41

    .line 3542
    if-ne p3, p2, :cond_23

    .line 3543
    const/4 v2, 0x0

    return v2

    .line 3546
    :cond_23
    sub-int v2, v1, v0

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v4

    .line 3547
    .local v4, "buf":[C
    const/4 v2, 0x0

    invoke-static {p1, p4, v1, v4, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3548
    sub-int v5, p2, v0

    sub-int v6, p3, v0

    sub-int v8, v1, v0

    sub-int v10, p7, v0

    const/4 v7, 0x0

    move-object v3, p0

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Paint;->getRunAdvance([CIIIIZI)F

    move-result v2

    .line 3550
    .local v2, "result":F
    invoke-static {v4}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3551
    return v2

    .line 3540
    .end local v2    # "result":F
    .end local v4    # "buf":[C
    :cond_41
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 3535
    :cond_47
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getRunAdvance([CIIIIZI)F
    .registers 17
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I

    .line 3504
    if-eqz p1, :cond_32

    .line 3507
    or-int v0, p4, p2

    or-int v0, v0, p7

    or-int/2addr v0, p3

    or-int/2addr v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p7, p2

    or-int/2addr v0, v1

    sub-int v1, p3, p7

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p5

    or-int/2addr v0, v1

    if-ltz v0, :cond_2c

    .line 3512
    if-ne p3, p2, :cond_1d

    .line 3513
    const/4 v0, 0x0

    return v0

    .line 3516
    :cond_1d
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetRunAdvance(J[CIIIIZI)F

    move-result v0

    return v0

    .line 3510
    :cond_2c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3505
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRunCharacterAdvance(Ljava/lang/CharSequence;IIIIZI[FI)F
    .registers 22
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I
    .param p8, "advances"    # [F
    .param p9, "advancesIndex"    # I

    .line 3670
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/graphics/Paint;->getRunCharacterAdvance(Ljava/lang/CharSequence;IIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result v10

    return v10
.end method

.method public blacklist getRunCharacterAdvance(Ljava/lang/CharSequence;IIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F
    .registers 30
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I
    .param p8, "advances"    # [F
    .param p9, "advancesIndex"    # I
    .param p10, "drawBounds"    # Landroid/graphics/RectF;
    .param p11, "runInfo"    # Landroid/graphics/Paint$RunInfo;

    .line 3695
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move-object/from16 v14, p8

    move/from16 v15, p9

    if-eqz v0, :cond_10f

    .line 3698
    const-string v6, ", "

    if-ltz v3, :cond_e0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-gt v4, v7, :cond_e0

    .line 3703
    const-string v7, " must be in "

    if-lt v1, v3, :cond_af

    if-lt v4, v2, :cond_af

    .line 3708
    if-lt v5, v1, :cond_86

    if-lt v2, v5, :cond_86

    .line 3713
    if-eqz v14, :cond_5f

    array-length v6, v14

    sub-int v7, v15, v1

    add-int/2addr v7, v2

    if-lt v6, v7, :cond_2f

    goto :goto_5f

    .line 3714
    :cond_2f
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Given array doesn\'t have enough space to receive the result, advances.length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v14

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " advanceIndex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " needed space: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, v5, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3719
    :cond_5f
    :goto_5f
    if-ne v2, v1, :cond_63

    .line 3720
    const/4 v6, 0x0

    return v6

    .line 3723
    :cond_63
    sub-int v6, v4, v3

    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v7

    .line 3724
    .local v7, "buf":[C
    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v7, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3725
    sub-int v8, v1, v3

    sub-int v9, v2, v3

    sub-int v11, v4, v3

    sub-int v13, v5, v3

    const/4 v10, 0x0

    move-object/from16 v6, p0

    move/from16 v12, p6

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    invoke-virtual/range {v6 .. v17}, Landroid/graphics/Paint;->getRunCharacterAdvance([CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result v8

    .line 3728
    .local v8, "result":F
    invoke-static {v7}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3729
    return v8

    .line 3709
    .end local v7    # "buf":[C
    .end local v8    # "result":F
    :cond_86
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid offset position: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3704
    :cond_af
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid start/end range: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3699
    :cond_e0
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid Context Range: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " must be in 0, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3700
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3696
    :cond_10f
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "text cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public whitelist getRunCharacterAdvance([CIIIIZI[FI)F
    .registers 22
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I
    .param p8, "advances"    # [F
    .param p9, "advancesIndex"    # I

    .line 3583
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/graphics/Paint;->getRunCharacterAdvance([CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result v10

    return v10
.end method

.method public blacklist getRunCharacterAdvance([CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F
    .registers 25
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I
    .param p8, "advances"    # [F
    .param p9, "advancesIndex"    # I
    .param p10, "drawBounds"    # Landroid/graphics/RectF;
    .param p11, "runInfo"    # Landroid/graphics/Paint$RunInfo;

    .line 3611
    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v12, p11

    if-eqz p1, :cond_f7

    .line 3614
    const-string v0, ", "

    if-ltz v5, :cond_cb

    array-length v1, p1

    if-gt v6, v1, :cond_cb

    .line 3619
    const-string v1, " must be in "

    if-lt p2, v5, :cond_9a

    if-lt v6, v4, :cond_9a

    .line 3624
    if-lt v8, p2, :cond_71

    if-lt v4, v8, :cond_71

    .line 3629
    if-eqz v9, :cond_5a

    array-length v0, v9

    sub-int v1, v10, p2

    add-int/2addr v1, v4

    if-lt v0, v1, :cond_2a

    goto :goto_5a

    .line 3630
    :cond_2a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given array doesn\'t have enough space to receive the result, advances.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " advanceIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needed space: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, v8, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3635
    :cond_5a
    :goto_5a
    if-ne v4, p2, :cond_64

    .line 3636
    if-eqz v12, :cond_62

    .line 3637
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/graphics/Paint$RunInfo;->setClusterCount(I)V

    .line 3639
    :cond_62
    const/4 v0, 0x0

    return v0

    .line 3642
    :cond_64
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move/from16 v7, p6

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v12}, Landroid/graphics/Paint;->nGetRunCharacterAdvance(J[CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result v0

    return v0

    .line 3625
    :cond_71
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid offset position: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3620
    :cond_9a
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid start/end range: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3615
    :cond_cb
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid Context Range: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " must be in 0, "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v7, p1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3612
    :cond_f7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getShader()Landroid/graphics/Shader;
    .registers 2

    .line 1384
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public whitelist getShadowLayerColor()I
    .registers 3

    .line 1734
    iget-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->toArgb(J)I

    move-result v0

    return v0
.end method

.method public whitelist getShadowLayerColorLong()J
    .registers 3

    .line 1746
    iget-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    return-wide v0
.end method

.method public whitelist getShadowLayerDx()F
    .registers 2

    .line 1716
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    return v0
.end method

.method public whitelist getShadowLayerDy()F
    .registers 2

    .line 1725
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    return v0
.end method

.method public whitelist getShadowLayerRadius()F
    .registers 2

    .line 1707
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    return v0
.end method

.method public whitelist getStartHyphenEdit()I
    .registers 3

    .line 2253
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStartHyphenEdit(J)I

    move-result v0

    return v0
.end method

.method public whitelist getStrikeThruPosition()F
    .registers 3

    .line 1080
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrikeThruPosition(J)F

    move-result v0

    return v0
.end method

.method public whitelist getStrikeThruThickness()F
    .registers 3

    .line 1092
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrikeThruThickness(J)F

    move-result v0

    return v0
.end method

.method public whitelist getStrokeCap()Landroid/graphics/Paint$Cap;
    .registers 4

    .line 1331
    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStrokeCap(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getStrokeJoin()Landroid/graphics/Paint$Join;
    .registers 4

    .line 1350
    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStrokeJoin(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getStrokeMiter()F
    .registers 3

    .line 1309
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeMiter(J)F

    move-result v0

    return v0
.end method

.method public whitelist getStrokeWidth()F
    .registers 3

    .line 1286
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeWidth(J)F

    move-result v0

    return v0
.end method

.method public whitelist getStyle()Landroid/graphics/Paint$Style;
    .registers 4

    .line 1162
    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStyle(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getTextAlign()Landroid/graphics/Paint$Align;
    .registers 4

    .line 1758
    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetTextAlign(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 3414
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_2b

    .line 3417
    if-eqz p4, :cond_22

    .line 3420
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 3421
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3422
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2, p4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 3423
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3424
    return-void

    .line 3418
    .end local v0    # "buf":[C
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3415
    :cond_2b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .registers 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 3389
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_26

    .line 3392
    if-eqz p4, :cond_1b

    .line 3395
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v6, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .end local p4    # "bounds":Landroid/graphics/Rect;
    .local v3, "text":Ljava/lang/String;
    .local v4, "start":I
    .local v5, "end":I
    .local v7, "bounds":Landroid/graphics/Rect;
    invoke-static/range {v1 .. v7}, Landroid/graphics/Paint;->nGetStringBounds(JLjava/lang/String;IIILandroid/graphics/Rect;)V

    .line 3396
    return-void

    .line 3393
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .restart local p1    # "text":Ljava/lang/String;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    .restart local p4    # "bounds":Landroid/graphics/Rect;
    :cond_1b
    move-object v3, p1

    move v4, p2

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .restart local v3    # "text":Ljava/lang/String;
    .restart local v4    # "start":I
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "need bounds Rect"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3390
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "start":I
    .restart local p1    # "text":Ljava/lang/String;
    .restart local p2    # "start":I
    :cond_26
    move-object v3, p1

    .end local p1    # "text":Ljava/lang/String;
    .restart local v3    # "text":Ljava/lang/String;
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist getTextBounds([CIILandroid/graphics/Rect;)V
    .registers 14
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 3436
    or-int v0, p2, p3

    if-ltz v0, :cond_22

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_22

    .line 3439
    if-eqz p4, :cond_17

    .line 3442
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    .end local p1    # "text":[C
    .end local p2    # "index":I
    .end local p3    # "count":I
    .end local p4    # "bounds":Landroid/graphics/Rect;
    .local v4, "text":[C
    .local v5, "index":I
    .local v6, "count":I
    .local v8, "bounds":Landroid/graphics/Rect;
    invoke-static/range {v2 .. v8}, Landroid/graphics/Paint;->nGetCharArrayBounds(J[CIIILandroid/graphics/Rect;)V

    .line 3444
    return-void

    .line 3440
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .end local v8    # "bounds":Landroid/graphics/Rect;
    .restart local p1    # "text":[C
    .restart local p2    # "index":I
    .restart local p3    # "count":I
    .restart local p4    # "bounds":Landroid/graphics/Rect;
    :cond_17
    move-object v4, p1

    move v5, p2

    .end local p1    # "text":[C
    .end local p2    # "index":I
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "need bounds Rect"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3436
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .restart local p1    # "text":[C
    .restart local p2    # "index":I
    :cond_22
    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    .line 3437
    .end local p1    # "text":[C
    .end local p2    # "index":I
    .end local p3    # "count":I
    .end local p4    # "bounds":Landroid/graphics/Rect;
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    .restart local v6    # "count":I
    .restart local v8    # "bounds":Landroid/graphics/Rect;
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist getTextLocale()Ljava/util/Locale;
    .registers 3

    .line 1781
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTextLocales()Landroid/os/LocaleList;
    .registers 2

    .line 1791
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
    .registers 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "path"    # Landroid/graphics/Path;

    .line 3371
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_1f

    .line 3374
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v3, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v9

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextPath(JILjava/lang/String;IIFFJ)V

    .line 3375
    return-void

    .line 3372
    :cond_1f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getTextPath([CIIFFLandroid/graphics/Path;)V
    .registers 18
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "path"    # Landroid/graphics/Path;

    .line 3351
    or-int v0, p2, p3

    if-ltz v0, :cond_1b

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1b

    .line 3354
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v3, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v9

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextPath(JI[CIIFFJ)V

    .line 3355
    return-void

    .line 3352
    :cond_1b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getTextRunAdvances([CIIIIZ[FI)F
    .registers 20
    .param p1, "chars"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advances"    # [F
    .param p8, "advancesIndex"    # I

    .line 3175
    move-object/from16 v8, p7

    if-eqz p1, :cond_8a

    .line 3178
    or-int v0, p2, p3

    or-int/2addr v0, p4

    or-int v0, v0, p5

    or-int v0, v0, p8

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    add-int v1, p4, p5

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    array-length v1, p1

    add-int v2, p4, p5

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 3182
    if-nez v8, :cond_20

    const/4 v1, 0x0

    goto :goto_24

    .line 3183
    :cond_20
    array-length v1, v8

    add-int v2, p8, p3

    sub-int/2addr v1, v2

    :goto_24
    or-int/2addr v0, v1

    if-ltz v0, :cond_84

    .line 3187
    array-length v0, p1

    if-eqz v0, :cond_82

    if-nez p3, :cond_2e

    goto/16 :goto_82

    .line 3190
    :cond_2e
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-nez v0, :cond_49

    .line 3191
    move v3, v1

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 3192
    if-eqz p6, :cond_3b

    move v7, v3

    goto :goto_3c

    :cond_3b
    move v7, v2

    .line 3191
    :goto_3c
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result v0

    return v0

    .line 3196
    :cond_49
    move v3, v1

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    .line 3197
    .local v10, "oldSize":F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v10

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3198
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 3199
    if-eqz p6, :cond_5a

    move v7, v3

    goto :goto_5b

    :cond_5a
    move v7, v2

    .line 3198
    :goto_5b
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result v0

    .line 3200
    .local v0, "res":F
    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3202
    if-eqz p7, :cond_7e

    .line 3203
    move/from16 v1, p8

    .local v1, "i":I
    add-int v2, v1, p3

    .local v2, "e":I
    :goto_72
    if-ge v1, v2, :cond_7e

    .line 3204
    aget v3, p7, v1

    iget v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v3, v4

    aput v3, p7, v1

    .line 3203
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 3207
    .end local v1    # "i":I
    .end local v2    # "e":I
    :cond_7e
    iget v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v0

    return v1

    .line 3188
    .end local v0    # "res":F
    .end local v10    # "oldSize":F
    :cond_82
    :goto_82
    const/4 v0, 0x0

    return v0

    .line 3184
    :cond_84
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3176
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTextRunCursor(Ljava/lang/CharSequence;IIZII)I
    .registers 15
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "contextStart"    # I
    .param p3, "contextEnd"    # I
    .param p4, "isRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .line 3278
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_45

    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_45

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_11

    move v4, p4

    move v6, p6

    move p4, p3

    move p3, p2

    goto :goto_49

    .line 3283
    :cond_11
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_25

    .line 3284
    move-object v1, p1

    check-cast v1, Landroid/text/GraphicsOperations;

    move-object v7, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p2    # "contextStart":I
    .end local p3    # "contextEnd":I
    .end local p4    # "isRtl":Z
    .end local p5    # "offset":I
    .end local p6    # "cursorOpt":I
    .local v2, "contextStart":I
    .local v3, "contextEnd":I
    .local v4, "isRtl":Z
    .local v5, "offset":I
    .local v6, "cursorOpt":I
    invoke-interface/range {v1 .. v7}, Landroid/text/GraphicsOperations;->getTextRunCursor(IIZIILandroid/graphics/Paint;)I

    move-result p2

    move p3, v2

    move p4, v3

    .end local v2    # "contextStart":I
    .end local v3    # "contextEnd":I
    .end local v5    # "offset":I
    .local p3, "contextStart":I
    .local p4, "contextEnd":I
    .restart local p5    # "offset":I
    return p2

    .line 3288
    .end local v4    # "isRtl":Z
    .end local v6    # "cursorOpt":I
    .restart local p2    # "contextStart":I
    .local p3, "contextEnd":I
    .local p4, "isRtl":Z
    .restart local p6    # "cursorOpt":I
    :cond_25
    move v4, p4

    move v6, p6

    move p4, p3

    move p3, p2

    .end local p2    # "contextStart":I
    .end local p6    # "cursorOpt":I
    .restart local v4    # "isRtl":Z
    .restart local v6    # "cursorOpt":I
    .local p3, "contextStart":I
    .local p4, "contextEnd":I
    sub-int v3, p4, p3

    .line 3289
    .local v3, "contextLen":I
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 3290
    .local v1, "buf":[C
    const/4 p2, 0x0

    invoke-static {p1, p3, p4, v1, p2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3291
    const/4 v2, 0x0

    sub-int v5, p5, p3

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result p2

    .line 3292
    .local p2, "relPos":I
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3293
    const/4 p6, -0x1

    if-ne p2, p6, :cond_42

    goto :goto_44

    :cond_42
    add-int p6, p2, p3

    :goto_44
    return p6

    .line 3278
    .end local v1    # "buf":[C
    .end local v3    # "contextLen":I
    .end local v4    # "isRtl":Z
    .end local v6    # "cursorOpt":I
    .local p2, "contextStart":I
    .local p3, "contextEnd":I
    .local p4, "isRtl":Z
    .restart local p6    # "cursorOpt":I
    :cond_45
    move v4, p4

    move v6, p6

    move p4, p3

    move p3, p2

    .line 3280
    .end local p2    # "contextStart":I
    .end local p6    # "cursorOpt":I
    .restart local v4    # "isRtl":Z
    .restart local v6    # "cursorOpt":I
    .local p3, "contextStart":I
    .local p4, "contextEnd":I
    :goto_49
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v5, p5

    .end local p3    # "contextStart":I
    .end local p4    # "contextEnd":I
    .end local p5    # "offset":I
    .restart local v2    # "contextStart":I
    .local v3, "contextEnd":I
    .restart local v5    # "offset":I
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/String;IIZII)I

    move-result p2

    return p2
.end method

.method public blacklist getTextRunCursor(Ljava/lang/String;IIZII)I
    .registers 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "contextStart"    # I
    .param p3, "contextEnd"    # I
    .param p4, "isRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .line 3326
    or-int v0, p2, p3

    or-int/2addr v0, p5

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, p3, p5

    or-int/2addr v0, v1

    .line 3328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    or-int/2addr v0, p6

    if-ltz v0, :cond_27

    const/4 v0, 0x4

    if-gt p6, v0, :cond_27

    .line 3333
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 3334
    nop

    .line 3333
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/graphics/Paint;->nGetTextRunCursor(JLjava/lang/String;IIIII)I

    move-result v1

    return v1

    .line 3330
    :cond_27
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getTextRunCursor([CIIZII)I
    .registers 17
    .param p1, "text"    # [C
    .param p2, "contextStart"    # I
    .param p3, "contextLength"    # I
    .param p4, "isRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .line 3237
    move/from16 v8, p6

    add-int v9, p2, p3

    .line 3238
    .local v9, "contextEnd":I
    or-int v0, p2, v9

    or-int/2addr v0, p5

    sub-int v1, v9, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, v9, p5

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, v9

    or-int/2addr v0, v1

    or-int/2addr v0, v8

    if-ltz v0, :cond_27

    const/4 v0, 0x4

    if-gt v8, v0, :cond_27

    .line 3245
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 3246
    nop

    .line 3245
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Landroid/graphics/Paint;->nGetTextRunCursor(J[CIIIII)I

    move-result v1

    return v1

    .line 3242
    :cond_27
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getTextScaleX()F
    .registers 3

    .line 1977
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextScaleX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTextSize()F
    .registers 3

    .line 1958
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSize(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTextSkewX()F
    .registers 3

    .line 1998
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSkewX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTextWidths(Ljava/lang/CharSequence;II[F)I
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    .line 3038
    if-eqz p1, :cond_68

    .line 3041
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_62

    .line 3044
    sub-int v0, p3, p2

    array-length v1, p4

    if-gt v0, v1, :cond_5c

    .line 3048
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    if-ne p2, p3, :cond_1e

    goto :goto_5b

    .line 3051
    :cond_1e
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 3052
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0

    .line 3054
    :cond_2a
    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_52

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_33

    goto :goto_52

    .line 3058
    :cond_33
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_3f

    .line 3059
    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    invoke-interface {v0, p2, p3, p4, p0}, Landroid/text/GraphicsOperations;->getTextWidths(II[FLandroid/graphics/Paint;)I

    move-result v0

    return v0

    .line 3063
    :cond_3f
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 3064
    .local v0, "buf":[C
    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3065
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2, p4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 3066
    .local v1, "result":I
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3067
    return v1

    .line 3056
    .end local v0    # "buf":[C
    .end local v1    # "result":I
    :cond_52
    :goto_52
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0

    .line 3049
    :cond_5b
    :goto_5b
    return v1

    .line 3045
    :cond_5c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3042
    :cond_62
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3039
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTextWidths(Ljava/lang/String;II[F)I
    .registers 17
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    .line 3081
    move-object/from16 v8, p4

    if-eqz p1, :cond_88

    .line 3084
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_82

    .line 3087
    sub-int v0, p3, p2

    array-length v1, v8

    if-gt v0, v1, :cond_7c

    .line 3091
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7a

    if-ne p2, p3, :cond_1f

    goto :goto_7a

    .line 3094
    :cond_1f
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v10

    .line 3095
    .local v10, "oldFlag":I
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3097
    :try_start_2c
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_43

    .line 3098
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    move v5, p2

    move v6, p3

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_75

    .line 3099
    sub-int v0, p3, p2

    .line 3111
    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3099
    return v0

    .line 3102
    :cond_43
    :try_start_43
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    move v11, v0

    .line 3103
    .local v11, "oldSize":F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v11

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3104
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    move v5, p2

    move v6, p3

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v8, p4

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    .line 3105
    invoke-virtual {p0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_61
    sub-int v1, p3, p2

    if-ge v0, v1, :cond_6f

    .line 3107
    aget v1, p4, v0

    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, p4, v0
    :try_end_6c
    .catchall {:try_start_43 .. :try_end_6c} :catchall_75

    .line 3106
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 3109
    .end local v0    # "i":I
    :cond_6f
    sub-int v0, p3, p2

    .line 3111
    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3109
    return v0

    .line 3111
    .end local v11    # "oldSize":F
    :catchall_75
    move-exception v0

    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3112
    throw v0

    .line 3092
    .end local v10    # "oldFlag":I
    :cond_7a
    :goto_7a
    const/4 v0, 0x0

    return v0

    .line 3088
    :cond_7c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3085
    :cond_82
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3082
    :cond_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTextWidths(Ljava/lang/String;[F)I
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "widths"    # [F

    .line 3124
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0
.end method

.method public whitelist getTextWidths([CII[F)I
    .registers 17
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "widths"    # [F

    .line 2993
    move-object/from16 v8, p4

    if-eqz p1, :cond_75

    .line 2996
    or-int v0, p2, p3

    if-ltz v0, :cond_6f

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_6f

    array-length v0, v8

    if-gt p3, v0, :cond_6f

    .line 3001
    array-length v0, p1

    if-eqz v0, :cond_6d

    if-nez p3, :cond_16

    goto :goto_6d

    .line 3004
    :cond_16
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v10

    .line 3005
    .local v10, "oldFlag":I
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3007
    :try_start_23
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_39

    .line 3008
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    move v5, p2

    move v6, p3

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_68

    .line 3010
    nop

    .line 3022
    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3010
    return p3

    .line 3013
    :cond_39
    :try_start_39
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    move v11, v0

    .line 3014
    .local v11, "oldSize":F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v11

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3015
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    move v5, p2

    move v6, p3

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v8, p4

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    .line 3016
    invoke-virtual {p0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3017
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_57
    if-ge v0, p3, :cond_63

    .line 3018
    aget v1, p4, v0

    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, p4, v0
    :try_end_60
    .catchall {:try_start_39 .. :try_end_60} :catchall_68

    .line 3017
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 3020
    .end local v0    # "i":I
    :cond_63
    nop

    .line 3022
    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3020
    return p3

    .line 3022
    .end local v11    # "oldSize":F
    :catchall_68
    move-exception v0

    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3023
    throw v0

    .line 3002
    .end local v10    # "oldFlag":I
    :cond_6d
    :goto_6d
    const/4 v0, 0x0

    return v0

    .line 2998
    :cond_6f
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2994
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTypeface()Landroid/graphics/Typeface;
    .registers 2

    .line 1579
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public whitelist getUnderlinePosition()F
    .registers 3

    .line 1027
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetUnderlinePosition(J)F

    move-result v0

    return v0
.end method

.method public whitelist getUnderlineThickness()F
    .registers 3

    .line 1039
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetUnderlineThickness(J)F

    move-result v0

    return v0
.end method

.method public whitelist getWordSpacing()F
    .registers 3

    .line 2041
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetWordSpacing(J)F

    move-result v0

    return v0
.end method

.method public whitelist getXfermode()Landroid/graphics/Xfermode;
    .registers 2

    .line 1442
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public whitelist hasGlyph(Ljava/lang/String;)Z
    .registers 5
    .param p1, "string"    # Ljava/lang/String;

    .line 3463
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Paint;->nHasGlyph(JILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasShadowLayer()Z
    .registers 3

    .line 1698
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nHasShadowLayer(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist isAntiAlias()Z
    .registers 3

    .line 921
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public final whitelist isDither()Z
    .registers 2

    .line 947
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isElegantTextHeight()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1879
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetElegantTextHeight(J)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public final whitelist isFakeBoldText()Z
    .registers 2

    .line 1114
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final whitelist isFilterBitmap()Z
    .registers 2

    .line 1137
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final whitelist isLinearText()Z
    .registers 2

    .line 970
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final whitelist isStrikeThruText()Z
    .registers 2

    .line 1064
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final whitelist isSubpixelText()Z
    .registers 2

    .line 989
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final whitelist isUnderlineText()Z
    .registers 2

    .line 1011
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist measureText(Ljava/lang/CharSequence;II)F
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 2824
    if-eqz p1, :cond_5e

    .line 2827
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_58

    .line 2831
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_56

    if-ne p2, p3, :cond_18

    goto :goto_56

    .line 2834
    :cond_18
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 2835
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0

    .line 2837
    :cond_24
    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_4d

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_2d

    goto :goto_4d

    .line 2841
    :cond_2d
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_39

    .line 2842
    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    invoke-interface {v0, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    move-result v0

    return v0

    .line 2845
    :cond_39
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 2846
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2847
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 2848
    .local v1, "result":F
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2849
    return v1

    .line 2839
    .end local v0    # "buf":[C
    .end local v1    # "result":F
    :cond_4d
    :goto_4d
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0

    .line 2832
    :cond_56
    :goto_56
    const/4 v0, 0x0

    return v0

    .line 2828
    :cond_58
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2825
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist measureText(Ljava/lang/String;)F
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .line 2809
    if-eqz p1, :cond_c

    .line 2812
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0

    .line 2810
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist measureText(Ljava/lang/String;II)F
    .registers 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 2774
    if-eqz p1, :cond_87

    .line 2777
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_80

    .line 2781
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7b

    if-ne p2, p3, :cond_1c

    move-object v4, p1

    move v5, p2

    move v6, p3

    goto/16 :goto_7e

    .line 2784
    :cond_1c
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    .line 2785
    .local v1, "oldFlag":I
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2787
    :try_start_29
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_46

    .line 2788
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_72

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, p2

    move v8, p3

    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .local v4, "text":Ljava/lang/String;
    .local v5, "start":I
    .local v6, "end":I
    :try_start_38
    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_6f

    double-to-float p1, p1

    .line 2798
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2788
    return p1

    .line 2791
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .restart local p1    # "text":Ljava/lang/String;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    :cond_46
    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "start":I
    .restart local v6    # "end":I
    :try_start_49
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    .line 2792
    .local p1, "oldSize":F
    iget p2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2793
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, v5

    move v8, v6

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    move-result p2

    .line 2795
    .local p2, "w":F
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2796
    iget p3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p3, p2

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2
    :try_end_6a
    .catchall {:try_start_49 .. :try_end_6a} :catchall_6f

    double-to-float p3, v2

    .line 2798
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2796
    return p3

    .line 2798
    .end local p1    # "oldSize":F
    .end local p2    # "w":F
    :catchall_6f
    move-exception v0

    move-object p1, v0

    goto :goto_77

    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .local p1, "text":Ljava/lang/String;
    .local p2, "start":I
    .restart local p3    # "end":I
    :catchall_72
    move-exception v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object p1, v0

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "start":I
    .restart local v6    # "end":I
    :goto_77
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2799
    throw p1

    .line 2781
    .end local v1    # "oldFlag":I
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .restart local p1    # "text":Ljava/lang/String;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    :cond_7b
    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 2782
    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "start":I
    .restart local v6    # "end":I
    :goto_7e
    const/4 p1, 0x0

    return p1

    .line 2778
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .restart local p1    # "text":Ljava/lang/String;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    :cond_80
    move-object v4, p1

    .end local p1    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 2775
    .end local v4    # "text":Ljava/lang/String;
    .restart local p1    # "text":Ljava/lang/String;
    :cond_87
    move-object v4, p1

    move v5, p2

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "start":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist measureText([CII)F
    .registers 16
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I

    .line 2735
    if-eqz p1, :cond_82

    .line 2738
    or-int v0, p2, p3

    if-ltz v0, :cond_79

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_79

    .line 2742
    array-length v0, p1

    if-eqz v0, :cond_74

    if-nez p3, :cond_15

    move-object v4, p1

    move v5, p2

    move v6, p3

    goto/16 :goto_77

    .line 2745
    :cond_15
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    .line 2746
    .local v1, "oldFlag":I
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2749
    :try_start_22
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_3f

    .line 2750
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_6b

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, p2

    move v8, p3

    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "text":[C
    .end local p2    # "index":I
    .end local p3    # "count":I
    .local v4, "text":[C
    .local v5, "index":I
    .local v6, "count":I
    :try_start_31
    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_68

    double-to-float p1, p1

    .line 2761
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2750
    return p1

    .line 2754
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .restart local p1    # "text":[C
    .restart local p2    # "index":I
    .restart local p3    # "count":I
    :cond_3f
    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "text":[C
    .end local p2    # "index":I
    .end local p3    # "count":I
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    .restart local v6    # "count":I
    :try_start_42
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    .line 2755
    .local p1, "oldSize":F
    iget p2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2756
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, v5

    move v8, v6

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result p2

    .line 2758
    .local p2, "w":F
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2759
    iget p3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p3, p2

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2
    :try_end_63
    .catchall {:try_start_42 .. :try_end_63} :catchall_68

    double-to-float p3, v2

    .line 2761
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2759
    return p3

    .line 2761
    .end local p1    # "oldSize":F
    .end local p2    # "w":F
    :catchall_68
    move-exception v0

    move-object p1, v0

    goto :goto_70

    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .local p1, "text":[C
    .local p2, "index":I
    .restart local p3    # "count":I
    :catchall_6b
    move-exception v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object p1, v0

    .end local p1    # "text":[C
    .end local p2    # "index":I
    .end local p3    # "count":I
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    .restart local v6    # "count":I
    :goto_70
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2762
    throw p1

    .line 2742
    .end local v1    # "oldFlag":I
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .restart local p1    # "text":[C
    .restart local p2    # "index":I
    .restart local p3    # "count":I
    :cond_74
    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 2743
    .end local p1    # "text":[C
    .end local p2    # "index":I
    .end local p3    # "count":I
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    .restart local v6    # "count":I
    :goto_77
    const/4 p1, 0x0

    return p1

    .line 2738
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .restart local p1    # "text":[C
    .restart local p2    # "index":I
    .restart local p3    # "count":I
    :cond_79
    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 2739
    .end local p1    # "text":[C
    .end local p2    # "index":I
    .end local p3    # "count":I
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    .restart local v6    # "count":I
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 2736
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .restart local p1    # "text":[C
    .restart local p2    # "index":I
    .restart local p3    # "count":I
    :cond_82
    move-object v4, p1

    move v5, p2

    .end local p1    # "text":[C
    .end local p2    # "index":I
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist reset()V
    .registers 4

    .line 729
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nReset(J)V

    .line 730
    const/16 v0, 0x503

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 737
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 738
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 739
    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 740
    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 741
    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 742
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 743
    iput-wide v1, p0, Landroid/graphics/Paint;->mNativeXfermode:J

    .line 744
    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 745
    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 747
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 748
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 749
    iput v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 751
    const/4 v2, 0x2

    iput v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 752
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 753
    invoke-direct {p0}, Landroid/graphics/Paint;->resetElegantTextHeight()V

    .line 754
    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 755
    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 757
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 758
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 759
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 760
    invoke-static {v1}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    .line 761
    return-void
.end method

.method public whitelist set(Landroid/graphics/Paint;)V
    .registers 6
    .param p1, "src"    # Landroid/graphics/Paint;

    .line 769
    if-eq p0, p1, :cond_c

    .line 771
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSet(JJ)V

    .line 772
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 774
    :cond_c
    return-void
.end method

.method public whitelist setARGB(IIII)V
    .registers 7
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 1273
    shl-int/lit8 v0, p1, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p4

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1274
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 8
    .param p1, "a"    # I

    .line 1256
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1257
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v1, v2}, Landroid/graphics/Color;->red(J)F

    move-result v1

    .line 1258
    .local v1, "r":F
    iget-wide v2, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v2, v3}, Landroid/graphics/Color;->green(J)F

    move-result v2

    .line 1259
    .local v2, "g":F
    iget-wide v3, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v3, v4}, Landroid/graphics/Color;->blue(J)F

    move-result v3

    .line 1260
    .local v3, "b":F
    int-to-float v4, p1

    const v5, 0x3b808081

    mul-float/2addr v4, v5

    invoke-static {v1, v2, v3, v4, v0}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/graphics/Paint;->mColor:J

    .line 1261
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v4, v5, p1}, Landroid/graphics/Paint;->nSetAlpha(JI)V

    .line 1262
    return-void
.end method

.method public whitelist setAntiAlias(Z)V
    .registers 4
    .param p1, "aa"    # Z

    .line 933
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetAntiAlias(JZ)V

    .line 934
    return-void
.end method

.method public greylist-max-o setBidiFlags(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 871
    and-int/lit8 p1, p1, 0x7

    .line 872
    const/4 v0, 0x5

    if-gt p1, v0, :cond_8

    .line 875
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 876
    return-void

    .line 873
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown bidi flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3
    .param p1, "blendmode"    # Landroid/graphics/BlendMode;

    .line 1510
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-direct {p0, v0}, Landroid/graphics/Paint;->installXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1511
    return-void
.end method

.method public whitelist setColor(I)V
    .registers 4
    .param p1, "color"    # I

    .line 1212
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetColor(JI)V

    .line 1213
    invoke-static {p1}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 1214
    return-void
.end method

.method public whitelist setColor(J)V
    .registers 10
    .param p1, "color"    # J

    .line 1229
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1231
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    move-wide v5, p1

    .end local p1    # "color":J
    .local v5, "color":J
    invoke-static/range {v1 .. v6}, Landroid/graphics/Paint;->nSetColor(JJJ)V

    .line 1232
    iput-wide v5, p0, Landroid/graphics/Paint;->mColor:J

    .line 1233
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .registers 4
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .line 1427
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_8

    .line 1428
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    .line 1432
    :cond_8
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1433
    return-object p1
.end method

.method public greylist setCompatibilityScaling(F)V
    .registers 6
    .param p1, "factor"    # F

    .line 809
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_11

    .line 810
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 811
    iput v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    goto :goto_19

    .line 813
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 814
    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 815
    div-float/2addr v1, p1

    iput v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 817
    :goto_19
    return-void
.end method

.method public whitelist setDither(Z)V
    .registers 4
    .param p1, "dither"    # Z

    .line 961
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetDither(JZ)V

    .line 962
    return-void
.end method

.method public whitelist setElegantTextHeight(Z)V
    .registers 5
    .param p1, "elegant"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1907
    invoke-static {}, Lcom/android/text/flags/Flags;->deprecateElegantTextHeightApi()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-nez p1, :cond_1b

    .line 1908
    const-wide/32 v0, 0x14d53e73

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1909
    if-nez p1, :cond_1a

    .line 1910
    const-string v0, "Paint"

    const-string v1, "The elegant text height cannot be turned off."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    :cond_1a
    return-void

    .line 1914
    :cond_1b
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 1915
    nop

    .line 1914
    xor-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetElegantTextHeight(JI)V

    .line 1916
    return-void
.end method

.method public whitelist setEndHyphenEdit(I)V
    .registers 4
    .param p1, "endHyphen"    # I

    .line 2318
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetEndHyphenEdit(JI)V

    .line 2319
    return-void
.end method

.method public whitelist setFakeBoldText(Z)V
    .registers 4
    .param p1, "fakeBoldText"    # Z

    .line 1124
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFakeBoldText(JZ)V

    .line 1125
    return-void
.end method

.method public whitelist setFilterBitmap(Z)V
    .registers 4
    .param p1, "filter"    # Z

    .line 1151
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFilterBitmap(JZ)V

    .line 1152
    return-void
.end method

.method public whitelist setFlags(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 893
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFlags(JI)V

    .line 894
    return-void
.end method

.method public whitelist setFontFeatureSettings(Ljava/lang/String;)V
    .registers 4
    .param p1, "settings"    # Ljava/lang/String;

    .line 2083
    if-eqz p1, :cond_b

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2084
    const/4 p1, 0x0

    .line 2086
    :cond_b
    if-nez p1, :cond_11

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    if-eqz v0, :cond_1b

    :cond_11
    if-eqz p1, :cond_1c

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 2087
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2088
    :cond_1b
    return-void

    .line 2090
    :cond_1c
    iput-object p1, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 2091
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFontFeatureSettings(JLjava/lang/String;)V

    .line 2092
    return-void
.end method

.method public blacklist setFontVariationOverride(Ljava/lang/String;)V
    .registers 9
    .param p1, "fontVariationOverride"    # Ljava/lang/String;

    .line 2218
    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationOverride:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2219
    return-void

    .line 2222
    :cond_9
    nop

    .line 2223
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettingsForList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2224
    .local v0, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Paint;->nCreateFontVariationBuilder(I)J

    move-result-wide v1

    .line 2225
    .local v1, "builderPtr":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_32

    .line 2226
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/fonts/FontVariationAxis;

    .line 2227
    .local v4, "axis":Landroid/graphics/fonts/FontVariationAxis;
    nop

    .line 2228
    invoke-virtual {v4}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v6

    .line 2227
    invoke-static {v1, v2, v5, v6}, Landroid/graphics/Paint;->nAddFontVariationToBuilder(JIF)V

    .line 2225
    .end local v4    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 2230
    .end local v3    # "i":I
    :cond_32
    iget-wide v3, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v3, v4, v1, v2}, Landroid/graphics/Paint;->nSetFontVariationOverride(JJ)V

    .line 2231
    iput-object p1, p0, Landroid/graphics/Paint;->mFontVariationOverride:Ljava/lang/String;

    .line 2232
    return-void
.end method

.method public whitelist setFontVariationSettings(Ljava/lang/String;)Z
    .registers 12
    .param p1, "fontVariationSettings"    # Ljava/lang/String;

    .line 2154
    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2155
    .local v0, "settings":Ljava/lang/String;
    iget-object v1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_69

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 2156
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_69

    .line 2160
    :cond_14
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_58

    .line 2169
    :cond_1d
    iget-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_24

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_26

    :cond_24
    iget-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 2170
    .local v1, "targetTypeface":Landroid/graphics/Typeface;
    :goto_26
    invoke-static {v0}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v3

    .line 2171
    .local v3, "axes":[Landroid/graphics/fonts/FontVariationAxis;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2172
    .local v4, "filteredAxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontVariationAxis;>;"
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_32
    if-ge v7, v5, :cond_46

    aget-object v8, v3, v7

    .line 2173
    .local v8, "axis":Landroid/graphics/fonts/FontVariationAxis;
    invoke-virtual {v8}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/graphics/Typeface;->isSupportedAxes(I)Z

    move-result v9

    if-eqz v9, :cond_43

    .line 2174
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2172
    .end local v8    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    :cond_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 2177
    :cond_46
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 2178
    return v6

    .line 2180
    :cond_4d
    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 2181
    nop

    .line 2182
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 2181
    invoke-direct {p0, v5}, Landroid/graphics/Paint;->setTypefaceWithoutWarning(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2183
    return v2

    .line 2161
    .end local v1    # "targetTypeface":Landroid/graphics/Typeface;
    .end local v3    # "axes":[Landroid/graphics/fonts/FontVariationAxis;
    .end local v4    # "filteredAxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontVariationAxis;>;"
    :cond_58
    :goto_58
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 2162
    iget-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 2163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 2162
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/Paint;->setTypefaceWithoutWarning(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2164
    return v2

    .line 2157
    :cond_69
    :goto_69
    return v2
.end method

.method public whitelist setHinting(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 909
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetHinting(JI)V

    .line 910
    return-void
.end method

.method public whitelist setLetterSpacing(F)V
    .registers 4
    .param p1, "letterSpacing"    # F

    .line 2029
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLetterSpacing(JF)V

    .line 2030
    return-void
.end method

.method public whitelist setLinearText(Z)V
    .registers 4
    .param p1, "linearText"    # Z

    .line 980
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLinearText(JZ)V

    .line 981
    return-void
.end method

.method public whitelist setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .registers 6
    .param p1, "maskfilter"    # Landroid/graphics/MaskFilter;

    .line 1561
    const-wide/16 v0, 0x0

    .line 1562
    .local v0, "maskfilterNative":J
    if-eqz p1, :cond_6

    .line 1563
    iget-wide v0, p1, Landroid/graphics/MaskFilter;->native_instance:J

    .line 1565
    :cond_6
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetMaskFilter(JJ)J

    .line 1566
    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 1567
    return-object p1
.end method

.method public whitelist setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .registers 6
    .param p1, "effect"    # Landroid/graphics/PathEffect;

    .line 1532
    const-wide/16 v0, 0x0

    .line 1533
    .local v0, "effectNative":J
    if-eqz p1, :cond_6

    .line 1534
    iget-wide v0, p1, Landroid/graphics/PathEffect;->native_instance:J

    .line 1536
    :cond_6
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetPathEffect(JJ)J

    .line 1537
    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 1538
    return-object p1
.end method

.method public greylist setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .registers 2
    .param p1, "rasterizer"    # Landroid/graphics/Rasterizer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1640
    return-object p1
.end method

.method public whitelist setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .registers 6
    .param p1, "shader"    # Landroid/graphics/Shader;

    .line 1399
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    if-eq v0, p1, :cond_f

    .line 1400
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 1402
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSetShader(JJ)J

    .line 1405
    :cond_f
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 1406
    return-object p1
.end method

.method public whitelist setShadowLayer(FFFI)V
    .registers 11
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "shadowColor"    # I

    .line 1656
    invoke-static {p4}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "radius":F
    .end local p2    # "dx":F
    .end local p3    # "dy":F
    .local v1, "radius":F
    .local v2, "dx":F
    .local v3, "dy":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->setShadowLayer(FFFJ)V

    .line 1657
    return-void
.end method

.method public whitelist setShadowLayer(FFFJ)V
    .registers 16
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "shadowColor"    # J

    .line 1675
    invoke-static {p4, p5}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1676
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v6

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v8, p4

    .end local p1    # "radius":F
    .end local p2    # "dx":F
    .end local p3    # "dy":F
    .end local p4    # "shadowColor":J
    .local v3, "radius":F
    .local v4, "dx":F
    .local v5, "dy":F
    .local v8, "shadowColor":J
    invoke-static/range {v1 .. v9}, Landroid/graphics/Paint;->nSetShadowLayer(JFFFJJ)V

    .line 1678
    iput v3, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 1679
    iput v4, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 1680
    iput v5, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 1681
    iput-wide v8, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    .line 1682
    return-void
.end method

.method public whitelist setStartHyphenEdit(I)V
    .registers 4
    .param p1, "startHyphen"    # I

    .line 2292
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStartHyphenEdit(JI)V

    .line 2293
    return-void
.end method

.method public whitelist setStrikeThruText(Z)V
    .registers 4
    .param p1, "strikeThruText"    # Z

    .line 1105
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrikeThruText(JZ)V

    .line 1106
    return-void
.end method

.method public whitelist setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .registers 5
    .param p1, "cap"    # Landroid/graphics/Paint$Cap;

    .line 1341
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeCap(JI)V

    .line 1342
    return-void
.end method

.method public whitelist setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .registers 5
    .param p1, "join"    # Landroid/graphics/Paint$Join;

    .line 1360
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeJoin(JI)V

    .line 1361
    return-void
.end method

.method public whitelist setStrokeMiter(F)V
    .registers 4
    .param p1, "miter"    # F

    .line 1320
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeMiter(JF)V

    .line 1321
    return-void
.end method

.method public whitelist setStrokeWidth(F)V
    .registers 4
    .param p1, "width"    # F

    .line 1298
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeWidth(JF)V

    .line 1299
    return-void
.end method

.method public whitelist setStyle(Landroid/graphics/Paint$Style;)V
    .registers 5
    .param p1, "style"    # Landroid/graphics/Paint$Style;

    .line 1173
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStyle(JI)V

    .line 1174
    return-void
.end method

.method public whitelist setSubpixelText(Z)V
    .registers 4
    .param p1, "subpixelText"    # Z

    .line 999
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetSubpixelText(JZ)V

    .line 1000
    return-void
.end method

.method public whitelist setTextAlign(Landroid/graphics/Paint$Align;)V
    .registers 5
    .param p1, "align"    # Landroid/graphics/Paint$Align;

    .line 1770
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetTextAlign(JI)V

    .line 1771
    return-void
.end method

.method public whitelist setTextLocale(Ljava/util/Locale;)V
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1803
    if-eqz p1, :cond_2c

    .line 1806
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1d

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1807
    return-void

    .line 1809
    :cond_1d
    new-instance v0, Landroid/os/LocaleList;

    new-array v2, v2, [Ljava/util/Locale;

    aput-object p1, v2, v1

    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 1810
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    .line 1811
    return-void

    .line 1804
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "locale cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTextLocales(Landroid/os/LocaleList;)V
    .registers 4
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 1841
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1844
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 1845
    :cond_11
    iput-object p1, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 1846
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    .line 1847
    return-void

    .line 1842
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "locales cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTextScaleX(F)V
    .registers 4
    .param p1, "scaleX"    # F

    .line 1988
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextScaleX(JF)V

    .line 1989
    return-void
.end method

.method public whitelist setTextSize(F)V
    .registers 4
    .param p1, "textSize"    # F

    .line 1967
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSize(JF)V

    .line 1968
    return-void
.end method

.method public whitelist setTextSkewX(F)V
    .registers 4
    .param p1, "skewX"    # F

    .line 2008
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSkewX(JF)V

    .line 2009
    return-void
.end method

.method public whitelist setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 1592
    invoke-static {}, Lcom/android/text/flags/Flags;->typefaceRedesignReadonly()Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    .line 1593
    invoke-virtual {p1}, Landroid/graphics/Typeface;->isVariationInstance()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1594
    const-string v0, "Paint"

    const-string v1, "Attempting to set a Typeface on a Paint object that was previously configured with setFontVariationSettings(). This is no longer supported as of Target SDK 36. To apply font variations, call setFontVariationSettings() directly on the Paint object instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_15
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setTypefaceWithoutWarning(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setUnderlineText(Z)V
    .registers 4
    .param p1, "underlineText"    # Z

    .line 1052
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetUnderlineText(JZ)V

    .line 1053
    return-void
.end method

.method public whitelist setWordSpacing(F)V
    .registers 4
    .param p1, "wordSpacing"    # F

    .line 2054
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetWordSpacing(JF)V

    .line 2055
    return-void
.end method

.method public whitelist setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .registers 3
    .param p1, "xfermode"    # Landroid/graphics/Xfermode;

    .line 1474
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->installXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v0

    return-object v0
.end method
