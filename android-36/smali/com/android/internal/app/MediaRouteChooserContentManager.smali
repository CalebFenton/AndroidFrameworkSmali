.class public Lcom/android/internal/app/MediaRouteChooserContentManager;
.super Ljava/lang/Object;
.source "MediaRouteChooserContentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;,
        Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;,
        Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;,
        Lcom/android/internal/app/MediaRouteChooserContentManager$RouteComparator;
    }
.end annotation


# instance fields
.field private blacklist mAdapter:Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;

.field private blacklist mAttachedToWindow:Z

.field private final blacklist mCallback:Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;

.field blacklist mContext:Landroid/content/Context;

.field blacklist mDelegate:Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;

.field private blacklist mRouteTypes:I

.field private final blacklist mRouter:Landroid/media/MediaRouter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRouter(Lcom/android/internal/app/MediaRouteChooserContentManager;)Landroid/media/MediaRouter;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouter:Landroid/media/MediaRouter;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;

    .line 68
    const-class v0, Landroid/media/MediaRouter;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouter:Landroid/media/MediaRouter;

    .line 69
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteChooserContentManager;Lcom/android/internal/app/MediaRouteChooserContentManager-IA;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mCallback:Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;

    .line 70
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;-><init>(Lcom/android/internal/app/MediaRouteChooserContentManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mAdapter:Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;

    .line 71
    return-void
.end method


# virtual methods
.method public blacklist bindViews(Landroid/view/View;)V
    .registers 6
    .param p1, "containerView"    # Landroid/view/View;

    .line 78
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x10203e1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 80
    .local v1, "listView":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mAdapter:Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mAdapter:Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 84
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;

    invoke-interface {v2}, Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;->showProgressBarWhenEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 85
    const v2, 0x10203e2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    nop

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 90
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 91
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3f
    return-void
.end method

.method public blacklist getRouteTypes()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouteTypes:I

    return v0
.end method

.method public blacklist onAttachedToWindow()V
    .registers 5

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mAttachedToWindow:Z

    .line 100
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouter:Landroid/media/MediaRouter;

    iget v2, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouteTypes:I

    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mCallback:Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->refreshRoutes()V

    .line 102
    return-void
.end method

.method public blacklist onDetachedFromWindow()V
    .registers 3

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mAttachedToWindow:Z

    .line 109
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mCallback:Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 110
    return-void
.end method

.method public blacklist onFilterRoute(Landroid/media/MediaRouter$RouteInfo;)Z
    .registers 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .line 163
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouteTypes:I

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public blacklist refreshRoutes()V
    .registers 2

    .line 146
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mAttachedToWindow:Z

    if-eqz v0, :cond_9

    .line 147
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mAdapter:Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->update()V

    .line 149
    :cond_9
    return-void
.end method

.method public blacklist setRouteTypes(I)V
    .registers 5
    .param p1, "types"    # I

    .line 129
    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouteTypes:I

    if-eq v0, p1, :cond_1c

    .line 130
    iput p1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouteTypes:I

    .line 132
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mAttachedToWindow:Z

    if-eqz v0, :cond_19

    .line 133
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mCallback:Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mCallback:Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 138
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->refreshRoutes()V

    .line 140
    :cond_1c
    return-void
.end method
