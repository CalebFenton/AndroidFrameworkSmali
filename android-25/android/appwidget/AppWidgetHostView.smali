.class public Landroid/appwidget/AppWidgetHostView;
.super Landroid/widget/FrameLayout;
.source "AppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHostView$1;,
        Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;,
        Landroid/appwidget/AppWidgetHostView$ViewApplyListener;
    }
.end annotation


# static fields
.field static final CROSSFADE:Z = false

.field static final FADE_DURATION:I = 0x3e8

.field static final LOGD:Z = false

.field static final TAG:Ljava/lang/String; = "AppWidgetHostView"

.field static final VIEW_MODE_CONTENT:I = 0x1

.field static final VIEW_MODE_DEFAULT:I = 0x3

.field static final VIEW_MODE_ERROR:I = 0x2

.field static final VIEW_MODE_NOINIT:I

.field static final sInflaterFilter:Landroid/view/LayoutInflater$Filter;


# instance fields
.field mAppWidgetId:I

.field private mAsyncExecutor:Ljava/util/concurrent/Executor;

.field mContext:Landroid/content/Context;

.field mFadeStartTime:J

.field mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mLastExecutionSignal:Landroid/os/CancellationSignal;

.field mLayoutId:I

.field mOld:Landroid/graphics/Bitmap;

.field mOldPaint:Landroid/graphics/Paint;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field mRemoteContext:Landroid/content/Context;

.field mView:Landroid/view/View;

.field mViewMode:I


# direct methods
.method static synthetic -get0(Landroid/appwidget/AppWidgetHostView;)Ljava/util/concurrent/Executor;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/appwidget/AppWidgetHostView;)Landroid/widget/RemoteViews$OnClickHandler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V
    .locals 0
    .param p1, "content"    # Landroid/view/View;
    .param p2, "recycled"    # Z
    .param p3, "exception"    # Ljava/lang/Exception;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->applyContent(Landroid/view/View;ZLjava/lang/Exception;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 75
    new-instance v0, Landroid/appwidget/AppWidgetHostView$1;

    #@2
    invoke-direct {v0}, Landroid/appwidget/AppWidgetHostView$1;-><init>()V

    #@5
    sput-object v0, Landroid/appwidget/AppWidgetHostView;->sInflaterFilter:Landroid/view/LayoutInflater$Filter;

    #@7
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 101
    const/high16 v0, 0x10a0000

    #@2
    const v1, 0x10a0001

    #@5
    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    #@8
    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animationIn"    # I
    .param p3, "animationOut"    # I

    #@0
    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@3
    .line 87
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    #@6
    .line 88
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    #@9
    .line 89
    const-wide/16 v0, -0x1

    #@b
    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView;->mFadeStartTime:J

    #@d
    .line 91
    new-instance v0, Landroid/graphics/Paint;

    #@f
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@12
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOldPaint:Landroid/graphics/Paint;

    #@14
    .line 122
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@16
    .line 125
    const/4 v0, 0x1

    #@17
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setIsRootNamespace(Z)V

    #@1a
    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 108
    const/high16 v0, 0x10a0000

    #@2
    const v1, 0x10a0001

    #@5
    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    #@8
    .line 109
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@a
    .line 107
    return-void
.end method

.method private applyContent(Landroid/view/View;ZLjava/lang/Exception;)V
    .locals 3
    .param p1, "content"    # Landroid/view/View;
    .param p2, "recycled"    # Z
    .param p3, "exception"    # Ljava/lang/Exception;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 467
    if-nez p1, :cond_1

    #@3
    .line 468
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 470
    return-void

    #@8
    .line 472
    :cond_0
    const-string/jumbo v0, "AppWidgetHostView"

    #@b
    const-string/jumbo v1, "updateAppWidget couldn\'t find any view, using error view"

    #@e
    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 473
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    #@14
    move-result-object p1

    #@15
    .line 474
    iput v2, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    #@17
    .line 477
    :cond_1
    if-nez p2, :cond_2

    #@19
    .line 478
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    #@1c
    .line 479
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;)V

    #@1f
    .line 482
    :cond_2
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    #@21
    if-eq v0, p1, :cond_3

    #@23
    .line 483
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    #@25
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->removeView(Landroid/view/View;)V

    #@28
    .line 484
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    #@2a
    .line 466
    :cond_3
    return-void
