.class public Landroid/graphics/drawable/AnimatedImageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedImageDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedImageDrawable$State;
    }
.end annotation


# static fields
.field private static final greylist-max-o FINISHED:I = -0x1

.field public static final greylist LOOP_INFINITE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist REPEAT_INFINITE:I = -0x1

.field private static final greylist-max-o REPEAT_UNDEFINED:I = -0x2


# instance fields
.field private greylist-max-o mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Animatable2$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mColorFilter:Landroid/graphics/ColorFilter;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mIntrinsicHeight:I

.field private greylist-max-o mIntrinsicWidth:I

.field private greylist-max-o mRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mStarting:Z

.field private greylist-max-o mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;


# direct methods
.method public static synthetic blacklist $r8$lambda$goqNL5EQiFxT3koU51T79W22IMY(Landroid/graphics/drawable/AnimatedImageDrawable;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->lambda$postOnAnimationEnd$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lIchgi9fsWZ0jkjn9D2Op9vdJQY(Landroid/graphics/drawable/AnimatedImageDrawable;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->lambda$postOnAnimationStart$1()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 8

    .line 192
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 193
    new-instance v1, Landroid/graphics/drawable/AnimatedImageDrawable$State;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/AnimatedImageDrawable$State;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;JLjava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V

    iput-object v1, v2, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    .line 194
    return-void
.end method

.method public constructor blacklist <init>(JLandroid/graphics/ImageDecoder;IIJZIILandroid/graphics/Rect;Ljava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V
    .registers 31
    .param p1, "nativeImageDecoder"    # J
    .param p3, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "colorSpaceHandle"    # J
    .param p8, "extended"    # Z
    .param p9, "srcDensity"    # I
    .param p10, "dstDensity"    # I
    .param p11, "cropRect"    # Landroid/graphics/Rect;
    .param p12, "inputStream"    # Ljava/io/InputStream;
    .param p13, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    move-object/from16 v1, p0

    move/from16 v6, p9

    move/from16 v7, p10

    move-object/from16 v0, p11

    invoke-direct {v1}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 489
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 298
    move/from16 v2, p4

    invoke-static {v2, v6, v7}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v11

    .line 299
    .end local p4    # "width":I
    .local v11, "width":I
    move/from16 v2, p5

    invoke-static {v2, v6, v7}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v12

    .line 301
    .end local p5    # "height":I
    .local v12, "height":I
    if-nez v0, :cond_21

    .line 302
    iput v11, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    .line 303
    iput v12, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    goto :goto_48

    .line 305
    :cond_21
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v6, v7}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 306
    invoke-static {v3, v6, v7}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 307
    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 308
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v5

    .line 305
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 309
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    .line 310
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    .line 313
    :goto_48
    new-instance v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;

    move-wide/from16 v8, p1

    move-object/from16 v10, p3

    move-wide/from16 v13, p6

    move/from16 v15, p8

    move-object/from16 v16, p11

    invoke-static/range {v8 .. v16}, Landroid/graphics/drawable/AnimatedImageDrawable;->nCreate(JLandroid/graphics/ImageDecoder;IIJZLandroid/graphics/Rect;)J

    move-result-wide v2

    move-object/from16 v4, p12

    move-object/from16 v5, p13

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedImageDrawable$State;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;JLjava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V

    iput-object v0, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    .line 316
    iget-object v0, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v2, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/graphics/drawable/AnimatedImageDrawable;->nNativeByteSize(J)J

    move-result-wide v2

    .line 317
    .local v2, "nativeSize":J
    nop

    .line 318
    const-class v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/drawable/AnimatedImageDrawable;->nGetNativeFinalizer()J

    move-result-wide v4

    .line 317
    invoke-static {v0, v4, v5, v2, v3}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    .line 319
    .local v0, "registry":Llibcore/util/NativeAllocationRegistry;
    iget-object v4, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-object v5, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v8, v5, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-virtual {v0, v4, v8, v9}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 320
    return-void
.end method

.method private static blacklist callOnAnimationEnd(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/AnimatedImageDrawable;",
            ">;)V"
        }
    .end annotation

    .line 597
    .local p0, "weakDrawable":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/AnimatedImageDrawable;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 598
    .local v0, "drawable":Landroid/graphics/drawable/AnimatedImageDrawable;
    if-eqz v0, :cond_b

    .line 599
    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->onAnimationEnd()V

    .line 601
    :cond_b
    return-void
.end method

.method private greylist-max-o getHandler()Landroid/os/Handler;
    .registers 3

    .line 583
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 584
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mHandler:Landroid/os/Handler;

    .line 586
    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private synthetic blacklist lambda$postOnAnimationEnd$2()V
    .registers 3

    .line 576
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 577
    .local v1, "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 578
    .end local v1    # "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    goto :goto_6

    .line 579
    :cond_16
    return-void
.end method

.method private synthetic blacklist lambda$postOnAnimationStart$1()V
    .registers 3

    .line 564
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 565
    .local v1, "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 566
    .end local v1    # "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    goto :goto_6

    .line 567
    :cond_16
    return-void
.end method

.method static synthetic blacklist lambda$updateStateFromTypedArray$0(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 5
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p1, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p2, "src"    # Landroid/graphics/ImageDecoder$Source;

    .line 236
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$ImageInfo;->isAnimated()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 239
    return-void

    .line 237
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "image is not animated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native blacklist nCreate(JLandroid/graphics/ImageDecoder;IIJZLandroid/graphics/Rect;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nDraw(JJ)J
.end method

.method private static native greylist-max-o nGetAlpha(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nGetFilterBitmap(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetNativeFinalizer()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetRepeatCount(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nIsRunning(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nNativeByteSize(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetAlpha(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nSetBounds(JLandroid/graphics/Rect;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetColorFilter(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nSetFilterBitmap(JZ)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetMirrored(JZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nSetOnAnimationEndListener(JLjava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/AnimatedImageDrawable;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native greylist-max-o nSetRepeatCount(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nStart(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nStop(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private blacklist onAnimationEnd()V
    .registers 3

    .line 604
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a

    .line 605
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 606
    .local v1, "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 607
    .end local v1    # "callback":Landroid/graphics/drawable/Animatable2$AnimationCallback;
    goto :goto_a

    .line 609
    :cond_1a
    return-void
.end method

.method private greylist-max-o postOnAnimationEnd()V
    .registers 3

    .line 571
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 572
    return-void

    .line 575
    :cond_5
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 580
    return-void
.end method

.method private greylist-max-o postOnAnimationStart()V
    .registers 3

    .line 559
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 560
    return-void

    .line 563
    :cond_5
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 568
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;I)V
    .registers 20
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "srcDensityOverride"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 207
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    iget-object v4, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    .line 208
    .local v4, "oldState":Landroid/graphics/drawable/AnimatedImageDrawable$State;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 209
    .local v5, "r":Landroid/content/res/Resources;
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 210
    .local v6, "srcResId":I
    const-string v7, ": <animated-image> requires a valid \'src\' attribute"

    const/4 v8, 0x1

    const/4 v9, -0x2

    if-eqz v6, :cond_c1

    .line 212
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 213
    .local v10, "value":Landroid/util/TypedValue;
    invoke-virtual {v5, v6, v3, v10, v8}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 214
    const v11, 0xffff

    if-lez v3, :cond_45

    iget v12, v10, Landroid/util/TypedValue;->density:I

    if-lez v12, :cond_45

    iget v12, v10, Landroid/util/TypedValue;->density:I

    if-eq v12, v11, :cond_45

    .line 216
    iget v12, v10, Landroid/util/TypedValue;->density:I

    if-ne v12, v3, :cond_39

    .line 217
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v12, v10, Landroid/util/TypedValue;->density:I

    goto :goto_45

    .line 219
    :cond_39
    iget v12, v10, Landroid/util/TypedValue;->density:I

    .line 220
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v12, v13

    div-int/2addr v12, v3

    iput v12, v10, Landroid/util/TypedValue;->density:I

    .line 224
    :cond_45
    :goto_45
    const/4 v12, 0x0

    .line 225
    .local v12, "density":I
    iget v13, v10, Landroid/util/TypedValue;->density:I

    if-nez v13, :cond_4d

    .line 226
    const/16 v12, 0xa0

    goto :goto_53

    .line 227
    :cond_4d
    iget v13, v10, Landroid/util/TypedValue;->density:I

    if-eq v13, v11, :cond_53

    .line 228
    iget v12, v10, Landroid/util/TypedValue;->density:I

    .line 231
    :cond_53
    :goto_53
    const/4 v11, 0x0

    .line 233
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    :try_start_55
    invoke-virtual {v5, v6, v10}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v14

    .line 234
    .local v14, "is":Ljava/io/InputStream;
    invoke-static {v5, v14, v12}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object v15

    .line 235
    .local v15, "source":Landroid/graphics/ImageDecoder$Source;
    move/from16 v16, v0

    new-instance v0, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v15, v0}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_68} :catch_a5

    .line 243
    .end local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v15    # "source":Landroid/graphics/ImageDecoder$Source;
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    nop

    .line 245
    instance-of v11, v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v11, :cond_88

    .line 252
    iget-object v11, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget v11, v11, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    .line 254
    .local v11, "repeatCount":I
    move-object v14, v0

    check-cast v14, Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 255
    .local v14, "other":Landroid/graphics/drawable/AnimatedImageDrawable;
    iget-object v15, v14, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iput-object v15, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    .line 256
    iput-object v13, v14, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    .line 257
    iget v13, v14, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    iput v13, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    .line 258
    iget v13, v14, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    iput v13, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    .line 259
    if-eq v11, v9, :cond_c3

    .line 260
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    goto :goto_c3

    .line 246
    .end local v11    # "repeatCount":I
    .end local v14    # "other":Landroid/graphics/drawable/AnimatedImageDrawable;
    :cond_88
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": <animated-image> did not decode animated"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 240
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    :catch_a5
    move-exception v0

    .line 241
    .local v0, "e":Ljava/io/IOException;
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7, v13, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v8

    .line 210
    .end local v0    # "e":Ljava/io/IOException;
    .end local v10    # "value":Landroid/util/TypedValue;
    .end local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "density":I
    :cond_c1
    move/from16 v16, v0

    .line 264
    :cond_c3
    :goto_c3
    iget-object v0, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v10

    iput-object v10, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mThemeAttrs:[I

    .line 265
    iget-object v0, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v10, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-nez v0, :cond_ff

    iget-object v0, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mThemeAttrs:[I

    if-eqz v0, :cond_e4

    iget-object v0, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mThemeAttrs:[I

    aget v0, v0, v16

    if-eqz v0, :cond_e4

    goto :goto_ff

    .line 267
    :cond_e4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_ff
    :goto_ff
    iget-object v0, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    const/4 v7, 0x3

    iget-boolean v10, v4, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    invoke-virtual {v2, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    .line 274
    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 276
    .local v0, "repeatCount":I
    if-eq v0, v9, :cond_113

    .line 277
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    .line 280
    :cond_113
    const/4 v7, 0x2

    move/from16 v8, v16

    invoke-virtual {v2, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 282
    .local v7, "autoStart":Z
    if-eqz v7, :cond_127

    iget-object v8, v1, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v8, v8, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_127

    .line 283
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    .line 285
    :cond_127
    return-void
.end method


# virtual methods
.method public whitelist clearAnimationCallbacks()V
    .registers 4

    .line 523
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 525
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v1, v1, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v1, v2, v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetOnAnimationEndListener(JLjava/lang/ref/WeakReference;)V

    .line 527
    :cond_e
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 337
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_44

    .line 341
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mStarting:Z

    if-eqz v0, :cond_14

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mStarting:Z

    .line 344
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->postOnAnimationStart()V

    .line 347
    :cond_14
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Landroid/graphics/drawable/AnimatedImageDrawable;->nDraw(JJ)J

    move-result-wide v0

    .line 350
    .local v0, "nextUpdate":J
    cmp-long v2, v0, v2

    if-lez v2, :cond_3a

    .line 351
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mRunnable:Ljava/lang/Runnable;

    if-nez v2, :cond_2f

    .line 352
    new-instance v2, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    iput-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mRunnable:Ljava/lang/Runnable;

    .line 354
    :cond_2f
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {p0, v2, v3, v4}, Landroid/graphics/drawable/AnimatedImageDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_43

    .line 355
    :cond_3a
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_43

    .line 357
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->postOnAnimationEnd()V

    .line 359
    :cond_43
    :goto_43
    return-void

    .line 338
    .end local v0    # "nextUpdate":J
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called draw on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAlpha()I
    .registers 5

    .line 378
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 381
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nGetAlpha(J)I

    move-result v0

    return v0

    .line 379
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called getAlpha on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 401
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 2

    .line 329
    iget v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 2

    .line 324
    iget v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public greylist getLoopCount(I)I
    .registers 3
    .param p1, "loopCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 406
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist getRepeatCount()I
    .registers 5

    .line 171
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    .line 174
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1d

    .line 175
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v1, v1, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/drawable/AnimatedImageDrawable;->nGetRepeatCount(J)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    .line 178
    :cond_1d
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    return v0

    .line 172
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called getRepeatCount on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 201
    sget-object v0, Lcom/android/internal/R$styleable;->AnimatedImageDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 202
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mSrcDensityOverride:I

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;I)V

    .line 203
    return-void
.end method

.method public final whitelist isAutoMirrored()Z
    .registers 2

    .line 433
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-boolean v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    return v0
.end method

.method public whitelist isFilterBitmap()Z
    .registers 5

    .line 547
    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->animatedImageDrawableFilterBitmap()Z

    move-result v0

    if-nez v0, :cond_b

    .line 548
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isFilterBitmap()Z

    move-result v0

    return v0

    .line 550
    :cond_b
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 555
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nGetFilterBitmap(J)Z

    move-result v0

    return v0

    .line 551
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called isFilterBitmap on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isRunning()Z
    .registers 5

    .line 445
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 448
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nIsRunning(J)Z

    move-result v0

    return v0

    .line 446
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called isRunning on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 613
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 614
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetBounds(JLandroid/graphics/Rect;)V

    .line 616
    :cond_11
    return-void
.end method

.method public whitelist onLayoutDirectionChanged(I)Z
    .registers 8
    .param p1, "layoutDirection"    # I

    .line 422
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-boolean v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v2, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_12

    goto :goto_1e

    .line 426
    :cond_12
    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    move v1, v0

    .line 427
    .local v1, "mirror":Z
    :cond_16
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v2, v2, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v2, v3, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetMirrored(JZ)V

    .line 428
    return v0

    .line 423
    .end local v1    # "mirror":Z
    :cond_1e
    :goto_1e
    return v1
.end method

.method public whitelist registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 493
    if-nez p1, :cond_3

    .line 494
    return-void

    .line 497
    :cond_3
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 499
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetOnAnimationEndListener(JLjava/lang/ref/WeakReference;)V

    .line 502
    :cond_1a
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 503
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_27
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 6
    .param p1, "alpha"    # I

    .line 363
    if-ltz p1, :cond_23

    const/16 v0, 0xff

    if-gt p1, v0, :cond_23

    .line 368
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    .line 372
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetAlpha(JI)V

    .line 373
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->invalidateSelf()V

    .line 374
    return-void

    .line 369
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called setAlpha on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alpha must be between 0 and 255! provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAutoMirrored(Z)V
    .registers 6
    .param p1, "mirrored"    # Z

    .line 411
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-boolean v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    if-eq v0, p1, :cond_25

    .line 412
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iput-boolean p1, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    .line 413
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 414
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetMirrored(JZ)V

    .line 415
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->invalidateSelf()V

    .line 418
    :cond_25
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 6
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 386
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    .line 390
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_21

    .line 391
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 392
    if-nez p1, :cond_13

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v2

    .line 393
    .local v2, "nativeFilter":J
    :goto_17
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetColorFilter(JJ)V

    .line 394
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->invalidateSelf()V

    .line 396
    .end local v2    # "nativeFilter":J
    :cond_21
    return-void

    .line 387
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called setColorFilter on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFilterBitmap(Z)V
    .registers 6
    .param p1, "filterBitmap"    # Z

    .line 531
    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->animatedImageDrawableFilterBitmap()Z

    move-result v0

    if-nez v0, :cond_a

    .line 532
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 533
    return-void

    .line 535
    :cond_a
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    .line 540
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetFilterBitmap(JZ)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 541
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->invalidateSelf()V

    .line 543
    :cond_21
    return-void

    .line 536
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called setFilterBitmap on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setLoopCount(I)V
    .registers 2
    .param p1, "loopCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    .line 158
    return-void
.end method

.method public whitelist setRepeatCount(I)V
    .registers 6
    .param p1, "repeatCount"    # I

    .line 140
    const/4 v0, -0x1

    if-lt p1, v0, :cond_1f

    .line 144
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    if-eq v0, p1, :cond_1e

    .line 145
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iput p1, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    .line 146
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 147
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetRepeatCount(JI)V

    .line 150
    :cond_1e
    return-void

    .line 141
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid value passed to setRepeatCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist start()V
    .registers 5

    .line 462
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    .line 466
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nStart(J)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mStarting:Z

    .line 468
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->invalidateSelf()V

    .line 470
    :cond_1a
    return-void

    .line 463
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called start on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stop()V
    .registers 5

    .line 480
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 483
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nStop(J)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 484
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->postOnAnimationEnd()V

    .line 486
    :cond_17
    return-void

    .line 481
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called stop on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 509
    if-eqz p1, :cond_1c

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 510
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1c

    .line 514
    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 515
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->clearAnimationCallbacks()V

    .line 518
    :cond_1a
    const/4 v0, 0x1

    return v0

    .line 511
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method
