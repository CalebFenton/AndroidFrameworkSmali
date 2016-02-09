.class public abstract Landroid/widget/BaseExpandableListAdapter;
.super Ljava/lang/Object;
.source "BaseExpandableListAdapter.java"

# interfaces
.implements Landroid/widget/ExpandableListAdapter;
.implements Landroid/widget/HeterogeneousExpandableList;


# instance fields
.field private final mDataSetObservable:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v0, Landroid/database/DataSetObservable;

    #@5
    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    #@8
    iput-object v0, p0, Landroid/widget/BaseExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    #@a
    .line 33
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 60
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getChildType(II)I
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    #@0
    .prologue
    .line 112
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getChildTypeCount()I
    .locals 1

    #@0
    .prologue
    .line 120
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getCombinedChildId(JJ)J
    .locals 5
    .param p1, "groupId"    # J
    .param p3, "childId"    # J

    #@0
    .prologue
    .line 81
    const-wide/32 v0, 0x7fffffff

    #@3
    and-long/2addr v0, p1

    #@4
    const/16 v2, 0x20

    #@6
    shl-long/2addr v0, v2

    #@7
    const-wide/high16 v2, -0x8000000000000000L

    #@9
    or-long/2addr v0, v2

    #@a
    const-wide/16 v2, -0x1

    #@c
    and-long/2addr v2, p3

    #@d
    or-long/2addr v0, v2

    #@e
    return-wide v0
.end method

.method public getCombinedGroupId(J)J
    .locals 3
    .param p1, "groupId"    # J

    #@0
    .prologue
    .line 96
    const-wide/32 v0, 0x7fffffff

    #@3
    and-long/2addr v0, p1

    #@4
    const/16 v2, 0x20

    #@6
    shl-long/2addr v0, v2

    #@7
    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    #@0
    .prologue
    .line 128
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getGroupTypeCount()I
    .locals 1

    #@0
    .prologue
    .line 136
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 103
    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->getGroupCount()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Landroid/widget/BaseExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    #@2
    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    #@5
    .line 55
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/BaseExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    #@2
    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    #@5
    .line 48
    return-void
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    #@0
    .prologue
    .line 63
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    #@0
    .prologue
    .line 66
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Landroid/widget/BaseExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    #@2
    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    #@5
    .line 37
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Landroid/widget/BaseExpandableListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    #@2
    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    #@5
    .line 41
    return-void
.end method
