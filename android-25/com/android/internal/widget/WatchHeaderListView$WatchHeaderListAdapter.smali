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
.field private mTopPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 0
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 128
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    #@3
    .line 127
    return-void
.end method

.method private getTopPanelCount()I
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/widget/HeaderViewListAdapter;->areAllItemsEnabled()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    #@0
    .prologue
    .line 141
    invoke-super {p0}, Landroid/widget/HeaderViewListAdapter;->getCount()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 165
    if-nez p1, :cond_0

    #@7
    .line 166
    return-object v1

    #@8
    .line 168
    :cond_0
    add-int/lit8 v0, p1, -0x1

    #@a
    invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->getItem(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 172
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->getItem(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    #@0
    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    #@3
    move-result v3

    #@4
    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    #@7
    move-result v4

    #@8
    add-int v2, v3, v4

    #@a
    .line 178
    .local v2, "numHeaders":I
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    #@d
    move-result-object v3

    #@e
    if-eqz v3, :cond_0

    #@10
    if-lt p1, v2, :cond_0

    #@12
    .line 179
    sub-int v1, p1, v2

    #@14
    .line 180
    .local v1, "adjPosition":I
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    #@17
    move-result-object v3

    #@18
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    #@1b
    move-result v0

    #@1c
    .line 181
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    #@1e
    .line 182
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    #@21
    move-result-object v3

    #@22
    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@25
    move-result-wide v4

    #@26
    return-wide v4

    #@27
    .line 185
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_0
    const-wide/16 v4, -0x1

    #@29
    return-wide v4
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    #@0
    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    #@3
    move-result v3

    #@4
    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    #@7
    move-result v4

    #@8
    add-int v2, v3, v4

    #@a
    .line 204
    .local v2, "numHeaders":I
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    #@d
    move-result-object v3

    #@e
    if-eqz v3, :cond_0

    #@10
    if-lt p1, v2, :cond_0

    #@12
    .line 205
    sub-int v1, p1, v2

    #@14
    .line 206
    .local v1, "adjPosition":I
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    #@17
    move-result-object v3

    #@18
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    #@1b
    move-result v0

    #@1c
    .line 207
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    #@1e
    .line 208
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    #@21
    move-result-object v3

    #@22
    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    #@25
    move-result v3

    #@26
    return v3

    #@27
    .line 212
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_0
    const/4 v3, -0x2

    #@28
    return v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 191
    if-nez p1, :cond_0

    #@6
    .line 192
    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    #@8
    return-object v0

    #@9
    .line 194
    :cond_0
    add-int/lit8 v0, p1, -0x1

    #@b
    invoke-super {p0, v0, p2, p3}, Landroid/widget/HeaderViewListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 198
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 152
    if-nez p1, :cond_0

    #@7
    .line 153
    return v1

    #@8
    .line 155
    :cond_0
    add-int/lit8 v0, p1, -0x1

    #@a
    invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->isEnabled(I)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 159
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->isEnabled(I)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public setTopPanel(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    #@2
    .line 131
    return-void
.end method
