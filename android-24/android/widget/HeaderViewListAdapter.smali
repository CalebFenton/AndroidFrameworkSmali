.class public Landroid/widget/HeaderViewListAdapter;
.super Ljava/lang/Object;
.source "HeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 43
    sput-object v0, Landroid/widget/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 1
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
    .line 50
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput-object p3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@5
    .line 54
    instance-of v0, p3, Landroid/widget/Filterable;

    #@7
    iput-boolean v0, p0, Landroid/widget/HeaderViewListAdapter;->mIsFilterable:Z

    #@9
    .line 56
    if-nez p1, :cond_0

    #@b
    .line 57
    sget-object v0, Landroid/widget/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    #@d
    iput-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@f
    .line 62
    :goto_0
    if-nez p2, :cond_1

    #@11
    .line 63
    sget-object v0, Landroid/widget/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    #@13
    iput-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    #@15
    .line 69
    :goto_1
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@17
    invoke-direct {p0, v0}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 70
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    #@1f
    invoke-direct {p0, v0}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    #@22
    move-result v0

    #@23
    .line 68
    :goto_2
    iput-boolean v0, p0, Landroid/widget/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    #@25
    .line 52
    return-void

    #@26
    .line 59
    :cond_0
    iput-object p1, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@28
    goto :goto_0

    #@29
    .line 65
    :cond_1
    iput-object p2, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    #@2b
    goto :goto_1

    #@2c
    .line 69
    :cond_2
    const/4 v0, 0x0

    #@2d
    goto :goto_2
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 86
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    #@2
    .line 87
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/widget/ListView$FixedViewInfo;

    #@12
    .line 88
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-boolean v2, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    #@14
    if-nez v2, :cond_0

    #@16
    .line 89
    const/4 v2, 0x0

    #@17
    return v2

    #@18
    .line 93
    .end local v0    # "info":Landroid/widget/ListView$FixedViewInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x1

    #@19
    return v2
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 140
    iget-boolean v0, p0, Landroid/widget/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@a
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0

    #@11
    .line 142
    :cond_1
    const/4 v0, 0x1

    #@12
    return v0
.end method

.method public getCount()I
    .locals 2

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 132
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getFootersCount()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    iget-object v1, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@f
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    #@12
    move-result v1

    #@13
    add-int/2addr v0, v1

    #@14
    return v0

    #@15
    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getFootersCount()I

    #@18
    move-result v0

    #@19
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    #@1c
    move-result v1

    #@1d
    add-int/2addr v0, v1

    #@1e
    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    #@0
    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/widget/HeaderViewListAdapter;->mIsFilterable:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 262
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@6
    check-cast v0, Landroid/widget/Filterable;

    #@8
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 264
    :cond_0
    const/4 v0, 0x0

    #@e
    return-object v0
.end method

