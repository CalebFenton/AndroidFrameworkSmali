.class public Landroid/appwidget/AppWidgetHostView;
.super Landroid/widget/FrameLayout;
.source "AppWidgetHostView.java"

# interfaces
.implements Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHostView$InteractionLogger;,
        Landroid/appwidget/AppWidgetHostView$ViewApplyListener;,
        Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;
    }
.end annotation


# static fields
.field private static final blacklist FIRST_RESOURCE_COLOR_ID:I = 0x106001d

.field private static final greylist-max-o INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

.field private static final blacklist KEY_INFLATION_ID:Ljava/lang/String; = "inflation_id"

.field private static final greylist-max-o KEY_JAILED_ARRAY:Ljava/lang/String; = "jail"

.field private static final blacklist LAST_RESOURCE_COLOR_ID:I = 0x106005d

.field static final greylist-max-o LOGD:Z = false

.field static final greylist-max-o TAG:Ljava/lang/String; = "AppWidgetHostView"

.field static final greylist-max-o VIEW_MODE_CONTENT:I = 0x1

.field static final greylist-max-o VIEW_MODE_DEFAULT:I = 0x3

.field static final greylist-max-o VIEW_MODE_ERROR:I = 0x2

.field static final greylist-max-o VIEW_MODE_NOINIT:I


# instance fields
.field greylist mAppWidgetId:I

.field private greylist-max-o mAsyncExecutor:Ljava/util/concurrent/Executor;

.field blacklist mColorMappingChanged:Z

.field private blacklist mColorResources:Landroid/widget/RemoteViews$ColorResources;

.field greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mCurrentSize:Landroid/util/SizeF;

.field private blacklist mDelayedRestoredInflationId:J

.field private blacklist mDelayedRestoredState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field greylist mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private blacklist mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

.field private greylist-max-o mLastExecutionSignal:Landroid/os/CancellationSignal;

.field private blacklist mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

.field private blacklist mLastInflatedRemoteViewsId:J

.field private blacklist mOnLightBackground:Z

.field greylist-max-o mRemoteContext:Landroid/content/Context;

.field greylist-max-o mView:Landroid/view/View;

.field greylist-max-o mViewMode:I


