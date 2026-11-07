.class Landroid/widget/RemoteCollectionItemsAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteCollectionItemsAdapter.java"


# instance fields
.field private blacklist mColorResources:Landroid/widget/RemoteViews$ColorResources;

.field private blacklist mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private blacklist mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

.field private blacklist mLayoutIdToViewType:Landroid/util/SparseIntArray;

.field private blacklist mOnLightBackground:Z

.field private final blacklist mViewTypeCount:I


# direct methods
.method public static synthetic blacklist $r8$lambda$RLeKIF6o3qgXPPbTinq7PniwEtI(Landroid/widget/RemoteCollectionItemsAdapter;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteCollectionItemsAdapter;->lambda$initLayoutIdToViewType$0(I)I

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Z)V
    .registers 6
    .param p1, "items"    # Landroid/widget/RemoteViews$RemoteCollectionItems;
    .param p2, "interactionHandler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p3, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;
    .param p4, "onLightBackground"    # Z

    .line 51
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getViewTypeCount()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    .line 58
    iput-object p1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 59
    iput-object p2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 60
    iput-object p3, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 61
    iput-boolean p4, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mOnLightBackground:Z

    .line 63
    invoke-direct {p0}, Landroid/widget/RemoteCollectionItemsAdapter;->initLayoutIdToViewType()V

    .line 64
    return-void
.end method

.method private blacklist initLayoutIdToViewType()V
    .registers 11

    .line 92
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    .line 93
    .local v0, "previousLayoutIdToViewType":Landroid/util/SparseIntArray;
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    .line 95
    iget-object v1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteCollectionItemsAdapter;)V

    .line 96
    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 97
    invoke-interface {v1}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v1

    .line 98
    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 99
    .local v1, "layoutIds":[I
    array-length v2, v1

    iget v3, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    if-gt v2, v3, :cond_87

    .line 106
    array-length v2, v1

    new-array v2, v2, [Z

    .line 108
    .local v2, "processedLayoutIdIndices":[Z
    iget v3, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    new-array v3, v3, [Z

    .line 110
    .local v3, "assignedViewTypes":[Z
    const/4 v4, 0x1

    if-eqz v0, :cond_50

    .line 111
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_37
    array-length v6, v1

    if-ge v5, v6, :cond_50

    .line 112
    aget v6, v1, v5

    .line 115
    .local v6, "layoutId":I
    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 117
    .local v7, "previousViewType":I
    if-gez v7, :cond_44

    goto :goto_4d

    .line 119
    :cond_44
    iget-object v8, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    aput-boolean v4, v2, v5

    .line 121
    aput-boolean v4, v3, v7

    .line 111
    .end local v6    # "layoutId":I
    .end local v7    # "previousViewType":I
    :goto_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 125
    .end local v5    # "i":I
    :cond_50
    const/4 v5, -0x1

    .line 126
    .local v5, "lastViewType":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_52
    array-length v7, v1

    if-ge v6, v7, :cond_86

    .line 128
    aget-boolean v7, v2, v6

    if-eqz v7, :cond_5a

    goto :goto_83

    .line 130
    :cond_5a
    aget v7, v1, v6

    .line 134
    .local v7, "layoutId":I
    add-int/lit8 v8, v5, 0x1

    array-length v9, v1

    invoke-static {v8, v9}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v8

    new-instance v9, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v9, v3}, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda1;-><init>([Z)V

    .line 135
    invoke-interface {v8, v9}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v8

    .line 136
    invoke-interface {v8}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object v8

    new-instance v9, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda2;-><init>()V

    .line 137
    invoke-virtual {v8, v9}, Ljava/util/OptionalInt;->orElseThrow(Ljava/util/function/Supplier;)I

    move-result v8

    .line 141
    .local v8, "viewType":I
    iget-object v9, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    aput-boolean v4, v2, v6

    .line 143
    aput-boolean v4, v3, v8

    .line 144
    move v5, v8

    .line 126
    .end local v7    # "layoutId":I
    .end local v8    # "viewType":I
    :goto_83
    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    .line 146
    .end local v6    # "i":I
    :cond_86
    return-void

    .line 100
    .end local v2    # "processedLayoutIdIndices":[Z
    .end local v3    # "assignedViewTypes":[Z
    .end local v5    # "lastViewType":I
    :cond_87
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Collection items uses "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " distinct layouts, which is more than view type count of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private synthetic blacklist lambda$initLayoutIdToViewType$0(I)I
    .registers 3
    .param p1, "position"    # I

    .line 96
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$initLayoutIdToViewType$1([ZI)Z
    .registers 3
    .param p0, "assignedViewTypes"    # [Z
    .param p1, "type"    # I

    .line 135
    aget-boolean v0, p0, p1

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$initLayoutIdToViewType$2()Ljava/lang/IllegalStateException;
    .registers 2

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RemoteCollectionItems has more distinct layout ids than its view type count"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getCount()I
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemCount()I

    move-result v0

    return v0
.end method

.method public blacklist getItem(I)Landroid/widget/RemoteViews;
    .registers 3
    .param p1, "position"    # I

    .line 155
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Landroid/widget/RemoteCollectionItemsAdapter;->getItem(I)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 160
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .line 165
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemView(I)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 181
    invoke-virtual {p0}, Landroid/widget/RemoteCollectionItemsAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_8
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 184
    .local v0, "item":Landroid/widget/RemoteViews;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 186
    instance-of v1, p2, Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;

    if-eqz v1, :cond_1a

    move-object v1, p2

    check-cast v1, Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;

    .line 188
    .local v1, "widgetChildView":Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;
    goto :goto_23

    .line 189
    .end local v1    # "widgetChildView":Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;
    :cond_1a
    new-instance v1, Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;-><init>(Landroid/content/Context;)V

    :goto_23
    nop

    .line 190
    .local v1, "newView":Landroid/appwidget/AppWidgetHostView;
    iget-object v2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 191
    iget-object v2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHostView;->setColorResourcesNoReapply(Landroid/widget/RemoteViews$ColorResources;)V

    .line 192
    iget-boolean v2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mOnLightBackground:Z

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHostView;->setOnLightBackground(Z)V

    .line 193
    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 194
    return-object v1
.end method

.method public whitelist getViewTypeCount()I
    .registers 2

    .line 170
    iget v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    return v0
.end method

.method public whitelist hasStableIds()Z
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method blacklist setData(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Z)V
    .registers 7
    .param p1, "items"    # Landroid/widget/RemoteViews$RemoteCollectionItems;
    .param p2, "interactionHandler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p3, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;
    .param p4, "onLightBackground"    # Z

    .line 76
    iget v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    invoke-virtual {p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getViewTypeCount()I

    move-result v1

    if-lt v0, v1, :cond_17

    .line 81
    iput-object p1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 82
    iput-object p2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 83
    iput-object p3, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 84
    iput-boolean p4, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mOnLightBackground:Z

    .line 86
    invoke-direct {p0}, Landroid/widget/RemoteCollectionItemsAdapter;->initLayoutIdToViewType()V

    .line 88
    invoke-virtual {p0}, Landroid/widget/RemoteCollectionItemsAdapter;->notifyDataSetChanged()V

    .line 89
    return-void

    .line 77
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RemoteCollectionItemsAdapter cannot increase view type count after creation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
