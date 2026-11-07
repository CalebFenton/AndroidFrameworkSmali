.class Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
.super Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteViewsFrameLayout"
.end annotation


# instance fields
.field public greylist-max-o cacheIndex:I

.field private final greylist-max-o mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cache"    # Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .line 382
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;-><init>(Landroid/content/Context;)V

    .line 379
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->cacheIndex:I

    .line 383
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .line 384
    return-void
.end method


# virtual methods
.method protected whitelist getDefaultView()Landroid/view/View;
    .registers 5

    .line 406
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getLoadingTemplate(Landroid/content/Context;)Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    move-result-object v0

    iget v0, v0, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->defaultHeight:I

    .line 408
    .local v0, "viewHeight":I
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090127

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 411
    .local v1, "loadingTextView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 412
    return-object v1
.end method

.method protected whitelist getErrorView()Landroid/view/View;
    .registers 2

    .line 418
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getDefaultView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$InteractionHandler;Z)V
    .registers 5
    .param p1, "view"    # Landroid/widget/RemoteViews;
    .param p2, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p3, "forceApplyAsync"    # Z

    .line 396
    invoke-virtual {p0, p2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 397
    if-nez p3, :cond_10

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->prefersAsyncApply()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    .line 398
    return-void
.end method
