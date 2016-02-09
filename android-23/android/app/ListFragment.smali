.class public Landroid/app/ListFragment;
.super Landroid/app/Fragment;
.source "ListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ListFragment$1;,
        Landroid/app/ListFragment$2;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mList:Landroid/widget/ListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 173
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    #@3
    .line 149
    new-instance v0, Landroid/os/Handler;

    #@5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/ListFragment;->mHandler:Landroid/os/Handler;

    #@a
    .line 151
    new-instance v0, Landroid/app/ListFragment$1;

    #@c
    invoke-direct {v0, p0}, Landroid/app/ListFragment$1;-><init>(Landroid/app/ListFragment;)V

    #@f
    iput-object v0, p0, Landroid/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@11
    .line 158
    new-instance v0, Landroid/app/ListFragment$2;

    #@13
    invoke-direct {v0, p0}, Landroid/app/ListFragment$2;-><init>(Landroid/app/ListFragment;)V

    #@16
    .line 157
    iput-object v0, p0, Landroid/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@18
    .line 173
    return-void
.end method

.method private ensureList()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 381
    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 382
    return-void

    #@7
    .line 384
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListFragment;->getView()Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    .line 385
    .local v2, "root":Landroid/view/View;
    if-nez v2, :cond_1

    #@d
    .line 386
    new-instance v3, Ljava/lang/IllegalStateException;

    #@f
    const-string/jumbo v4, "Content view not yet created"

    #@12
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v3

    #@16
    .line 388
    :cond_1
    instance-of v3, v2, Landroid/widget/ListView;

    #@18
    if-eqz v3, :cond_4

    #@1a
    .line 389
    check-cast v2, Landroid/widget/ListView;

    #@1c
    .end local v2    # "root":Landroid/view/View;
    iput-object v2, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    #@1e
    .line 419
    :cond_2
    :goto_0
    const/4 v3, 0x1

    #@1f
    iput-boolean v3, p0, Landroid/app/ListFragment;->mListShown:Z

    #@21
    .line 420
    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    #@23
    iget-object v4, p0, Landroid/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@25
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@28
    .line 421
    iget-object v3, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@2a
    if-eqz v3, :cond_9

    #@2c
    .line 422
    iget-object v0, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@2e
    .line 423
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iput-object v5, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@30
    .line 424
    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    #@33
    .line 432
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/app/ListFragment;->mHandler:Landroid/os/Handler;

    #@35
    iget-object v4, p0, Landroid/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@37
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@3a
    .line 380
    return-void

    #@3b
    .line 392
    .restart local v2    # "root":Landroid/view/View;
    :cond_4
    const v3, 0x1020356

    #@3e
    .line 391
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Landroid/widget/TextView;

    #@44
    iput-object v3, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@46
    .line 393
    iget-object v3, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@48
    if-nez v3, :cond_5

    #@4a
    .line 394
    const v3, 0x1020004

    #@4d
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@50
    move-result-object v3

    #@51
    iput-object v3, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    #@53
    .line 398
    :goto_2
    const v3, 0x1020354

    #@56
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@59
    move-result-object v3

    #@5a
    iput-object v3, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@5c
    .line 399
    const v3, 0x1020355

    #@5f
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@62
    move-result-object v3

    #@63
    iput-object v3, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    #@65
    .line 400
    const v3, 0x102000a

    #@68
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@6b
    move-result-object v1

    #@6c
    .line 401
    .local v1, "rawListView":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/ListView;

    #@6e
    if-nez v3, :cond_6

    #@70
    .line 402
    new-instance v3, Ljava/lang/RuntimeException;

    #@72
    .line 403
    const-string/jumbo v4, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    #@75
    .line 402
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@78
    throw v3

    #@79
    .line 396
    .end local v1    # "rawListView":Landroid/view/View;
    :cond_5
    iget-object v3, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@7b
    const/16 v4, 0x8

    #@7d
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    #@80
    goto :goto_2

    #@81
    .line 406
    .restart local v1    # "rawListView":Landroid/view/View;
    :cond_6
    check-cast v1, Landroid/widget/ListView;

    #@83
    .end local v1    # "rawListView":Landroid/view/View;
    iput-object v1, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    #@85
    .line 407
    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    #@87
    if-nez v3, :cond_7

    #@89
    .line 408
    new-instance v3, Ljava/lang/RuntimeException;

    #@8b
    .line 409
    const-string/jumbo v4, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    #@8e
    .line 408
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@91
    throw v3

    #@92
    .line 412
    :cond_7
    iget-object v3, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    #@94
    if-eqz v3, :cond_8

    #@96
    .line 413
    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    #@98
    iget-object v4, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    #@9a
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    #@9d
    goto :goto_0

    #@9e
    .line 414
    :cond_8
    iget-object v3, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    #@a0
    if-eqz v3, :cond_2

    #@a2
    .line 415
    iget-object v3, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@a4
    iget-object v4, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    #@a6
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@a9
    .line 416
    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    #@ab
    iget-object v4, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@ad
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    #@b0
    goto/16 :goto_0

    #@b2
    .line 428
    .end local v2    # "root":Landroid/view/View;
    :cond_9
    iget-object v3, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@b4
    if-eqz v3, :cond_3

    #@b6
    .line 429
    invoke-direct {p0, v6, v6}, Landroid/app/ListFragment;->setListShown(ZZ)V

    #@b9
    goto/16 :goto_1
