.class Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentPreviewCoordinator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;
    }
.end annotation


# static fields
.field private static final blacklist IMAGE_FADE_IN_MILLIS:I = 0x96

.field private static final blacklist IMAGE_LOAD_INTO_VIEW:I = 0x2

.field private static final blacklist IMAGE_LOAD_TIMEOUT:I = 0x1


# instance fields
.field private blacklist mAtLeastOneLoaded:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHideParentOnFail:Z

.field private final blacklist mImageLoadTimeoutMillis:I

.field private final blacklist mParentView:Landroid/view/View;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public static synthetic blacklist $r8$lambda$SDfvpouI7jiEUCA7kmOBKGRqNBQ(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Landroid/net/Uri;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->lambda$loadUriIntoView$0(Landroid/net/Uri;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mParentView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAtLeastOneLoaded(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mAtLeastOneLoaded:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelLoads(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->cancelLoads()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->loadUriIntoView(ILandroid/net/Uri;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeHideContentPreview(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->maybeHideContentPreview()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetupPreDrawForSharedElementTransition(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->setupPreDrawForSharedElementTransition(Landroid/view/View;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;Z)V
    .registers 5
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "hideParentOnFail"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 434
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 354
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x10e0000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mImageLoadTimeoutMillis:I

    .line 358
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mAtLeastOneLoaded:Z

    .line 377
    new-instance p1, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;

    invoke-direct {p1, p0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;-><init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    .line 437
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mParentView:Landroid/view/View;

    .line 438
    iput-boolean p3, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHideParentOnFail:Z

    .line 439
    return-void
.end method

.method private blacklist cancelLoads()V
    .registers 3

    .line 457
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 458
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    return-void
.end method

.method private blacklist collapseParentView()V
    .registers 8

    .line 483
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mParentView:Landroid/view/View;

    .line 484
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 485
    .local v1, "widthSpec":I
    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 486
    .local v2, "heightSpec":I
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 487
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 488
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 489
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 490
    return-void
.end method

.method private synthetic blacklist lambda$loadUriIntoView$0(Landroid/net/Uri;II)V
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "imageResourceId"    # I
    .param p3, "extraImages"    # I

    .line 446
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 448
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, v0}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/app/ChooserActivity;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 449
    .local v8, "bmp":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 450
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 451
    new-instance v3, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;

    move-object v4, p0

    move-object v6, p1

    move v5, p2

    move v7, p3

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "imageResourceId":I
    .end local p3    # "extraImages":I
    .local v5, "imageResourceId":I
    .local v6, "uri":Landroid/net/Uri;
    .local v7, "extraImages":I
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;-><init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;ILandroid/graphics/Bitmap;)V

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 452
    iget-object p1, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 453
    return-void
.end method

.method private blacklist loadUriIntoView(ILandroid/net/Uri;I)V
    .registers 8
    .param p1, "imageResourceId"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "extraImages"    # I

    .line 443
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mImageLoadTimeoutMillis:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 445
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Landroid/net/Uri;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 454
    return-void
.end method

.method private blacklist maybeHideContentPreview()V
    .registers 3

    .line 462
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mAtLeastOneLoaded:Z

    if-nez v0, :cond_60

    .line 463
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHideParentOnFail:Z

    if-eqz v0, :cond_51

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hiding image preview area. Timed out waiting for preview to load within "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mImageLoadTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooserActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->collapseParentView()V

    .line 467
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 468
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mhideStickyContentPreview(Lcom/android/internal/app/ChooserActivity;)V

    goto :goto_4e

    .line 469
    :cond_39
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 470
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->hideContentPreview()V

    .line 473
    :cond_4e
    :goto_4e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHideParentOnFail:Z

    .line 475
    :cond_51
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmRemoveSharedElements(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 476
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnterTransitionAnimationDelegate(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->markImagePreviewReady()V

    .line 478
    :cond_60
    return-void
.end method

.method private blacklist setupPreDrawForSharedElementTransition(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$2;-><init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 432
    return-void
.end method
