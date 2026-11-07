.class public abstract Landroid/widget/BaseExpandableListAdapter;
.super Ljava/lang/Object;
.source "BaseExpandableListAdapter.java"

# interfaces
.implements Landroid/widget/ExpandableListAdapter;
.implements Landroid/widget/HeterogeneousExpandableList;


# instance fields
.field private final greylist-max-o mDataSetObservable:Landroid/database/DataSetObservable;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/widget/BaseExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .registers 2

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getChildType(II)I
    .registers 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getChildTypeCount()I
    .registers 2

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getCombinedChildId(JJ)J
    .registers 9
    .param p1, "groupId"    # J
    .param p3, "childId"    # J

    .line 81
    const-wide/32 v0, 0x7fffffff

    and-long/2addr v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    const-wide/16 v2, -0x1

    and-long/2addr v2, p3

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getCombinedGroupId(J)J
    .registers 6
    .param p1, "groupId"    # J

    .line 96
    const-wide/32 v0, 0x7fffffff

    and-long/2addr v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getGroupType(I)I
    .registers 3
    .param p1, "groupPosition"    # I

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getGroupTypeCount()I
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 2

    .line 103
    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist notifyDataSetChanged()V
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/widget/BaseExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 57
    return-void
.end method

.method public whitelist notifyDataSetInvalidated()V
    .registers 2

    .line 49
    iget-object v0, p0, Landroid/widget/BaseExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 50
    return-void
.end method

.method public whitelist onGroupCollapsed(I)V
    .registers 2
    .param p1, "groupPosition"    # I

    .line 64
    return-void
.end method

.method public whitelist onGroupExpanded(I)V
    .registers 2
    .param p1, "groupPosition"    # I

    .line 67
    return-void
.end method

.method public whitelist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 38
    iget-object v0, p0, Landroid/widget/BaseExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public whitelist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 42
    iget-object v0, p0, Landroid/widget/BaseExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 43
    return-void
.end method
