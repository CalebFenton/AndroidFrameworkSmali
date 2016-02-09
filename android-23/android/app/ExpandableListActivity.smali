.class public Landroid/app/ExpandableListActivity;
.super Landroid/app/Activity;
.source "ExpandableListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field mAdapter:Landroid/widget/ExpandableListAdapter;

.field mFinishedStart:Z

.field mList:Landroid/widget/ExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    .line 160
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/app/ExpandableListActivity;->mFinishedStart:Z

    #@6
    .line 154
    return-void
.end method

.method private ensureList()V
    .locals 1

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 270
    return-void

    #@5
    .line 272
    :cond_0
    const v0, 0x1090001

    #@8
    invoke-virtual {p0, v0}, Landroid/app/ExpandableListActivity;->setContentView(I)V

    #@b
    .line 268
    return-void
.end method


# virtual methods
.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    #@2
    return-object v0
.end method

.method public getExpandableListView()Landroid/widget/ExpandableListView;
    .locals 1

    #@0
    .prologue
    .line 256
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;->ensureList()V

    #@3
    .line 257
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    #@5
    return-object v0
.end method

.method public getSelectedId()J
    .locals 2

    #@0
    .prologue
    .line 281
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    #@2
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getSelectedId()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getSelectedPosition()J
    .locals 2

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    #@2
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    #@0
    .prologue
    .line 182
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onContentChanged()V
    .locals 3

    #@0
    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    #@3
    .line 218
    const v1, 0x1020004

    #@6
    invoke-virtual {p0, v1}, Landroid/app/ExpandableListActivity;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    .line 219
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x102000a

    #@d
    invoke-virtual {p0, v1}, Landroid/app/ExpandableListActivity;->findViewById(I)Landroid/view/View;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/widget/ExpandableListView;

    #@13
    iput-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    #@15
    .line 220
    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    #@17
    if-nez v1, :cond_0

    #@19
    .line 221
    new-instance v1, Ljava/lang/RuntimeException;

    #@1b
    .line 222
    const-string/jumbo v2, "Your content must have a ExpandableListView whose id attribute is \'android.R.id.list\'"

    #@1e
    .line 221
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 225
    :cond_0
    if-eqz v0, :cond_1

    #@24
    .line 226
    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    #@26
    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    #@29
    .line 228
    :cond_1
    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    #@2b
    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    #@2e
    .line 229
    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    #@30
    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    #@33
    .line 230
    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    #@35
    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    #@38
    .line 232
    iget-boolean v1, p0, Landroid/app/ExpandableListActivity;->mFinishedStart:Z

    #@3a
    if-eqz v1, :cond_2

    #@3c
    .line 233
    iget-object v1, p0, Landroid/app/ExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    #@3e
    invoke-virtual {p0, v1}, Landroid/app/ExpandableListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    #@41
    .line 235
    :cond_2
    const/4 v1, 0x1

    #@42
    iput-boolean v1, p0, Landroid/app/ExpandableListActivity;->mFinishedStart:Z

    #@44
    .line 216
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    #@0
    .prologue
    .line 172
    return-void
.end method

.method public onGroupCollapse(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    #@0
    .prologue
    .line 188
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    #@0
    .prologue
    .line 194
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 205
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;->ensureList()V

    #@3
    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@6
    .line 204
    return-void
.end method

.method public setListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    #@0
    .prologue
    .line 242
    monitor-enter p0

    #@1
    .line 243
    :try_start_0
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;->ensureList()V

    #@4
    .line 244
    iput-object p1, p0, Landroid/app/ExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    #@6
    .line 245
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    #@8
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 241
    return-void

    #@d
    .line 242
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public setSelectedChild(IIZ)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/ExpandableListView;->setSelectedChild(IIZ)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setSelectedGroup(I)V
    .locals 1
    .param p1, "groupPosition"    # I

    #@0
    .prologue
    .line 319
    iget-object v0, p0, Landroid/app/ExpandableListActivity;->mList:Landroid/widget/ExpandableListView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    #@5
    .line 318
    return-void
.end method
