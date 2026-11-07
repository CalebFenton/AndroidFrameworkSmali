.class public Lcom/android/graphics/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/graphics/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/graphics/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/graphics/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/graphics/flags/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashSet;

    const-string v6, "com.android.graphics.flags.yuv_image_compress_to_ultra_hdr"

    const-string v7, ""

    const-string v1, "com.android.graphics.flags.display_bt2020_colorspace"

    const-string v2, "com.android.graphics.flags.exact_compute_bounds"

    const-string v3, "com.android.graphics.flags.gradient_drawable_shape_arc_for_rounded_cap"

    const-string v4, "com.android.graphics.flags.icon_load_drawable_return_null_when_uri_decode_fails"

    const-string v5, "com.android.graphics.flags.ok_lab_colorspace"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/graphics/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Lcom/android/graphics/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist displayBt2020Colorspace()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/graphics/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/graphics/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.graphics.flags.display_bt2020_colorspace"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist exactComputeBounds()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/graphics/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/graphics/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.graphics.flags.exact_compute_bounds"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    const-string v4, "com.android.graphics.flags.ok_lab_colorspace"

    const-string v5, "com.android.graphics.flags.yuv_image_compress_to_ultra_hdr"

    const-string v0, "com.android.graphics.flags.display_bt2020_colorspace"

    const-string v1, "com.android.graphics.flags.exact_compute_bounds"

    const-string v2, "com.android.graphics.flags.gradient_drawable_shape_arc_for_rounded_cap"

    const-string v3, "com.android.graphics.flags.icon_load_drawable_return_null_when_uri_decode_fails"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/graphics/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 75
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/graphics/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/graphics/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist gradientDrawableShapeArcForRoundedCap()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/graphics/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/graphics/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.graphics.flags.gradient_drawable_shape_arc_for_rounded_cap"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist iconLoadDrawableReturnNullWhenUriDecodeFails()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/graphics/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/graphics/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.graphics.flags.icon_load_drawable_return_null_when_uri_decode_fails"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/android/graphics/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 63
    invoke-direct {p0}, Lcom/android/graphics/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 64
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist okLabColorspace()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/graphics/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/graphics/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.graphics.flags.ok_lab_colorspace"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist yuvImageCompressToUltraHdr()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/graphics/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/graphics/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.graphics.flags.yuv_image_compress_to_ultra_hdr"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
