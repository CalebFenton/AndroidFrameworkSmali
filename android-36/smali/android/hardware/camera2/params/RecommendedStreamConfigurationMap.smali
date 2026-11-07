.class public final Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;
.super Ljava/lang/Object;
.source "RecommendedStreamConfigurationMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap$RecommendedUsecase;
    }
.end annotation


# static fields
.field public static final blacklist MAX_USECASE_COUNT:I = 0x20

.field private static final blacklist TAG:Ljava/lang/String; = "RecommendedStreamConfigurationMap"

.field public static final whitelist USECASE_10BIT_OUTPUT:I = 0x8

.field public static final whitelist USECASE_LOW_LATENCY_SNAPSHOT:I = 0x6

.field public static final whitelist USECASE_PREVIEW:I = 0x0

.field public static final whitelist USECASE_RAW:I = 0x5

.field public static final whitelist USECASE_RECORD:I = 0x1

.field public static final whitelist USECASE_SNAPSHOT:I = 0x3

.field public static final blacklist USECASE_VENDOR_START:I = 0x18

.field public static final whitelist USECASE_VIDEO_SNAPSHOT:I = 0x2

.field public static final whitelist USECASE_ZSL:I = 0x4


# instance fields
.field private blacklist mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

.field private blacklist mSupportsPrivate:Z

.field private blacklist mUsecase:I


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/params/StreamConfigurationMap;IZ)V
    .registers 4
    .param p1, "recommendedMap"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p2, "usecase"    # I
    .param p3, "supportsPrivate"    # Z

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 192
    iput p2, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mUsecase:I

    .line 193
    iput-boolean p3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mSupportsPrivate:Z

    .line 194
    return-void
.end method

.method private blacklist getUnmodifiableIntegerSet([I)Ljava/util/Set;
    .registers 7
    .param p1, "intArray"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 206
    if-eqz p1, :cond_23

    array-length v0, p1

    if-lez v0, :cond_23

    .line 207
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 208
    .local v0, "integerSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 209
    array-length v1, p1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1e

    aget v3, p1, v2

    .line 210
    .local v3, "intEntry":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v3    # "intEntry":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 213
    :cond_1e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 216
    .end local v0    # "integerSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getUnmodifiableRangeSet([Landroid/util/Range;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 332
    .local p1, "rangeArray":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_16

    array-length v0, p1

    if-lez v0, :cond_16

    .line 333
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 334
    .local v0, "rangeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 335
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 338
    .end local v0    # "rangeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getUnmodifiableSizeSet([Landroid/util/Size;)Ljava/util/Set;
    .registers 4
    .param p1, "sizeArray"    # [Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 259
    if-eqz p1, :cond_16

    array-length v0, p1

    if-lez v0, :cond_16

    .line 260
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 261
    .local v0, "sizeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Size;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 262
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 265
    .end local v0    # "sizeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Size;>;"
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist getHighResolutionOutputSizes(I)Ljava/util/Set;
    .registers 3
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableSizeSet([Landroid/util/Size;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHighSpeedVideoFpsRanges()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRanges()[Landroid/util/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableRangeSet([Landroid/util/Range;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)Ljava/util/Set;
    .registers 3
    .param p1, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableRangeSet([Landroid/util/Range;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHighSpeedVideoSizes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableSizeSet([Landroid/util/Size;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHighSpeedVideoSizesFor(Landroid/util/Range;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 385
    .local p1, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableSizeSet([Landroid/util/Size;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputFormats()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableIntegerSet([I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputSizes(I)Ljava/util/Set;
    .registers 3
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableSizeSet([Landroid/util/Size;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputFormats()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableIntegerSet([I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputMinFrameDuration(ILandroid/util/Size;)J
    .registers 5
    .param p1, "format"    # I
    .param p2, "size"    # Landroid/util/Size;

    .line 421
    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .registers 5
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    .line 478
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-boolean v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mSupportsPrivate:Z

    if-eqz v0, :cond_b

    .line 479
    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J

    move-result-wide v0

    return-wide v0

    .line 482
    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getOutputSizes(I)Ljava/util/Set;
    .registers 3
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableSizeSet([Landroid/util/Size;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputSizes(Ljava/lang/Class;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 454
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-boolean v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mSupportsPrivate:Z

    if-eqz v0, :cond_f

    .line 455
    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableSizeSet([Landroid/util/Size;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 458
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getOutputStallDuration(ILandroid/util/Size;)J
    .registers 5
    .param p1, "format"    # I
    .param p2, "size"    # Landroid/util/Size;

    .line 438
    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getOutputStallDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .registers 5
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    .line 501
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-boolean v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mSupportsPrivate:Z

    if-eqz v0, :cond_b

    .line 502
    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(Ljava/lang/Class;Landroid/util/Size;)J

    move-result-wide v0

    return-wide v0

    .line 505
    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getRecommendedUseCase()I
    .registers 2

    .line 202
    iget v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mUsecase:I

    return v0
.end method

.method public whitelist getValidOutputFormatsForInput(I)Ljava/util/Set;
    .registers 3
    .param p1, "inputFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getValidOutputFormatsForInput(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableIntegerSet([I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isOutputSupportedFor(I)Z
    .registers 3
    .param p1, "format"    # I

    .line 300
    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isOutputSupportedFor(Landroid/view/Surface;)Z
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 524
    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Landroid/view/Surface;)Z

    move-result v0

    return v0
.end method
