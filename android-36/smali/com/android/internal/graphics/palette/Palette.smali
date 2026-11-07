.class public final Lcom/android/internal/graphics/palette/Palette;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/Palette$Builder;,
        Lcom/android/internal/graphics/palette/Palette$Swatch;,
        Lcom/android/internal/graphics/palette/Palette$Filter;,
        Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;
    }
.end annotation


# static fields
.field static final blacklist DEFAULT_CALCULATE_NUMBER_COLORS:I = 0x10

.field static final blacklist DEFAULT_FILTER:Lcom/android/internal/graphics/palette/Palette$Filter;

.field static final blacklist DEFAULT_RESIZE_BITMAP_AREA:I = 0x3100

.field static final blacklist LOG_TAG:Ljava/lang/String; = "Palette"


# instance fields
.field private final blacklist mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

.field private final blacklist mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 479
    new-instance v0, Lcom/android/internal/graphics/palette/Palette$1;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/Palette$1;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/palette/Palette;->DEFAULT_FILTER:Lcom/android/internal/graphics/palette/Palette$Filter;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p1, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    .line 96
    invoke-direct {p0}, Lcom/android/internal/graphics/palette/Palette;->findDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 97
    return-void
.end method

.method private blacklist findDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .registers 7

    .line 113
    const/high16 v0, -0x80000000

    .line 114
    .local v0, "maxPop":I
    const/4 v1, 0x0

    .line 115
    .local v1, "maxSwatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    :goto_a
    if-ge v2, v3, :cond_22

    .line 116
    iget-object v4, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 117
    .local v4, "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    invoke-virtual {v4}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v5

    if-le v5, v0, :cond_1f

    .line 118
    move-object v1, v4

    .line 119
    invoke-virtual {v4}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v0

    .line 115
    .end local v4    # "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 122
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_22
    return-object v1
.end method

.method public static blacklist from(Landroid/graphics/Bitmap;Lcom/android/internal/graphics/palette/Quantizer;)Lcom/android/internal/graphics/palette/Palette$Builder;
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "quantizer"    # Lcom/android/internal/graphics/palette/Quantizer;

    .line 74
    new-instance v0, Lcom/android/internal/graphics/palette/Palette$Builder;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/graphics/palette/Palette$Builder;-><init>(Landroid/graphics/Bitmap;Lcom/android/internal/graphics/palette/Quantizer;)V

    return-object v0
.end method

.method public static blacklist from(Ljava/util/List;)Lcom/android/internal/graphics/palette/Palette;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;)",
            "Lcom/android/internal/graphics/palette/Palette;"
        }
    .end annotation

    .line 85
    .local p0, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    new-instance v0, Lcom/android/internal/graphics/palette/Palette$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/graphics/palette/Palette$Builder;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    return-object v0
.end method

.method public blacklist getSwatches()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
