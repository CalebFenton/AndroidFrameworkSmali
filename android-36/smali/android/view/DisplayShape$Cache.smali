.class final Landroid/view/DisplayShape$Cache;
.super Ljava/lang/Object;
.source "DisplayShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cache"
.end annotation


# static fields
.field private static final blacklist CACHE_LOCK:Ljava/lang/Object;

.field private static blacklist sCacheForPath:Landroid/view/DisplayShape;

.field private static blacklist sCachedDisplayHeight:I

.field private static blacklist sCachedDisplayShape:Landroid/view/DisplayShape;

.field private static blacklist sCachedDisplayWidth:I

.field private static blacklist sCachedPath:Landroid/graphics/Path;

.field private static blacklist sCachedPhysicalPixelDisplaySizeRatio:F

.field private static blacklist sCachedSpec:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 280
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/DisplayShape$Cache;->CACHE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getDisplayShape(Ljava/lang/String;FII)Landroid/view/DisplayShape;
    .registers 13
    .param p0, "spec"    # Ljava/lang/String;
    .param p1, "physicalPixelDisplaySizeRatio"    # F
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I

    .line 300
    sget-object v1, Landroid/view/DisplayShape$Cache;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    :try_start_3
    sget-object v0, Landroid/view/DisplayShape$Cache;->sCachedSpec:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_42

    if-eqz v0, :cond_23

    :try_start_b
    sget v0, Landroid/view/DisplayShape$Cache;->sCachedDisplayWidth:I

    if-ne v0, p2, :cond_23

    sget v0, Landroid/view/DisplayShape$Cache;->sCachedDisplayHeight:I

    if-ne v0, p3, :cond_23

    sget v0, Landroid/view/DisplayShape$Cache;->sCachedPhysicalPixelDisplaySizeRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_23

    .line 305
    sget-object v0, Landroid/view/DisplayShape$Cache;->sCachedDisplayShape:Landroid/view/DisplayShape;

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1d

    return-object v0

    .line 307
    :catchall_1d
    move-exception v0

    move-object v3, p0

    move v6, p1

    move v4, p2

    move v5, p3

    goto :goto_47

    :cond_23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_42

    .line 309
    new-instance v2, Landroid/view/DisplayShape;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v6, p1

    move v4, p2

    move v5, p3

    .end local p0    # "spec":Ljava/lang/String;
    .end local p1    # "physicalPixelDisplaySizeRatio":F
    .end local p2    # "displayWidth":I
    .end local p3    # "displayHeight":I
    .local v3, "spec":Ljava/lang/String;
    .local v4, "displayWidth":I
    .local v5, "displayHeight":I
    .local v6, "physicalPixelDisplaySizeRatio":F
    invoke-direct/range {v2 .. v8}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFILandroid/view/DisplayShape-IA;)V

    .line 312
    .local v2, "shape":Landroid/view/DisplayShape;
    sget-object p0, Landroid/view/DisplayShape$Cache;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 313
    :try_start_32
    sput-object v3, Landroid/view/DisplayShape$Cache;->sCachedSpec:Ljava/lang/String;

    .line 314
    sput v4, Landroid/view/DisplayShape$Cache;->sCachedDisplayWidth:I

    .line 315
    sput v5, Landroid/view/DisplayShape$Cache;->sCachedDisplayHeight:I

    .line 316
    sput v6, Landroid/view/DisplayShape$Cache;->sCachedPhysicalPixelDisplaySizeRatio:F

    .line 317
    sput-object v2, Landroid/view/DisplayShape$Cache;->sCachedDisplayShape:Landroid/view/DisplayShape;

    .line 318
    monitor-exit p0

    .line 319
    return-object v2

    .line 318
    :catchall_3e
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_3e

    throw p1

    .line 307
    .end local v2    # "shape":Landroid/view/DisplayShape;
    .end local v3    # "spec":Ljava/lang/String;
    .end local v4    # "displayWidth":I
    .end local v5    # "displayHeight":I
    .end local v6    # "physicalPixelDisplaySizeRatio":F
    .restart local p0    # "spec":Ljava/lang/String;
    .restart local p1    # "physicalPixelDisplaySizeRatio":F
    .restart local p2    # "displayWidth":I
    .restart local p3    # "displayHeight":I
    :catchall_42
    move-exception v0

    move-object v3, p0

    move v6, p1

    move v4, p2

    move v5, p3

    .end local p0    # "spec":Ljava/lang/String;
    .end local p1    # "physicalPixelDisplaySizeRatio":F
    .end local p2    # "displayWidth":I
    .end local p3    # "displayHeight":I
    .restart local v3    # "spec":Ljava/lang/String;
    .restart local v4    # "displayWidth":I
    .restart local v5    # "displayHeight":I
    .restart local v6    # "physicalPixelDisplaySizeRatio":F
    :goto_47
    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_49

    throw v0

    :catchall_49
    move-exception v0

    goto :goto_47
