.class public Lcom/android/internal/graphics/palette/CelebiQuantizer;
.super Ljava/lang/Object;
.source "CelebiQuantizer.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# instance fields
.field private blacklist mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
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

    .line 54
    iget-object v0, p0, Lcom/android/internal/graphics/palette/CelebiQuantizer;->mSwatches:Ljava/util/List;

    return-object v0
.end method

.method public blacklist quantize([II)V
    .registers 8
    .param p1, "pixels"    # [I
    .param p2, "maxColors"    # I

    .line 44
    new-instance v0, Lcom/android/internal/graphics/palette/WuQuantizer;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/WuQuantizer;-><init>()V

    .line 45
    .local v0, "wu":Lcom/android/internal/graphics/palette/WuQuantizer;
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->quantize([II)V

    .line 46
    new-instance v1, Lcom/android/internal/graphics/palette/WSMeansQuantizer;

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getColors()[I

    move-result-object v2

    new-instance v3, Lcom/android/internal/graphics/palette/LABPointProvider;

    invoke-direct {v3}, Lcom/android/internal/graphics/palette/LABPointProvider;-><init>()V

    .line 47
    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->inputPixelToCount()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/graphics/palette/WSMeansQuantizer;-><init>([ILcom/android/internal/graphics/palette/PointProvider;Ljava/util/Map;)V

    .line 48
    .local v1, "kmeans":Lcom/android/internal/graphics/palette/WSMeansQuantizer;
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->quantize([II)V

    .line 49
    invoke-virtual {v1}, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->getQuantizedColors()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/graphics/palette/CelebiQuantizer;->mSwatches:Ljava/util/List;

    .line 50
    return-void
.end method
