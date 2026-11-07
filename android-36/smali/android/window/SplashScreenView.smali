.class public final Landroid/window/SplashScreenView;
.super Landroid/widget/FrameLayout;
.source "SplashScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SplashScreenView$IconAnimateListener;,
        Landroid/window/SplashScreenView$SplashScreenViewParcelable;,
        Landroid/window/SplashScreenView$Builder;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mBrandingImageView:Landroid/view/View;

.field private blacklist mClientCallback:Landroid/os/RemoteCallback;

.field private blacklist mHasRemoved:Z

.field private blacklist mIconAnimationDuration:Ljava/time/Duration;

.field private blacklist mIconAnimationStart:Ljava/time/Instant;

.field private blacklist mIconView:Landroid/view/View;

.field private blacklist mInitBackgroundColor:I

.field private blacklist mIsCopied:Z

.field private blacklist mNotCopyable:Z

.field private blacklist mParceledBrandingBitmap:Landroid/graphics/Bitmap;

.field private blacklist mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

.field private blacklist mParceledIconBitmap:Landroid/graphics/Bitmap;

.field private blacklist mSurfaceHost:Landroid/view/SurfaceControlViewHost;

.field private blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private blacklist mSurfacePackageCopy:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private blacklist mSurfaceView:Landroid/view/SurfaceView;

