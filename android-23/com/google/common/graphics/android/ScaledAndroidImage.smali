.class Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;
.super Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;
.source "ScaledAndroidImage.java"


# instance fields
.field private cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

.field private final dh:I

.field private final dw:I

.field private final parent:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

.field private final sh:I

.field private final sw:I

.field private final sx:I

.field private final sy:I


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;IIIIII)V
    .locals 1
    .param p1, "parent"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;
    .param p2, "dw"    # I
    .param p3, "dh"    # I
    .param p4, "sx"    # I
    .param p5, "sy"    # I
    .param p6, "sw"    # I
    .param p7, "sh"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 37
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(Landroid/graphics/Bitmap;)V

    #@4
    .line 24
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@6
    .line 40
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pin()V

    #@9
    .line 41
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->parent:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@b
    .line 42
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dw:I

    #@d
    .line 43
    iput p3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dh:I

    #@f
    .line 44
    iput p4, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sx:I

    #@11
    .line 45
    iput p5, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sy:I

    #@13
    .line 46
    iput p6, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sw:I

    #@15
    .line 47
    iput p7, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sh:I

    #@17
    .line 48
    return-void
.end method

.method private getCache()Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;
    .locals 10

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 51
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 58
    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@7
    return-object v0

    #@8
    .line 52
    :cond_1
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@a
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dw:I

    #@c
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dh:I

    #@e
    invoke-direct {v0, v1, v3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(II)V

    #@11
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@13
    .line 53
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@15
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getGraphics()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->parent:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@1b
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dw:I

    #@1d
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dh:I

    #@1f
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sx:I

    #@21
    iget v7, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sy:I

    #@23
    iget v8, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sw:I

    #@25
    iget v9, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sh:I

    #@27
    move v3, v2

    #@28
    invoke-interface/range {v0 .. v9}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->drawScaledImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;IIIIIIII)Z

    #@2b
    move-result v0

    #@2c
    if-nez v0, :cond_0

    #@2e
    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@30
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, "Graphics cannot scale image: "

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@3e
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getGraphics()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v0
.end method


# virtual methods
.method public createScaledImage(IIIIII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 7
    .param p1, "srcX"    # I
    .param p2, "srcY"    # I
    .param p3, "srcWidth"    # I
    .param p4, "srcHeight"    # I
    .param p5, "newWidth"    # I
    .param p6, "newHeight"    # I

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->getCache()Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@3
    move-result-object v0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move v3, p3

    #@7
    move v4, p4

    #@8
    move v5, p5

    #@9
    move v6, p6

    #@a
    invoke-virtual/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->createScaledImage(IIIIII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public drawImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;II)V
    .locals 10
    .param p1, "g"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;
    .param p2, "x"    # I
    .param p3, "y"    # I

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 74
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@6
    invoke-virtual {v0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->drawImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;II)V

    #@9
    .line 76
    :goto_0
    return-void

    #@a
    .line 72
    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->parent:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@c
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dw:I

    #@e
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dh:I

    #@10
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sx:I

    #@12
    iget v7, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sy:I

    #@14
    iget v8, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sw:I

    #@16
    iget v9, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sh:I

    #@18
    move-object v0, p1

    #@19
    move v2, p2

    #@1a
    move v3, p3

    #@1b
    invoke-interface/range {v0 .. v9}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->drawScaledImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;IIIIIIII)Z

    #@1e
    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->getCache()Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getBitmap()Landroid/graphics/Bitmap;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getGraphics()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;
    .locals 1

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->getCache()Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getGraphics()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 87
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dh:I

    #@2
    return v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 96
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dw:I

    #@2
    return v0
.end method
