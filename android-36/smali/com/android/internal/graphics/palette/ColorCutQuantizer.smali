.class final Lcom/android/internal/graphics/palette/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    }
.end annotation


# static fields
.field static final blacklist COMPONENT_BLUE:I = -0x1

.field static final blacklist COMPONENT_GREEN:I = -0x2

.field static final blacklist COMPONENT_RED:I = -0x3

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ColorCutQuantizer"

.field private static final blacklist LOG_TIMINGS:Z = false

.field private static final blacklist QUANTIZE_WORD_MASK:I = 0x1f

.field private static final blacklist QUANTIZE_WORD_WIDTH:I = 0x5

.field private static final blacklist VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mColors:[I

.field blacklist mHistogram:[I

.field blacklist mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTempHsl:[F

.field blacklist mTimingLogger:Landroid/util/TimingLogger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 441
    new-instance v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$1;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$1;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mTempHsl:[F

    return-void
.end method

.method private static blacklist approximateToRgb888(I)I
    .registers 4
    .param p0, "color"    # I

    .line 468
    invoke-static {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v0

    invoke-static {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v1

    .line 469
    invoke-static {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v2

    .line 468
    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result v0

    return v0
.end method

.method static blacklist approximateToRgb888(III)I
    .registers 7
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .line 462
    const/4 v0, 0x5

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v2

    .line 463
    invoke-static {p1, v0, v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v3

    .line 464
    invoke-static {p2, v0, v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    .line 462
    invoke-static {v2, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private blacklist generateAverageColors(Ljava/util/Collection;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 208
    .local p1, "vboxes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .local v0, "colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    .line 210
    .local v2, "vbox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getAverageColor()Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v3

    .line 211
    .local v3, "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v2    # "vbox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    .end local v3    # "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    goto :goto_d

    .line 213
    :cond_21
    return-object v0
.end method

.method static blacklist modifySignificantOctet([IIII)V
    .registers 8
    .param p0, "a"    # [I
    .param p1, "dimension"    # I
    .param p2, "lower"    # I
    .param p3, "upper"    # I

    .line 413
    packed-switch p1, :pswitch_data_40

    goto :goto_3e

    .line 428
    :pswitch_4
    move v0, p2

    .local v0, "i":I
    :goto_5
    if-gt v0, p3, :cond_3e

    .line 429
    aget v1, p0, v0

    .line 430
    .local v1, "color":I
    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xa

    .line 431
    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    .line 432
    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v3

    or-int/2addr v2, v3

    aput v2, p0, v0

    .line 428
    .end local v1    # "color":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 419
    .end local v0    # "i":I
    :pswitch_20
    move v0, p2

    .restart local v0    # "i":I
    :goto_21
    if-gt v0, p3, :cond_3c

    .line 420
    aget v1, p0, v0

    .line 421
    .restart local v1    # "color":I
    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xa

    .line 422
    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    .line 423
    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v3

    or-int/2addr v2, v3

    aput v2, p0, v0

    .line 419
    .end local v1    # "color":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 425
    .end local v0    # "i":I
    :cond_3c
    goto :goto_3e

    .line 416
    :pswitch_3d
    nop

    .line 436
    :cond_3e
    :goto_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch -0x3
        :pswitch_3d
        :pswitch_20
        :pswitch_4
    .end packed-switch
.end method

.method private static blacklist modifyWordWidth(III)I
    .registers 6
    .param p0, "value"    # I
    .param p1, "currentWidth"    # I
    .param p2, "targetWidth"    # I

    .line 495
    if-le p2, p1, :cond_7

    .line 497
    sub-int v0, p2, p1

    shl-int v0, p0, v0

    .local v0, "newValue":I
    goto :goto_b

    .line 500
    .end local v0    # "newValue":I
    :cond_7
    sub-int v0, p1, p2

    shr-int v0, p0, v0

    .line 502
    .restart local v0    # "newValue":I
    :goto_b
    const/4 v1, 0x1

    shl-int v2, v1, p2

    sub-int/2addr v2, v1

    and-int v1, v0, v2

    return v1
.end method

.method private static blacklist quantizeFromRgb888(I)I
    .registers 6
    .param p0, "color"    # I

    .line 452
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    .line 453
    .local v0, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3, v1, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v3

    .line 454
    .local v3, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4, v1, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v1

    .line 455
    .local v1, "b":I
    shl-int/lit8 v2, v0, 0xa

    shl-int/lit8 v4, v3, 0x5

    or-int/2addr v2, v4

    or-int/2addr v2, v1

    return v2
.end method

.method private blacklist quantizePixels(I)Ljava/util/List;
    .registers 6
    .param p1, "maxColors"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 165
    .local v0, "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;>;"
    new-instance v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;-><init>(Lcom/android/internal/graphics/palette/ColorCutQuantizer;II)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 169
    invoke-direct {p0, v0, p1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->splitBoxes(Ljava/util/PriorityQueue;I)V

    .line 172
    invoke-direct {p0, v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->generateAverageColors(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static blacklist quantizedBlue(I)I
    .registers 2
    .param p0, "color"    # I

    .line 490
    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method static blacklist quantizedGreen(I)I
    .registers 2
    .param p0, "color"    # I

    .line 483
    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method static blacklist quantizedRed(I)I
    .registers 2
    .param p0, "color"    # I

    .line 476
    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private blacklist splitBoxes(Ljava/util/PriorityQueue;I)V
    .registers 5
    .param p2, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
            ">;I)V"
        }
    .end annotation

    .line 185
    .local p1, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;>;"
    nop

    :goto_1
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-ge v0, p2, :cond_21

    .line 186
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    .line 188
    .local v0, "vbox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 190
    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->splitBox()Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 204
    .end local v0    # "vbox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    goto :goto_1

    .line 202
    .restart local v0    # "vbox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    :cond_20
    return-void

    .line 205
    .end local v0    # "vbox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    :cond_21
    return-void
.end method


# virtual methods
.method public blacklist getQuantizedColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method

.method public blacklist quantize([II)V
    .registers 14
    .param p1, "pixels"    # [I
    .param p2, "maxColors"    # I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mTimingLogger:Landroid/util/TimingLogger;

    .line 91
    const v0, 0x8000

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mHistogram:[I

    .line 92
    .local v0, "hist":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p1

    if-ge v1, v2, :cond_1f

    .line 93
    aget v2, p1, v1

    invoke-static {v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizeFromRgb888(I)I

    move-result v2

    .line 95
    .local v2, "quantizedColor":I
    aput v2, p1, v1

    .line 97
    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    .line 92
    .end local v2    # "quantizedColor":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 105
    .end local v1    # "i":I
    :cond_1f
    const/4 v1, 0x0

    .line 106
    .local v1, "distinctColorCount":I
    const/4 v2, 0x0

    .local v2, "color":I
    :goto_21
    array-length v3, v0

    if-ge v2, v3, :cond_2d

    .line 107
    aget v3, v0, v2

    if-lez v3, :cond_2a

    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 106
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 118
    .end local v2    # "color":I
    :cond_2d
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    .line 119
    .local v2, "colors":[I
    const/4 v3, 0x0

    .line 120
    .local v3, "distinctColorIndex":I
    const/4 v4, 0x0

    .local v4, "color":I
    :goto_33
    array-length v5, v0

    if-ge v4, v5, :cond_42

    .line 121
    aget v5, v0, v4

    if-lez v5, :cond_3f

    .line 122
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "distinctColorIndex":I
    .local v5, "distinctColorIndex":I
    aput v4, v2, v3

    move v3, v5

    .line 120
    .end local v5    # "distinctColorIndex":I
    .restart local v3    # "distinctColorIndex":I
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 130
    .end local v4    # "color":I
    :cond_42
    if-gt v1, p2, :cond_64

    .line 132
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 133
    array-length v4, v2

    const/4 v5, 0x0

    :goto_4d
    if-ge v5, v4, :cond_6a

    aget v6, v2, v5

    .line 134
    .local v6, "color":I
    iget-object v7, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v8, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-static {v6}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result v9

    aget v10, v0, v6

    invoke-direct {v8, v9, v10}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v6    # "color":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 143
    :cond_64
    invoke-direct {p0, p2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizePixels(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 150
    :cond_6a
    return-void
.end method