.method public getFootersCount()I
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    #@0
    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    #@3
    move-result v2

    #@4
    .line 170
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    #@6
    .line 171
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    #@e
    iget-object v3, v3, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    #@10
    return-object v3

    #@11
    .line 175
    :cond_0
    sub-int v1, p1, v2

    #@13
    .line 176
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    #@14
    .line 177
    .local v0, "adapterCount":I
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 178
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@1a
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    #@1d
    move-result v0

    #@1e
    .line 179
    if-ge v1, v0, :cond_1

    #@20
    .line 180
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@22
    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    return-object v3

    #@27
    .line 185
    :cond_1
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    #@29
    sub-int v4, v1, v0

    #@2b
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    #@31
    iget-object v3, v3, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    #@33
    return-object v3
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    #@0
    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    #@3
    move-result v2

    #@4
    .line 190
    .local v2, "numHeaders":I
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@6
    if-eqz v3, :cond_0

    #@8
    if-lt p1, v2, :cond_0

    #@a
    .line 191
    sub-int v1, p1, v2

    #@c
    .line 192
    .local v1, "adjPosition":I
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@e
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    #@11
    move-result v0

    #@12
    .line 193
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    #@14
    .line 194
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@16
    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@19
    move-result-wide v4

    #@1a
    return-wide v4

    #@1b
    .line 197
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_0
    const-wide/16 v4, -0x1

    #@1d
    return-wide v4
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    #@3
    move-result v2

    #@4
    .line 230
    .local v2, "numHeaders":I
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@6
    if-eqz v3, :cond_0

    #@8
    if-lt p1, v2, :cond_0

    #@a
    .line 231
    sub-int v1, p1, v2

    #@c
    .line 232
    .local v1, "adjPosition":I
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@e
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    #@11
    move-result v0

    #@12
    .line 233
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    #@14
    .line 234
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@16
    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    #@19
    move-result v3

    #@1a
    return v3

    #@1b
    .line 238
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_0
    const/4 v3, -0x2

    #@1c
    return v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    #@3
    move-result v2

    #@4
    .line 210
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    #@6
    .line 211
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    #@e
    iget-object v3, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@10
    return-object v3

    #@11
    .line 215
    :cond_0
    sub-int v1, p1, v2

    #@13
    .line 216
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    #@14
    .line 217
    .local v0, "adapterCount":I
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 218
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@1a
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    #@1d
    move-result v0

    #@1e
    .line 219
    if-ge v1, v0, :cond_1

    #@20
    .line 220
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@22
    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@25
    move-result-object v3

    #@26
    return-object v3

    #@27
    .line 225
    :cond_1
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    #@29
    sub-int v4, v1, v0

    #@2b
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    #@31
    iget-object v3, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@33
    return-object v3
.end method

.method public getViewTypeCount()I
    .locals 1

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 243
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@6
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 245
    :cond_0
    const/4 v0, 0x1

    #@c
    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 202
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@6
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 204
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@6
    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    #@0
    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    #@3
    move-result v2

    #@4
    .line 149
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    #@6
    .line 150
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    #@e
    iget-boolean v3, v3, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    #@10
    return v3

    #@11
    .line 154
    :cond_0
    sub-int v1, p1, v2

    #@13
    .line 155
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    #@14
    .line 156
    .local v0, "adapterCount":I
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 157
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@1a
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    #@1d
    move-result v0

    #@1e
    .line 158
    if-ge v1, v0, :cond_1

    #@20
    .line 159
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@22
    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@25
    move-result v3

    #@26
    return v3

    #@27
    .line 164
    :cond_1
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    #@29
    sub-int v4, v1, v0

    #@2b
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    #@31
    iget-boolean v3, v3, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    #@33
    return v3
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 250
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@6
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@9
    .line 248
    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 114
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    if-ge v0, v3, :cond_2

    #@a
    .line 115
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    #@12
    .line 116
    .local v1, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@14
    if-ne v3, p1, :cond_1

    #@16
    .line 117
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1b
    .line 120
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@1d
    invoke-direct {p0, v3}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 121
    iget-object v2, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    #@25
    invoke-direct {p0, v2}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    #@28
    move-result v2

    #@29
    .line 119
    :cond_0
    iput-boolean v2, p0, Landroid/widget/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    #@2b
    .line 123
    const/4 v2, 0x1

    #@2c
    return v2

    #@2d
    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 127
    .end local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_2
    return v2
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 97
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    if-ge v0, v3, :cond_2

    #@a
    .line 98
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    #@12
    .line 99
    .local v1, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    #@14
    if-ne v3, p1, :cond_1

    #@16
    .line 100
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1b
    .line 103
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    #@1d
    invoke-direct {p0, v3}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 104
    iget-object v2, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    #@25
    invoke-direct {p0, v2}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    #@28
    move-result v2

    #@29
    .line 102
    :cond_0
    iput-boolean v2, p0, Landroid/widget/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    #@2b
    .line 106
    const/4 v2, 0x1

    #@2c
    return v2

    #@2d
    .line 97
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 110
    .end local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_2
    return v2
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 256
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    #@6
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@9
    .line 254
    :cond_0
    return-void
.end method