# direct methods
.method public static synthetic blacklist $r8$lambda$_s0IkvzxWUOv94WhU9wUsmqvbUI(Landroid/appwidget/AppWidgetHostView;)V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->handleViewError()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yqRyUJs_qDjJoCOmgucKaJ1DBy8(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V
    .registers 1

    invoke-static {p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->-$$Nest$monPositionChanged(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAsyncExecutor(Landroid/appwidget/AppWidgetHostView;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentSize(Landroid/appwidget/AppWidgetHostView;)Landroid/util/SizeF;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInteractionLogger(Landroid/appwidget/AppWidgetHostView;)Landroid/appwidget/AppWidgetHostView$InteractionLogger;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastInflatedRemoteViews(Landroid/appwidget/AppWidgetHostView;)Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastExecutionSignal(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)V
    .registers 2

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastInflatedRemoteViewsId(Landroid/appwidget/AppWidgetHostView;J)V
    .registers 3

    iput-wide p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyContent(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->applyContent(Landroid/view/View;ZLjava/lang/Exception;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 100
    new-instance v0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHostView;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 132
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    .line 133
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animationIn"    # I
    .param p3, "animationOut"    # I

    .line 152
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 113
    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    .line 114
    new-instance v0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    invoke-direct {v0, p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;-><init>(Landroid/appwidget/AppWidgetHostView;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    .line 118
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 120
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    .line 121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    .line 153
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setIsRootNamespace(Z)V

    .line 157
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 139
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    .line 140
    invoke-virtual {p0, p2}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 141
    return-void
.end method

.method private greylist-max-o applyContent(Landroid/view/View;ZLjava/lang/Exception;)V
    .registers 7
    .param p1, "content"    # Landroid/view/View;
    .param p2, "recycled"    # Z
    .param p3, "exception"    # Ljava/lang/Exception;

    .line 659
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    .line 660
    if-nez p1, :cond_1a

    .line 661
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 663
    return-void

    .line 665
    :cond_b
    if-eqz p3, :cond_14

    .line 666
    const-string v0, "AppWidgetHostView"

    const-string v2, "Error inflating RemoteViews"

    invoke-static {v0, v2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    :cond_14
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object p1

    .line 669
    iput v1, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 672
    :cond_1a
    if-nez p2, :cond_22

    .line 673
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    .line 674
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;)V

    .line 677
    :cond_22
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    if-eq v0, p1, :cond_2d

    .line 678
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->removeView(Landroid/view/View;)V

    .line 679
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    .line 681
    :cond_2d
    return-void
.end method

.method private blacklist computeSizeFromLayout(IIII)Landroid/util/SizeF;
    .registers 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 331
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 332
    .local v0, "density":F
    new-instance v1, Landroid/util/SizeF;

    sub-int v2, p3, p1

    .line 333
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v0

    sub-int v3, p4, p2

    .line 334
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-direct {v1, v2, v3}, Landroid/util/SizeF;-><init>(FF)V

    .line 332
    return-object v1
.end method

.method private greylist-max-o generateId()I
    .registers 3

    .line 291
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getId()I

    move-result v0

    .line 292
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    return v1
.end method

.method private greylist-max-o getDefaultPadding()Landroid/graphics/Rect;
    .registers 3

    .line 267
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .line 245
    invoke-static {p0, p2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDefaultPaddingForWidget(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 249
    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 250
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v1

    goto :goto_d

    .line 252
    :cond_a
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 254
    :goto_d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 255
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x1050159

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 257
    const v1, 0x105015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 259
    const v1, 0x105015b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 261
    const v1, 0x1050158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 263
    return-object p1
.end method

.method private blacklist handleViewError()V
    .registers 6

    .line 376
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->removeViewInLayout(Landroid/view/View;)V

    .line 377
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v0

    .line 378
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    .line 379
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/appwidget/AppWidgetHostView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 380
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 381
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 380
    invoke-virtual {p0, v0, v1, v3}, Landroid/appwidget/AppWidgetHostView;->measureChild(Landroid/view/View;II)V

    .line 382
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingLeft:I

    add-int/2addr v1, v3

    iget v3, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingRight:I

    add-int/2addr v1, v3

    .line 383
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingBottom:I

    add-int/2addr v3, v4

    .line 382
    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 384
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    .line 385
    const/4 v1, 0x2

    iput v1, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 386
    return-void
.end method

.method private greylist-max-o inflateAsync(Landroid/widget/RemoteViews;)V
    .registers 12
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .line 686
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 687
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    .line 689
    .local v1, "layoutId":I
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_13

    .line 690
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 695
    :cond_13
    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    if-nez v0, :cond_3e

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 697
    :try_start_1f
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    const/4 v0, 0x1

    invoke-direct {v6, p0, p1, v1, v0}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_31} :catch_3b

    move-object v2, p1

    .end local p1    # "remoteViews":Landroid/widget/RemoteViews;
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    :try_start_32
    invoke-virtual/range {v2 .. v9}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object p1

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_38} :catch_39

    .line 706
    goto :goto_3f

    .line 704
    :catch_39
    move-exception v0

    goto :goto_3f

    .end local v2    # "remoteViews":Landroid/widget/RemoteViews;
    .restart local p1    # "remoteViews":Landroid/widget/RemoteViews;
    :catch_3b
    move-exception v0

    move-object v2, p1

    .end local p1    # "remoteViews":Landroid/widget/RemoteViews;
    .restart local v2    # "remoteViews":Landroid/widget/RemoteViews;
    goto :goto_3f

    .line 695
    .end local v2    # "remoteViews":Landroid/widget/RemoteViews;
    .restart local p1    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_3e
    move-object v2, p1

    .line 708
    .end local p1    # "remoteViews":Landroid/widget/RemoteViews;
    .restart local v2    # "remoteViews":Landroid/widget/RemoteViews;
    :goto_3f
    iget-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-nez p1, :cond_5b

    .line 709
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    const/4 p1, 0x0

    invoke-direct {v6, p0, v2, v1, p1}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v4, p0

    invoke-virtual/range {v2 .. v9}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object p1

    iput-object p1, v4, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    goto :goto_5c

    .line 708
    :cond_5b
    move-object v4, p0

    .line 717
    :goto_5c
    return-void
.end method

.method private blacklist isSameColorMapping(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z
    .registers 7
    .param p1, "oldColors"    # Landroid/util/SparseIntArray;
    .param p2, "newColors"    # Landroid/util/SparseIntArray;

    .line 1004
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 1005
    return v2

    .line 1007
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 1008
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-ne v1, v3, :cond_2b

    .line 1009
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-eq v1, v3, :cond_28

    goto :goto_2b

    .line 1007
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1010
    :cond_2b
    :goto_2b
    return v2

    .line 1013
    .end local v0    # "i":I
    :cond_2c
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/Class;)Z
    .registers 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 101
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private blacklist reapplyLastRemoteViews()V
    .registers 4

    .line 583
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 584
    .local v0, "savedState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 585
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    .line 586
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 587
    return-void
.end method

.method private blacklist setColorResourcesStates(Landroid/widget/RemoteViews$ColorResources;)V
    .registers 3
    .param p1, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 978
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    .line 980
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 981
    return-void
.end method


# virtual methods
.method protected greylist-max-o applyRemoteViews(Landroid/widget/RemoteViews;Z)V
    .registers 13
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "useAsyncIfPossible"    # Z

    .line 593
    const/4 v1, 0x0

    .line 594
    .local v1, "recycled":Z
    const/4 v2, 0x0

    .line 595
    .local v2, "content":Landroid/view/View;
    const/4 v3, 0x0

    .line 598
    .local v3, "exception":Ljava/lang/Exception;
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    .line 600
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_13

    .line 601
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    .line 605
    :cond_13
    if-nez p1, :cond_24

    .line 606
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1b

    .line 608
    return-void

    .line 610
    :cond_1b
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultView()Landroid/view/View;

    move-result-object v0

    .line 611
    .end local v2    # "content":Landroid/view/View;
    .local v0, "content":Landroid/view/View;
    iput v4, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    move-object v6, p0

    goto/16 :goto_92

    .line 614
    .end local v0    # "content":Landroid/view/View;
    .restart local v2    # "content":Landroid/view/View;
    :cond_24
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 615
    .local v0, "rvToApply":Landroid/widget/RemoteViews;
    iget-boolean v4, p0, Landroid/appwidget/AppWidgetHostView;->mOnLightBackground:Z

    if-eqz v4, :cond_36

    .line 616
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getDarkTextViews()Landroid/widget/RemoteViews;

    move-result-object v0

    move-object v4, v0

    goto :goto_37

    .line 615
    :cond_36
    move-object v4, v0

    .line 619
    .end local v0    # "rvToApply":Landroid/widget/RemoteViews;
    .local v4, "rvToApply":Landroid/widget/RemoteViews;
    :goto_37
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_41

    if-eqz p2, :cond_41

    .line 620
    invoke-direct {p0, v4}, Landroid/appwidget/AppWidgetHostView;->inflateAsync(Landroid/widget/RemoteViews;)V

    .line 621
    return-void

    .line 625
    :cond_41
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 627
    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    if-nez v0, :cond_6e

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 629
    :try_start_53
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V

    .line 631
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    move-object v2, v0

    .line 632
    invoke-virtual {v4, p1}, Landroid/widget/RemoteViews;->computeUniqueId(Landroid/widget/RemoteViews;)J

    move-result-wide v5

    iput-wide v5, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_69} :catch_6c

    .line 633
    const/4 v0, 0x1

    .line 637
    .end local v1    # "recycled":Z
    .local v0, "recycled":Z
    move v1, v0

    goto :goto_6e

    .line 635
    .end local v0    # "recycled":Z
    .restart local v1    # "recycled":Z
    :catch_6c
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v3, v0

    .line 641
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_6e
    :goto_6e
    if-nez v2, :cond_8d

    .line 643
    :try_start_70
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;
    :try_end_78
    .catch Ljava/lang/RuntimeException; {:try_start_70 .. :try_end_78} :catch_88

    move-object v6, p0

    :try_start_79
    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    .line 645
    invoke-virtual {v4, p1}, Landroid/widget/RemoteViews;->computeUniqueId(Landroid/widget/RemoteViews;)J

    move-result-wide v7

    iput-wide v7, v6, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J
    :try_end_84
    .catch Ljava/lang/RuntimeException; {:try_start_79 .. :try_end_84} :catch_86

    .line 649
    move-object v0, v2

    goto :goto_8f

    .line 647
    :catch_86
    move-exception v0

    goto :goto_8a

    :catch_88
    move-exception v0

    move-object v6, p0

    .line 648
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :goto_8a
    move-object v3, v0

    move-object v0, v2

    goto :goto_8f

    .line 641
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_8d
    move-object v6, p0

    move-object v0, v2

    .line 652
    .end local v2    # "content":Landroid/view/View;
    .local v0, "content":Landroid/view/View;
    :goto_8f
    const/4 v2, 0x1

    iput v2, v6, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 655
    .end local v4    # "rvToApply":Landroid/widget/RemoteViews;
    :goto_92
    invoke-direct {p0, v0, v1, v3}, Landroid/appwidget/AppWidgetHostView;->applyContent(Landroid/view/View;ZLjava/lang/Exception;)V

    .line 656
    return-void
.end method

.method public blacklist createSharedElementActivityOptions([I[Ljava/lang/String;Landroid/content/Intent;)Landroid/app/ActivityOptions;
    .registers 12
    .param p1, "sharedViewIds"    # [I
    .param p2, "sharedViewNames"    # [Ljava/lang/String;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .line 925
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 926
    .local v0, "parentContext":Landroid/content/Context;
    :goto_4
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_14

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_14

    .line 928
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_4

    .line 930
    :cond_14
    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 931
    return-object v2

    .line 934
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .local v1, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 937
    .local v3, "extras":Landroid/os/Bundle;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    array-length v5, p1

    if-ge v4, v5, :cond_45

    .line 938
    aget v5, p1, v4

    invoke-virtual {p0, v5}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 939
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_42

    .line 940
    aget-object v6, p2, v4

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    aget-object v6, p2, v4

    invoke-static {v5}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 937
    .end local v5    # "view":Landroid/view/View;
    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 946
    .end local v4    # "i":I
    :cond_45
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_69

    .line 947
    const-string v2, "android.widget.extra.SHARED_ELEMENT_BOUNDS"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 948
    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    .line 950
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/util/Pair;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/util/Pair;

    .line 948
    invoke-static {v2, v4}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 951
    .local v2, "opts":Landroid/app/ActivityOptions;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    .line 952
    return-object v2

    .line 954
    .end local v2    # "opts":Landroid/app/ActivityOptions;
    :cond_69
    return-object v2
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1035
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1036
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    invoke-static {v0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->-$$Nest$monDraw(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 1041
    goto :goto_2a

    .line 1037
    :catch_9
    move-exception v0

    .line 1039
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drawing view failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetHostView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-instance v1, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda1;-><init>(Landroid/appwidget/AppWidgetHostView;)V

    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    .line 1042
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2a
    return-void
.end method

.method protected whitelist dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 297
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 299
    .local v0, "parcelable":Landroid/os/Parcelable;
    const/4 v1, 0x0

    .line 300
    .local v1, "jail":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const-wide/16 v2, -0x1

    .line 301
    .local v2, "inflationId":J
    instance-of v4, v0, Landroid/os/Bundle;

    if-eqz v4, :cond_24

    .line 302
    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    .line 303
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "jail"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 304
    const-string/jumbo v5, "inflation_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 307
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_24
    if-nez v1, :cond_2c

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v4

    .line 309
    :cond_2c
    iput-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredState:Landroid/util/SparseArray;

    .line 310
    iput-wide v2, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredInflationId:J

    .line 311
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->restoreInstanceState()V

    .line 312
    return-void
.end method

.method protected whitelist dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 280
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 281
    .local v0, "jail":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 283
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 284
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "jail"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 285
    const-string/jumbo v2, "inflation_id"

    iget-wide v3, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 286
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    return-void
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 526
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    .line 527
    .local v0, "context":Landroid/content/Context;
    :goto_9
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v1
.end method

.method public whitelist getAppWidgetId()I
    .registers 2

    .line 271
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    return v0
.end method

.method public whitelist getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2

    .line 275
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method protected whitelist getDefaultView()Landroid/view/View;
    .registers 12

    .line 832
    const-string v0, "appWidgetCategory"

    const-string v1, "AppWidgetHostView"

    const/4 v2, 0x0

    .line 833
    .local v2, "defaultView":Landroid/view/View;
    const/4 v3, 0x0

    .line 836
    .local v3, "exception":Ljava/lang/Exception;
    :try_start_6
    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v4, :cond_5c

    .line 837
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;

    move-result-object v4

    .line 838
    .local v4, "theirContext":Landroid/content/Context;
    iput-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 839
    const-string/jumbo v5, "layout_inflater"

    .line 840
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 841
    .local v5, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v5, v4}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 842
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .local v6, "inflater":Landroid/view/LayoutInflater;
    sget-object v5, Landroid/appwidget/AppWidgetHostView;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {v6, v5}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 843
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 844
    .local v5, "manager":Landroid/appwidget/AppWidgetManager;
    iget v7, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v5, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v7

    .line 846
    .local v7, "options":Landroid/os/Bundle;
    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 847
    .local v8, "layoutId":I
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 848
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 849
    .local v0, "category":I
    const/4 v9, 0x2

    if-ne v0, v9, :cond_49

    .line 850
    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 853
    .local v9, "kgLayoutId":I
    if-nez v9, :cond_47

    move v10, v8

    goto :goto_48

    :cond_47
    move v10, v9

    :goto_48
    move v8, v10

    .line 856
    .end local v0    # "category":I
    .end local v9    # "kgLayoutId":I
    :cond_49
    const/4 v0, 0x0

    invoke-virtual {v6, v8, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    .line 857
    instance-of v0, v2, Landroid/widget/AdapterView;

    if-nez v0, :cond_5b

    .line 859
    new-instance v0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda2;-><init>(Landroid/appwidget/AppWidgetHostView;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    .end local v4    # "theirContext":Landroid/content/Context;
    .end local v5    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v6    # "inflater":Landroid/view/LayoutInflater;
    .end local v7    # "options":Landroid/os/Bundle;
    .end local v8    # "layoutId":I
    :cond_5b
    goto :goto_61

    .line 862
    :cond_5c
    const-string v0, "can\'t inflate defaultView because mInfo is missing"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_61} :catch_62

    .line 866
    :goto_61
    goto :goto_64

    .line 864
    :catch_62
    move-exception v0

    .line 865
    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v3, v0

    .line 868
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_64
    if-eqz v3, :cond_7e

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inflating AppWidget "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    :cond_7e
    if-nez v2, :cond_84

    .line 874
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v2

    .line 877
    :cond_84
    return-object v2
.end method

.method protected whitelist getErrorView()Landroid/view/View;
    .registers 4

    .line 908
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 909
    .local v0, "tv":Landroid/widget/TextView;
    const v1, 0x1040472

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 911
    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 912
    return-object v0
.end method

.method public blacklist getInteractionLogger()Landroid/appwidget/AppWidgetHostView$InteractionLogger;
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    return-object v0
.end method

.method protected blacklist getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;
    .registers 5

    .line 793
    const-string v0, "AppWidgetHostView"

    :try_start_2
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v1

    .line 796
    .local v1, "newContext":Landroid/content/Context;
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-eqz v2, :cond_18

    .line 797
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-virtual {v2, v1}, Landroid/widget/RemoteViews$ColorResources;->apply(Landroid/content/Context;)V
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_18} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_18} :catch_19

    .line 799
    :cond_18
    return-object v1

    .line 803
    .end local v1    # "newContext":Landroid/content/Context;
    :catch_19
    move-exception v1

    .line 804
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "Error trying to create the remote context."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 805
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v0

    .line 800
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_22
    move-exception v1

    .line 801
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected blacklist onDefaultViewClicked(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .line 888
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 889
    .local v0, "manager":Landroid/appwidget/AppWidgetManager;
    if-eqz v0, :cond_d

    .line 890
    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->noteAppWidgetTapped(I)V

    .line 892
    :cond_d
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v1, :cond_4c

    .line 893
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 894
    .local v1, "launcherApps":Landroid/content/pm/LauncherApps;
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 895
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v3

    .line 894
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 896
    .local v2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 897
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    .line 898
    .local v3, "ai":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 899
    invoke-static {p1}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    .line 898
    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 902
    .end local v1    # "launcherApps":Landroid/content/pm/LauncherApps;
    .end local v2    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v3    # "ai":Landroid/content/pm/LauncherActivityInfo;
    :cond_4c
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 918
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 919
    const-class v0, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 920
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 16
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 341
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    .line 342
    .local v0, "oldSize":Landroid/util/SizeF;
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/appwidget/AppWidgetHostView;->computeSizeFromLayout(IIII)Landroid/util/SizeF;

    move-result-object v1

    .line 343
    .local v1, "newSize":Landroid/util/SizeF;
    iput-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    .line 344
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_4c

    if-eqz v2, :cond_38

    .line 345
    :try_start_c
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->getRemoteViewsToApplyIfDifferent(Landroid/util/SizeF;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 347
    .local v2, "toApply":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_33

    .line 348
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    .line 349
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    .line 350
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 352
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_2c} :catch_35

    .line 349
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    :try_start_2f
    invoke-virtual/range {v4 .. v9}, Landroid/appwidget/AppWidgetHostView;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_39

    .line 347
    :cond_33
    move-object v4, p0

    goto :goto_39

    .line 360
    .end local v0    # "oldSize":Landroid/util/SizeF;
    .end local v1    # "newSize":Landroid/util/SizeF;
    .end local v2    # "toApply":Landroid/widget/RemoteViews;
    :catch_35
    move-exception v0

    move-object v4, p0

    goto :goto_4d

    .line 344
    .restart local v0    # "oldSize":Landroid/util/SizeF;
    .restart local v1    # "newSize":Landroid/util/SizeF;
    :cond_38
    move-object v4, p0

    .line 356
    :goto_39
    if-eqz p1, :cond_48

    .line 357
    iget-object v2, v4, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V

    invoke-virtual {p0, v3}, Landroid/appwidget/AppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    .line 359
    :cond_48
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_4b} :catch_4c

    .line 363
    .end local v0    # "oldSize":Landroid/util/SizeF;
    .end local v1    # "newSize":Landroid/util/SizeF;
    goto :goto_57

    .line 360
    :catch_4c
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_4d
    const-string v1, "AppWidgetHostView"

    const-string v2, "Remote provider threw runtime exception, using error view instead."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->handleViewError()V

    .line 364
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_57
    return-void
.end method

.method public blacklist onUpdateProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 564
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {p0, v0, p1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 565
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 566
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 567
    return-void
.end method

.method public blacklist onViewDataChanged(I)V
    .registers 6
    .param p1, "viewId"    # I

    .line 769
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 770
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_2a

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_2a

    .line 771
    move-object v1, v0

    check-cast v1, Landroid/widget/AdapterView;

    .line 772
    .local v1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 773
    .local v2, "adapter":Landroid/widget/Adapter;
    instance-of v3, v2, Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_1c

    .line 774
    move-object v3, v2

    check-cast v3, Landroid/widget/BaseAdapter;

    .line 775
    .local v3, "baseAdapter":Landroid/widget/BaseAdapter;
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .end local v3    # "baseAdapter":Landroid/widget/BaseAdapter;
    goto :goto_29

    .line 776
    :cond_1c
    if-nez v2, :cond_29

    instance-of v3, v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v3, :cond_29

    .line 780
    move-object v3, v1

    check-cast v3, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    invoke-interface {v3}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->deferNotifyDataSetChanged()V

    goto :goto_2a

    .line 776
    :cond_29
    :goto_29
    nop

    .line 783
    .end local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .end local v2    # "adapter":Landroid/widget/Adapter;
    :cond_2a
    :goto_2a
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .line 368
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 369
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    invoke-static {v0, p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->-$$Nest$monWindowFocusChanged(Landroid/appwidget/AppWidgetHostView$InteractionLogger;Z)V

    .line 370
    return-void
.end method

.method protected whitelist prepareView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 815
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 816
    .local v0, "requested":Landroid/widget/FrameLayout$LayoutParams;
    if-nez v0, :cond_f

    .line 817
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 821
    :cond_f
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 822
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 823
    return-void
.end method

.method public whitelist resetColorResources()V
    .registers 2

    .line 1024
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-eqz v0, :cond_10

    .line 1025
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 1026
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    .line 1027
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 1028
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->reapplyLastRemoteViews()V

    .line 1030
    :cond_10
    return-void
.end method

.method blacklist restoreInstanceState()V
    .registers 8

    .line 315
    iget-wide v0, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredInflationId:J

    .line 316
    .local v0, "inflationId":J
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredState:Landroid/util/SparseArray;

    .line 317
    .local v2, "state":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_4c

    iget-wide v5, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    cmp-long v5, v0, v5

    if-eqz v5, :cond_11

    goto :goto_4c

    .line 320
    :cond_11
    iput-wide v3, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredInflationId:J

    .line 321
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredState:Landroid/util/SparseArray;

    .line 323
    :try_start_16
    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    .line 327
    goto :goto_4b

    .line 324
    :catch_1a
    move-exception v3

    .line 325
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to restoreInstanceState for widget id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 326
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v5, :cond_3a

    const-string/jumbo v5, "null"

    goto :goto_3e

    :cond_3a
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    :goto_3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 325
    const-string v5, "AppWidgetHostView"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4b
    return-void

    .line 318
    :cond_4c
    :goto_4c
    return-void
.end method

.method public whitelist setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 8
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 208
    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    .line 209
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 212
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 213
    .local v0, "padding":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 217
    if-eqz p2, :cond_3e

    .line 218
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "description":Ljava/lang/String;
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_3b

    .line 220
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a2a

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 223
    :cond_3b
    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 225
    .end local v1    # "description":Ljava/lang/String;
    :cond_3e
    return-void
.end method

.method public whitelist setColorResources(Landroid/util/SparseIntArray;)V
    .registers 3
    .param p1, "colorMapping"    # Landroid/util/SparseIntArray;

    .line 970
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 971
    invoke-virtual {v0}, Landroid/widget/RemoteViews$ColorResources;->getColorMapping()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/appwidget/AppWidgetHostView;->isSameColorMapping(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 972
    return-void

    .line 974
    :cond_11
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews$ColorResources;->create(Landroid/content/Context;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews$ColorResources;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setColorResources(Landroid/widget/RemoteViews$ColorResources;)V

    .line 975
    return-void
.end method

.method public blacklist setColorResources(Landroid/widget/RemoteViews$ColorResources;)V
    .registers 3
    .param p1, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 985
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-ne p1, v0, :cond_5

    .line 986
    return-void

    .line 988
    :cond_5
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setColorResourcesStates(Landroid/widget/RemoteViews$ColorResources;)V

    .line 989
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->reapplyLastRemoteViews()V

    .line 990
    return-void
.end method

.method public blacklist setColorResourcesNoReapply(Landroid/widget/RemoteViews$ColorResources;)V
    .registers 3
    .param p1, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 996
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-ne p1, v0, :cond_5

    .line 997
    return-void

    .line 999
    :cond_5
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setColorResourcesStates(Landroid/widget/RemoteViews$ColorResources;)V

    .line 1000
    return-void
.end method

.method public whitelist setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 538
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_c

    .line 539
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    .line 543
    :cond_c
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    .line 544
    return-void
.end method

.method public blacklist setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 167
    instance-of v0, p1, Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    .line 169
    .local v0, "logger":Landroid/appwidget/AppWidgetHostView$InteractionLogger;
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    goto :goto_11

    .line 171
    .end local v0    # "logger":Landroid/appwidget/AppWidgetHostView$InteractionLogger;
    :cond_a
    new-instance v0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews$InteractionHandler;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionLogger:Landroid/appwidget/AppWidgetHostView$InteractionLogger;

    .line 173
    :goto_11
    return-void
.end method

.method public whitelist setOnLightBackground(Z)V
    .registers 2
    .param p1, "onLightBackground"    # Z

    .line 553
    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView;->mOnLightBackground:Z

    .line 554
    return-void
.end method

.method public whitelist updateAppWidget(Landroid/widget/RemoteViews;)V
    .registers 3
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .line 575
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    .line 576
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    .line 577
    return-void
.end method

.method public whitelist updateAppWidgetOptions(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "options"    # Landroid/os/Bundle;

    .line 517
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 518
    return-void
.end method

.method public whitelist updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .registers 13
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 407
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "newOptions":Landroid/os/Bundle;
    .end local p2    # "minWidth":I
    .end local p3    # "minHeight":I
    .end local p4    # "maxWidth":I
    .end local p5    # "maxHeight":I
    .local v1, "newOptions":Landroid/os/Bundle;
    .local v2, "minWidth":I
    .local v3, "minHeight":I
    .local v4, "maxWidth":I
    .local v5, "maxHeight":I
    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    .line 408
    return-void
.end method

.method public greylist-max-r updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V
    .registers 24
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I
    .param p6, "ignorePadding"    # Z

    .line 471
    move-object/from16 v0, p0

    if-nez p1, :cond_a

    .line 472
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .end local p1    # "newOptions":Landroid/os/Bundle;
    .local v1, "newOptions":Landroid/os/Bundle;
    goto :goto_c

    .line 471
    .end local v1    # "newOptions":Landroid/os/Bundle;
    .restart local p1    # "newOptions":Landroid/os/Bundle;
    :cond_a
    move-object/from16 v1, p1

    .line 475
    .end local p1    # "newOptions":Landroid/os/Bundle;
    .restart local v1    # "newOptions":Landroid/os/Bundle;
    :goto_c
    invoke-direct {v0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object v2

    .line 476
    .local v2, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 478
    .local v3, "density":F
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    .line 479
    .local v4, "xPaddingDips":I
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    float-to-int v5, v5

    .line 481
    .local v5, "yPaddingDips":I
    const/4 v6, 0x0

    if-eqz p6, :cond_2f

    move v7, v6

    goto :goto_30

    :cond_2f
    move v7, v4

    :goto_30
    sub-int v7, p2, v7

    .line 482
    .local v7, "newMinWidth":I
    if-eqz p6, :cond_36

    move v8, v6

    goto :goto_37

    :cond_36
    move v8, v5

    :goto_37
    sub-int v8, p3, v8

    .line 483
    .local v8, "newMinHeight":I
    if-eqz p6, :cond_3d

    move v9, v6

    goto :goto_3e

    :cond_3d
    move v9, v4

    :goto_3e
    sub-int v9, p4, v9

    .line 484
    .local v9, "newMaxWidth":I
    if-eqz p6, :cond_43

    goto :goto_44

    :cond_43
    move v6, v5

    :goto_44
    sub-int v6, p5, v6

    .line 486
    .local v6, "newMaxHeight":I
    iget-object v10, v0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    .line 489
    .local v10, "widgetManager":Landroid/appwidget/AppWidgetManager;
    iget v11, v0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v10, v11}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v11

    .line 490
    .local v11, "oldOptions":Landroid/os/Bundle;
    const/4 v12, 0x0

    .line 491
    .local v12, "needsUpdate":Z
    const-string v13, "appWidgetMinWidth"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "appWidgetMaxHeight"

    move-object/from16 p1, v2

    .end local v2    # "padding":Landroid/graphics/Rect;
    .local p1, "padding":Landroid/graphics/Rect;
    const-string v2, "appWidgetMaxWidth"

    move/from16 v16, v3

    .end local v3    # "density":F
    .local v16, "density":F
    const-string v3, "appWidgetMinHeight"

    if-ne v7, v14, :cond_77

    .line 492
    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v8, v14, :cond_77

    .line 493
    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v9, v14, :cond_77

    .line 494
    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    if-eq v6, v14, :cond_78

    .line 495
    :cond_77
    const/4 v12, 0x1

    .line 498
    :cond_78
    if-eqz v12, :cond_93

    .line 499
    invoke-virtual {v1, v13, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 500
    invoke-virtual {v1, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 501
    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 502
    invoke-virtual {v1, v15, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 503
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "appWidgetSizes"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 505
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 507
    :cond_93
    return-void
.end method

.method public whitelist updateAppWidgetSize(Landroid/os/Bundle;Ljava/util/List;)V
    .registers 22
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/util/SizeF;",
            ">;)V"
        }
    .end annotation

    .line 428
    .local p2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/SizeF;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 430
    .local v1, "widgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-direct {v0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object v2

    .line 431
    .local v2, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 433
    .local v3, "density":F
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 434
    .local v4, "xPaddingDips":F
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 436
    .local v5, "yPaddingDips":F
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 437
    .local v6, "paddedSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/SizeF;>;"
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 438
    .local v7, "minWidth":F
    const/4 v8, 0x0

    .line 439
    .local v8, "maxWidth":F
    const v9, 0x7f7fffff    # Float.MAX_VALUE

    .line 440
    .local v9, "minHeight":F
    const/4 v10, 0x0

    .line 441
    .local v10, "maxHeight":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_36
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_8b

    .line 442
    move-object/from16 v12, p2

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SizeF;

    .line 443
    .local v13, "size":Landroid/util/SizeF;
    new-instance v14, Landroid/util/SizeF;

    invoke-virtual {v13}, Landroid/util/SizeF;->getWidth()F

    move-result v15

    sub-float/2addr v15, v4

    move-object/from16 v16, v2

    .end local v2    # "padding":Landroid/graphics/Rect;
    .local v16, "padding":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-static {v2, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 444
    invoke-virtual {v13}, Landroid/util/SizeF;->getHeight()F

    move-result v17

    move/from16 v18, v3

    .end local v3    # "density":F
    .local v18, "density":F
    sub-float v3, v17, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-direct {v14, v15, v2}, Landroid/util/SizeF;-><init>(FF)V

    .line 445
    .local v14, "paddedSize":Landroid/util/SizeF;
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {v14}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 447
    invoke-virtual {v14}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 448
    invoke-virtual {v14}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 449
    invoke-virtual {v14}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 441
    .end local v13    # "size":Landroid/util/SizeF;
    .end local v14    # "paddedSize":Landroid/util/SizeF;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    move/from16 v3, v18

    goto :goto_36

    .end local v16    # "padding":Landroid/graphics/Rect;
    .end local v18    # "density":F
    .restart local v2    # "padding":Landroid/graphics/Rect;
    .restart local v3    # "density":F
    :cond_8b
    move-object/from16 v12, p2

    move-object/from16 v16, v2

    move/from16 v18, v3

    .line 451
    .end local v2    # "padding":Landroid/graphics/Rect;
    .end local v3    # "density":F
    .end local v11    # "i":I
    .restart local v16    # "padding":Landroid/graphics/Rect;
    .restart local v18    # "density":F
    iget v2, v0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    .line 452
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appWidgetSizes"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 451
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 454
    return-void

    .line 456
    :cond_a4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v2

    .line 457
    .local v2, "options":Landroid/os/Bundle;
    const-string v11, "appWidgetMinWidth"

    float-to-int v13, v7

    invoke-virtual {v2, v11, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    const-string v11, "appWidgetMinHeight"

    float-to-int v13, v9

    invoke-virtual {v2, v11, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    const-string v11, "appWidgetMaxWidth"

    float-to-int v13, v8

    invoke-virtual {v2, v11, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 460
    const-string v11, "appWidgetMaxHeight"

    float-to-int v13, v10

    invoke-virtual {v2, v11, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 461
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 462
    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 463
    return-void
.end method
