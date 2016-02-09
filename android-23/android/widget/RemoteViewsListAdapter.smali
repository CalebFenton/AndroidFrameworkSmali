.class public Landroid/widget/RemoteViewsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteViewsListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRemoteViewsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field private mViewTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "viewTypeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 35
    .local p2, "remoteViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    #@a
    .line 37
    iput-object p1, p0, Landroid/widget/RemoteViewsListAdapter;->mContext:Landroid/content/Context;

    #@c
    .line 38
    iput-object p2, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    #@e
    .line 39
    iput p3, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypeCount:I

    #@10
    .line 40
    invoke-direct {p0}, Landroid/widget/RemoteViewsListAdapter;->init()V

    #@13
    .line 36
    return-void
.end method

.method private init()V
    .locals 4

    #@0
    .prologue
    .line 50
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    #@2
    if-nez v2, :cond_0

    #@4
    return-void

    #@5
    .line 52
    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@a
    .line 53
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    #@c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "rv$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_2

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/widget/RemoteViews;

    #@1c
    .line 54
    .local v0, "rv":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    #@21
    move-result v3

    #@22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    if-nez v2, :cond_1

    #@2c
    .line 55
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    #@31
    move-result v3

    #@32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    goto :goto_0

    #@3a
    .line 59
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    :cond_2
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@3f
    move-result v2

    #@40
    iget v3, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypeCount:I

    #@42
    if-gt v2, v3, :cond_3

    #@44
    iget v2, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypeCount:I

    #@46
    const/4 v3, 0x1

    #@47
    if-ge v2, v3, :cond_4

    #@49
    .line 60
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    #@4b
    const-string/jumbo v3, "Invalid view type count -- view type count must be >= 1and must be as large as the total number of distinct view types"

    #@4e
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@51
    throw v2

    #@52
    .line 49
    :cond_4
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 68
    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 70
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 76
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 81
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/widget/RemoteViewsListAdapter;->getCount()I

    #@3
    move-result v1

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 106
    iget-object v1, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/widget/RemoteViews;

    #@e
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    #@11
    move-result v0

    #@12
    .line 107
    .local v0, "layoutId":I
    iget-object v1, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    #@14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 109
    .end local v0    # "layoutId":I
    :cond_0
    const/4 v1, 0x0

    #@1e
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 86
    invoke-virtual {p0}, Landroid/widget/RemoteViewsListAdapter;->getCount()I

    #@4
    move-result v2

    #@5
    if-ge p1, v2, :cond_1

    #@7
    .line 87
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/widget/RemoteViews;

    #@f
    .line 88
    .local v0, "rv":Landroid/widget/RemoteViews;
    const/4 v2, 0x1

    #@10
    invoke-virtual {v0, v2}, Landroid/widget/RemoteViews;->setIsWidgetCollectionChild(Z)V

    #@13
    .line 90
    if-eqz p2, :cond_0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 91
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    #@1e
    move-result v3

    #@1f
    if-ne v2, v3, :cond_0

    #@21
    .line 92
    move-object v1, p2

    #@22
    .line 93
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mContext:Landroid/content/Context;

    #@24
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    #@27
    .line 97
    :goto_0
    return-object v1

    #@28
    .line 95
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mContext:Landroid/content/Context;

    #@2a
    invoke-virtual {v0, v2, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    #@2d
    move-result-object v1

    #@2e
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    #@2f
    .line 99
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-object v3
.end method

.method public getViewTypeCount()I
    .locals 1

    #@0
    .prologue
    .line 114
    iget v0, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypeCount:I

    #@2
    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    #@0
    .prologue
    .line 119
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setViewsList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 44
    .local p1, "remoteViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    iput-object p1, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    #@2
    .line 45
    invoke-direct {p0}, Landroid/widget/RemoteViewsListAdapter;->init()V

    #@5
    .line 46
    invoke-virtual {p0}, Landroid/widget/RemoteViewsListAdapter;->notifyDataSetChanged()V

    #@8
    .line 43
    return-void
.end method
