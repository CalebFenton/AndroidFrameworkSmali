.class public Landroid/widget/HeaderViewListAdapter;
.super Ljava/lang/Object;
.source "HeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# static fields
.field static final greylist-max-o EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist mAdapter:Landroid/widget/ListAdapter;

.field greylist-max-o mAreAllFixedViewsSelectable:Z

.field greylist mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field greylist mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIsFilterable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/widget/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .registers 5
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

    .line 56
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 58
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Landroid/widget/HeaderViewListAdapter;->mIsFilterable:Z

    .line 60
    if-nez p1, :cond_10

    .line 61
    sget-object v0, Landroid/widget/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_12

    .line 63
    :cond_10
    iput-object p1, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 66
    :goto_12
    if-nez p2, :cond_19

    .line 67
    sget-object v0, Landroid/widget/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1b

    .line 69
    :cond_19
    iput-object p2, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 72
    :goto_1b
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 73
    invoke-direct {p0, v0}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 74
    invoke-direct {p0, v0}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    iput-boolean v0, p0, Landroid/widget/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 75
    return-void
.end method

.method private greylist-max-o areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .line 90
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_19

    .line 91
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 92
    .local v1, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-boolean v2, v1, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_18

    .line 93
    const/4 v0, 0x0

    return v0

    .line 95
    .end local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_18
    goto :goto_6

    .line 97
    :cond_19
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .registers 3

    .line 143
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 144
    iget-boolean v0, p0, Landroid/widget/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1

    .line 146
    :cond_14
    return v1
.end method

.method public whitelist getCount()I
    .registers 3

    .line 135
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_15

    .line 136
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 138
    :cond_15
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getFilter()Landroid/widget/Filter;
    .registers 2

    .line 265
    iget-boolean v0, p0, Landroid/widget/HeaderViewListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_d

    .line 266
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0

    .line 268
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getFootersCount()I
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getHeadersCount()I
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 7
    .param p1, "position"    # I

    .line 173
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v0

    .line 174
    .local v0, "numHeaders":I
    if-ge p1, v0, :cond_11

    .line 175
    iget-object v1, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    iget-object v1, v1, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    return-object v1

    .line 179
    :cond_11
    sub-int v1, p1, v0

    .line 180
    .local v1, "adjPosition":I
    const/4 v2, 0x0

    .line 181
    .local v2, "adapterCount":I
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_27

    .line 182
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 183
    if-ge v1, v2, :cond_27

    .line 184
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 189
    :cond_27
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    return-object v3
.end method

.method public whitelist getItemId(I)J
    .registers 7
    .param p1, "position"    # I

    .line 193
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v0

    .line 194
    .local v0, "numHeaders":I
    iget-object v1, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1b

    if-lt p1, v0, :cond_1b

    .line 195
    sub-int v1, p1, v0

    .line 196
    .local v1, "adjPosition":I
    iget-object v2, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 197
    .local v2, "adapterCount":I
    if-ge v1, v2, :cond_1b

    .line 198
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    return-wide v3

    .line 201
    .end local v1    # "adjPosition":I
    .end local v2    # "adapterCount":I
    :cond_1b
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public whitelist getItemViewType(I)I
    .registers 6
    .param p1, "position"    # I

    .line 233
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v0

    .line 234
    .local v0, "numHeaders":I
    iget-object v1, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1b

    if-lt p1, v0, :cond_1b

    .line 235
    sub-int v1, p1, v0

    .line 236
    .local v1, "adjPosition":I
    iget-object v2, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 237
    .local v2, "adapterCount":I
    if-ge v1, v2, :cond_1b

    .line 238
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    return v3

    .line 242
    .end local v1    # "adjPosition":I
    .end local v2    # "adapterCount":I
    :cond_1b
    const/4 v1, -0x2

    return v1
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 213
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v0

    .line 214
    .local v0, "numHeaders":I
    if-ge p1, v0, :cond_11

    .line 215
    iget-object v1, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    iget-object v1, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    return-object v1

    .line 219
    :cond_11
    sub-int v1, p1, v0

    .line 220
    .local v1, "adjPosition":I
    const/4 v2, 0x0

    .line 221
    .local v2, "adapterCount":I
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_27

    .line 222
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 223
    if-ge v1, v2, :cond_27

    .line 224
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 229
    :cond_27
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    return-object v3
.end method

.method public whitelist getViewTypeCount()I
    .registers 2

    .line 246
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 247
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0

    .line 249
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getWrappedAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 272
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public whitelist hasStableIds()Z
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 206
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0

    .line 208
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist isEnabled(I)Z
    .registers 7
    .param p1, "position"    # I

    .line 152
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v0

    .line 153
    .local v0, "numHeaders":I
    if-ge p1, v0, :cond_11

    .line 154
    iget-object v1, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    iget-boolean v1, v1, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    return v1

    .line 158
    :cond_11
    sub-int v1, p1, v0

    .line 159
    .local v1, "adjPosition":I
    const/4 v2, 0x0

    .line 160
    .local v2, "adapterCount":I
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_27

    .line 161
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 162
    if-ge v1, v2, :cond_27

    .line 163
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    return v3

    .line 168
    :cond_27
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-boolean v3, v3, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    return v3
.end method

.method public whitelist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 253
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 254
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 256
    :cond_9
    return-void
.end method

.method public whitelist removeFooter(Landroid/view/View;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_35

    .line 119
    iget-object v1, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 120
    .local v1, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_32

    .line 121
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 123
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 124
    invoke-direct {p0, v3}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 125
    invoke-direct {p0, v3}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move v2, v4

    goto :goto_2f

    :cond_2e
    nop

    :goto_2f
    iput-boolean v2, p0, Landroid/widget/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 127
    return v4

    .line 118
    .end local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    .end local v0    # "i":I
    :cond_35
    return v2
.end method

.method public whitelist removeHeader(Landroid/view/View;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_35

    .line 102
    iget-object v1, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 103
    .local v1, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_32

    .line 104
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 106
    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 107
    invoke-direct {p0, v3}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 108
    invoke-direct {p0, v3}, Landroid/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move v2, v4

    goto :goto_2f

    :cond_2e
    nop

    :goto_2f
    iput-boolean v2, p0, Landroid/widget/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 110
    return v4

    .line 101
    .end local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    .end local v0    # "i":I
    :cond_35
    return v2
.end method

.method public whitelist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 259
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 260
    iget-object v0, p0, Landroid/widget/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 262
    :cond_9
    return-void
.end method
