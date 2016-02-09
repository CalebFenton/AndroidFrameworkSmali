.class public Landroid/graphics/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Paint$Style;,
        Landroid/graphics/Paint$Cap;,
        Landroid/graphics/Paint$Join;,
        Landroid/graphics/Paint$Align;,
        Landroid/graphics/Paint$FontMetrics;,
        Landroid/graphics/Paint$FontMetricsInt;
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

.field public static final STRIKE_THRU_TEXT_FLAG:I = 0x10

.field public static final SUBPIXEL_TEXT_FLAG:I = 0x80

.field public static final UNDERLINE_TEXT_FLAG:I = 0x8

.field public static final VERTICAL_TEXT_FLAG:I = 0x1000

.field static final sAlignArray:[Landroid/graphics/Paint$Align;

.field static final sCapArray:[Landroid/graphics/Paint$Cap;

.field static final sJoinArray:[Landroid/graphics/Paint$Join;

.field static final sStyleArray:[Landroid/graphics/Paint$Style;


# instance fields
.field public mBidiFlags:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCompatScaling:F

.field private mFontFeatureSettings:Ljava/lang/String;

.field private mHasCompatScaling:Z

.field private mInvCompatScaling:F

.field private mLocale:Ljava/util/Locale;

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
    .line 61
    new-array v0, v5, [Landroid/graphics/Paint$Style;

    #@6
    .line 62
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@8
    aput-object v1, v0, v2

    #@a
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@c
    aput-object v1, v0, v3

    #@e
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    #@10
    aput-object v1, v0, v4

    #@12
    .line 61
    sput-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    #@14
    .line 64
    new-array v0, v5, [Landroid/graphics/Paint$Cap;

    #@16
    .line 65
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    #@18
    aput-object v1, v0, v2

    #@1a
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    #@1c
    aput-object v1, v0, v3

    #@1e
    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    #@20
    aput-object v1, v0, v4

    #@22
    .line 64
    sput-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    #@24
    .line 67
    new-array v0, v5, [Landroid/graphics/Paint$Join;

    #@26
    .line 68
    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    #@28
    aput-object v1, v0, v2

    #@2a
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    #@2c
    aput-object v1, v0, v3

    #@2e
    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    #@30
    aput-object v1, v0, v4

    #@32
    .line 67
    sput-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    #@34
    .line 70
    new-array v0, v5, [Landroid/graphics/Paint$Align;

    #@36
    .line 71
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    #@38
    aput-object v1, v0, v2

    #@3a
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@3c
    aput-object v1, v0, v3

    #@3e
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    #@40
    aput-object v1, v0, v4

    #@42
    .line 70
    sput-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    #@44
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 420
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    #@4
    .line 419
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "flags"    # I

    #@0
    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 34
    const-wide/16 v0, 0x0

    #@7
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    #@9
    .line 59
    const/4 v0, 0x2

    #@a
    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@c
    .line 430
    invoke-static {}, Landroid/graphics/Paint;->native_init()J

    #@f
    move-result-wide v0

    #@10
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@12
    .line 431
    or-int/lit16 v0, p1, 0x500

    #@14
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    #@17
    .line 436
    iput v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@19
    iput v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@1b
    .line 437
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    #@22
    .line 429
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    #@7
    .line 59
    const/4 v0, 0x2

    #@8
    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@a
    .line 448
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    #@d
    move-result-wide v0

    #@e
    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_initWithPaint(J)J

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@14
    .line 449
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    #@17
    .line 447
    return-void
.end method

.method private static native finalizer(J)V
.end method

.method private static native nativeGetCharArrayBounds(JJ[CIIILandroid/graphics/Rect;)V
.end method

.method private static native nativeGetStringBounds(JJLjava/lang/String;IIILandroid/graphics/Rect;)V
.end method

.method private static native native_breakText(JJLjava/lang/String;ZFI[F)I
.end method

.method private static native native_breakText(JJ[CIIFI[F)I
.end method

.method private static native native_getFillPath(JJJ)Z
.end method

.method private static native native_getHyphenEdit(J)I
.end method

.method private static native native_getLetterSpacing(J)F
.end method

.method private static native native_getOffsetForAdvance(JJ[CIIIIZF)I
.end method

.method private static native native_getRunAdvance(JJ[CIIIIZI)F
.end method

.method private static native native_getStrokeCap(J)I
.end method

.method private static native native_getStrokeJoin(J)I
.end method

.method private static native native_getStyle(J)I
.end method

.method private static native native_getTextAlign(J)I
.end method

.method private static native native_getTextGlyphs(JLjava/lang/String;IIIII[C)I
.end method

.method private static native native_getTextPath(JJILjava/lang/String;IIFFJ)V
.end method

.method private static native native_getTextPath(JJI[CIIFFJ)V
.end method

.method private static native native_getTextRunAdvances(JJLjava/lang/String;IIIIZ[FI)F
.end method

.method private static native native_getTextRunAdvances(JJ[CIIIIZ[FI)F
.end method

.method private native native_getTextRunCursor(JLjava/lang/String;IIIII)I
.end method

.method private native native_getTextRunCursor(J[CIIIII)I
.end method

.method private static native native_getTextWidths(JJLjava/lang/String;III[F)I
.end method

.method private static native native_getTextWidths(JJ[CIII[F)I
.end method

.method private static native native_hasGlyph(JJILjava/lang/String;)Z
.end method

.method private static native native_hasShadowLayer(J)Z
.end method

.method private static native native_init()J
.end method

.method private static native native_initWithPaint(J)J
.end method

.method private native native_measureText(Ljava/lang/String;I)F
.end method

.method private native native_measureText(Ljava/lang/String;III)F
.end method

.method private native native_measureText([CIII)F
.end method

.method private static native native_reset(J)V
.end method

.method private static native native_set(JJ)V
.end method

.method private static native native_setColorFilter(JJ)J
.end method

.method private static native native_setFontFeatureSettings(JLjava/lang/String;)V
.end method

.method private static native native_setHyphenEdit(JI)V
.end method

.method private static native native_setLetterSpacing(JF)V
.end method

.method private static native native_setMaskFilter(JJ)J
.end method

.method private static native native_setPathEffect(JJ)J
.end method

.method private static native native_setRasterizer(JJ)J
.end method

.method private static native native_setShader(JJ)J
.end method

.method private static native native_setShadowLayer(JFFFI)V
.end method

.method private static native native_setStrokeCap(JI)V
.end method

.method private static native native_setStrokeJoin(JI)V
.end method

.method private static native native_setStyle(JI)V
.end method

.method private static native native_setTextAlign(JI)V
.end method

.method private static native native_setTextLocale(JLjava/lang/String;)V
.end method

.method private static native native_setTypeface(JJ)J
.end method

.method private static native native_setXfermode(JJ)J
.end method

.method private setClassVariablesFrom(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 500
    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    #@4
    .line 501
    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    #@6
    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    #@8
    .line 502
    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    #@a
    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    #@c
    .line 503
    iget-object v0, p1, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    #@e
    iput-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    #@10
    .line 504
    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    #@12
    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    #@14
    .line 505
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeShader:J

    #@16
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    #@18
    .line 506
    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    #@1a
    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    #@1c
    .line 507
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeTypeface:J

    #@1e
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@20
    .line 508
    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    #@22
    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    #@24
    .line 510
    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@26
    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@28
    .line 511
    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    #@2a
    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@2c
    .line 512
    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@2e
    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@30
    .line 514
    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    #@32
    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@34
    .line 515
    iget-object v0, p1, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    #@36
    iput-object v0, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    #@38
    .line 516
    iget-object v0, p1, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    #@3a
    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    #@3c
    .line 499
    return-void
.end method


# virtual methods
.method public native ascent()F
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
    .line 1665
    if-nez p1, :cond_0

    #@3
    .line 1666
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "text cannot be null"

    #@8
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 1668
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
    .line 1669
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@1b
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@1e
    throw v0

    #@1f
    .line 1672
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_2

    #@25
    if-ne p2, p3, :cond_3

    #@27
    .line 1673
    :cond_2
    return v2

    #@28
    .line 1675
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
    .line 1676
    check-cast p1, Ljava/lang/String;

    #@36
    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    #@39
    move-result v0

    #@3a
    return v0

    #@3b
    .line 1680
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_4
    sub-int v0, p3, p2

    #@3d
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@40
    move-result-object v1

    #@41
    .line 1683
    .local v1, "buf":[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@44
    .line 1685
    if-eqz p4, :cond_5

    #@46
    .line 1686
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
    .line 1691
    .local v6, "result":I
    :goto_0
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    #@52
    .line 1692
    return v6

    #@53
    .line 1688
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
    .line 1713
    if-nez p1, :cond_0

    #@2
    .line 1714
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "text cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1717
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1

    #@11
    .line 1718
    const/4 v0, 0x0

    #@12
    return v0

    #@13
    .line 1720
    :cond_1
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@15
    if-nez v0, :cond_2

    #@17
    .line 1721
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@19
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@1b
    .line 1722
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
    .line 1721
    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->native_breakText(JJLjava/lang/String;ZFI[F)I

    #@24
    move-result v0

    #@25
    return v0

    #@26
    .line 1725
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    #@29
    move-result v9

    #@2a
    .line 1726
    .local v9, "oldSize":F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@2c
    mul-float/2addr v0, v9

    #@2d
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    #@30
    .line 1727
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@32
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@34
    .line 1728
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
    .line 1727
    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->native_breakText(JJLjava/lang/String;ZFI[F)I

    #@40
    move-result v10

    #@41
    .line 1729
    .local v10, "res":I
    invoke-virtual {p0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    #@44
    .line 1730
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
    .line 1731
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
    .line 1618
    if-nez p1, :cond_0

    #@2
    .line 1619
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "text cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1621
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
    .line 1622
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@17
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@1a
    throw v0

    #@1b
    .line 1625
    :cond_2
    array-length v0, p1

    #@1c
    if-eqz v0, :cond_3

    #@1e
    if-nez p3, :cond_4

    #@20
    .line 1626
    :cond_3
    const/4 v0, 0x0

    #@21
    return v0

    #@22
    .line 1628
    :cond_4
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@24
    if-nez v0, :cond_5

    #@26
    .line 1629
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@28
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@2a
    .line 1630
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
    .line 1629
    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->native_breakText(JJ[CIIFI[F)I

    #@36
    move-result v0

    #@37
    return v0

    #@38
    .line 1633
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    #@3b
    move-result v10

    #@3c
    .line 1634
    .local v10, "oldSize":F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@3e
    mul-float/2addr v0, v10

    #@3f
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    #@42
    .line 1635
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@44
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@46
    .line 1636
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
    .line 1635
    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->native_breakText(JJ[CIIFI[F)I

    #@54
    move-result v11

    #@55
    .line 1637
    .local v11, "res":I
    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    #@58
    .line 1638
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
    .line 1639
    :cond_6
    return v11
.end method

.method public clearShadowLayer()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1139
    const/4 v0, 0x0

    #@2
    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    #@5
    .line 1138
    return-void
.end method

.method public native descent()F
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 2437
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Paint;->finalizer(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 2439
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 2435
    return-void

    #@9
    .line 2438
    :catchall_0
    move-exception v0

    #@a
    .line 2439
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 2438
    throw v0
.end method

.method public native getAlpha()I
.end method

.method public getBidiFlags()I
    .locals 1

    #@0
    .prologue
    .line 553
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@2
    return v0
.end method

.method public native getColor()I
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    #@0
    .prologue
    .line 948
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
    .line 915
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
    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->native_getFillPath(JJJ)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public native getFlags()I
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1310
    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public native getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    #@0
    .prologue
    .line 1421
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    #@2
    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    #@5
    .line 1422
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    #@8
    .line 1423
    return-object v0
.end method

.method public native getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
.end method

.method public getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    #@0
    .prologue
    .line 1457
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    #@2
    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    #@5
    .line 1458
    .local v0, "fm":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    #@8
    .line 1459
    return-object v0
.end method

.method public getFontSpacing()F
    .locals 1

    #@0
    .prologue
    .line 1470
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public native getHinting()I
.end method

.method public getHyphenEdit()I
    .locals 2

    #@0
    .prologue
    .line 1341
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_getHyphenEdit(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLetterSpacing()F
    .locals 2

    #@0
    .prologue
    .line 1290
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_getLetterSpacing(J)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    #@0
    .prologue
    .line 1027
    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    #@2
    return-object v0
.end method

.method public getNativeInstance()J
    .locals 6

    #@0
    .prologue
    .line 538
    iget-object v2, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    #@2
    if-nez v2, :cond_1

    #@4
    const-wide/16 v0, 0x0

    #@6
    .line 539
    .local v0, "newNativeShader":J
    :goto_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeShader:J

    #@8
    cmp-long v2, v0, v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 540
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    #@e
    .line 541
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@10
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeShader:J

    #@12
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Paint;->native_setShader(JJ)J

    #@15
    .line 543
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@17
    return-wide v2

    #@18
    .line 538
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
    .line 2417
    if-nez p1, :cond_0

    #@2
    .line 2418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "text cannot be null"

    #@7
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2420
    :cond_0
    or-int v0, p4, p2

    #@d
    or-int/2addr v0, p3

    #@e
    or-int/2addr v0, p5

    #@f
    .line 2421
    sub-int v2, p2, p4

    #@11
    .line 2420
    or-int/2addr v0, v2

    #@12
    .line 2421
    sub-int v2, p3, p2

    #@14
    .line 2420
    or-int/2addr v0, v2

    #@15
    .line 2421
    sub-int v2, p5, p3

    #@17
    .line 2420
    or-int/2addr v0, v2

    #@18
    .line 2422
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@1b
    move-result v2

    #@1c
    sub-int/2addr v2, p5

    #@1d
    .line 2420
    or-int/2addr v0, v2

    #@1e
    if-gez v0, :cond_1

    #@20
    .line 2423
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@22
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@25
    throw v0

    #@26
    .line 2426
    :cond_1
    sub-int v0, p5, p4

    #@28
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@2b
    move-result-object v1

    #@2c
    .line 2427
    .local v1, "buf":[C
    const/4 v0, 0x0

    #@2d
    invoke-static {p1, p4, p5, v1, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@30
    .line 2428
    sub-int v2, p2, p4

    #@32
    sub-int v3, p3, p4

    #@34
    .line 2429
    sub-int v5, p5, p4

    #@36
    .line 2428
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
    .line 2430
    .local v8, "result":I
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    #@44
    .line 2431
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
    .line 2390
    if-nez p1, :cond_0

    #@2
    .line 2391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "text cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2393
    :cond_0
    or-int v0, p4, p2

    #@d
    or-int/2addr v0, p3

    #@e
    or-int v0, v0, p5

    #@10
    .line 2394
    sub-int v1, p2, p4

    #@12
    .line 2393
    or-int/2addr v0, v1

    #@13
    .line 2394
    sub-int v1, p3, p2

    #@15
    .line 2393
    or-int/2addr v0, v1

    #@16
    .line 2394
    sub-int v1, p5, p3

    #@18
    .line 2393
    or-int/2addr v0, v1

    #@19
    .line 2395
    array-length v1, p1

    #@1a
    sub-int v1, v1, p5

    #@1c
    .line 2393
    or-int/2addr v0, v1

    #@1d
    if-gez v0, :cond_1

    #@1f
    .line 2396
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@21
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@24
    throw v0

    #@25
    .line 2399
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
    invoke-static/range {v0 .. v10}, Landroid/graphics/Paint;->native_getOffsetForAdvance(JJ[CIIIIZF)I

    #@36
    move-result v0

    #@37
    return v0
.end method

.method public getPathEffect()Landroid/graphics/PathEffect;
    .locals 1

    #@0
    .prologue
    .line 999
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
    .line 1093
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
    .line 2340
    if-nez p1, :cond_0

    #@2
    .line 2341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "text cannot be null"

    #@7
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2343
    :cond_0
    or-int v0, p4, p2

    #@d
    or-int v0, v0, p7

    #@f
    or-int/2addr v0, p3

    #@10
    or-int/2addr v0, p5

    #@11
    .line 2344
    sub-int v2, p2, p4

    #@13
    .line 2343
    or-int/2addr v0, v2

    #@14
    .line 2344
    sub-int v2, p7, p2

    #@16
    .line 2343
    or-int/2addr v0, v2

    #@17
    .line 2344
    sub-int v2, p3, p7

    #@19
    .line 2343
    or-int/2addr v0, v2

    #@1a
    .line 2345
    sub-int v2, p5, p3

    #@1c
    .line 2343
    or-int/2addr v0, v2

    #@1d
    .line 2345
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@20
    move-result v2

    #@21
    sub-int/2addr v2, p5

    #@22
    .line 2343
    or-int/2addr v0, v2

    #@23
    if-gez v0, :cond_1

    #@25
    .line 2346
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@27
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@2a
    throw v0

    #@2b
    .line 2348
    :cond_1
    if-ne p3, p2, :cond_2

    #@2d
    .line 2349
    const/4 v0, 0x0

    #@2e
    return v0

    #@2f
    .line 2352
    :cond_2
    sub-int v0, p5, p4

    #@31
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@34
    move-result-object v1

    #@35
    .line 2353
    .local v1, "buf":[C
    const/4 v0, 0x0

    #@36
    invoke-static {p1, p4, p5, v1, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@39
    .line 2354
    sub-int v2, p2, p4

    #@3b
    sub-int v3, p3, p4

    #@3d
    .line 2355
    sub-int v5, p5, p4

    #@3f
    sub-int v7, p7, p4

    #@41
    .line 2354
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
    .line 2356
    .local v8, "result":F
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    #@4b
    .line 2357
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
    .line 2310
    if-nez p1, :cond_0

    #@2
    .line 2311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "text cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2313
    :cond_0
    or-int v0, p4, p2

    #@d
    or-int v0, v0, p7

    #@f
    or-int/2addr v0, p3

    #@10
    or-int v0, v0, p5

    #@12
    .line 2314
    sub-int v1, p2, p4

    #@14
    .line 2313
    or-int/2addr v0, v1

    #@15
    .line 2314
    sub-int v1, p7, p2

    #@17
    .line 2313
    or-int/2addr v0, v1

    #@18
    .line 2314
    sub-int v1, p3, p7

    #@1a
    .line 2313
    or-int/2addr v0, v1

    #@1b
    .line 2315
    sub-int v1, p5, p3

    #@1d
    .line 2313
    or-int/2addr v0, v1

    #@1e
    .line 2315
    array-length v1, p1

    #@1f
    sub-int v1, v1, p5

    #@21
    .line 2313
    or-int/2addr v0, v1

    #@22
    if-gez v0, :cond_1

    #@24
    .line 2316
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@26
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@29
    throw v0

    #@2a
    .line 2318
    :cond_1
    if-ne p3, p2, :cond_2

    #@2c
    .line 2319
    const/4 v0, 0x0

    #@2d
    return v0

    #@2e
    .line 2322
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
    invoke-static/range {v0 .. v10}, Landroid/graphics/Paint;->native_getRunAdvance(JJ[CIIIIZI)F

    #@3f
    move-result v0

    #@40
    return v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    #@0
    .prologue
    .line 924
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    #@2
    return-object v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 4

    #@0
    .prologue
    .line 871
    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    #@2
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@4
    invoke-static {v2, v3}, Landroid/graphics/Paint;->native_getStrokeCap(J)I

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
    .line 890
    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    #@2
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@4
    invoke-static {v2, v3}, Landroid/graphics/Paint;->native_getStrokeJoin(J)I

    #@7
    move-result v1

    #@8
    aget-object v0, v0, v1

    #@a
    return-object v0
.end method

.method public native getStrokeMiter()F
.end method

.method public native getStrokeWidth()F
.end method

.method public getStyle()Landroid/graphics/Paint$Style;
    .locals 4

    #@0
    .prologue
    .line 759
    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    #@2
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@4
    invoke-static {v2, v3}, Landroid/graphics/Paint;->native_getStyle(J)I

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
    .line 1161
    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    #@2
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@4
    invoke-static {v2, v3}, Landroid/graphics/Paint;->native_getTextAlign(J)I

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
    .line 2222
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
    .line 2223
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@f
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@12
    throw v0

    #@13
    .line 2225
    :cond_0
    if-nez p4, :cond_1

    #@15
    .line 2226
    new-instance v0, Ljava/lang/NullPointerException;

    #@17
    const-string/jumbo v1, "need bounds Rect"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 2228
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
    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nativeGetStringBounds(JJLjava/lang/String;IIILandroid/graphics/Rect;)V

    #@2b
    .line 2221
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
    .line 2242
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
    .line 2243
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@b
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@e
    throw v0

    #@f
    .line 2245
    :cond_1
    if-nez p4, :cond_2

    #@11
    .line 2246
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v1, "need bounds Rect"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 2248
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
    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nativeGetCharArrayBounds(JJ[CIIILandroid/graphics/Rect;)V

    #@27
    .line 2241
    return-void
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 1182
    iget-object v0, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

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
    .line 2204
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
    .line 2205
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@f
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@12
    throw v0

    #@13
    .line 2207
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@15
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@17
    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@19
    .line 2208
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
    .line 2207
    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->native_getTextPath(JJILjava/lang/String;IIFFJ)V

    #@27
    .line 2203
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
    .line 2182
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
    .line 2183
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@b
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@e
    throw v0

    #@f
    .line 2185
    :cond_1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@11
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@13
    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@15
    .line 2186
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
    .line 2185
    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->native_getTextPath(JJI[CIIFFJ)V

    #@23
    .line 2181
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
    .line 1925
    if-nez p1, :cond_0

    #@2
    .line 1926
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "text cannot be null"

    #@7
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1928
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
    .line 1929
    sub-int v3, p2, p4

    #@17
    .line 1928
    or-int/2addr v1, v3

    #@18
    .line 1929
    sub-int v3, p5, p3

    #@1a
    .line 1928
    or-int/2addr v1, v3

    #@1b
    .line 1930
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@1e
    move-result v3

    #@1f
    sub-int v3, v3, p5

    #@21
    .line 1928
    or-int/2addr v3, v1

    #@22
    .line 1931
    if-nez p7, :cond_1

    #@24
    const/4 v1, 0x0

    #@25
    .line 1928
    :goto_0
    or-int/2addr v1, v3

    #@26
    if-gez v1, :cond_2

    #@28
    .line 1933
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@2a
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@2d
    throw v1

    #@2e
    .line 1932
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
    .line 1936
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    #@39
    if-eqz v1, :cond_3

    #@3b
    move-object v2, p1

    #@3c
    .line 1937
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
    .line 1940
    :cond_3
    instance-of v1, p1, Landroid/text/SpannedString;

    #@51
    if-nez v1, :cond_4

    #@53
    .line 1941
    instance-of v1, p1, Landroid/text/SpannableString;

    #@55
    .line 1940
    if-eqz v1, :cond_5

    #@57
    .line 1942
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
    .line 1945
    :cond_5
    instance-of v1, p1, Landroid/text/GraphicsOperations;

    #@6e
    if-eqz v1, :cond_6

    #@70
    move-object v1, p1

    #@71
    .line 1946
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
    .line 1949
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@87
    move-result v1

    #@88
    if-eqz v1, :cond_7

    #@8a
    if-ne p3, p2, :cond_8

    #@8c
    .line 1950
    :cond_7
    const/4 v1, 0x0

    #@8d
    return v1

    #@8e
    .line 1953
    :cond_8
    sub-int v6, p5, p4

    #@90
    .line 1954
    .local v6, "contextLen":I
    sub-int v4, p3, p2

    #@92
    .line 1955
    .local v4, "len":I
    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@95
    move-result-object v2

    #@96
    .line 1956
    .local v2, "buf":[C
    const/4 v1, 0x0

    #@97
    move/from16 v0, p5

    #@99
    invoke-static {p1, p4, v0, v2, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@9c
    .line 1957
    sub-int v3, p2, p4

    #@9e
    .line 1958
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
    .line 1957
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    #@a9
    move-result v10

    #@aa
    .line 1959
    .local v10, "result":F
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    #@ad
    .line 1960
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
    .line 2007
    if-nez p1, :cond_0

    #@2
    .line 2008
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "text cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 2010
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
    .line 2011
    sub-int v3, p2, p4

    #@18
    .line 2010
    or-int/2addr v2, v3

    #@19
    .line 2011
    sub-int v3, p5, p3

    #@1b
    .line 2010
    or-int/2addr v2, v3

    #@1c
    .line 2012
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@1f
    move-result v3

    #@20
    sub-int v3, v3, p5

    #@22
    .line 2010
    or-int/2addr v3, v2

    #@23
    .line 2013
    if-nez p7, :cond_1

    #@25
    const/4 v2, 0x0

    #@26
    .line 2010
    :goto_0
    or-int/2addr v2, v3

    #@27
    if-gez v2, :cond_2

    #@29
    .line 2015
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@2b
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@2e
    throw v2

    #@2f
    .line 2014
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
    .line 2018
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
    .line 2019
    :cond_3
    const/4 v2, 0x0

    #@45
    return v2

    #@46
    .line 2022
    :cond_4
    move-object/from16 v0, p0

    #@48
    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@4a
    if-nez v2, :cond_5

    #@4c
    .line 2023
    move-object/from16 v0, p0

    #@4e
    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    #@50
    move-object/from16 v0, p0

    #@52
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@54
    move-object/from16 v6, p1

    #@56
    move/from16 v7, p2

    #@58
    move/from16 v8, p3

    #@5a
    move/from16 v9, p4

    #@5c
    move/from16 v10, p5

    #@5e
    move/from16 v11, p6

    #@60
    move-object/from16 v12, p7

    #@62
    move/from16 v13, p8

    #@64
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->native_getTextRunAdvances(JJLjava/lang/String;IIIIZ[FI)F

    #@67
    move-result v2

    #@68
    return v2

    #@69
    .line 2027
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    #@6c
    move-result v16

    #@6d
    .line 2028
    .local v16, "oldSize":F
    move-object/from16 v0, p0

    #@6f
    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    #@71
    mul-float v2, v2, v16

    #@73
    move-object/from16 v0, p0

    #@75
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@78
    .line 2029
    move-object/from16 v0, p0

    #@7a
    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    #@7c
    move-object/from16 v0, p0

    #@7e
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@80
    move-object/from16 v6, p1

    #@82
    move/from16 v7, p2

    #@84
    move/from16 v8, p3

    #@86
    move/from16 v9, p4

    #@88
    move/from16 v10, p5

    #@8a
    move/from16 v11, p6

    #@8c
    move-object/from16 v12, p7

    #@8e
    move/from16 v13, p8

    #@90
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->native_getTextRunAdvances(JJLjava/lang/String;IIIIZ[FI)F

    #@93
    move-result v17

    #@94
    .line 2031
    .local v17, "totalAdvance":F
    move-object/from16 v0, p0

    #@96
    move/from16 v1, v16

    #@98
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    #@9b
    .line 2033
    if-eqz p7, :cond_6

    #@9d
    .line 2034
    move/from16 v15, p8

    #@9f
    .local v15, "i":I
    sub-int v2, p3, p2

    #@a1
    add-int v14, v15, v2

    #@a3
    .local v14, "e":I
    :goto_1
    if-ge v15, v14, :cond_6

    #@a5
    .line 2035
    aget v2, p7, v15

    #@a7
    move-object/from16 v0, p0

    #@a9
    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@ab
    mul-float/2addr v2, v3

    #@ac
    aput v2, p7, v15

    #@ae
    .line 2034
    add-int/lit8 v15, v15, 0x1

    #@b0
    goto :goto_1

    #@b1
    .line 2038
    .end local v14    # "e":I
    .end local v15    # "i":I
    :cond_6
    move-object/from16 v0, p0

    #@b3
    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@b5
    mul-float v2, v2, v17

    #@b7
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
    .line 1880
    if-nez p1, :cond_0

    #@2
    .line 1881
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "text cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1883
    :cond_0
    or-int v2, p2, p3

    #@d
    or-int v2, v2, p4

    #@f
    or-int v2, v2, p5

    #@11
    or-int v2, v2, p8

    #@13
    .line 1884
    sub-int v3, p2, p4

    #@15
    .line 1883
    or-int/2addr v2, v3

    #@16
    .line 1884
    sub-int v3, p5, p3

    #@18
    .line 1883
    or-int/2addr v2, v3

    #@19
    .line 1885
    add-int v3, p4, p5

    #@1b
    add-int v4, p2, p3

    #@1d
    sub-int/2addr v3, v4

    #@1e
    .line 1883
    or-int/2addr v2, v3

    #@1f
    .line 1886
    move-object/from16 v0, p1

    #@21
    array-length v3, v0

    #@22
    add-int v4, p4, p5

    #@24
    sub-int/2addr v3, v4

    #@25
    .line 1883
    or-int/2addr v3, v2

    #@26
    .line 1887
    if-nez p7, :cond_1

    #@28
    const/4 v2, 0x0

    #@29
    .line 1883
    :goto_0
    or-int/2addr v2, v3

    #@2a
    if-gez v2, :cond_2

    #@2c
    .line 1889
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@2e
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@31
    throw v2

    #@32
    .line 1888
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
    .line 1892
    :cond_2
    move-object/from16 v0, p1

    #@3b
    array-length v2, v0

    #@3c
    if-eqz v2, :cond_3

    #@3e
    if-nez p3, :cond_4

    #@40
    .line 1893
    :cond_3
    const/4 v2, 0x0

    #@41
    return v2

    #@42
    .line 1895
    :cond_4
    move-object/from16 v0, p0

    #@44
    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@46
    if-nez v2, :cond_5

    #@48
    .line 1896
    move-object/from16 v0, p0

    #@4a
    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@50
    move-object/from16 v6, p1

    #@52
    move/from16 v7, p2

    #@54
    move/from16 v8, p3

    #@56
    move/from16 v9, p4

    #@58
    move/from16 v10, p5

    #@5a
    move/from16 v11, p6

    #@5c
    move-object/from16 v12, p7

    #@5e
    move/from16 v13, p8

    #@60
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->native_getTextRunAdvances(JJ[CIIIIZ[FI)F

    #@63
    move-result v2

    #@64
    return v2

    #@65
    .line 1900
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    #@68
    move-result v16

    #@69
    .line 1901
    .local v16, "oldSize":F
    move-object/from16 v0, p0

    #@6b
    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    #@6d
    mul-float v2, v2, v16

    #@6f
    move-object/from16 v0, p0

    #@71
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@74
    .line 1902
    move-object/from16 v0, p0

    #@76
    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    #@78
    move-object/from16 v0, p0

    #@7a
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@7c
    move-object/from16 v6, p1

    #@7e
    move/from16 v7, p2

    #@80
    move/from16 v8, p3

    #@82
    move/from16 v9, p4

    #@84
    move/from16 v10, p5

    #@86
    move/from16 v11, p6

    #@88
    move-object/from16 v12, p7

    #@8a
    move/from16 v13, p8

    #@8c
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->native_getTextRunAdvances(JJ[CIIIIZ[FI)F

    #@8f
    move-result v17

    #@90
    .line 1904
    .local v17, "res":F
    move-object/from16 v0, p0

    #@92
    move/from16 v1, v16

    #@94
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    #@97
    .line 1906
    if-eqz p7, :cond_6

    #@99
    .line 1907
    move/from16 v15, p8

    #@9b
    .local v15, "i":I
    add-int v14, v15, p3

    #@9d
    .local v14, "e":I
    :goto_1
    if-ge v15, v14, :cond_6

    #@9f
    .line 1908
    aget v2, p7, v15

    #@a1
    move-object/from16 v0, p0

    #@a3
    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@a5
    mul-float/2addr v2, v3

    #@a6
    aput v2, p7, v15

    #@a8
    .line 1907
    add-int/lit8 v15, v15, 0x1

    #@aa
    goto :goto_1

    #@ab
    .line 1911
    .end local v14    # "e":I
    .end local v15    # "i":I
    :cond_6
    move-object/from16 v0, p0

    #@ad
    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@af
    mul-float v2, v2, v17

    #@b1
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
    .line 2110
    instance-of v0, p1, Ljava/lang/String;

    #@4
    if-nez v0, :cond_0

    #@6
    instance-of v0, p1, Landroid/text/SpannedString;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 2111
    instance-of v0, p1, Landroid/text/SpannableString;

    #@c
    .line 2110
    if-eqz v0, :cond_1

    #@e
    .line 2112
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
    .line 2115
    :cond_1
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    #@1f
    if-eqz v0, :cond_2

    #@21
    move-object v0, p1

    #@22
    .line 2116
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
    .line 2120
    :cond_2
    sub-int v3, p3, p2

    #@31
    .line 2121
    .local v3, "contextLen":I
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@34
    move-result-object v1

    #@35
    .line 2122
    .local v1, "buf":[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@38
    .line 2123
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
    .line 2124
    .local v7, "relPos":I
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    #@44
    .line 2125
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
    .line 2156
    or-int v2, p2, p3

    #@2
    or-int v2, v2, p5

    #@4
    sub-int v3, p3, p2

    #@6
    or-int/2addr v2, v3

    #@7
    .line 2157
    sub-int v3, p5, p2

    #@9
    .line 2156
    or-int/2addr v2, v3

    #@a
    .line 2157
    sub-int v3, p3, p5

    #@c
    .line 2156
    or-int/2addr v2, v3

    #@d
    .line 2158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@10
    move-result v3

    #@11
    sub-int/2addr v3, p3

    #@12
    .line 2156
    or-int/2addr v2, v3

    #@13
    or-int v2, v2, p6

    #@15
    if-ltz v2, :cond_0

    #@17
    .line 2159
    const/4 v2, 0x4

    #@18
    move/from16 v0, p6

    #@1a
    if-le v0, v2, :cond_1

    #@1c
    .line 2160
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@1e
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@21
    throw v2

    #@22
    .line 2163
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
    invoke-direct/range {v3 .. v11}, Landroid/graphics/Paint;->native_getTextRunCursor(JLjava/lang/String;IIIII)I

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
    .line 2069
    add-int v2, p2, p3

    #@2
    .line 2070
    .local v2, "contextEnd":I
    or-int v3, p2, v2

    #@4
    or-int v3, v3, p5

    #@6
    sub-int v4, v2, p2

    #@8
    or-int/2addr v3, v4

    #@9
    .line 2071
    sub-int v4, p5, p2

    #@b
    .line 2070
    or-int/2addr v3, v4

    #@c
    .line 2071
    sub-int v4, v2, p5

    #@e
    .line 2070
    or-int/2addr v3, v4

    #@f
    .line 2072
    array-length v4, p1

    #@10
    sub-int/2addr v4, v2

    #@11
    .line 2070
    or-int/2addr v3, v4

    #@12
    or-int v3, v3, p6

    #@14
    if-ltz v3, :cond_0

    #@16
    .line 2073
    const/4 v3, 0x4

    #@17
    move/from16 v0, p6

    #@19
    if-le v0, v3, :cond_1

    #@1b
    .line 2074
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@1d
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@20
    throw v3

    #@21
    .line 2077
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
    invoke-direct/range {v3 .. v11}, Landroid/graphics/Paint;->native_getTextRunCursor(J[CIIIII)I

    #@30
    move-result v3

    #@31
    return v3
.end method

.method public native getTextScaleX()F
.end method

.method public native getTextSize()F
.end method

.method public native getTextSkewX()F
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
    .line 1787
    if-nez p1, :cond_0

    #@3
    .line 1788
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "text cannot be null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 1790
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
    .line 1791
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@1b
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@1e
    throw v2

    #@1f
    .line 1793
    :cond_1
    sub-int v2, p3, p2

    #@21
    array-length v3, p4

    #@22
    if-le v2, v3, :cond_2

    #@24
    .line 1794
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@26
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@29
    throw v2

    #@2a
    .line 1797
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_3

    #@30
    if-ne p2, p3, :cond_4

    #@32
    .line 1798
    :cond_3
    return v4

    #@33
    .line 1800
    :cond_4
    instance-of v2, p1, Ljava/lang/String;

    #@35
    if-eqz v2, :cond_5

    #@37
    .line 1801
    check-cast p1, Ljava/lang/String;

    #@39
    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    #@3c
    move-result v2

    #@3d
    return v2

    #@3e
    .line 1803
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_5
    instance-of v2, p1, Landroid/text/SpannedString;

    #@40
    if-nez v2, :cond_6

    #@42
    .line 1804
    instance-of v2, p1, Landroid/text/SpannableString;

    #@44
    .line 1803
    if-eqz v2, :cond_7

    #@46
    .line 1805
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
    .line 1807
    :cond_7
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    #@51
    if-eqz v2, :cond_8

    #@53
    .line 1808
    check-cast p1, Landroid/text/GraphicsOperations;

    #@55
    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-interface {p1, p2, p3, p4, p0}, Landroid/text/GraphicsOperations;->getTextWidths(II[FLandroid/graphics/Paint;)I

    #@58
    move-result v2

    #@59
    return v2

    #@5a
    .line 1812
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_8
    sub-int v2, p3, p2

    #@5c
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@5f
    move-result-object v0

    #@60
    .line 1813
    .local v0, "buf":[C
    invoke-static {p1, p2, p3, v0, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@63
    .line 1814
    sub-int v2, p3, p2

    #@65
    invoke-virtual {p0, v0, v4, v2, p4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    #@68
    move-result v1

    #@69
    .line 1815
    .local v1, "result":I
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    #@6c
    .line 1816
    return v1
.end method

.method public getTextWidths(Ljava/lang/String;II[F)I
    .locals 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    #@0
    .prologue
    .line 1830
    if-nez p1, :cond_0

    #@2
    .line 1831
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "text cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1833
    :cond_0
    or-int v2, p2, p3

    #@d
    sub-int v3, p3, p2

    #@f
    or-int/2addr v2, v3

    #@10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@13
    move-result v3

    #@14
    sub-int v3, v3, p3

    #@16
    or-int/2addr v2, v3

    #@17
    if-gez v2, :cond_1

    #@19
    .line 1834
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@1b
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@1e
    throw v2

    #@1f
    .line 1836
    :cond_1
    sub-int v2, p3, p2

    #@21
    move-object/from16 v0, p4

    #@23
    array-length v3, v0

    #@24
    if-le v2, v3, :cond_2

    #@26
    .line 1837
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@28
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@2b
    throw v2

    #@2c
    .line 1840
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

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
    .line 1841
    :cond_3
    const/4 v2, 0x0

    #@39
    return v2

    #@3a
    .line 1843
    :cond_4
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@3c
    if-nez v2, :cond_5

    #@3e
    .line 1844
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@40
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@42
    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@44
    move-object v6, p1

    #@45
    move/from16 v7, p2

    #@47
    move/from16 v8, p3

    #@49
    move-object/from16 v10, p4

    #@4b
    invoke-static/range {v2 .. v10}, Landroid/graphics/Paint;->native_getTextWidths(JJLjava/lang/String;III[F)I

    #@4e
    move-result v2

    #@4f
    return v2

    #@50
    .line 1847
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    #@53
    move-result v12

    #@54
    .line 1848
    .local v12, "oldSize":F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@56
    mul-float/2addr v2, v12

    #@57
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@5a
    .line 1849
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@5c
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@5e
    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@60
    move-object v6, p1

    #@61
    move/from16 v7, p2

    #@63
    move/from16 v8, p3

    #@65
    move-object/from16 v10, p4

    #@67
    invoke-static/range {v2 .. v10}, Landroid/graphics/Paint;->native_getTextWidths(JJLjava/lang/String;III[F)I

    #@6a
    move-result v13

    #@6b
    .line 1850
    .local v13, "res":I
    invoke-virtual {p0, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    #@6e
    .line 1851
    const/4 v11, 0x0

    #@6f
    .local v11, "i":I
    :goto_0
    if-ge v11, v13, :cond_6

    #@71
    .line 1852
    aget v2, p4, v11

    #@73
    iget v3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@75
    mul-float/2addr v2, v3

    #@76
    aput v2, p4, v11

    #@78
    .line 1851
    add-int/lit8 v11, v11, 0x1

    #@7a
    goto :goto_0

    #@7b
    .line 1854
    :cond_6
    return v13
.end method

.method public getTextWidths(Ljava/lang/String;[F)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "widths"    # [F

    #@0
    .prologue
    .line 1866
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
    .locals 14
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "widths"    # [F

    #@0
    .prologue
    .line 1750
    if-nez p1, :cond_0

    #@2
    .line 1751
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "text cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1753
    :cond_0
    or-int v2, p2, p3

    #@d
    if-ltz v2, :cond_1

    #@f
    add-int v2, p2, p3

    #@11
    array-length v3, p1

    #@12
    if-le v2, v3, :cond_2

    #@14
    .line 1755
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@16
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@19
    throw v2

    #@1a
    .line 1754
    :cond_2
    move-object/from16 v0, p4

    #@1c
    array-length v2, v0

    #@1d
    move/from16 v0, p3

    #@1f
    if-gt v0, v2, :cond_1

    #@21
    .line 1758
    array-length v2, p1

    #@22
    if-eqz v2, :cond_3

    #@24
    if-nez p3, :cond_4

    #@26
    .line 1759
    :cond_3
    const/4 v2, 0x0

    #@27
    return v2

    #@28
    .line 1761
    :cond_4
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@2a
    if-nez v2, :cond_5

    #@2c
    .line 1762
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2e
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@30
    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@32
    move-object v6, p1

    #@33
    move/from16 v7, p2

    #@35
    move/from16 v8, p3

    #@37
    move-object/from16 v10, p4

    #@39
    invoke-static/range {v2 .. v10}, Landroid/graphics/Paint;->native_getTextWidths(JJ[CIII[F)I

    #@3c
    move-result v2

    #@3d
    return v2

    #@3e
    .line 1765
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    #@41
    move-result v12

    #@42
    .line 1766
    .local v12, "oldSize":F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@44
    mul-float/2addr v2, v12

    #@45
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@48
    .line 1767
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@4a
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@4c
    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@4e
    move-object v6, p1

    #@4f
    move/from16 v7, p2

    #@51
    move/from16 v8, p3

    #@53
    move-object/from16 v10, p4

    #@55
    invoke-static/range {v2 .. v10}, Landroid/graphics/Paint;->native_getTextWidths(JJ[CIII[F)I

    #@58
    move-result v13

    #@59
    .line 1768
    .local v13, "res":I
    invoke-virtual {p0, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    #@5c
    .line 1769
    const/4 v11, 0x0

    #@5d
    .local v11, "i":I
    :goto_0
    if-ge v11, v13, :cond_6

    #@5f
    .line 1770
    aget v2, p4, v11

    #@61
    iget v3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@63
    mul-float/2addr v2, v3

    #@64
    aput v2, p4, v11

    #@66
    .line 1769
    add-int/lit8 v11, v11, 0x1

    #@68
    goto :goto_0

    #@69
    .line 1772
    :cond_6
    return v13
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    #@0
    .prologue
    .line 1059
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    #@2
    return-object v0
.end method

.method public getXfermode()Landroid/graphics/Xfermode;
    .locals 1

    #@0
    .prologue
    .line 972
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    #@2
    return-object v0
.end method

.method public hasGlyph(Ljava/lang/String;)Z
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2269
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@4
    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@6
    move-object v5, p1

    #@7
    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->native_hasGlyph(JJILjava/lang/String;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public hasShadowLayer()Z
    .locals 2

    #@0
    .prologue
    .line 1149
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_hasShadowLayer(J)Z

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
    .line 604
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
    .line 628
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

.method public native isElegantTextHeight()Z
.end method

.method public final isFakeBoldText()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 717
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
    .line 737
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
    .line 649
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
    .line 700
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
    .line 666
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
    .line 683
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
    .line 1573
    if-nez p1, :cond_0

    #@3
    .line 1574
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "text cannot be null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 1576
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
    .line 1577
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@1b
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@1e
    throw v2

    #@1f
    .line 1580
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2

    #@25
    if-ne p2, p3, :cond_3

    #@27
    .line 1581
    :cond_2
    const/4 v2, 0x0

    #@28
    return v2

    #@29
    .line 1583
    :cond_3
    instance-of v2, p1, Ljava/lang/String;

    #@2b
    if-eqz v2, :cond_4

    #@2d
    .line 1584
    check-cast p1, Ljava/lang/String;

    #@2f
    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    #@32
    move-result v2

    #@33
    return v2

    #@34
    .line 1586
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_4
    instance-of v2, p1, Landroid/text/SpannedString;

    #@36
    if-nez v2, :cond_5

    #@38
    .line 1587
    instance-of v2, p1, Landroid/text/SpannableString;

    #@3a
    .line 1586
    if-eqz v2, :cond_6

    #@3c
    .line 1588
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
    .line 1590
    :cond_6
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    #@47
    if-eqz v2, :cond_7

    #@49
    .line 1591
    check-cast p1, Landroid/text/GraphicsOperations;

    #@4b
    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-interface {p1, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    #@4e
    move-result v2

    #@4f
    return v2

    #@50
    .line 1594
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_7
    sub-int v2, p3, p2

    #@52
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    #@55
    move-result-object v0

    #@56
    .line 1595
    .local v0, "buf":[C
    invoke-static {p1, p2, p3, v0, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@59
    .line 1596
    sub-int v2, p3, p2

    #@5b
    invoke-virtual {p0, v0, v4, v2}, Landroid/graphics/Paint;->measureText([CII)F

    #@5e
    move-result v1

    #@5f
    .line 1597
    .local v1, "result":F
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    #@62
    .line 1598
    return v1
.end method

.method public measureText(Ljava/lang/String;)F
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1544
    if-nez p1, :cond_0

    #@2
    .line 1545
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "text cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1548
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_1

    #@11
    .line 1549
    const/4 v2, 0x0

    #@12
    return v2

    #@13
    .line 1552
    :cond_1
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@15
    if-nez v2, :cond_2

    #@17
    .line 1553
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@19
    invoke-direct {p0, p1, v2}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;I)F

    #@1c
    move-result v2

    #@1d
    float-to-double v2, v2

    #@1e
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@21
    move-result-wide v2

    #@22
    double-to-float v2, v2

    #@23
    return v2

    #@24
    .line 1555
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    #@27
    move-result v0

    #@28
    .line 1556
    .local v0, "oldSize":F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@2a
    mul-float/2addr v2, v0

    #@2b
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@2e
    .line 1557
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@30
    invoke-direct {p0, p1, v2}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;I)F

    #@33
    move-result v1

    #@34
    .line 1558
    .local v1, "w":F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    #@37
    .line 1559
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@39
    mul-float/2addr v2, v1

    #@3a
    float-to-double v2, v2

    #@3b
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@3e
    move-result-wide v2

    #@3f
    double-to-float v2, v2

    #@40
    return v2
.end method

.method public measureText(Ljava/lang/String;II)F
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 1514
    if-nez p1, :cond_0

    #@2
    .line 1515
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "text cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1517
    :cond_0
    or-int v2, p2, p3

    #@d
    sub-int v3, p3, p2

    #@f
    or-int/2addr v2, v3

    #@10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@13
    move-result v3

    #@14
    sub-int/2addr v3, p3

    #@15
    or-int/2addr v2, v3

    #@16
    if-gez v2, :cond_1

    #@18
    .line 1518
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@1a
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@1d
    throw v2

    #@1e
    .line 1521
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_2

    #@24
    if-ne p2, p3, :cond_3

    #@26
    .line 1522
    :cond_2
    const/4 v2, 0x0

    #@27
    return v2

    #@28
    .line 1524
    :cond_3
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@2a
    if-nez v2, :cond_4

    #@2c
    .line 1525
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@2e
    invoke-direct {p0, p1, p2, p3, v2}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;III)F

    #@31
    move-result v2

    #@32
    float-to-double v2, v2

    #@33
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@36
    move-result-wide v2

    #@37
    double-to-float v2, v2

    #@38
    return v2

    #@39
    .line 1528
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    #@3c
    move-result v0

    #@3d
    .line 1529
    .local v0, "oldSize":F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@3f
    mul-float/2addr v2, v0

    #@40
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@43
    .line 1530
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@45
    invoke-direct {p0, p1, p2, p3, v2}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;III)F

    #@48
    move-result v1

    #@49
    .line 1531
    .local v1, "w":F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    #@4c
    .line 1532
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@4e
    mul-float/2addr v2, v1

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
.end method

.method public measureText([CII)F
    .locals 4
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 1482
    if-nez p1, :cond_0

    #@2
    .line 1483
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "text cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1485
    :cond_0
    or-int v2, p2, p3

    #@d
    if-ltz v2, :cond_1

    #@f
    add-int v2, p2, p3

    #@11
    array-length v3, p1

    #@12
    if-le v2, v3, :cond_2

    #@14
    .line 1486
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@16
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@19
    throw v2

    #@1a
    .line 1489
    :cond_2
    array-length v2, p1

    #@1b
    if-eqz v2, :cond_3

    #@1d
    if-nez p3, :cond_4

    #@1f
    .line 1490
    :cond_3
    const/4 v2, 0x0

    #@20
    return v2

    #@21
    .line 1492
    :cond_4
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@23
    if-nez v2, :cond_5

    #@25
    .line 1493
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@27
    invoke-direct {p0, p1, p2, p3, v2}, Landroid/graphics/Paint;->native_measureText([CIII)F

    #@2a
    move-result v2

    #@2b
    float-to-double v2, v2

    #@2c
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@2f
    move-result-wide v2

    #@30
    double-to-float v2, v2

    #@31
    return v2

    #@32
    .line 1496
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    #@35
    move-result v0

    #@36
    .line 1497
    .local v0, "oldSize":F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@38
    mul-float/2addr v2, v0

    #@39
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@3c
    .line 1498
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@3e
    invoke-direct {p0, p1, p2, p3, v2}, Landroid/graphics/Paint;->native_measureText([CIII)F

    #@41
    move-result v1

    #@42
    .line 1499
    .local v1, "w":F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    #@45
    .line 1500
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@47
    mul-float/2addr v2, v1

    #@48
    float-to-double v2, v2

    #@49
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@4c
    move-result-wide v2

    #@4d
    double-to-float v2, v2

    #@4e
    return v2
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
    .line 454
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_reset(J)V

    #@b
    .line 455
    const/16 v0, 0x500

    #@d
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    #@10
    .line 462
    iput-object v2, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    #@12
    .line 463
    iput-object v2, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    #@14
    .line 464
    iput-object v2, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    #@16
    .line 465
    iput-object v2, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    #@18
    .line 466
    iput-object v2, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    #@1a
    .line 467
    iput-wide v6, p0, Landroid/graphics/Paint;->mNativeShader:J

    #@1c
    .line 468
    iput-object v2, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    #@1e
    .line 469
    iput-wide v6, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@20
    .line 470
    iput-object v2, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    #@22
    .line 472
    iput-boolean v4, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@24
    .line 473
    iput v3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@26
    .line 474
    iput v3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@28
    .line 476
    const/4 v0, 0x2

    #@29
    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@2b
    .line 477
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    #@32
    .line 478
    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setElegantTextHeight(Z)V

    #@35
    .line 479
    iput-object v2, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    #@37
    .line 453
    return-void
.end method

.method public set(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 488
    if-eq p0, p1, :cond_0

    #@2
    .line 490
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@4
    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->native_set(JJ)V

    #@9
    .line 491
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    #@c
    .line 487
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
    .line 821
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
    .line 820
    return-void
.end method

.method public native setAlpha(I)V
.end method

.method public native setAntiAlias(Z)V
.end method

.method public setBidiFlags(I)V
    .locals 3
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 562
    and-int/lit8 p1, p1, 0x7

    #@2
    .line 563
    const/4 v0, 0x5

    #@3
    if-le p1, v0, :cond_0

    #@5
    .line 564
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
    .line 566
    :cond_0
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    #@21
    .line 560
    return-void
.end method

.method public native setColor(I)V
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .locals 4
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 958
    const-wide/16 v0, 0x0

    #@2
    .line 959
    .local v0, "filterNative":J
    if-eqz p1, :cond_0

    #@4
    .line 960
    iget-wide v0, p1, Landroid/graphics/ColorFilter;->native_instance:J

    #@6
    .line 961
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@8
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->native_setColorFilter(JJ)J

    #@b
    .line 962
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    #@d
    .line 963
    return-object p1
.end method

.method public setCompatibilityScaling(F)V
    .locals 5
    .param p1, "factor"    # F

    #@0
    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    #@2
    .line 521
    float-to-double v0, p1

    #@3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@5
    cmpl-double v0, v0, v2

    #@7
    if-nez v0, :cond_0

    #@9
    .line 522
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@c
    .line 523
    iput v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@e
    iput v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@10
    .line 520
    :goto_0
    return-void

    #@11
    .line 525
    :cond_0
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    #@14
    .line 526
    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    #@16
    .line 527
    div-float v0, v4, p1

    #@18
    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    #@1a
    goto :goto_0
.end method

.method public native setDither(Z)V
.end method

.method public native setElegantTextHeight(Z)V
.end method

.method public native setFakeBoldText(Z)V
.end method

.method public native setFilterBitmap(Z)V
.end method

.method public native setFlags(I)V
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 2
    .param p1, "settings"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1322
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
    .line 1323
    const/4 p1, 0x0

    #@c
    .line 1325
    .end local p1    # "settings":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_2

    #@e
    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    #@10
    if-nez v0, :cond_2

    #@12
    .line 1327
    :cond_1
    return-void

    #@13
    .line 1326
    :cond_2
    if-eqz p1, :cond_3

    #@15
    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    #@17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    .line 1325
    if-nez v0, :cond_1

    #@1d
    .line 1329
    :cond_3
    iput-object p1, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    #@1f
    .line 1330
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@21
    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->native_setFontFeatureSettings(JLjava/lang/String;)V

    #@24
    .line 1321
    return-void
.end method

.method public native setHinting(I)V
.end method

.method public setHyphenEdit(I)V
    .locals 2
    .param p1, "hyphen"    # I

    #@0
    .prologue
    .line 1353
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->native_setHyphenEdit(JI)V

    #@5
    .line 1352
    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 2
    .param p1, "letterSpacing"    # F

    #@0
    .prologue
    .line 1301
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->native_setLetterSpacing(JF)V

    #@5
    .line 1300
    return-void
.end method

.method public native setLinearText(Z)V
.end method

.method public setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .locals 4
    .param p1, "maskfilter"    # Landroid/graphics/MaskFilter;

    #@0
    .prologue
    .line 1041
    const-wide/16 v0, 0x0

    #@2
    .line 1042
    .local v0, "maskfilterNative":J
    if-eqz p1, :cond_0

    #@4
    .line 1043
    iget-wide v0, p1, Landroid/graphics/MaskFilter;->native_instance:J

    #@6
    .line 1045
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@8
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->native_setMaskFilter(JJ)J

    #@b
    .line 1046
    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    #@d
    .line 1047
    return-object p1
.end method

.method public setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .locals 4
    .param p1, "effect"    # Landroid/graphics/PathEffect;

    #@0
    .prologue
    .line 1012
    const-wide/16 v0, 0x0

    #@2
    .line 1013
    .local v0, "effectNative":J
    if-eqz p1, :cond_0

    #@4
    .line 1014
    iget-wide v0, p1, Landroid/graphics/PathEffect;->native_instance:J

    #@6
    .line 1016
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@8
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->native_setPathEffect(JJ)J

    #@b
    .line 1017
    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    #@d
    .line 1018
    return-object p1
.end method

.method public setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .locals 4
    .param p1, "rasterizer"    # Landroid/graphics/Rasterizer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1110
    const-wide/16 v0, 0x0

    #@2
    .line 1111
    .local v0, "rasterizerNative":J
    if-eqz p1, :cond_0

    #@4
    .line 1112
    iget-wide v0, p1, Landroid/graphics/Rasterizer;->native_instance:J

    #@6
    .line 1114
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@8
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->native_setRasterizer(JJ)J

    #@b
    .line 1115
    iput-object p1, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    #@d
    .line 1116
    return-object p1
.end method

.method public setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .locals 0
    .param p1, "shader"    # Landroid/graphics/Shader;

    #@0
    .prologue
    .line 938
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    #@2
    .line 939
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
    .line 1132
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
    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->native_setShadowLayer(JFFFI)V

    #@9
    .line 1131
    return-void
.end method

.method public native setStrikeThruText(Z)V
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 3
    .param p1, "cap"    # Landroid/graphics/Paint$Cap;

    #@0
    .prologue
    .line 881
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    iget v2, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    #@4
    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->native_setStrokeCap(JI)V

    #@7
    .line 880
    return-void
.end method

.method public setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .locals 3
    .param p1, "join"    # Landroid/graphics/Paint$Join;

    #@0
    .prologue
    .line 900
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    iget v2, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    #@4
    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->native_setStrokeJoin(JI)V

    #@7
    .line 899
    return-void
.end method

.method public native setStrokeMiter(F)V
.end method

.method public native setStrokeWidth(F)V
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 3
    .param p1, "style"    # Landroid/graphics/Paint$Style;

    #@0
    .prologue
    .line 770
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    iget v2, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    #@4
    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->native_setStyle(JI)V

    #@7
    .line 769
    return-void
.end method

.method public native setSubpixelText(Z)V
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 3
    .param p1, "align"    # Landroid/graphics/Paint$Align;

    #@0
    .prologue
    .line 1173
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@2
    iget v2, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    #@4
    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->native_setTextAlign(JI)V

    #@7
    .line 1172
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1212
    if-nez p1, :cond_0

    #@2
    .line 1213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "locale cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1215
    :cond_0
    iget-object v0, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    #@d
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    return-void

    #@14
    .line 1216
    :cond_1
    iput-object p1, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    #@16
    .line 1217
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@18
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->native_setTextLocale(JLjava/lang/String;)V

    #@1f
    .line 1211
    return-void
.end method

.method public native setTextScaleX(F)V
.end method

.method public native setTextSize(F)V
.end method

.method public native setTextSkewX(F)V
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    #@0
    .prologue
    .line 1072
    const-wide/16 v0, 0x0

    #@2
    .line 1073
    .local v0, "typefaceNative":J
    if-eqz p1, :cond_0

    #@4
    .line 1074
    iget-wide v0, p1, Landroid/graphics/Typeface;->native_instance:J

    #@6
    .line 1076
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@8
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->native_setTypeface(JJ)J

    #@b
    .line 1077
    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    #@d
    .line 1078
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    #@f
    .line 1079
    return-object p1
.end method

.method public native setUnderlineText(Z)V
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .locals 4
    .param p1, "xfermode"    # Landroid/graphics/Xfermode;

    #@0
    .prologue
    .line 985
    const-wide/16 v0, 0x0

    #@2
    .line 986
    .local v0, "xfermodeNative":J
    if-eqz p1, :cond_0

    #@4
    .line 987
    iget-wide v0, p1, Landroid/graphics/Xfermode;->native_instance:J

    #@6
    .line 988
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    #@8
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->native_setXfermode(JJ)J

    #@b
    .line 989
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    #@d
    .line 990
    return-object p1
.end method