.field private final blacklist mTmpPos:[I

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private blacklist mWindow:Landroid/view/Window;


# direct methods
.method public static synthetic blacklist $r8$lambda$9NwexMmg4ADIYmmlgDpavsKE3pc(Landroid/window/SplashScreenView;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/window/SplashScreenView;->animationStartCallback(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBrandingImageView(Landroid/window/SplashScreenView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconView(Landroid/window/SplashScreenView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfacePackageCopy(Landroid/window/SplashScreenView;)Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .registers 1

    iget-object p0, p0, Landroid/window/SplashScreenView;->mSurfacePackageCopy:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBrandingImageView(Landroid/window/SplashScreenView;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClientCallback(Landroid/window/SplashScreenView;Landroid/os/RemoteCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mClientCallback:Landroid/os/RemoteCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIconAnimationDuration(Landroid/window/SplashScreenView;Ljava/time/Duration;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mIconAnimationDuration:Ljava/time/Duration;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIconAnimationStart(Landroid/window/SplashScreenView;Ljava/time/Instant;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mIconAnimationStart:Ljava/time/Instant;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIconView(Landroid/window/SplashScreenView;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInitBackgroundColor(Landroid/window/SplashScreenView;I)V
    .registers 2

    iput p1, p0, Landroid/window/SplashScreenView;->mInitBackgroundColor:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmParceledBrandingBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmParceledIconBackgroundBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmParceledIconBitmap(Landroid/window/SplashScreenView;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceHost(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mSurfaceHost:Landroid/view/SurfaceControlViewHost;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfacePackage(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfacePackageCopy(Landroid/window/SplashScreenView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mSurfacePackageCopy:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceView(Landroid/window/SplashScreenView;Landroid/view/SurfaceView;)V
    .registers 2

    iput-object p1, p0, Landroid/window/SplashScreenView;->mSurfaceView:Landroid/view/SurfaceView;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/window/SplashScreenView;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 83
    const-class v0, Landroid/window/SplashScreenView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    .line 84
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/window/SplashScreenView;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 389
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/window/SplashScreenView;->mTmpPos:[I

    .line 390
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 394
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/window/SplashScreenView;->mTmpPos:[I

    .line 395
    return-void
.end method

.method private blacklist animationStartCallback(J)V
    .registers 5
    .param p1, "animDuration"    # J

    .line 517
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView;->mIconAnimationStart:Ljava/time/Instant;

    .line 518
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    .line 519
    invoke-static {p1, p2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView;->mIconAnimationDuration:Ljava/time/Duration;

    .line 521
    :cond_12
    return-void
.end method

.method static synthetic blacklist lambda$syncTransferSurfaceOnDraw$0(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 5
    .param p0, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "parent"    # Landroid/view/SurfaceControl;

    .line 483
    sget-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 484
    const-string v2, "SurfacePackage\'surface reparented to %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist releaseAnimationSurfaceHost()V
    .registers 6

    .line 621
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceHost:Landroid/view/SurfaceControlViewHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Landroid/window/SplashScreenView;->mIsCopied:Z

    if-nez v0, :cond_35

    .line 622
    sget-boolean v0, Landroid/window/SplashScreenView;->DEBUG:Z

    if-eqz v0, :cond_2d

    .line 623
    sget-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shell removed splash screen. Releasing SurfaceControlViewHost on thread #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 626
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 623
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_2d
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceHost:Landroid/view/SurfaceControlViewHost;

    invoke-static {v0}, Landroid/window/SplashScreenView;->releaseIconHost(Landroid/view/SurfaceControlViewHost;)V

    .line 629
    iput-object v1, p0, Landroid/window/SplashScreenView;->mSurfaceHost:Landroid/view/SurfaceControlViewHost;

    goto :goto_44

    .line 630
    :cond_35
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_44

    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceHost:Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_44

    .line 631
    iput-object v1, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 632
    iget-object v0, p0, Landroid/window/SplashScreenView;->mClientCallback:Landroid/os/RemoteCallback;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 634
    :cond_44
    :goto_44
    return-void
.end method

.method public static blacklist releaseIconHost(Landroid/view/SurfaceControlViewHost;)V
    .registers 3
    .param p0, "host"    # Landroid/view/SurfaceControlViewHost;

    .line 641
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 642
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/window/SplashScreenView$IconAnimateListener;

    if-eqz v1, :cond_12

    .line 643
    move-object v1, v0

    check-cast v1, Landroid/window/SplashScreenView$IconAnimateListener;

    invoke-interface {v1}, Landroid/window/SplashScreenView$IconAnimateListener;->stopAnimation()V

    .line 645
    :cond_12
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 646
    return-void
.end method


# virtual methods
.method public blacklist attachHostWindow(Landroid/view/Window;)V
    .registers 2
    .param p1, "window"    # Landroid/view/Window;

    .line 654
    iput-object p1, p0, Landroid/window/SplashScreenView;->mWindow:Landroid/view/Window;

    .line 655
    return-void
.end method

.method public blacklist getBrandingView()Landroid/view/View;
    .registers 2

    .line 671
    iget-object v0, p0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getIconAnimationDuration()Ljava/time/Duration;
    .registers 2

    .line 462
    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconAnimationDuration:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist getIconAnimationStart()Ljava/time/Instant;
    .registers 2

    .line 470
    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconAnimationStart:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getIconView()Landroid/view/View;
    .registers 2

    .line 662
    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getInitBackgroundColor()I
    .registers 2

    .line 679
    iget v0, p0, Landroid/window/SplashScreenView;->mInitBackgroundColor:I

    return v0
.end method

.method public blacklist getSurfaceHost()Landroid/view/SurfaceControlViewHost;
    .registers 2

    .line 435
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceHost:Landroid/view/SurfaceControlViewHost;

    return-object v0
.end method

.method blacklist initIconAnimation(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "iconDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 492
    instance-of v0, p1, Landroid/window/SplashScreenView$IconAnimateListener;

    if-nez v0, :cond_5

    .line 493
    return-void

    .line 495
    :cond_5
    move-object v0, p1

    check-cast v0, Landroid/window/SplashScreenView$IconAnimateListener;

    .line 496
    .local v0, "aniDrawable":Landroid/window/SplashScreenView$IconAnimateListener;
    new-instance v1, Landroid/window/SplashScreenView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/window/SplashScreenView$$ExternalSyntheticLambda1;-><init>(Landroid/window/SplashScreenView;)V

    invoke-interface {v0, v1}, Landroid/window/SplashScreenView$IconAnimateListener;->prepareAnimate(Ljava/util/function/LongConsumer;)V

    .line 497
    new-instance v1, Landroid/window/SplashScreenView$1;

    invoke-direct {v1, p0}, Landroid/window/SplashScreenView$1;-><init>(Landroid/window/SplashScreenView;)V

    invoke-interface {v0, v1}, Landroid/window/SplashScreenView$IconAnimateListener;->setAnimationJankMonitoring(Landroid/animation/AnimatorListenerAdapter;)V

    .line 514
    return-void
.end method

.method public blacklist isCopyable()Z
    .registers 2

    .line 410
    iget-boolean v0, p0, Landroid/window/SplashScreenView;->mNotCopyable:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist onCopied()V
    .registers 3

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SplashScreenView;->mIsCopied:Z

    .line 420
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_8

    .line 421
    return-void

    .line 423
    :cond_8
    sget-boolean v0, Landroid/window/SplashScreenView;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 424
    sget-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    const-string v1, "Setting SurfaceView\'s SurfacePackage to null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_13
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 430
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 4

    .line 571
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 572
    invoke-direct {p0}, Landroid/window/SplashScreenView;->releaseAnimationSurfaceHost()V

    .line 573
    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_1e

    check-cast v0, Landroid/widget/ImageView;

    .line 574
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Ljava/io/Closeable;

    if-eqz v2, :cond_1e

    check-cast v1, Ljava/io/Closeable;

    .line 576
    .local v1, "closeableDrawable":Ljava/io/Closeable;
    :try_start_18
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 577
    :goto_1b
    goto :goto_1e

    :catch_1c
    move-exception v2

    goto :goto_1b

    .line 579
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "closeableDrawable":Ljava/io/Closeable;
    :cond_1e
    :goto_1e
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 18
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 583
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 585
    iget-object v0, p0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    iget-object v1, p0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 586
    iget-object v0, p0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 587
    .local v0, "brandingHeight":I
    if-eqz v0, :cond_71

    iget-object v1, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    if-nez v1, :cond_17

    goto :goto_71

    .line 590
    :cond_17
    iget-object v1, p0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 591
    .local v1, "visibility":I
    if-eqz v1, :cond_20

    .line 592
    return-void

    .line 594
    :cond_20
    sub-int v2, p5, p3

    .line 596
    .local v2, "currentHeight":I
    iget-object v3, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    iget-object v4, p0, Landroid/window/SplashScreenView;->mTmpPos:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 597
    iget-object v3, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    iget-object v4, p0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 598
    iget-object v3, p0, Landroid/window/SplashScreenView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 600
    .local v3, "iconHeight":I
    iget-object v4, p0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    .line 601
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 602
    .local v4, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v4, :cond_48

    .line 603
    sget-object v5, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    const-string v6, "Unable to adjust branding image layout, layout changed?"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-void

    .line 606
    :cond_48
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 607
    .local v5, "marginBottom":I
    iget-object v6, p0, Landroid/window/SplashScreenView;->mTmpPos:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int v6, v2, v6

    sub-int/2addr v6, v3

    .line 608
    .local v6, "remainingHeight":I
    sub-int v7, v6, v0

    .line 609
    .local v7, "remainingMaxMargin":I
    if-ge v6, v0, :cond_5e

    .line 611
    iget-object v8, p0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_70

    .line 612
    :cond_5e
    if-ge v7, v5, :cond_70

    .line 614
    int-to-double v8, v7

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 615
    iget-object v8, p0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    :cond_70
    :goto_70
    return-void

    .line 588
    .end local v1    # "visibility":I
    .end local v2    # "currentHeight":I
    .end local v3    # "iconHeight":I
    .end local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "marginBottom":I
    .end local v6    # "remainingHeight":I
    .end local v7    # "remainingMaxMargin":I
    :cond_71
    :goto_71
    return-void
.end method

.method public whitelist remove()V
    .registers 5

    .line 530
    iget-boolean v0, p0, Landroid/window/SplashScreenView;->mHasRemoved:Z

    if-eqz v0, :cond_5

    .line 531
    return-void

    .line 533
    :cond_5
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/window/SplashScreenView;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 535
    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1d

    .line 536
    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_26

    .line 537
    :cond_1d
    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    if-eqz v0, :cond_26

    .line 538
    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 540
    :cond_26
    :goto_26
    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 541
    iput-object v1, p0, Landroid/window/SplashScreenView;->mParceledIconBitmap:Landroid/graphics/Bitmap;

    .line 543
    :cond_2d
    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3d

    .line 544
    iget-object v0, p0, Landroid/window/SplashScreenView;->mBrandingImageView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 545
    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 546
    iput-object v1, p0, Landroid/window/SplashScreenView;->mParceledBrandingBitmap:Landroid/graphics/Bitmap;

    .line 548
    :cond_3d
    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_51

    .line 549
    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    if-eqz v0, :cond_4a

    .line 550
    iget-object v0, p0, Landroid/window/SplashScreenView;->mIconView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 552
    :cond_4a
    iget-object v0, p0, Landroid/window/SplashScreenView;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 553
    iput-object v1, p0, Landroid/window/SplashScreenView;->mParceledIconBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 555
    :cond_51
    iget-object v0, p0, Landroid/window/SplashScreenView;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_70

    .line 556
    iget-object v0, p0, Landroid/window/SplashScreenView;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    .line 557
    .local v0, "decorView":Lcom/android/internal/policy/DecorView;
    sget-boolean v2, Landroid/window/SplashScreenView;->DEBUG:Z

    if-eqz v2, :cond_69

    .line 558
    sget-object v2, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "remove starting view"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_69
    if-eqz v0, :cond_6e

    .line 561
    invoke-virtual {v0, p0}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 563
    :cond_6e
    iput-object v1, p0, Landroid/window/SplashScreenView;->mWindow:Landroid/view/Window;

    .line 565
    .end local v0    # "decorView":Lcom/android/internal/policy/DecorView;
    :cond_70
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SplashScreenView;->mHasRemoved:Z

    .line 566
    return-void
.end method

.method public whitelist setAlpha(F)V
    .registers 4
    .param p1, "alpha"    # F

    .line 440
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 444
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_13

    .line 445
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/window/SplashScreenView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 447
    :cond_13
    return-void
.end method

.method public blacklist setNotCopyable()V
    .registers 2

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SplashScreenView;->mNotCopyable:Z

    .line 403
    return-void
.end method

.method public blacklist syncTransferSurfaceOnDraw()V
    .registers 4

    .line 478
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v0, :cond_5

    .line 479
    return-void

    .line 481
    :cond_5
    sget-boolean v0, Landroid/window/SplashScreenView;->DEBUG:Z

    if-eqz v0, :cond_35

    .line 482
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    new-instance v1, Landroid/window/SplashScreenView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/window/SplashScreenView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->addOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z

    .line 485
    sget-object v0, Landroid/window/SplashScreenView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transferring surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/SplashScreenView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_35
    iget-object v0, p0, Landroid/window/SplashScreenView;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/window/SplashScreenView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 489
    return-void
.end method