.end method

.method static blacklist getPath(Landroid/view/DisplayShape;)Landroid/graphics/Path;
    .registers 6
    .param p0, "shape"    # Landroid/view/DisplayShape;

    .line 323
    sget-object v0, Landroid/view/DisplayShape$Cache;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_3
    sget-object v1, Landroid/view/DisplayShape$Cache;->sCacheForPath:Landroid/view/DisplayShape;

    invoke-virtual {p0, v1}, Landroid/view/DisplayShape;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 325
    sget-object v1, Landroid/view/DisplayShape$Cache;->sCachedPath:Landroid/graphics/Path;

    monitor-exit v0

    return-object v1

    .line 327
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_86

    .line 329
    iget-object v0, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    .line 331
    .local v1, "path":Landroid/graphics/Path;
    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 332
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 333
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmRotation(Landroid/view/DisplayShape;)I

    move-result v2

    if-eqz v2, :cond_36

    .line 334
    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmRotation(Landroid/view/DisplayShape;)I

    move-result v2

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmDisplayWidth(Landroid/view/DisplayShape;)I

    move-result v3

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmDisplayHeight(Landroid/view/DisplayShape;)I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Landroid/util/RotationUtils;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 337
    :cond_36
    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmPhysicalPixelDisplaySizeRatio(Landroid/view/DisplayShape;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4b

    .line 338
    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmPhysicalPixelDisplaySizeRatio(Landroid/view/DisplayShape;)F

    move-result v2

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmPhysicalPixelDisplaySizeRatio(Landroid/view/DisplayShape;)F

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 341
    :cond_4b
    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmOffsetX(Landroid/view/DisplayShape;)I

    move-result v2

    if-nez v2, :cond_57

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmOffsetY(Landroid/view/DisplayShape;)I

    move-result v2

    if-eqz v2, :cond_64

    .line 342
    :cond_57
    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmOffsetX(Landroid/view/DisplayShape;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmOffsetY(Landroid/view/DisplayShape;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 344
    :cond_64
    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmScale(Landroid/view/DisplayShape;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_77

    .line 345
    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmScale(Landroid/view/DisplayShape;)F

    move-result v2

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmScale(Landroid/view/DisplayShape;)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 347
    :cond_77
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 350
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    :cond_7a
    sget-object v2, Landroid/view/DisplayShape$Cache;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 351
    :try_start_7d
    sput-object p0, Landroid/view/DisplayShape$Cache;->sCacheForPath:Landroid/view/DisplayShape;

    .line 352
    sput-object v1, Landroid/view/DisplayShape$Cache;->sCachedPath:Landroid/graphics/Path;

    .line 353
    monitor-exit v2

    .line 354
    return-object v1

    .line 353
    :catchall_83
    move-exception v0

    monitor-exit v2
    :try_end_85
    .catchall {:try_start_7d .. :try_end_85} :catchall_83

    throw v0

    .line 327
    .end local v1    # "path":Landroid/graphics/Path;
    :catchall_86
    move-exception v1

    :try_start_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v1
.end method
