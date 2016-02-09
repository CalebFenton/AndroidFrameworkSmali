.class public Landroid/app/ListActivity;
.super Landroid/app/Activity;
.source "ListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ListActivity$1;,
        Landroid/app/ListActivity$2;
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field protected mList:Landroid/widget/ListView;

.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 175
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    .line 187
    new-instance v0, Landroid/os/Handler;

    #@5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/ListActivity;->mHandler:Landroid/os/Handler;

    #@a
    .line 188
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/app/ListActivity;->mFinishedStart:Z

    #@d
    .line 190
    new-instance v0, Landroid/app/ListActivity$1;

    #@f
    invoke-direct {v0, p0}, Landroid/app/ListActivity$1;-><init>(Landroid/app/ListActivity;)V

    #@12
    iput-object v0, p0, Landroid/app/ListActivity;->mRequestFocus:Ljava/lang/Runnable;

    #@14
    .line 316
    new-instance v0, Landroid/app/ListActivity$2;

    #@16
    invoke-direct {v0, p0}, Landroid/app/ListActivity$2;-><init>(Landroid/app/ListActivity;)V

    #@19
    iput-object v0, p0, Landroid/app/ListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@1b
    .line 175
    return-void
.end method

.method private ensureList()V
    .locals 1

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 310
    return-void

    #@5
    .line 312
    :cond_0
    const v0, 0x1090072

    #@8
    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setContentView(I)V

    #@b
    .line 308
    return-void
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    #@0
    .prologue
    .line 305
    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    #@0
    .prologue
    .line 297
    invoke-direct {p0}, Landroid/app/ListActivity;->ensureList()V

    #@3
    .line 298
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    #@5
    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onContentChanged()V
    .locals 3

    #@0
    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    #@3
    .line 240
    const v1, 0x1020004

    #@6
    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    .line 241
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x102000a

    #@d
    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/widget/ListView;

    #@13
    iput-object v1, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    #@15
    .line 242
    iget-object v1, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    #@17
    if-nez v1, :cond_0

    #@19
    .line 243
    new-instance v1, Ljava/lang/RuntimeException;

    #@1b
    .line 244
    const-string/jumbo v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    #@1e
    .line 243
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 247
    :cond_0
    if-eqz v0, :cond_1

    #@24
    .line 248
    iget-object v1, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    #@26
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    #@29
    .line 250
    :cond_1
    iget-object v1, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    #@2b
    iget-object v2, p0, Landroid/app/ListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@2d
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@30
    .line 251
    iget-boolean v1, p0, Landroid/app/ListActivity;->mFinishedStart:Z

    #@32
    if-eqz v1, :cond_2

    #@34
    .line 252
    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    #@36
    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    #@39
    .line 254
    :cond_2
    iget-object v1, p0, Landroid/app/ListActivity;->mHandler:Landroid/os/Handler;

    #@3b
    iget-object v2, p0, Landroid/app/ListActivity;->mRequestFocus:Ljava/lang/Runnable;

    #@3d
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@40
    .line 255
    const/4 v1, 0x1

    #@41
    iput-boolean v1, p0, Landroid/app/ListActivity;->mFinishedStart:Z

    #@43
    .line 238
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Landroid/app/ListActivity;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Landroid/app/ListActivity;->mRequestFocus:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    #@a
    .line 226
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    #@0
    .prologue
    .line 207
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 218
    invoke-direct {p0}, Landroid/app/ListActivity;->ensureList()V

    #@3
    .line 219
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@6
    .line 217
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    #@0
    .prologue
    .line 262
    monitor-enter p0

    #@1
    .line 263
    :try_start_0
    invoke-direct {p0}, Landroid/app/ListActivity;->ensureList()V

    #@4
    .line 264
    iput-object p1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    #@6
    .line 265
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    #@8
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 261
    return-void

    #@d
    .line 262
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    #@5
    .line 275
    return-void
.end method
