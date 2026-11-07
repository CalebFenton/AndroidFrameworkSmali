.class public final Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;
.super Ljava/lang/Object;
.source "BackgroundBlurDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Aggregator"
.end annotation


# instance fields
.field private final blacklist mDrawables:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFrameRtUpdates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mHasUiUpdates:Z

.field private blacklist mLastFrameBlurRegions:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

.field private blacklist mLastFrameNumber:J

.field private blacklist mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final blacklist mRtLock:Ljava/lang/Object;

.field private blacklist mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method public static synthetic blacklist $r8$lambda$JfSsvv44PJF2yJNqAgqUI_YbY4Y(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->lambda$registerPreDrawListener$1()Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$KqP-LYCZDD1PKkYJ-Ku4uBqzeVo(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;ZJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->lambda$registerPreDrawListener$0([Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;ZJ)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 4
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mRtLock:Ljava/lang/Object;

    .line 233
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    .line 234
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    .line 236
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameNumber:J

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameBlurRegions:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    .line 239
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    .line 244
    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 245
    return-void
.end method

.method private blacklist handleDispatchBlurTransactionLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)V
    .registers 7
    .param p1, "frameNumber"    # J
    .param p3, "blurRegions"    # [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    .param p4, "forceUpdate"    # Z

    .line 419
    nop

    .line 420
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->getBlurRegionsForFrameLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)[[F

    move-result-object v0

    .line 421
    .local v0, "blurRegionsArray":[[F
    if-eqz v0, :cond_c

    .line 422
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchBlurRegions([[FJ)V

    .line 424
    :cond_c
    return-void
.end method

.method private synthetic blacklist lambda$registerPreDrawListener$0([Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;ZJ)V
    .registers 7
    .param p1, "blurRegionsForNextFrame"    # [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    .param p2, "hasUiUpdates"    # Z
    .param p3, "frame"    # J

    .line 299
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mRtLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_3
    iput-wide p3, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameNumber:J

    .line 301
    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameBlurRegions:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    .line 302
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->handleDispatchBlurTransactionLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)V

    .line 304
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic blacklist lambda$registerPreDrawListener$1()Z
    .registers 5

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->hasUpdates()Z

    move-result v0

    .line 295
    .local v0, "hasUiUpdates":Z
    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->hasRegions()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 296
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->getBlurRegionsCopyForRT()[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    move-result-object v1

    .line 298
    .local v1, "blurRegionsForNextFrame":[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    new-instance v3, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)V

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 307
    .end local v1    # "blurRegionsForNextFrame":[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->hasRegions()Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 308
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 309
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 310
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 312
    :cond_3a
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist registerPreDrawListener()V
    .registers 3

    .line 292
    new-instance v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;)V

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 315
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 316
    return-void
.end method


# virtual methods
.method public blacklist createBackgroundBlurDrawable(Landroid/content/Context;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 251
    new-instance v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable-IA;)V

    .line 252
    .local v0, "drawable":Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setBlurRadius(I)V

    .line 254
    return-object v0
.end method

.method public blacklist getBlurRegionsCopyForRT()[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    .registers 5

    .line 361
    iget-boolean v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    if-eqz v0, :cond_2e

    .line 362
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 364
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    new-instance v2, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    iget-object v3, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-direct {v2, v3}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    aput-object v2, v1, v0

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 366
    .end local v0    # "i":I
    :cond_2b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    .line 369
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mTmpBlurRegionsForFrame:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    return-object v0
.end method

.method public blacklist getBlurRegionsForFrameLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)[[F
    .registers 9
    .param p1, "frameNumber"    # J
    .param p3, "blurRegionsForFrame"    # [Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
    .param p4, "forceUpdate"    # Z

    .line 381
    const/4 v0, 0x0

    if-nez p4, :cond_17

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    .line 382
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_17

    .line 383
    :cond_15
    const/4 v0, 0x0

    return-object v0

    .line 391
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gtz v1, :cond_4a

    .line 392
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 393
    .local v1, "frameUpdates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Runnable;>;"
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 394
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_37
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_49

    .line 395
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 394
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 397
    .end local v1    # "frameUpdates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Runnable;>;"
    .end local v2    # "i":I
    :cond_49
    goto :goto_17

    .line 399
    :cond_4a
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 400
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blur regions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_71
    array-length v0, p3

    new-array v0, v0, [[F

    .line 404
    .local v0, "blurRegionsArray":[[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_75
    array-length v2, v0

    if-ge v1, v2, :cond_96

    .line 405
    aget-object v2, p3, v1

    invoke-virtual {v2}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->toFloatArray()[F

    move-result-object v2

    aput-object v2, v0, v1

    .line 406
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 407
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p3, v1

    invoke-virtual {v3}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 410
    .end local v1    # "i":I
    :cond_96
    return-object v0
.end method

.method public blacklist hasRegions()Z
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist hasUpdates()Z
    .registers 2

    .line 344
    iget-boolean v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    return v0
.end method

.method blacklist onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V
    .registers 7
    .param p1, "drawable"    # Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 262
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAlpha(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmBlurRadius(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)I

    move-result v0

    if-lez v0, :cond_18

    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmVisible(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 264
    .local v0, "shouldBeDrawn":Z
    :goto_19
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 265
    .local v2, "isDrawn":Z
    if-eqz v0, :cond_6c

    .line 266
    iput-boolean v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    .line 267
    if-nez v2, :cond_4b

    .line 268
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 270
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 273
    :cond_4b
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 274
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 277
    :cond_6c
    if-nez v0, :cond_97

    if-eqz v2, :cond_97

    .line 278
    iput-boolean v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mHasUiUpdates:Z

    .line 279
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mDrawables:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 280
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 281
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_97
    :goto_97
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v1, :cond_ac

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_ac

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->hasRegions()Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 287
    invoke-direct {p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->registerPreDrawListener()V

    .line 289
    :cond_ac
    return-void
.end method

.method blacklist onRenderNodePositionChanged(JLjava/lang/Runnable;)V
    .registers 8
    .param p1, "frameNumber"    # J
    .param p3, "update"    # Ljava/lang/Runnable;

    .line 322
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mRtLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 324
    .local v1, "frameRtUpdates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Runnable;>;"
    if-nez v1, :cond_18

    .line 325
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 326
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mFrameRtUpdates:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 328
    :cond_18
    invoke-virtual {v1, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 330
    iget-wide v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameNumber:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_27

    .line 333
    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->mLastFrameBlurRegions:[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->handleDispatchBlurTransactionLocked(J[Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;Z)V

    .line 335
    .end local v1    # "frameRtUpdates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Runnable;>;"
    :cond_27
    monitor-exit v0

    .line 337
    return-void

    .line 335
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method
