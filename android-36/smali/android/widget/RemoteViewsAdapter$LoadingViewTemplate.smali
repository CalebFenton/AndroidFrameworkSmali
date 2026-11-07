.class Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingViewTemplate"
.end annotation


# instance fields
.field public greylist-max-o defaultHeight:I

.field public final greylist-max-o remoteViews:Landroid/widget/RemoteViews;


# direct methods
.method constructor greylist-max-o <init>(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .registers 5
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "context"    # Landroid/content/Context;

    .line 1273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1274
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->remoteViews:Landroid/widget/RemoteViews;

    .line 1276
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1277
    .local v0, "density":F
    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->defaultHeight:I

    .line 1278
    return-void
.end method


# virtual methods
.method public greylist-max-o loadFirstViewHeight(Landroid/widget/RemoteViews;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "firstView"    # Landroid/widget/RemoteViews;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 1283
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/content/Context;Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)V

    new-instance v1, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;-><init>(Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;)V

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;)Landroid/os/CancellationSignal;

    .line 1303
    return-void
.end method
