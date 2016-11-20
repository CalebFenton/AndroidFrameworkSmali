.class public Lcom/android/internal/util/NotificationColorUtil;
.super Ljava/lang/Object;
.source "NotificationColorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NotificationColorUtil"

.field private static sInstance:Lcom/android/internal/util/NotificationColorUtil;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mGrayscaleBitmapCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGrayscaleIconMaxSize:I

.field private final mImageUtils:Lcom/android/internal/util/ImageUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    #@7
    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    new-instance v0, Lcom/android/internal/util/ImageUtils;

    #@5
    invoke-direct {v0}, Lcom/android/internal/util/ImageUtils;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    #@a
    .line 58
    new-instance v0, Ljava/util/WeakHashMap;

    #@c
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@f
    .line 57
    iput-object v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    #@11
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@14
    move-result-object v0

    #@15
    .line 73
    const v1, 0x1050005

    #@18
    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    #@1e
    .line 71
    return-void
.end method

.method private static contrastChange(III)Ljava/lang/String;
    .locals 4
    .param p0, "colorOld"    # I
    .param p1, "colorNew"    # I
    .param p2, "bg"    # I

    #@0
    .prologue
    .line 295
    const-string/jumbo v0, "from %.2f:1 to %.2f:1"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 296
    invoke-static {p0, p2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    #@9
    move-result-wide v2

    #@a
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@d
    move-result-object v2

    #@e
    const/4 v3, 0x0

    #@f
    aput-object v2, v1, v3

    #@11
    .line 297
    invoke-static {p1, p2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    #@14
    move-result-wide v2

    #@15
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@18
    move-result-object v2

    #@19
    const/4 v3, 0x1

    #@1a
    aput-object v2, v1, v3

    #@1c
    .line 295
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public static ensureLargeTextContrast(II)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "bg"    # I

    #@0
    .prologue
    .line 275
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    #@2
    const/4 v2, 0x1

    #@3
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public static ensureTextBackgroundColor(III)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "textColor"    # I
    .param p2, "hintColor"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 290
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    #@3
    invoke-static {p0, p2, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    #@6
    move-result p0

    #@7
    .line 291
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    #@9
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method private static ensureTextContrast(II)I
    .locals 4
    .param p0, "color"    # I
    .param p1, "bg"    # I

    #@0
    .prologue
    .line 283
    const/4 v0, 0x1

    #@1
    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    #@3
    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method private static findContrastColor(IIZD)I
    .locals 21
    .param p0, "color"    # I
    .param p1, "other"    # I
    .param p2, "findFg"    # Z
    .param p3, "minRatio"    # D

    #@0
    .prologue
    .line 243
    if-eqz p2, :cond_0

    #@2
    move/from16 v15, p0

    #@4
    .line 244
    .local v15, "fg":I
    :goto_0
    if-eqz p2, :cond_1

    #@6
    move/from16 v14, p1

    #@8
    .line 245
    .local v14, "bg":I
    :goto_1
    invoke-static {v15, v14}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    #@b
    move-result-wide v10

    #@c
    cmpl-double v10, v10, p3

    #@e
    if-ltz v10, :cond_2

    #@10
    .line 246
    return p0

    #@11
    .line 243
    .end local v14    # "bg":I
    .end local v15    # "fg":I
    :cond_0
    move/from16 v15, p1

    #@13
    .restart local v15    # "fg":I
    goto :goto_0

    #@14
    :cond_1
    move/from16 v14, p0

    #@16
    .line 244
    goto :goto_1

    #@17
    .line 249
    .restart local v14    # "bg":I
    :cond_2
    const/4 v10, 0x3

    #@18
    new-array v0, v10, [D

    #@1a
    move-object/from16 v19, v0

    #@1c
    .line 250
    .local v19, "lab":[D
    if-eqz p2, :cond_3

    #@1e
    move v10, v15

    #@1f
    :goto_2
    move-object/from16 v0, v19

    #@21
    invoke-static {v10, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    #@24
    .line 252
    const-wide/16 v8, 0x0

    #@26
    .local v8, "low":D
    const/4 v10, 0x0

    #@27
    aget-wide v16, v19, v10

    #@29
    .line 253
    .local v16, "high":D
    const/4 v10, 0x1

    #@2a
    aget-wide v4, v19, v10

    #@2c
    .local v4, "a":D
    const/4 v10, 0x2

    #@2d
    aget-wide v6, v19, v10

    #@2f
    .line 254
    .local v6, "b":D
    const/16 v18, 0x0

    #@31
    .local v18, "i":I
    :goto_3
    const/16 v10, 0xf

    #@33
    move/from16 v0, v18

    #@35
    if-ge v0, v10, :cond_6

    #@37
    sub-double v10, v16, v8

    #@39
    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    #@3e
    cmpl-double v10, v10, v12

    #@40
    if-lez v10, :cond_6

    #@42
    .line 255
    add-double v10, v8, v16

    #@44
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    #@46
    div-double v2, v10, v12

    #@48
    .line 256
    .local v2, "l":D
    if-eqz p2, :cond_4

    #@4a
    .line 257
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    #@4d
    move-result v15

    #@4e
    .line 261
    :goto_4
    invoke-static {v15, v14}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    #@51
    move-result-wide v10

    #@52
    cmpl-double v10, v10, p3

    #@54
    if-lez v10, :cond_5

    #@56
    .line 262
    move-wide v8, v2

    #@57
    .line 254
    :goto_5
    add-int/lit8 v18, v18, 0x1

    #@59
    goto :goto_3

    #@5a
    .end local v2    # "l":D
    .end local v4    # "a":D
    .end local v6    # "b":D
    .end local v8    # "low":D
    .end local v16    # "high":D
    .end local v18    # "i":I
    :cond_3
    move v10, v14

    #@5b
    .line 250
    goto :goto_2

    #@5c
    .line 259
    .restart local v2    # "l":D
    .restart local v4    # "a":D
    .restart local v6    # "b":D
    .restart local v8    # "low":D
    .restart local v16    # "high":D
    .restart local v18    # "i":I
    :cond_4
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    #@5f
    move-result v14

    #@60
    goto :goto_4

    #@61
    .line 264
    :cond_5
    move-wide/from16 v16, v2

    #@63
    goto :goto_5

    #@64
    .end local v2    # "l":D
    :cond_6
    move-wide v10, v4

    #@65
    move-wide v12, v6

    #@66
    .line 267
    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    #@69
    move-result v10

    #@6a
    return v10
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 63
    sget-object v1, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 64
    :try_start_0
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 65
    new-instance v0, Lcom/android/internal/util/NotificationColorUtil;

    #@9
    invoke-direct {v0, p0}, Lcom/android/internal/util/NotificationColorUtil;-><init>(Landroid/content/Context;)V

    #@c
    sput-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    #@e
    .line 67
    :cond_0
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 63
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public static lightenColor(II)I
    .locals 8
    .param p0, "baseColor"    # I
    .param p1, "amount"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 351
    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    #@4
    move-result-object v6

    #@5
    .line 352
    .local v6, "result":[D
    invoke-static {p0, v6}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    #@8
    .line 353
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    #@a
    aget-wide v2, v6, v7

    #@c
    int-to-double v4, p1

    #@d
    add-double/2addr v2, v4

    #@e
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    #@11
    move-result-wide v0

    #@12
    aput-wide v0, v6, v7

    #@14
    .line 354
    aget-wide v0, v6, v7

    #@16
    const/4 v2, 0x1

    #@17
    aget-wide v2, v6, v2

    #@19
    const/4 v4, 0x2

    #@1a
    aget-wide v4, v6, v4

    #@1c
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    #@1f
    move-result v0

    #@20
    return v0
.end method

.method private processColor(I)I
    .locals 4
    .param p1, "color"    # I

    #@0
    .prologue
    .line 226
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@3
    move-result v0

    #@4
    .line 227
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    #@7
    move-result v1

    #@8
    rsub-int v1, v1, 0xff

    #@a
    .line 228
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    #@d
    move-result v2

    #@e
    rsub-int v2, v2, 0xff

    #@10
    .line 229
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    #@13
    move-result v3

    #@14
    rsub-int v3, v3, 0xff

    #@16
    .line 226
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method private processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;
    .locals 10
    .param p1, "span"    # Landroid/text/style/TextAppearanceSpan;

    #@0
    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v7

    #@4
    .line 200
    .local v7, "colorStateList":Landroid/content/res/ColorStateList;
    if-eqz v7, :cond_3

    #@6
    .line 201
    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getColors()[I

    #@9
    move-result-object v8

    #@a
    .line 202
    .local v8, "colors":[I
    const/4 v6, 0x0

    #@b
    .line 203
    .local v6, "changed":Z
    const/4 v9, 0x0

    #@c
    .local v9, "i":I
    :goto_0
    array-length v0, v8

    #@d
    if-ge v9, v0, :cond_2

    #@f
    .line 204
    aget v0, v8, v9

    #@11
    invoke-static {v0}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 208
    if-nez v6, :cond_0

    #@19
    .line 209
    array-length v0, v8

    #@1a
    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@1d
    move-result-object v8

    #@1e
    .line 211
    :cond_0
    aget v0, v8, v9

    #@20
    invoke-direct {p0, v0}, Lcom/android/internal/util/NotificationColorUtil;->processColor(I)I

    #@23
    move-result v0

    #@24
    aput v0, v8, v9

    #@26
    .line 212
    const/4 v6, 0x1

    #@27
    .line 203
    :cond_1
    add-int/lit8 v9, v9, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 215
    :cond_2
    if-eqz v6, :cond_3

    #@2c
    .line 216
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    #@2e
    .line 217
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    #@35
    move-result v2

    #@36
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    #@39
    move-result v3

    #@3a
    .line 218
    new-instance v4, Landroid/content/res/ColorStateList;

    #@3c
    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getStates()[[I

    #@3f
    move-result-object v5

    #@40
    invoke-direct {v4, v5, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@43
    .line 219
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    #@46
    move-result-object v5

    #@47
    .line 216
    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    #@4a
    return-object v0

    #@4b
    .line 222
    .end local v6    # "changed":Z
    .end local v8    # "colors":[I
    .end local v9    # "i":I
    :cond_3
    return-object p1
.end method

.method public static resolveColor(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    #@0
    .prologue
    .line 304
    if-nez p1, :cond_0

    #@2
    .line 305
    const v0, 0x1060052

    #@5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 307
    :cond_0
    return p1
.end method

.method public static resolveContrastColor(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationColor"    # I

    #@0
    .prologue
    .line 318
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    #@3
    move-result v3

    #@4
    .line 321
    .local v3, "resolvedColor":I
    const v4, 0x1060054

    #@7
    .line 320
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    #@a
    move-result v0

    #@b
    .line 323
    .local v0, "actionBg":I
    const v4, 0x1060050

    #@e
    .line 322
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    #@11
    move-result v2

    #@12
    .line 325
    .local v2, "notiBg":I
    move v1, v3

    #@13
    .line 326
    .local v1, "color":I
    invoke-static {v3, v0}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(II)I

    #@16
    move-result v1

    #@17
    .line 327
    invoke-static {v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextContrast(II)I

    #@1a
    move-result v1

    #@1b
    .line 329
    if-eq v1, v3, :cond_0

    #@1d
    .line 340
    :cond_0
    return v1
.end method


# virtual methods
.method public invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 181
    instance-of v6, p1, Landroid/text/Spanned;

    #@3
    if-eqz v6, :cond_2

    #@5
    move-object v4, p1

    #@6
    .line 182
    check-cast v4, Landroid/text/Spanned;

    #@8
    .line 183
    .local v4, "ss":Landroid/text/Spanned;
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    #@b
    move-result v6

    #@c
    const-class v7, Ljava/lang/Object;

    #@e
    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    .line 184
    .local v3, "spans":[Ljava/lang/Object;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@14
    invoke-interface {v4}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    #@17
    move-result-object v6

    #@18
    invoke-direct {v0, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@1b
    .line 185
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    array-length v7, v3

    #@1c
    move v6, v5

    #@1d
    :goto_0
    if-ge v6, v7, :cond_1

    #@1f
    aget-object v2, v3, v6

    #@21
    .line 186
    .local v2, "span":Ljava/lang/Object;
    move-object v1, v2

    #@22
    .line 187
    .local v1, "resultSpan":Ljava/lang/Object;
    instance-of v5, v2, Landroid/text/style/TextAppearanceSpan;

    #@24
    if-eqz v5, :cond_0

    #@26
    move-object v5, v2

    #@27
    .line 188
    check-cast v5, Landroid/text/style/TextAppearanceSpan;

    #@29
    invoke-direct {p0, v5}, Lcom/android/internal/util/NotificationColorUtil;->processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;

    #@2c
    move-result-object v1

    #@2d
    .line 190
    :cond_0
    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@30
    move-result v5

    #@31
    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@34
    move-result v8

    #@35
    .line 191
    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@38
    move-result v9

    #@39
    .line 190
    invoke-virtual {v0, v1, v5, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@3c
    .line 185
    add-int/lit8 v5, v6, 0x1

    #@3e
    move v6, v5

    #@3f
    goto :goto_0

    #@40
    .line 193
    .end local v1    # "resultSpan":Ljava/lang/Object;
    .end local v2    # "span":Ljava/lang/Object;
    :cond_1
    return-object v0

    #@41
    .line 195
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v3    # "spans":[Ljava/lang/Object;
    .end local v4    # "ss":Landroid/text/Spanned;
    :cond_2
    return-object p1
.end method

.method public isGrayscaleIcon(Landroid/content/Context;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableResId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 161
    if-eqz p2, :cond_0

    #@3
    .line 163
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {p0, v1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 164
    :catch_0
    move-exception v0

    #@d
    .line 165
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v1, "NotificationColorUtil"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Drawable not found: "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 166
    return v4

    #@28
    .line 169
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    return v4
.end method

.method public isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 140
    if-nez p2, :cond_0

    #@3
    .line 141
    return v1

    #@4
    .line 143
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    #@7
    move-result v0

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 149
    return v1

    #@c
    .line 145
    :pswitch_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p0, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 147
    :pswitch_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    #@18
    move-result v0

    #@19
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;I)Z

    #@1c
    move-result v0

    #@1d
    return v0

    #@1e
    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isGrayscaleIcon(Landroid/graphics/Bitmap;)Z
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@3
    move-result v3

    #@4
    iget v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    #@6
    if-gt v3, v4, :cond_0

    #@8
    .line 86
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@b
    move-result v3

    #@c
    iget v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    #@e
    if-le v3, v4, :cond_1

    #@10
    .line 87
    :cond_0
    const/4 v3, 0x0

    #@11
    return v3

    #@12
    .line 90
    :cond_1
    sget-object v4, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    #@14
    monitor-enter v4

    #@15
    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    #@17
    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/util/Pair;

    #@1d
    .line 92
    .local v0, "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    #@1f
    .line 93
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@21
    check-cast v3, Ljava/lang/Integer;

    #@23
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v3

    #@27
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    #@2a
    move-result v5

    #@2b
    if-ne v3, v5, :cond_2

    #@2d
    .line 94
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2f
    check-cast v3, Ljava/lang/Boolean;

    #@31
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v3

    #@35
    monitor-exit v4

    #@36
    return v3

    #@37
    :cond_2
    monitor-exit v4

    #@38
    .line 100
    iget-object v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    #@3a
    monitor-enter v4

    #@3b
    .line 101
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    #@3d
    invoke-virtual {v3, p1}, Lcom/android/internal/util/ImageUtils;->isGrayscale(Landroid/graphics/Bitmap;)Z

    #@40
    move-result v2

    #@41
    .line 106
    .local v2, "result":Z
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@44
    move-result v1

    #@45
    .local v1, "generationId":I
    monitor-exit v4

    #@46
    .line 108
    sget-object v4, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    #@48
    monitor-enter v4

    #@49
    .line 109
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    #@4b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4e
    move-result-object v5

    #@4f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v6

    #@53
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v3, p1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@5a
    monitor-exit v4

    #@5b
    .line 111
    return v2

    #@5c
    .line 90
    .end local v0    # "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    .end local v1    # "generationId":I
    .end local v2    # "result":Z
    :catchall_0
    move-exception v3

    #@5d
    monitor-exit v4

    #@5e
    throw v3

    #@5f
    .line 100
    .restart local v0    # "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v3

    #@60
    monitor-exit v4

    #@61
    throw v3

    #@62
    .line 108
    .restart local v1    # "generationId":I
    .restart local v2    # "result":Z
    :catchall_2
    move-exception v3

    #@63
    monitor-exit v4

    #@64
    throw v3
.end method

.method public isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 122
    if-nez p1, :cond_0

    #@3
    .line 123
    return v3

    #@4
    .line 124
    :cond_0
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    #@6
    if-eqz v4, :cond_2

    #@8
    move-object v1, p1

    #@9
    .line 125
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    #@b
    .line 126
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@e
    move-result-object v4

    #@f
    if-eqz v4, :cond_1

    #@11
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {p0, v3}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    #@18
    move-result v3

    #@19
    :cond_1
    return v3

    #@1a
    .line 127
    .end local v1    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    instance-of v4, p1, Landroid/graphics/drawable/AnimationDrawable;

    #@1c
    if-eqz v4, :cond_4

    #@1e
    move-object v0, p1

    #@1f
    .line 128
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    #@21
    .line 129
    .local v0, "ad":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    #@24
    move-result v2

    #@25
    .line 130
    .local v2, "count":I
    if-lez v2, :cond_3

    #@27
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {p0, v3}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    #@2e
    move-result v3

    #@2f
    :cond_3
    return v3

    #@30
    .line 131
    .end local v0    # "ad":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "count":I
    :cond_4
    instance-of v4, p1, Landroid/graphics/drawable/VectorDrawable;

    #@32
    if-eqz v4, :cond_5

    #@34
    .line 133
    const/4 v3, 0x1

    #@35
    return v3

    #@36
    .line 135
    :cond_5
    return v3
.end method