.end method

.method private generateId()I
    .locals 2

    #@0
    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getId()I

    #@3
    move-result v0

    #@4
    .line 223
    .local v0, "id":I
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    #@9
    .end local v0    # "id":I
    :cond_0
    return v0
.end method

.method public static getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4
    move-result-object v2

    #@5
    .line 179
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez p2, :cond_1

    #@7
    .line 180
    new-instance p2, Landroid/graphics/Rect;

    #@9
    .end local p2    # "padding":Landroid/graphics/Rect;
    invoke-direct {p2, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@c
    .line 186
    .restart local p2    # "padding":Landroid/graphics/Rect;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    const/4 v5, 0x0

    #@11
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v0

    #@15
    .line 192
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@17
    const/16 v5, 0xe

    #@19
    if-lt v4, v5, :cond_0

    #@1b
    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1e
    move-result-object v3

    #@1f
    .line 194
    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x105006a

    #@22
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@25
    move-result v4

    #@26
    iput v4, p2, Landroid/graphics/Rect;->left:I

    #@28
    .line 196
    const v4, 0x105006c

    #@2b
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2e
    move-result v4

    #@2f
    iput v4, p2, Landroid/graphics/Rect;->right:I

    #@31
    .line 198
    const v4, 0x105006b

    #@34
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@37
    move-result v4

    #@38
    iput v4, p2, Landroid/graphics/Rect;->top:I

    #@3a
    .line 200
    const v4, 0x105006d

    #@3d
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@40
    move-result v4

    #@41
    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    #@43
    .line 203
    .end local v3    # "r":Landroid/content/res/Resources;
    :cond_0
    return-object p2

    #@44
    .line 182
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-virtual {p2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@47
    goto :goto_0

    #@48
    .line 187
    :catch_0
    move-exception v1

    #@49
    .line 189
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object p2
.end method

.method private inflateAsync(Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 517
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    #@6
    .line 518
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    #@9
    move-result v7

    #@a
    .line 522
    .local v7, "layoutId":I
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    #@c
    if-ne v7, v0, :cond_0

    #@e
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 524
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@14
    .line 525
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    #@16
    .line 526
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    #@18
    .line 527
    new-instance v4, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    #@1a
    const/4 v0, 0x1

    #@1b
    invoke-direct {v4, p0, p1, v7, v0}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    #@1e
    .line 528
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@20
    move-object v0, p1

    #@21
    .line 524
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 533
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    #@29
    if-nez v0, :cond_1

    #@2b
    .line 534
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@2d
    .line 536
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    #@2f
    .line 537
    new-instance v4, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    #@31
    const/4 v0, 0x0

    #@32
    invoke-direct {v4, p0, p1, v7, v0}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    #@35
    .line 538
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@37
    move-object v0, p1

    #@38
    move-object v2, p0

    #@39
    .line 534
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    #@3f
    .line 514
    :cond_1
    return-void

    #@40
    .line 529
    :catch_0
    move-exception v6

    #@41
    .local v6, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private updateContentDescription(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 499
    if-eqz p1, :cond_0

    #@3
    .line 500
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    #@6
    move-result-object v2

    #@7
    const-class v3, Landroid/content/pm/LauncherApps;

    #@9
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/content/pm/LauncherApps;

    #@f
    .line 502
    .local v1, "launcherApps":Landroid/content/pm/LauncherApps;
    iget-object v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@11
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    #@18
    move-result-object v3

    #@19
    .line 501
    invoke-virtual {v1, v2, v5, v3}, Landroid/content/pm/LauncherApps;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    #@1c
    move-result-object v0

    #@1d
    .line 503
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    #@1f
    .line 504
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@21
    const/high16 v3, 0x40000000    # 2.0f

    #@23
    and-int/2addr v2, v3

    #@24
    if-eqz v2, :cond_1

    #@26
    .line 506
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@29
    move-result-object v2

    #@2a
    const/4 v3, 0x1

    #@2b
    new-array v3, v3, [Ljava/lang/Object;

    #@2d
    .line 507
    iget-object v4, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    #@2f
    aput-object v4, v3, v5

    #@31
    const v4, 0x1040602

    #@34
    .line 506
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 505
    invoke-virtual {p0, v2}, Landroid/appwidget/AppWidgetHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@3b
    .line 498
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "launcherApps":Landroid/content/pm/LauncherApps;
    :cond_0
    :goto_0
    return-void

    #@3c
    .line 509
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "launcherApps":Landroid/content/pm/LauncherApps;
    :cond_1
    iget-object v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    #@3e
    invoke-virtual {p0, v2}, Landroid/appwidget/AppWidgetHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@41
    goto :goto_0
.end method


# virtual methods
.method protected applyRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x0

    #@2
    .line 389
    const/4 v4, 0x0

    #@3
    .line 390
    .local v4, "recycled":Z
    const/4 v0, 0x0

    #@4
    .line 391
    .local v0, "content":Landroid/view/View;
    const/4 v2, 0x0

    #@5
    .line 412
    .local v2, "exception":Ljava/lang/Exception;
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    #@7
    if-eqz v5, :cond_0

    #@9
    .line 413
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    #@b
    invoke-virtual {v5}, Landroid/os/CancellationSignal;->cancel()V

    #@e
    .line 414
    iput-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    #@10
    .line 417
    :cond_0
    if-nez p1, :cond_2

    #@12
    .line 418
    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    #@14
    if-ne v5, v7, :cond_1

    #@16
    .line 420
    return-void

    #@17
    .line 422
    :cond_1
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultView()Landroid/view/View;

    #@1a
    move-result-object v0

    #@1b
    .line 423
    .local v0, "content":Landroid/view/View;
    const/4 v5, -0x1

    #@1c
    iput v5, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    #@1e
    .line 424
    iput v7, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    #@20
    .line 462
    .end local v0    # "content":Landroid/view/View;
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0, v0, v4, v2}, Landroid/appwidget/AppWidgetHostView;->applyContent(Landroid/view/View;ZLjava/lang/Exception;)V

    #@23
    .line 463
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@25
    invoke-direct {p0, v5}, Landroid/appwidget/AppWidgetHostView;->updateContentDescription(Landroid/appwidget/AppWidgetProviderInfo;)V

    #@28
    .line 386
    return-void

    #@29
    .line 426
    .local v0, "content":Landroid/view/View;
    .restart local v2    # "exception":Ljava/lang/Exception;
    :cond_2
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    #@2b
    if-eqz v5, :cond_3

    #@2d
    .line 427
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->inflateAsync(Landroid/widget/RemoteViews;)V

    #@30
    .line 428
    return-void

    #@31
    .line 432
    :cond_3
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContext()Landroid/content/Context;

    #@34
    move-result-object v5

    #@35
    iput-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    #@37
    .line 433
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    #@3a
    move-result v3

    #@3b
    .line 437
    .local v3, "layoutId":I
    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    #@3d
    if-ne v3, v5, :cond_4

    #@3f
    .line 439
    :try_start_0
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@41
    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    #@43
    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@45
    invoke-virtual {p1, v5, v6, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    #@48
    .line 440
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@4a
    .line 441
    .local v0, "content":Landroid/view/View;
    const/4 v4, 0x1

    #@4b
    .line 449
    .end local v0    # "content":Landroid/view/View;
    .end local v2    # "exception":Ljava/lang/Exception;
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    #@4d
    .line 451
    :try_start_1
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@4f
    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@51
    invoke-virtual {p1, v5, p0, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@54
    move-result-object v0

    #@55
    .line 458
    :cond_5
    :goto_2
    iput v3, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    #@57
    .line 459
    const/4 v5, 0x1

    #@58
    iput v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    #@5a
    goto :goto_0

    #@5b
    .line 443
    .local v0, "content":Landroid/view/View;
    .restart local v2    # "exception":Ljava/lang/Exception;
    :catch_0
    move-exception v1

    #@5c
    .line 444
    .local v1, "e":Ljava/lang/RuntimeException;
    move-object v2, v1

    #@5d
    .local v2, "exception":Ljava/lang/Exception;
    goto :goto_1

    #@5e
    .line 453
    .end local v0    # "content":Landroid/view/View;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@5f
    .line 454
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    move-object v2, v1

    #@60
    .restart local v2    # "exception":Ljava/lang/Exception;
    goto :goto_2
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v4, 0x0

    #@1
    .line 228
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    #@4
    move-result v3

    #@5
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/os/Parcelable;

    #@b
    .line 230
    .local v2, "parcelable":Landroid/os/Parcelable;
    const/4 v1, 0x0

    #@c
    .line 231
    .local v1, "jail":Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    if-eqz v2, :cond_0

    #@e
    instance-of v3, v2, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    #@10
    if-eqz v3, :cond_0

    #@12
    move-object v1, v2

    #@13
    .line 232
    check-cast v1, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    #@15
    .line 235
    .end local v1    # "jail":Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    :cond_0
    if-nez v1, :cond_1

    #@17
    new-instance v1, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    #@19
    invoke-direct {v1, v4}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;-><init>(Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;)V

    #@1c
    .line 238
    :cond_1
    :try_start_0
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 227
    :goto_0
    return-void

    #@20
    .line 239
    :catch_0
    move-exception v0

    #@21
    .line 240
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "AppWidgetHostView"

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v5, "failed to restoreInstanceState for widget id: "

    #@2c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    #@32
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    const-string/jumbo v5, ", "

    #@39
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    .line 241
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@3f
    if-nez v3, :cond_2

    #@41
    const-string/jumbo v3, "null"

    #@44
    .line 240
    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4f
    goto :goto_0

    #@50
    .line 241
    :cond_2
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@52
    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@54
    goto :goto_1
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 216
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    new-instance v0, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;-><init>(Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;)V

    #@6
    .line 217
    .local v0, "jail":Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    #@9
    .line 218
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    #@c
    move-result v1

    #@d
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@10
    .line 215
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    #@0
    .prologue
    .line 649
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 345
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    #@6
    .line 346
    .local v0, "context":Landroid/content/Context;
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@8
    invoke-direct {v1, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@b
    return-object v1

    #@c
    .line 345
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@e
    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public getAppWidgetId()I
    .locals 1

    #@0
    .prologue
    .line 207
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    #@2
    return v0
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@2
    return-object v0
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 13

    #@0
    .prologue
    .line 676
    const/4 v1, 0x0

    #@1
    .line 677
    .local v1, "defaultView":Landroid/view/View;
    const/4 v3, 0x0

    #@2
    .line 680
    .local v3, "exception":Ljava/lang/Exception;
    :try_start_0
    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@4
    if-eqz v10, :cond_4

    #@6
    .line 681
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContext()Landroid/content/Context;

    #@9
    move-result-object v9

    #@a
    .line 682
    .local v9, "theirContext":Landroid/content/Context;
    iput-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    #@c
    .line 684
    const-string/jumbo v10, "layout_inflater"

    #@f
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    .line 683
    check-cast v4, Landroid/view/LayoutInflater;

    #@15
    .line 685
    .local v4, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v4, v9}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@18
    move-result-object v4

    #@19
    .line 686
    sget-object v10, Landroid/appwidget/AppWidgetHostView;->sInflaterFilter:Landroid/view/LayoutInflater$Filter;

    #@1b
    invoke-virtual {v4, v10}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    #@1e
    .line 687
    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@20
    invoke-static {v10}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    #@23
    move-result-object v7

    #@24
    .line 688
    .local v7, "manager":Landroid/appwidget/AppWidgetManager;
    iget v10, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    #@26
    invoke-virtual {v7, v10}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    #@29
    move-result-object v8

    #@2a
    .line 690
    .local v8, "options":Landroid/os/Bundle;
    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@2c
    iget v6, v10, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    #@2e
    .line 691
    .local v6, "layoutId":I
    const-string/jumbo v10, "appWidgetCategory"

    #@31
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@34
    move-result v10

    #@35
    if-eqz v10, :cond_0

    #@37
    .line 692
    const-string/jumbo v10, "appWidgetCategory"

    #@3a
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@3d
    move-result v0

    #@3e
    .line 693
    .local v0, "category":I
    const/4 v10, 0x2

    #@3f
    if-ne v0, v10, :cond_0

    #@41
    .line 694
    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@43
    iget v5, v10, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    #@45
    .line 697
    .local v5, "kgLayoutId":I
    if-nez v5, :cond_3

    #@47
    .line 700
    .end local v0    # "category":I
    .end local v5    # "kgLayoutId":I
    :cond_0
    :goto_0
    const/4 v10, 0x0

    #@48
    invoke-virtual {v4, v6, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    move-result-object v1

    #@4c
    .line 708
    .end local v1    # "defaultView":Landroid/view/View;
    .end local v3    # "exception":Ljava/lang/Exception;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "layoutId":I
    .end local v7    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v8    # "options":Landroid/os/Bundle;
    .end local v9    # "theirContext":Landroid/content/Context;
    :goto_1
    if-eqz v3, :cond_1

    #@4e
    .line 709
    const-string/jumbo v10, "AppWidgetHostView"

    #@51
    new-instance v11, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v12, "Error inflating AppWidget "

    #@59
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v11

    #@5d
    iget-object v12, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@5f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v11

    #@63
    const-string/jumbo v12, ": "

    #@66
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v11

    #@6a
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@6d
    move-result-object v12

    #@6e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v11

    #@72
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v11

    #@76
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 712
    :cond_1
    if-nez v1, :cond_2

    #@7b
    .line 714
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    #@7e
    move-result-object v1

    #@7f
    .line 717
    :cond_2
    return-object v1

    #@80
    .line 697
    .restart local v0    # "category":I
    .restart local v1    # "defaultView":Landroid/view/View;
    .restart local v3    # "exception":Ljava/lang/Exception;
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "kgLayoutId":I
    .restart local v6    # "layoutId":I
    .restart local v7    # "manager":Landroid/appwidget/AppWidgetManager;
    .restart local v8    # "options":Landroid/os/Bundle;
    .restart local v9    # "theirContext":Landroid/content/Context;
    :cond_3
    move v6, v5

    #@81
    goto :goto_0

    #@82
    .line 702
    .end local v0    # "category":I
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "kgLayoutId":I
    .end local v6    # "layoutId":I
    .end local v7    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v8    # "options":Landroid/os/Bundle;
    .end local v9    # "theirContext":Landroid/content/Context;
    :cond_4
    :try_start_1
    const-string/jumbo v10, "AppWidgetHostView"

    #@85
    const-string/jumbo v11, "can\'t inflate defaultView because mInfo is missing"

    #@88
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@8b
    goto :goto_1

    #@8c
    .line 704
    :catch_0
    move-exception v2

    #@8d
    .line 705
    .local v2, "e":Ljava/lang/RuntimeException;
    move-object v3, v2

    #@8e
    .local v3, "exception":Ljava/lang/Exception;
    goto :goto_1
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 724
    new-instance v0, Landroid/widget/TextView;

    #@3
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@5
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@8
    .line 725
    .local v0, "tv":Landroid/widget/TextView;
    const v1, 0x104045c

    #@b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    #@e
    .line 727
    const/16 v1, 0x7f

    #@10
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    #@13
    move-result v1

    #@14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    #@17
    .line 728
    return-object v0
.end method

.method protected getRemoteContext()Landroid/content/Context;
    .locals 4

    #@0
    .prologue
    .line 605
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@2
    .line 606
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@4
    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    #@6
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8
    .line 607
    const/4 v3, 0x4

    #@9
    .line 605
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 608
    :catch_0
    move-exception v0

    #@f
    .line 609
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "AppWidgetHostView"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Package name "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@20
    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    #@22
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    const-string/jumbo v3, " not found"

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 610
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@38
    return-object v1
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 734
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 735
    const-class v0, Landroid/appwidget/AppWidgetHostView;

    #@5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    #@c
    .line 733
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    #@2
    const/4 v5, 0x0

    #@3
    .line 248
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 246
    :goto_0
    return-void

    #@7
    .line 249
    :catch_0
    move-exception v1

    #@8
    .line 250
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "AppWidgetHostView"

    #@b
    const-string/jumbo v3, "Remote provider threw runtime exception, using error view instead."

    #@e
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 251
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    #@13
    invoke-virtual {p0, v2}, Landroid/appwidget/AppWidgetHostView;->removeViewInLayout(Landroid/view/View;)V

    #@16
    .line 252
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    .line 253
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    #@1d
    .line 254
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {p0, v0, v5, v2}, Landroid/appwidget/AppWidgetHostView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    #@24
    .line 255
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    #@27
    move-result v2

    #@28
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2b
    move-result v2

    #@2c
    .line 256
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    #@2f
    move-result v3

    #@30
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@33
    move-result v3

    #@34
    .line 255
    invoke-virtual {p0, v0, v2, v3}, Landroid/appwidget/AppWidgetHostView;->measureChild(Landroid/view/View;II)V

    #@37
    .line 257
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@3a
    move-result v2

    #@3b
    iget v3, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingLeft:I

    #@3d
    add-int/2addr v2, v3

    #@3e
    iget v3, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingRight:I

    #@40
    add-int/2addr v2, v3

    #@41
    .line 258
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@44
    move-result v3

    #@45
    iget v4, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingTop:I

    #@47
    add-int/2addr v3, v4

    #@48
    iget v4, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingBottom:I

    #@4a
    add-int/2addr v3, v4

    #@4b
    .line 257
    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    #@4e
    .line 259
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    #@50
    .line 260
    const/4 v2, 0x2

    #@51
    iput v2, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    #@53
    goto :goto_0
.end method

.method protected prepareView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 659
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    #@7
    .line 660
    .local v0, "requested":Landroid/widget/FrameLayout$LayoutParams;
    if-nez v0, :cond_0

    #@9
    .line 661
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@b
    .end local v0    # "requested":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@e
    .line 665
    .restart local v0    # "requested":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/16 v1, 0x11

    #@10
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@12
    .line 666
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@15
    .line 657
    return-void
.end method

.method resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    #@0
    .prologue
    .line 370
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@2
    .line 371
    const/4 v0, 0x0

    #@3
    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    #@5
    .line 372
    const/4 v0, 0x0

    #@6
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    #@9
    .line 369
    return-void
.end method

.method public setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 5
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 145
    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    #@3
    .line 146
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@5
    .line 150
    if-eqz p2, :cond_0

    #@7
    .line 152
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@9
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@b
    invoke-static {v1, v2, v3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@e
    move-result-object v0

    #@f
    .line 153
    .local v0, "padding":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@11
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@13
    iget v3, v0, Landroid/graphics/Rect;->right:I

    #@15
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    #@17
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    #@1a
    .line 154
    invoke-direct {p0, p2}, Landroid/appwidget/AppWidgetHostView;->updateContentDescription(Landroid/appwidget/AppWidgetProviderInfo;)V

    #@1d
    .line 144
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setAsyncExecutor(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 357
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 358
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    #@7
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    #@a
    .line 359
    iput-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    #@c
    .line 362
    :cond_0
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    #@e
    .line 356
    return-void
.end method

.method public setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 136
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@2
    .line 135
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 380
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;)V

    #@3
    .line 379
    return-void
.end method

.method public updateAppWidgetOptions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    #@b
    .line 335
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 7
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I

    #@0
    .prologue
    .line 281
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    #@a
    .line 280
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V
    .locals 13
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I
    .param p6, "ignorePadding"    # Z

    #@0
    .prologue
    .line 289
    if-nez p1, :cond_0

    #@2
    .line 290
    new-instance p1, Landroid/os/Bundle;

    #@4
    .end local p1    # "newOptions":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    #@7
    .line 293
    .restart local p1    # "newOptions":Landroid/os/Bundle;
    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    #@9
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    #@c
    .line 294
    .local v7, "padding":Landroid/graphics/Rect;
    iget-object v11, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@e
    if-eqz v11, :cond_1

    #@10
    .line 295
    iget-object v11, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@12
    iget-object v12, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@14
    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@16
    invoke-static {v11, v12, v7}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@19
    move-result-object v7

    #@1a
    .line 297
    :cond_1
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    #@1d
    move-result-object v11

    #@1e
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@21
    move-result-object v11

    #@22
    iget v0, v11, Landroid/util/DisplayMetrics;->density:F

    #@24
    .line 299
    .local v0, "density":F
    iget v11, v7, Landroid/graphics/Rect;->left:I

    #@26
    iget v12, v7, Landroid/graphics/Rect;->right:I

    #@28
    add-int/2addr v11, v12

    #@29
    int-to-float v11, v11

    #@2a
    div-float/2addr v11, v0

    #@2b
    float-to-int v9, v11

    #@2c
    .line 300
    .local v9, "xPaddingDips":I
    iget v11, v7, Landroid/graphics/Rect;->top:I

    #@2e
    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    #@30
    add-int/2addr v11, v12

    #@31
    int-to-float v11, v11

    #@32
    div-float/2addr v11, v0

    #@33
    float-to-int v10, v11

    #@34
    .line 302
    .local v10, "yPaddingDips":I
    if-eqz p6, :cond_7

    #@36
    const/4 v11, 0x0

    #@37
    :goto_0
    sub-int v5, p2, v11

    #@39
    .line 303
    .local v5, "newMinWidth":I
    if-eqz p6, :cond_8

    #@3b
    const/4 v11, 0x0

    #@3c
    :goto_1
    sub-int v4, p3, v11

    #@3e
    .line 304
    .local v4, "newMinHeight":I
    if-eqz p6, :cond_2

    #@40
    const/4 v9, 0x0

    #@41
    .end local v9    # "xPaddingDips":I
    :cond_2
    sub-int v3, p4, v9

    #@43
    .line 305
    .local v3, "newMaxWidth":I
    if-eqz p6, :cond_3

    #@45
    const/4 v10, 0x0

    #@46
    .end local v10    # "yPaddingDips":I
    :cond_3
    sub-int v2, p5, v10

    #@48
    .line 307
    .local v2, "newMaxHeight":I
    iget-object v11, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@4a
    invoke-static {v11}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    #@4d
    move-result-object v8

    #@4e
    .line 310
    .local v8, "widgetManager":Landroid/appwidget/AppWidgetManager;
    iget v11, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    #@50
    invoke-virtual {v8, v11}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    #@53
    move-result-object v6

    #@54
    .line 311
    .local v6, "oldOptions":Landroid/os/Bundle;
    const/4 v1, 0x0

    #@55
    .line 312
    .local v1, "needsUpdate":Z
    const-string/jumbo v11, "appWidgetMinWidth"

    #@58
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@5b
    move-result v11

    #@5c
    if-ne v5, v11, :cond_4

    #@5e
    .line 313
    const-string/jumbo v11, "appWidgetMinHeight"

    #@61
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@64
    move-result v11

    #@65
    if-eq v4, v11, :cond_9

    #@67
    .line 316
    :cond_4
    :goto_2
    const/4 v1, 0x1

    #@68
    .line 319
    :cond_5
    if-eqz v1, :cond_6

    #@6a
    .line 320
    const-string/jumbo v11, "appWidgetMinWidth"

    #@6d
    invoke-virtual {p1, v11, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@70
    .line 321
    const-string/jumbo v11, "appWidgetMinHeight"

    #@73
    invoke-virtual {p1, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@76
    .line 322
    const-string/jumbo v11, "appWidgetMaxWidth"

    #@79
    invoke-virtual {p1, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@7c
    .line 323
    const-string/jumbo v11, "appWidgetMaxHeight"

    #@7f
    invoke-virtual {p1, v11, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@82
    .line 324
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    #@85
    .line 288
    :cond_6
    return-void

    #@86
    .end local v1    # "needsUpdate":Z
    .end local v2    # "newMaxHeight":I
    .end local v3    # "newMaxWidth":I
    .end local v4    # "newMinHeight":I
    .end local v5    # "newMinWidth":I
    .end local v6    # "oldOptions":Landroid/os/Bundle;
    .end local v8    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    .restart local v9    # "xPaddingDips":I
    .restart local v10    # "yPaddingDips":I
    :cond_7
    move v11, v9

    #@87
    .line 302
    goto :goto_0

    #@88
    .restart local v5    # "newMinWidth":I
    :cond_8
    move v11, v10

    #@89
    .line 303
    goto :goto_1

    #@8a
    .line 314
    .end local v9    # "xPaddingDips":I
    .end local v10    # "yPaddingDips":I
    .restart local v1    # "needsUpdate":Z
    .restart local v2    # "newMaxHeight":I
    .restart local v3    # "newMaxWidth":I
    .restart local v4    # "newMinHeight":I
    .restart local v6    # "oldOptions":Landroid/os/Bundle;
    .restart local v8    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_9
    const-string/jumbo v11, "appWidgetMaxWidth"

    #@8d
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@90
    move-result v11

    #@91
    if-ne v3, v11, :cond_4

    #@93
    .line 315
    const-string/jumbo v11, "appWidgetMaxHeight"

    #@96
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@99
    move-result v11

    #@9a
    if-eq v2, v11, :cond_5

    #@9c
    goto :goto_2
.end method

.method viewDataChanged(I)V
    .locals 5
    .param p1, "viewId"    # I

    #@0
    .prologue
    .line 581
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    #@3
    move-result-object v3

    #@4
    .line 582
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    #@6
    instance-of v4, v3, Landroid/widget/AdapterView;

    #@8
    if-eqz v4, :cond_0

    #@a
    move-object v1, v3

    #@b
    .line 583
    check-cast v1, Landroid/widget/AdapterView;

    #@d
    .line 584
    .local v1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@10
    move-result-object v0

    #@11
    .line 585
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v4, v0, Landroid/widget/BaseAdapter;

    #@13
    if-eqz v4, :cond_1

    #@15
    move-object v2, v0

    #@16
    .line 586
    check-cast v2, Landroid/widget/BaseAdapter;

    #@18
    .line 587
    .local v2, "baseAdapter":Landroid/widget/BaseAdapter;
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    #@1b
    .line 580
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .end local v2    # "baseAdapter":Landroid/widget/BaseAdapter;
    :cond_0
    :goto_0
    return-void

    #@1c
    .line 588
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_1
    if-nez v0, :cond_0

    #@1e
    instance-of v4, v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    #@20
    if-eqz v4, :cond_0

    #@22
    .line 592
    check-cast v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    #@24
    .end local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-interface {v1}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->deferNotifyDataSetChanged()V

    #@27
    goto :goto_0
.end method
