.class public Lcom/android/internal/util/ContrastColorUtil;
.super Ljava/lang/Object;
.source "ContrastColorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ContrastColorUtil"

.field private static blacklist sInstance:Lcom/android/internal/util/ContrastColorUtil;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mGrayscaleBitmapCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mGrayscaleIconMaxSize:I

.field private final blacklist mImageUtils:Lcom/android/internal/util/ImageUtils;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/ContrastColorUtil;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/internal/util/ImageUtils;

    invoke-direct {v0}, Lcom/android/internal/util/ImageUtils;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ContrastColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    .line 61
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleIconMaxSize:I

    .line 78
    return-void
.end method

.method public static blacklist calculateContrast(II)D
    .registers 4
    .param p0, "foregroundColor"    # I
    .param p1, "backgroundColor"    # I

    .line 716
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist calculateLuminance(I)D
    .registers 3
    .param p0, "backgroundColor"    # I

    .line 711
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist changeColorLightness(II)I
    .registers 12
    .param p0, "baseColor"    # I
    .param p1, "amount"    # I

    .line 626
    invoke-static {}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v0

    .line 627
    .local v0, "result":[D
    invoke-static {p0, v0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 628
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    int-to-double v4, p1

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 629
    aget-wide v4, v0, v1

    const/4 v1, 0x1

    aget-wide v6, v0, v1

    const/4 v1, 0x2

    aget-wide v8, v0, v1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v1

    return v1
.end method

.method public static blacklist clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 16
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 255
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_73

    .line 256
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 257
    .local v0, "ss":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 258
    .local v1, "spans":[Ljava/lang/Object;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-interface {v0}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 259
    .local v2, "builder":Landroid/text/SpannableStringBuilder;
    array-length v4, v1

    :goto_1c
    if-ge v3, v4, :cond_72

    aget-object v5, v1, v3

    .line 260
    .local v5, "span":Ljava/lang/Object;
    instance-of v6, v5, Landroid/text/NoCopySpan;

    if-eqz v6, :cond_25

    .line 262
    goto :goto_6f

    .line 264
    :cond_25
    move-object v6, v5

    .line 265
    .local v6, "resultSpan":Ljava/lang/Object;
    instance-of v7, v6, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_31

    .line 266
    move-object v7, v5

    check-cast v7, Landroid/text/style/CharacterStyle;

    invoke-virtual {v7}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v6

    .line 268
    :cond_31
    instance-of v7, v6, Landroid/text/style/TextAppearanceSpan;

    if-eqz v7, :cond_56

    .line 269
    move-object v7, v6

    check-cast v7, Landroid/text/style/TextAppearanceSpan;

    .line 270
    .local v7, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v8

    if-eqz v8, :cond_55

    .line 271
    new-instance v9, Landroid/text/style/TextAppearanceSpan;

    .line 272
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v10

    .line 273
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v11

    .line 274
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v12

    .line 276
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v14

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v14}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    move-object v6, v9

    .line 278
    .end local v7    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    :cond_55
    goto :goto_60

    :cond_56
    instance-of v7, v6, Landroid/text/style/ForegroundColorSpan;

    if-nez v7, :cond_6f

    instance-of v7, v6, Landroid/text/style/BackgroundColorSpan;

    if-eqz v7, :cond_5f

    .line 280
    goto :goto_6f

    .line 282
    :cond_5f
    move-object v6, v5

    .line 284
    :goto_60
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 285
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 284
    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 259
    .end local v5    # "span":Ljava/lang/Object;
    .end local v6    # "resultSpan":Ljava/lang/Object;
    :cond_6f
    :goto_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 287
    :cond_72
    return-object v2

    .line 289
    .end local v0    # "ss":Landroid/text/Spanned;
    .end local v1    # "spans":[Ljava/lang/Object;
    .end local v2    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_73
    return-object p0
.end method

.method public static blacklist compositeColors(II)I
    .registers 3
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    .line 727
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->compositeColors(II)I

    move-result v0

    return v0
.end method

.method private static blacklist contrastChange(III)Ljava/lang/String;
    .registers 6
    .param p0, "colorOld"    # I
    .param p1, "colorNew"    # I
    .param p2, "bg"    # I

    .line 556
    nop

    .line 557
    invoke-static {p0, p2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 558
    invoke-static {p1, p2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 556
    const-string v1, "from %.2f:1 to %.2f:1"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ensureColorSpanContrast(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 25
    .param p0, "charSequence"    # Ljava/lang/CharSequence;
    .param p1, "background"    # I

    .line 302
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-nez v0, :cond_7

    .line 303
    return-object v0

    .line 305
    :cond_7
    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_ea

    .line 306
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    .line 307
    .local v2, "ss":Landroid/text/Spanned;
    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 308
    .local v3, "spans":[Ljava/lang/Object;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-interface {v2}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 309
    .local v4, "builder":Landroid/text/SpannableStringBuilder;
    array-length v6, v3

    move v7, v5

    :goto_24
    if-ge v7, v6, :cond_e9

    aget-object v8, v3, v7

    .line 310
    .local v8, "span":Ljava/lang/Object;
    instance-of v9, v8, Landroid/text/NoCopySpan;

    if-eqz v9, :cond_30

    .line 312
    move-object/from16 v16, v3

    goto/16 :goto_e0

    .line 314
    :cond_30
    move-object v9, v8

    .line 315
    .local v9, "resultSpan":Ljava/lang/Object;
    invoke-interface {v2, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 316
    .local v10, "spanStart":I
    invoke-interface {v2, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 317
    .local v11, "spanEnd":I
    sub-int v12, v11, v10

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-ne v12, v13, :cond_43

    const/4 v12, 0x1

    goto :goto_44

    :cond_43
    move v12, v5

    .line 318
    .local v12, "fullLength":Z
    :goto_44
    instance-of v13, v9, Landroid/text/style/CharacterStyle;

    if-eqz v13, :cond_4f

    .line 319
    move-object v13, v8

    check-cast v13, Landroid/text/style/CharacterStyle;

    invoke-virtual {v13}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v9

    .line 321
    :cond_4f
    instance-of v13, v9, Landroid/text/style/TextAppearanceSpan;

    if-eqz v13, :cond_b6

    .line 322
    move-object v13, v9

    check-cast v13, Landroid/text/style/TextAppearanceSpan;

    .line 323
    .local v13, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 324
    .local v14, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v14, :cond_b3

    .line 325
    if-eqz v12, :cond_64

    .line 327
    const/4 v14, 0x0

    move-object/from16 v16, v3

    move-object/from16 v21, v14

    goto :goto_9b

    .line 329
    :cond_64
    invoke-virtual {v14}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v15

    .line 330
    .local v15, "colors":[I
    array-length v5, v15

    new-array v5, v5, [I

    .line 331
    .local v5, "newColors":[I
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "i":I
    :goto_6f
    move-object/from16 v16, v3

    .end local v3    # "spans":[Ljava/lang/Object;
    .local v16, "spans":[Ljava/lang/Object;
    array-length v3, v5

    if-ge v0, v3, :cond_87

    .line 332
    invoke-static {v1}, Lcom/android/internal/util/ContrastColorUtil;->isColorDark(I)Z

    move-result v3

    .line 333
    .local v3, "isBgDark":Z
    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    aget v0, v15, v17

    invoke-static {v0, v1, v3}, Lcom/android/internal/util/ContrastColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v0

    aput v0, v5, v17

    .line 331
    .end local v3    # "isBgDark":Z
    add-int/lit8 v0, v17, 0x1

    move-object/from16 v3, v16

    .end local v17    # "i":I
    .restart local v0    # "i":I
    goto :goto_6f

    :cond_87
    move/from16 v17, v0

    .line 336
    .end local v0    # "i":I
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-virtual {v14}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v3

    invoke-virtual {v3}, [[I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    invoke-direct {v0, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v14, v0

    move-object/from16 v21, v14

    .line 339
    .end local v5    # "newColors":[I
    .end local v14    # "textColor":Landroid/content/res/ColorStateList;
    .end local v15    # "colors":[I
    .local v21, "textColor":Landroid/content/res/ColorStateList;
    :goto_9b
    new-instance v17, Landroid/text/style/TextAppearanceSpan;

    .line 340
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v18

    .line 341
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v19

    .line 342
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v20

    .line 344
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v22

    invoke-direct/range {v17 .. v22}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    move-object/from16 v9, v17

    goto :goto_b5

    .line 324
    .end local v16    # "spans":[Ljava/lang/Object;
    .end local v21    # "textColor":Landroid/content/res/ColorStateList;
    .local v3, "spans":[Ljava/lang/Object;
    .restart local v14    # "textColor":Landroid/content/res/ColorStateList;
    :cond_b3
    move-object/from16 v16, v3

    .line 346
    .end local v3    # "spans":[Ljava/lang/Object;
    .end local v13    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .end local v14    # "textColor":Landroid/content/res/ColorStateList;
    .restart local v16    # "spans":[Ljava/lang/Object;
    :goto_b5
    goto :goto_d7

    .end local v16    # "spans":[Ljava/lang/Object;
    .restart local v3    # "spans":[Ljava/lang/Object;
    :cond_b6
    move-object/from16 v16, v3

    .end local v3    # "spans":[Ljava/lang/Object;
    .restart local v16    # "spans":[Ljava/lang/Object;
    instance-of v0, v9, Landroid/text/style/ForegroundColorSpan;

    if-eqz v0, :cond_d6

    .line 347
    if-eqz v12, :cond_c0

    .line 348
    const/4 v9, 0x0

    goto :goto_d7

    .line 350
    :cond_c0
    move-object v0, v9

    check-cast v0, Landroid/text/style/ForegroundColorSpan;

    .line 351
    .local v0, "originalSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v0}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    .line 352
    .local v3, "foregroundColor":I
    invoke-static {v1}, Lcom/android/internal/util/ContrastColorUtil;->isColorDark(I)Z

    move-result v5

    .line 353
    .local v5, "isBgDark":Z
    invoke-static {v3, v1, v5}, Lcom/android/internal/util/ContrastColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v3

    .line 355
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v13, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object v9, v13

    .line 356
    .end local v0    # "originalSpan":Landroid/text/style/ForegroundColorSpan;
    .end local v3    # "foregroundColor":I
    .end local v5    # "isBgDark":Z
    goto :goto_d7

    .line 358
    :cond_d6
    move-object v9, v8

    .line 360
    :goto_d7
    if-eqz v9, :cond_e0

    .line 361
    invoke-interface {v2, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v4, v9, v10, v11, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 309
    .end local v8    # "span":Ljava/lang/Object;
    .end local v9    # "resultSpan":Ljava/lang/Object;
    .end local v10    # "spanStart":I
    .end local v11    # "spanEnd":I
    .end local v12    # "fullLength":Z
    :cond_e0
    :goto_e0
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    goto/16 :goto_24

    .line 364
    .end local v16    # "spans":[Ljava/lang/Object;
    .local v3, "spans":[Ljava/lang/Object;
    :cond_e9
    return-object v4

    .line 366
    .end local v2    # "ss":Landroid/text/Spanned;
    .end local v3    # "spans":[Ljava/lang/Object;
    .end local v4    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_ea
    return-object p0
.end method

.method public static blacklist ensureContrast(IIZD)I
    .registers 6
    .param p0, "color"    # I
    .param p1, "bg"    # I
    .param p2, "isBgDarker"    # Z
    .param p3, "minRatio"    # D

    .line 542
    const/4 v0, 0x1

    if-eqz p2, :cond_8

    .line 543
    invoke-static {p0, p1, v0, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    goto :goto_c

    .line 544
    :cond_8
    invoke-static {p0, p1, v0, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v0

    .line 542
    :goto_c
    return v0
.end method

.method public static blacklist ensureLargeTextContrast(IIZ)I
    .registers 6
    .param p0, "color"    # I
    .param p1, "bg"    # I
    .param p2, "isBgDarker"    # Z

    .line 517
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    const/4 v2, 0x1

    if-eqz p2, :cond_a

    .line 518
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    goto :goto_e

    .line 519
    :cond_a
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v0

    .line 517
    :goto_e
    return v0
.end method

.method public static blacklist ensureTextBackgroundColor(III)I
    .registers 6
    .param p0, "color"    # I
    .param p1, "textColor"    # I
    .param p2, "hintColor"    # I

    .line 551
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    const/4 v2, 0x0

    invoke-static {p0, p2, v2, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result p0

    .line 552
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v0

    return v0
.end method

.method public static blacklist ensureTextContrast(IIZ)I
    .registers 5
    .param p0, "color"    # I
    .param p1, "bg"    # I
    .param p2, "isBgDarker"    # Z

    .line 529
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->ensureContrast(IIZD)I

    move-result v0

    return v0
.end method

.method public static blacklist ensureTextContrastOnBlack(I)I
    .registers 5
    .param p0, "color"    # I

    .line 507
    const/4 v0, 0x1

    const-wide/high16 v1, 0x4028000000000000L    # 12.0

    const/high16 v3, -0x1000000

    invoke-static {p0, v3, v0, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    return v0
.end method

.method public static blacklist findAlphaToMeetContrast(IID)I
    .registers 16
    .param p0, "color"    # I
    .param p1, "backgroundColor"    # I
    .param p2, "minRatio"    # D

    .line 443
    move v0, p0

    .line 444
    .local v0, "fg":I
    move v1, p1

    .line 445
    .local v1, "bg":I
    invoke-static {v0, v1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    cmpl-double v2, v2, p2

    if-ltz v2, :cond_b

    .line 446
    return p0

    .line 448
    :cond_b
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 449
    .local v2, "startAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 450
    .local v3, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 451
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 453
    .local v5, "b":I
    move v6, v2

    .local v6, "low":I
    const/16 v7, 0xff

    .line 454
    .local v7, "high":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1f
    const/16 v9, 0xf

    if-ge v8, v9, :cond_3d

    sub-int v9, v7, v6

    if-lez v9, :cond_3d

    .line 455
    add-int v9, v6, v7

    div-int/lit8 v9, v9, 0x2

    .line 456
    .local v9, "alpha":I
    invoke-static {v9, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 457
    invoke-static {v0, v1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v10, v10, p2

    if-lez v10, :cond_39

    .line 458
    move v7, v9

    goto :goto_3a

    .line 460
    :cond_39
    move v6, v9

    .line 454
    .end local v9    # "alpha":I
    :goto_3a
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    .line 463
    .end local v8    # "i":I
    :cond_3d
    invoke-static {v7, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    return v8
.end method

.method public static blacklist findContrastColor(IIZD)I
    .registers 21
    .param p0, "color"    # I
    .param p1, "other"    # I
    .param p2, "findFg"    # Z
    .param p3, "minRatio"    # D

    .line 407
    if-eqz p2, :cond_5

    move/from16 v0, p0

    goto :goto_7

    :cond_5
    move/from16 v0, p1

    .line 408
    .local v0, "fg":I
    :goto_7
    if-eqz p2, :cond_c

    move/from16 v1, p1

    goto :goto_e

    :cond_c
    move/from16 v1, p0

    .line 409
    .local v1, "bg":I
    :goto_e
    invoke-static {v0, v1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    cmpl-double v2, v2, p3

    if-ltz v2, :cond_17

    .line 410
    return p0

    .line 413
    :cond_17
    const/4 v2, 0x3

    new-array v2, v2, [D

    .line 414
    .local v2, "lab":[D
    if-eqz p2, :cond_1e

    move v3, v0

    goto :goto_1f

    :cond_1e
    move v3, v1

    :goto_1f
    invoke-static {v3, v2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 416
    const-wide/16 v3, 0x0

    .local v3, "low":D
    const/4 v5, 0x0

    aget-wide v5, v2, v5

    .line 417
    .local v5, "high":D
    const/4 v7, 0x1

    aget-wide v10, v2, v7

    .local v10, "a":D
    const/4 v7, 0x2

    aget-wide v12, v2, v7

    .line 418
    .local v12, "b":D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2e
    const/16 v8, 0xf

    if-ge v7, v8, :cond_5b

    sub-double v8, v5, v3

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v8, v8, v14

    if-lez v8, :cond_5b

    .line 419
    add-double v8, v3, v5

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v14

    .line 420
    .local v8, "l":D
    if-eqz p2, :cond_49

    .line 421
    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v0

    goto :goto_4d

    .line 423
    :cond_49
    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v1

    .line 425
    :goto_4d
    invoke-static {v0, v1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v14

    cmpl-double v14, v14, p3

    if-lez v14, :cond_57

    .line 426
    move-wide v3, v8

    goto :goto_58

    .line 428
    :cond_57
    move-wide v5, v8

    .line 418
    .end local v8    # "l":D
    :goto_58
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 431
    .end local v7    # "i":I
    :cond_5b
    move-wide v8, v3

    .end local v3    # "low":D
    .local v8, "low":D
    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v3

    return v3
.end method

.method public static blacklist findContrastColorAgainstDark(IIZD)I
    .registers 16
    .param p0, "color"    # I
    .param p1, "other"    # I
    .param p2, "findFg"    # Z
    .param p3, "minRatio"    # D

    .line 478
    if-eqz p2, :cond_4

    move v0, p0

    goto :goto_5

    :cond_4
    move v0, p1

    .line 479
    .local v0, "fg":I
    :goto_5
    if-eqz p2, :cond_9

    move v1, p1

    goto :goto_a

    :cond_9
    move v1, p0

    .line 480
    .local v1, "bg":I
    :goto_a
    invoke-static {v0, v1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    cmpl-double v2, v2, p3

    if-ltz v2, :cond_13

    .line 481
    return p0

    .line 484
    :cond_13
    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 485
    .local v2, "hsl":[F
    if-eqz p2, :cond_1a

    move v3, v0

    goto :goto_1b

    :cond_1a
    move v3, v1

    :goto_1b
    invoke-static {v3, v2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->colorToHSL(I[F)V

    .line 487
    const/4 v3, 0x2

    aget v4, v2, v3

    .local v4, "low":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 488
    .local v5, "high":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_24
    const/16 v7, 0xf

    if-ge v6, v7, :cond_54

    sub-float v7, v5, v4

    float-to-double v7, v7

    const-wide v9, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v7, v7, v9

    if-lez v7, :cond_54

    .line 489
    add-float v7, v4, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 490
    .local v7, "l":F
    aput v7, v2, v3

    .line 491
    if-eqz p2, :cond_42

    .line 492
    invoke-static {v2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    move-result v0

    goto :goto_46

    .line 494
    :cond_42
    invoke-static {v2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    move-result v1

    .line 496
    :goto_46
    invoke-static {v0, v1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v8

    cmpl-double v8, v8, p3

    if-lez v8, :cond_50

    .line 497
    move v5, v7

    goto :goto_51

    .line 499
    :cond_50
    move v4, v7

    .line 488
    .end local v7    # "l":F
    :goto_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 502
    .end local v6    # "i":I
    :cond_54
    aput v5, v2, v3

    .line 503
    invoke-static {v2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    move-result v3

    return v3
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 67
    sget-object v0, Lcom/android/internal/util/ContrastColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_3
    sget-object v1, Lcom/android/internal/util/ContrastColorUtil;->sInstance:Lcom/android/internal/util/ContrastColorUtil;

    if-nez v1, :cond_e

    .line 69
    new-instance v1, Lcom/android/internal/util/ContrastColorUtil;

    invoke-direct {v1, p0}, Lcom/android/internal/util/ContrastColorUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/util/ContrastColorUtil;->sInstance:Lcom/android/internal/util/ContrastColorUtil;

    .line 71
    :cond_e
    sget-object v1, Lcom/android/internal/util/ContrastColorUtil;->sInstance:Lcom/android/internal/util/ContrastColorUtil;

    monitor-exit v0

    return-object v1

    .line 72
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static blacklist getMutedColor(IF)I
    .registers 4
    .param p0, "color"    # I
    .param p1, "alpha"    # F

    .line 696
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->setAlphaComponent(II)I

    move-result v0

    .line 698
    .local v0, "whiteScrim":I
    invoke-static {v0, p0}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result v1

    return v1
.end method

.method public static blacklist getShiftedColor(II)I
    .registers 12
    .param p0, "color"    # I
    .param p1, "amount"    # I

    .line 678
    invoke-static {}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v0

    .line 679
    .local v0, "result":[D
    invoke-static {p0, v0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 680
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1d

    .line 681
    aget-wide v2, v0, v1

    int-to-double v4, p1

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_29

    .line 683
    :cond_1d
    aget-wide v2, v0, v1

    int-to-double v4, p1

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 685
    :goto_29
    aget-wide v4, v0, v1

    const/4 v1, 0x1

    aget-wide v6, v0, v1

    const/4 v1, 0x2

    aget-wide v8, v0, v1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v1

    return v1
.end method

.method public static blacklist isColorDark(I)Z
    .registers 5
    .param p0, "color"    # I

    .line 379
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fc6edb1281d81ceL    # 0.17912878474

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static blacklist isColorDarkLab(I)Z
    .registers 7
    .param p0, "color"    # I

    .line 384
    invoke-static {}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v0

    .line 385
    .local v0, "result":[D
    invoke-static {p0, v0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 386
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public static blacklist isColorLight(I)Z
    .registers 5
    .param p0, "backgroundColor"    # I

    .line 732
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist processColor(I)I
    .registers 6
    .param p1, "color"    # I

    .line 390
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 391
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    .line 392
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    rsub-int v2, v2, 0xff

    .line 393
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    .line 390
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private blacklist processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;
    .registers 12
    .param p1, "span"    # Landroid/text/style/TextAppearanceSpan;

    .line 223
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 224
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_4b

    .line 225
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v1

    .line 226
    .local v1, "colors":[I
    const/4 v2, 0x0

    .line 227
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    array-length v4, v1

    if-ge v3, v4, :cond_2a

    .line 228
    aget v4, v1, v3

    invoke-static {v4}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 232
    if-nez v2, :cond_1e

    .line 233
    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 235
    :cond_1e
    aget v4, v1, v3

    invoke-direct {p0, v4}, Lcom/android/internal/util/ContrastColorUtil;->processColor(I)I

    move-result v4

    aput v4, v1, v3

    .line 236
    const/4 v2, 0x1

    .line 227
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 239
    .end local v3    # "i":I
    :cond_2a
    if-eqz v2, :cond_4b

    .line 240
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    .line 241
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v6

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v7

    new-instance v8, Landroid/content/res/ColorStateList;

    .line 242
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v3

    invoke-direct {v8, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 243
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 240
    return-object v4

    .line 246
    .end local v1    # "colors":[I
    .end local v2    # "changed":Z
    :cond_4b
    return-object p1
.end method

.method public static blacklist resolveColor(Landroid/content/Context;IZ)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I
    .param p2, "defaultBackgroundIsDark"    # Z

    .line 565
    if-nez p1, :cond_11

    .line 566
    if-eqz p2, :cond_8

    .line 567
    const v0, 0x10602fb

    goto :goto_b

    .line 568
    :cond_8
    const v0, 0x10602fc

    :goto_b
    nop

    .line 569
    .local v0, "res":I
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    .line 571
    .end local v0    # "res":I
    :cond_11
    return p1
.end method

.method public static blacklist resolveContrastColor(Landroid/content/Context;II)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationColor"    # I
    .param p2, "backgroundColor"    # I

    .line 583
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v0

    return v0
.end method

.method public static blacklist resolveContrastColor(Landroid/content/Context;IIZ)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "isDark"    # Z

    .line 599
    invoke-static {p0, p1, p3}, Lcom/android/internal/util/ContrastColorUtil;->resolveColor(Landroid/content/Context;IZ)I

    move-result v0

    .line 601
    .local v0, "resolvedColor":I
    move v1, v0

    .line 602
    .local v1, "color":I
    invoke-static {v1, p2, p3}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextContrast(IIZ)I

    move-result v1

    .line 604
    nop

    .line 614
    return v1
.end method

.method public static blacklist resolveDefaultColor(Landroid/content/Context;IZ)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backgroundColor"    # I
    .param p2, "defaultBackgroundIsDark"    # Z

    .line 658
    invoke-static {p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->shouldUseDark(IZ)Z

    move-result v0

    .line 659
    .local v0, "useDark":Z
    if-eqz v0, :cond_e

    .line 660
    const v1, 0x10602fc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    .line 663
    :cond_e
    const v1, 0x10602fb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static blacklist resolvePrimaryColor(Landroid/content/Context;IZ)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backgroundColor"    # I
    .param p2, "defaultBackgroundIsDark"    # Z

    .line 634
    invoke-static {p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->shouldUseDark(IZ)Z

    move-result v0

    .line 635
    .local v0, "useDark":Z
    if-eqz v0, :cond_e

    .line 636
    const v1, 0x1060300

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    .line 639
    :cond_e
    const v1, 0x10602ff

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static blacklist resolveSecondaryColor(Landroid/content/Context;IZ)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backgroundColor"    # I
    .param p2, "defaultBackgroundIsDark"    # Z

    .line 646
    invoke-static {p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->shouldUseDark(IZ)Z

    move-result v0

    .line 647
    .local v0, "useDark":Z
    if-eqz v0, :cond_e

    .line 648
    const v1, 0x1060304

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    .line 651
    :cond_e
    const v1, 0x1060303

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static blacklist satisfiesTextContrast(II)Z
    .registers 6
    .param p0, "backgroundColor"    # I
    .param p1, "foregroundColor"    # I

    .line 720
    invoke-static {p1, p0}, Lcom/android/internal/util/ContrastColorUtil;->calculateContrast(II)D

    move-result-wide v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static blacklist shouldUseDark(IZ)Z
    .registers 6
    .param p0, "backgroundColor"    # I
    .param p1, "defaultBackgroundIsDark"    # Z

    .line 702
    if-nez p0, :cond_5

    .line 703
    xor-int/lit8 v0, p1, 0x1

    return v0

    .line 707
    :cond_5
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fc6edb1281d81ceL    # 0.17912878474

    cmpl-double v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method


# virtual methods
.method public blacklist invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 13
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 185
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_6c

    .line 186
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 187
    .local v0, "ss":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 188
    .local v1, "spans":[Ljava/lang/Object;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-interface {v0}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 189
    .local v2, "builder":Landroid/text/SpannableStringBuilder;
    array-length v4, v1

    :goto_1c
    if-ge v3, v4, :cond_6b

    aget-object v5, v1, v3

    .line 190
    .local v5, "span":Ljava/lang/Object;
    instance-of v6, v5, Landroid/text/NoCopySpan;

    if-eqz v6, :cond_25

    .line 192
    goto :goto_68

    .line 194
    :cond_25
    move-object v6, v5

    .line 195
    .local v6, "resultSpan":Ljava/lang/Object;
    instance-of v7, v6, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_31

    .line 196
    move-object v7, v5

    check-cast v7, Landroid/text/style/CharacterStyle;

    invoke-virtual {v7}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v6

    .line 198
    :cond_31
    instance-of v7, v6, Landroid/text/style/TextAppearanceSpan;

    if-eqz v7, :cond_42

    .line 199
    move-object v7, v5

    check-cast v7, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {p0, v7}, Lcom/android/internal/util/ContrastColorUtil;->processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v7

    .line 201
    .local v7, "processedSpan":Landroid/text/style/TextAppearanceSpan;
    if-eq v7, v6, :cond_40

    .line 202
    move-object v6, v7

    goto :goto_41

    .line 205
    :cond_40
    move-object v6, v5

    .line 207
    .end local v7    # "processedSpan":Landroid/text/style/TextAppearanceSpan;
    :goto_41
    goto :goto_59

    :cond_42
    instance-of v7, v6, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_58

    .line 208
    move-object v7, v6

    check-cast v7, Landroid/text/style/ForegroundColorSpan;

    .line 209
    .local v7, "originalSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v8

    .line 210
    .local v8, "foregroundColor":I
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v8}, Lcom/android/internal/util/ContrastColorUtil;->processColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object v6, v9

    .line 211
    .end local v7    # "originalSpan":Landroid/text/style/ForegroundColorSpan;
    .end local v8    # "foregroundColor":I
    goto :goto_59

    .line 212
    :cond_58
    move-object v6, v5

    .line 214
    :goto_59
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 215
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 214
    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 189
    .end local v5    # "span":Ljava/lang/Object;
    .end local v6    # "resultSpan":Ljava/lang/Object;
    :goto_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 217
    :cond_6b
    return-object v2

    .line 219
    .end local v0    # "ss":Landroid/text/Spanned;
    .end local v1    # "spans":[Ljava/lang/Object;
    .end local v2    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_6c
    return-object p1
.end method

.method public blacklist isGrayscaleIcon(Landroid/content/Context;I)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableResId"    # I

    .line 165
    const/4 v0, 0x0

    if-eqz p2, :cond_26

    .line 167
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_b} :catch_c

    return v0

    .line 168
    :catch_c
    move-exception v1

    .line 169
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drawable not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContrastColorUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v0

    .line 173
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    :cond_26
    return v0
.end method

.method public blacklist isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .line 144
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 145
    return v0

    .line 147
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 153
    return v0

    .line 151
    :pswitch_c
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 149
    :pswitch_15
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method

.method public blacklist isGrayscaleIcon(Landroid/graphics/Bitmap;)Z
    .registers 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleIconMaxSize:I

    if-gt v0, v1, :cond_64

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleIconMaxSize:I

    if-le v0, v1, :cond_11

    goto :goto_64

    .line 94
    :cond_11
    sget-object v0, Lcom/android/internal/util/ContrastColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_14
    iget-object v1, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 96
    .local v1, "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_36

    .line 97
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v3

    if-ne v2, v3, :cond_36

    .line 98
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 101
    .end local v1    # "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_61

    .line 104
    iget-object v1, p0, Lcom/android/internal/util/ContrastColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    monitor-enter v1

    .line 105
    :try_start_3a
    iget-object v0, p0, Lcom/android/internal/util/ContrastColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/ImageUtils;->isGrayscale(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 110
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v2

    .line 111
    .local v2, "generationId":I
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_5e

    .line 112
    sget-object v3, Lcom/android/internal/util/ContrastColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 113
    :try_start_48
    iget-object v1, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    monitor-exit v3

    .line 115
    return v0

    .line 114
    :catchall_5b
    move-exception v1

    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_48 .. :try_end_5d} :catchall_5b

    throw v1

    .line 111
    .end local v0    # "result":Z
    .end local v2    # "generationId":I
    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v0

    .line 101
    :catchall_61
    move-exception v1

    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v1

    .line 91
    :cond_64
    :goto_64
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z
    .registers 7
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 126
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 127
    return v0

    .line 128
    :cond_4
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    .line 129
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 130
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v0, v2

    :cond_1d
    return v0

    .line 131
    .end local v1    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1e
    instance-of v1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_37

    .line 132
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 133
    .local v1, "ad":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    .line 134
    .local v3, "count":I
    if-lez v3, :cond_36

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_36

    move v0, v2

    :cond_36
    return v0

    .line 135
    .end local v1    # "ad":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "count":I
    :cond_37
    instance-of v1, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v1, :cond_3c

    .line 137
    return v2

    .line 139
    :cond_3c
    return v0
.end method
