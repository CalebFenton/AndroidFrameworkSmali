.class public abstract Landroid/widget/CursorTreeAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "CursorTreeAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/CursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    }
.end annotation


# instance fields
.field private mAutoRequery:Z

.field mChildrenCursorHelpers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/CursorTreeAdapter$MyCursorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mCursorFilter:Landroid/widget/CursorFilter;

.field mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/widget/CursorTreeAdapter;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/CursorTreeAdapter;->mAutoRequery:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/CursorTreeAdapter;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    #@3
    .line 64
    const/4 v0, 0x1

    #@4
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorTreeAdapter;->init(Landroid/database/Cursor;Landroid/content/Context;Z)V

    #@7
    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "autoRequery"    # Z

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    #@3
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorTreeAdapter;->init(Landroid/database/Cursor;Landroid/content/Context;Z)V

    #@6
    .line 76
    return-void
.end method

.method private init(Landroid/database/Cursor;Landroid/content/Context;Z)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "autoRequery"    # Z

    #@0
    .prologue
    .line 81
    iput-object p2, p0, Landroid/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    #@2
    .line 82
    new-instance v0, Landroid/os/Handler;

    #@4
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@7
    iput-object v0, p0, Landroid/widget/CursorTreeAdapter;->mHandler:Landroid/os/Handler;

    #@9
    .line 83
    iput-boolean p3, p0, Landroid/widget/CursorTreeAdapter;->mAutoRequery:Z

    #@b
    .line 85
    new-instance v0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@d
    invoke-direct {v0, p0, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;-><init>(Landroid/widget/CursorTreeAdapter;Landroid/database/Cursor;)V

    #@10
    iput-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@12
    .line 86
    new-instance v0, Landroid/util/SparseArray;

    #@14
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@17
    iput-object v0, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    #@19
    .line 80
    return-void
.end method

.method private declared-synchronized releaseCursorHelpers()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 289
    :try_start_0
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v0, v1, -0x1

    #@9
    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_0

    #@b
    .line 290
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@13
    invoke-virtual {v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->deactivate()V

    #@16
    .line 289
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    .line 293
    :cond_0
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    #@1b
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 288
    return-void

    #@20
    .end local v0    # "pos":I
    :catchall_0
    move-exception v1

    #@21
    monitor-exit p0

    #@22
    throw v1
.end method


# virtual methods
.method protected abstract bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
.end method

.method protected abstract bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->changeCursor(Landroid/database/Cursor;Z)V

    #@6
    .line 382
    return-void
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 343
    invoke-virtual {p0, p1}, Landroid/widget/CursorTreeAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 344
    if-nez p1, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    goto :goto_0
.end method

.method declared-synchronized deactivateChildrenCursorHelper(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 335
    const/4 v1, 0x1

    #@2
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@5
    move-result-object v0

    #@6
    .line 336
    .local v0, "cursorHelper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    #@b
    .line 337
    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 334
    return-void

    #@10
    .end local v0    # "cursorHelper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1
.end method

.method public getChild(II)Landroid/database/Cursor;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    #@0
    .prologue
    .line 169
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0, p2}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    #@0
    .prologue
    .line 167
    invoke-virtual {p0, p1, p2}, Landroid/widget/CursorTreeAdapter;->getChild(II)Landroid/database/Cursor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    #@0
    .prologue
    .line 173
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0, p2}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getId(I)J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 238
    const/4 v3, 0x1

    #@1
    invoke-virtual {p0, p1, v3}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@4
    move-result-object v1

    #@5
    .line 240
    .local v1, "cursorHelper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    invoke-virtual {v1, p2}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    #@8
    move-result-object v0

    #@9
    .line 241
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    #@b
    .line 242
    new-instance v3, Ljava/lang/IllegalStateException;

    #@d
    const-string/jumbo v4, "this should only be called when the cursor is valid"

    #@10
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v3

    #@14
    .line 246
    :cond_0
    if-nez p4, :cond_1

    #@16
    .line 247
    iget-object v3, p0, Landroid/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {p0, v3, v0, p3, p5}, Landroid/widget/CursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    #@1b
    move-result-object v2

    #@1c
    .line 251
    .local v2, "v":Landroid/view/View;
    :goto_0
    iget-object v3, p0, Landroid/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    #@1e
    invoke-virtual {p0, v2, v3, v0, p3}, Landroid/widget/CursorTreeAdapter;->bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    #@21
    .line 252
    return-object v2

    #@22
    .line 249
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    move-object v2, p4

    #@23
    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    #@0
    .prologue
    .line 177
    const/4 v1, 0x1

    #@1
    invoke-virtual {p0, p1, v1}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@4
    move-result-object v0

    #@5
    .line 178
    .local v0, "helper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@7
    invoke-virtual {v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->isValid()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    if-eqz v0, :cond_0

    #@f
    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getCount()I

    #@12
    move-result v1

    #@13
    :goto_0
    return v1

    #@14
    :cond_0
    const/4 v1, 0x0

    #@15
    goto :goto_0
.end method

.method protected abstract getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
.end method

.method declared-synchronized getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "requestCursor"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 100
    :try_start_0
    iget-object v2, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@a
    .line 102
    .local v1, "cursorHelper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    if-nez v1, :cond_1

    #@c
    .line 103
    iget-object v2, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@e
    invoke-virtual {v2, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v2

    #@12
    if-nez v2, :cond_0

    #@14
    monitor-exit p0

    #@15
    return-object v3

    #@16
    .line 105
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@18
    invoke-virtual {v2}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getCursor()Landroid/database/Cursor;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p0, v2}, Landroid/widget/CursorTreeAdapter;->getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    #@1f
    move-result-object v0

    #@20
    .line 106
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@22
    .end local v1    # "cursorHelper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    invoke-direct {v1, p0, v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;-><init>(Landroid/widget/CursorTreeAdapter;Landroid/database/Cursor;)V

    #@25
    .line 107
    .restart local v1    # "cursorHelper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    iget-object v2, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    #@27
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    monitor-exit p0

    #@2b
    .line 110
    return-object v1

    #@2c
    .end local v1    # "cursorHelper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    :catchall_0
    move-exception v2

    #@2d
    monitor-exit p0

    #@2e
    throw v2
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@2
    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getCursor()Landroid/database/Cursor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 360
    new-instance v0, Landroid/widget/CursorFilter;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/CursorFilter;-><init>(Landroid/widget/CursorFilter$CursorFilterClient;)V

    #@9
    iput-object v0, p0, Landroid/widget/CursorTreeAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    #@b
    .line 362
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    #@d
    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .locals 1

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    #@2
    return-object v0
.end method

.method public getGroup(I)Landroid/database/Cursor;
    .locals 1
    .param p1, "groupPosition"    # I

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    #@0
    .prologue
    .line 181
    invoke-virtual {p0, p1}, Landroid/widget/CursorTreeAdapter;->getGroup(I)Landroid/database/Cursor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@2
    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getId(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 196
    iget-object v2, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@2
    invoke-virtual {v2, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    #@5
    move-result-object v0

    #@6
    .line 197
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    #@8
    .line 198
    new-instance v2, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v3, "this should only be called when the cursor is valid"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 202
    :cond_0
    if-nez p3, :cond_1

    #@13
    .line 203
    iget-object v2, p0, Landroid/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    #@15
    invoke-virtual {p0, v2, v0, p2, p4}, Landroid/widget/CursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    #@18
    move-result-object v1

    #@19
    .line 207
    .local v1, "v":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Landroid/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    #@1b
    invoke-virtual {p0, v1, v2, v0, p2}, Landroid/widget/CursorTreeAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    #@1e
    .line 208
    return-object v1

    #@1f
    .line 205
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    move-object v1, p3

    #@20
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    #@0
    .prologue
    .line 285
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    #@0
    .prologue
    .line 281
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected abstract newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    #@0
    .prologue
    .line 298
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged(Z)V

    #@4
    .line 297
    return-void
.end method

.method public notifyDataSetChanged(Z)V
    .locals 0
    .param p1, "releaseCursors"    # Z

    #@0
    .prologue
    .line 310
    if-eqz p1, :cond_0

    #@2
    .line 311
    invoke-direct {p0}, Landroid/widget/CursorTreeAdapter;->releaseCursorHelpers()V

    #@5
    .line 314
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    #@8
    .line 308
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    #@0
    .prologue
    .line 319
    invoke-direct {p0}, Landroid/widget/CursorTreeAdapter;->releaseCursorHelpers()V

    #@3
    .line 320
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetInvalidated()V

    #@6
    .line 318
    return-void
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    #@0
    .prologue
    .line 325
    invoke-virtual {p0, p1}, Landroid/widget/CursorTreeAdapter;->deactivateChildrenCursorHelper(I)V

    #@3
    .line 324
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 352
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    #@6
    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 355
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@d
    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getCursor()Landroid/database/Cursor;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public setChildrenCursor(ILandroid/database/Cursor;)V
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childrenCursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 158
    invoke-virtual {p0, p1, v1}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@4
    move-result-object v0

    #@5
    .line 164
    .local v0, "childrenCursorHelper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    invoke-virtual {v0, p2, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->changeCursor(Landroid/database/Cursor;Z)V

    #@8
    .line 152
    return-void
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .locals 0
    .param p1, "filterQueryProvider"    # Landroid/widget/FilterQueryProvider;

    #@0
    .prologue
    .line 376
    iput-object p1, p0, Landroid/widget/CursorTreeAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    #@2
    .line 375
    return-void
.end method

.method public setGroupCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->changeCursor(Landroid/database/Cursor;Z)V

    #@6
    .line 139
    return-void
.end method