.end method

.method private setListShown(ZZ)V
    .locals 6
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    #@0
    .prologue
    const v5, 0x10a0001

    #@3
    const/high16 v4, 0x10a0000

    #@5
    const/16 v3, 0x8

    #@7
    const/4 v2, 0x0

    #@8
    .line 338
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    #@b
    .line 339
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@d
    if-nez v0, :cond_0

    #@f
    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v1, "Can\'t be used with a custom content view"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 342
    :cond_0
    iget-boolean v0, p0, Landroid/app/ListFragment;->mListShown:Z

    #@1a
    if-ne v0, p1, :cond_1

    #@1c
    .line 343
    return-void

    #@1d
    .line 345
    :cond_1
    iput-boolean p1, p0, Landroid/app/ListFragment;->mListShown:Z

    #@1f
    .line 346
    if-eqz p1, :cond_3

    #@21
    .line 347
    if-eqz p2, :cond_2

    #@23
    .line 348
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@25
    .line 349
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    #@28
    move-result-object v1

    #@29
    .line 348
    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@30
    .line 350
    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    #@32
    .line 351
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    #@35
    move-result-object v1

    #@36
    .line 350
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@3d
    .line 356
    :goto_0
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@3f
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    #@42
    .line 357
    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    #@44
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    #@47
    .line 337
    :goto_1
    return-void

    #@48
    .line 353
    :cond_2
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@4a
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    #@4d
    .line 354
    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    #@4f
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    #@52
    goto :goto_0

    #@53
    .line 359
    :cond_3
    if-eqz p2, :cond_4

    #@55
    .line 360
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@57
    .line 361
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    #@5a
    move-result-object v1

    #@5b
    .line 360
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@62
    .line 362
    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    #@64
    .line 363
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    #@67
    move-result-object v1

    #@68
    .line 362
    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@6f
    .line 368
    :goto_2
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@71
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    #@74
    .line 369
    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    #@76
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    #@79
    goto :goto_1

    #@7a
    .line 365
    :cond_4
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@7c
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    #@7f
    .line 366
    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    #@81
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    #@84
    goto :goto_2
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    #@0
    .prologue
    .line 377
    iget-object v0, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    #@0
    .prologue
    .line 280
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    #@3
    .line 281
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    #@5
    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    #@0
    .prologue
    .line 272
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    #@3
    .line 273
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    #@5
    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    #@0
    .prologue
    .line 264
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    #@3
    .line 265
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    #@5
    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 193
    const v0, 0x1090014

    #@3
    .line 194
    const/4 v1, 0x0

    #@4
    .line 193
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 211
    iget-object v0, p0, Landroid/app/ListFragment;->mHandler:Landroid/os/Handler;

    #@3
    iget-object v1, p0, Landroid/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@8
    .line 212
    iput-object v2, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    #@a
    .line 213
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/app/ListFragment;->mListShown:Z

    #@d
    .line 214
    iput-object v2, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    #@f
    iput-object v2, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@11
    iput-object v2, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    #@13
    .line 215
    iput-object v2, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@15
    .line 216
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    #@18
    .line 210
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    #@0
    .prologue
    .line 230
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 202
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #@3
    .line 203
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    #@6
    .line 201
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 290
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    #@3
    .line 291
    iget-object v0, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 292
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "Can\'t be used with a custom content view"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 294
    :cond_0
    iget-object v0, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@15
    .line 295
    iget-object v0, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    #@17
    if-nez v0, :cond_1

    #@19
    .line 296
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    #@1b
    iget-object v1, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@1d
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    #@20
    .line 298
    :cond_1
    iput-object p1, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    #@22
    .line 289
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 237
    iget-object v1, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@3
    if-eqz v1, :cond_1

    #@5
    const/4 v0, 0x1

    #@6
    .line 238
    .local v0, "hadAdapter":Z
    :goto_0
    iput-object p1, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@8
    .line 239
    iget-object v1, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 240
    iget-object v1, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    #@e
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@11
    .line 241
    iget-boolean v1, p0, Landroid/app/ListFragment;->mListShown:Z

    #@13
    if-nez v1, :cond_0

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 236
    :cond_0
    :goto_1
    return-void

    #@18
    .line 237
    .end local v0    # "hadAdapter":Z
    :cond_1
    const/4 v0, 0x0

    #@19
    .restart local v0    # "hadAdapter":Z
    goto :goto_0

    #@1a
    .line 244
    :cond_2
    invoke-virtual {p0}, Landroid/app/ListFragment;->getView()Landroid/view/View;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@21
    move-result-object v1

    #@22
    if-eqz v1, :cond_3

    #@24
    move v1, v2

    #@25
    :goto_2
    invoke-direct {p0, v2, v1}, Landroid/app/ListFragment;->setListShown(ZZ)V

    #@28
    goto :goto_1

    #@29
    :cond_3
    const/4 v1, 0x0

    #@2a
    goto :goto_2
.end method

.method public setListShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 316
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/app/ListFragment;->setListShown(ZZ)V

    #@4
    .line 315
    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 324
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/app/ListFragment;->setListShown(ZZ)V

    #@4
    .line 323
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 256
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    #@3
    .line 257
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    #@8
    .line 255
    return-void
.end method
