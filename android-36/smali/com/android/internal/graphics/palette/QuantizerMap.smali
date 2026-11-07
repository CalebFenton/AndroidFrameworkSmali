.class public final Lcom/android/internal/graphics/palette/QuantizerMap;
.super Ljava/lang/Object;
.source "QuantizerMap.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# instance fields
.field private blacklist mColorToCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPalette:Lcom/android/internal/graphics/palette/Palette;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getColorToCount()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/internal/graphics/palette/QuantizerMap;->mColorToCount:Ljava/util/HashMap;

    return-object v0
.end method

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

    .line 55
    iget-object v0, p0, Lcom/android/internal/graphics/palette/QuantizerMap;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist quantize([II)V
    .registers 10
    .param p1, "pixels"    # [I
    .param p2, "colorCount"    # I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v0, "colorToCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1f

    aget v3, p1, v2

    .line 42
    .local v3, "pixel":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/app/AppOpsManager$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/HashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 41
    .end local v3    # "pixel":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 44
    :cond_1f
    iput-object v0, p0, Lcom/android/internal/graphics/palette/QuantizerMap;->mColorToCount:Ljava/util/HashMap;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 48
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v4, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_2e

    .line 50
    :cond_57
    invoke-static {v1}, Lcom/android/internal/graphics/palette/Palette;->from(Ljava/util/List;)Lcom/android/internal/graphics/palette/Palette;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/graphics/palette/QuantizerMap;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    .line 51
    return-void
.end method
