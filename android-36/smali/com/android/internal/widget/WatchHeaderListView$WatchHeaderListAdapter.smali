.class Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;
.super Landroid/widget/HeaderViewListAdapter;
.source "WatchHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/WatchHeaderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatchHeaderListAdapter"
.end annotation


# instance fields
.field private blacklist mTopPanel:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .registers 4
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .line 129
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 130
    return-void
.end method

.method private blacklist getTopPanelCount()I
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .registers 2

    .line 147
    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0}, Landroid/widget/HeaderViewListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist getCount()I
    .registers 3

    .line 142
    invoke-super {p0}, Landroid/widget/HeaderViewListAdapter;->getCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 4
    .param p1, "position"    # I

    .line 158
    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v0

    .line 159
    .local v0, "topPanelCount":I
    if-ge p1, v0, :cond_8

    const/4 v1, 0x0

    goto :goto_e

    :cond_8
    sub-int v1, p1, v0

    invoke-super {p0, v1}, Landroid/widget/HeaderViewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    :goto_e
    return-object v1
.end method

.method public whitelist getItemId(I)J
    .registers 7
    .param p1, "position"    # I

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getHeadersCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    .local v0, "numHeaders":I
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_26

    if-lt p1, v0, :cond_26

    .line 166
    sub-int v1, p1, v0

    .line 167
    .local v1, "adjPosition":I
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 168
    .local v2, "adapterCount":I
    if-ge v1, v2, :cond_26

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    return-wide v3

    .line 172
    .end local v1    # "adjPosition":I
    .end local v2    # "adapterCount":I
    :cond_26
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public whitelist getItemViewType(I)I
    .registers 6
    .param p1, "position"    # I

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getHeadersCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    .local v0, "numHeaders":I
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_26

    if-lt p1, v0, :cond_26

    .line 186
    sub-int v1, p1, v0

    .line 187
    .local v1, "adjPosition":I
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 188
    .local v2, "adapterCount":I
    if-ge v1, v2, :cond_26

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    return v3

    .line 193
    .end local v1    # "adjPosition":I
    .end local v2    # "adapterCount":I
    :cond_26
    const/4 v1, -0x2

    return v1
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 177
    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v0

    .line 178
    .local v0, "topPanelCount":I
    if-ge p1, v0, :cond_9

    .line 179
    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    goto :goto_f

    :cond_9
    sub-int v1, p1, v0

    invoke-super {p0, v1, p2, p3}, Landroid/widget/HeaderViewListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 178
    :goto_f
    return-object v1
.end method

.method public whitelist isEnabled(I)Z
    .registers 4
    .param p1, "position"    # I

    .line 152
    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v0

    .line 153
    .local v0, "topPanelCount":I
    if-ge p1, v0, :cond_8

    const/4 v1, 0x0

    goto :goto_e

    :cond_8
    sub-int v1, p1, v0

    invoke-super {p0, v1}, Landroid/widget/HeaderViewListAdapter;->isEnabled(I)Z

    move-result v1

    :goto_e
    return v1
.end method

.method public blacklist setTopPanel(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 133
    iput-object p1, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    .line 134
    return-void
.end method
