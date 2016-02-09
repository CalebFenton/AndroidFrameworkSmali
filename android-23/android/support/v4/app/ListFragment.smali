.class public Landroid/support/v4/app/ListFragment;
.super Landroid/support/v4/app/Fragment;
.source "ListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ListFragment$1;,
        Landroid/support/v4/app/ListFragment$2;
    }
.end annotation


# static fields
.field static final INTERNAL_EMPTY_ID:I = 0xff0001

.field static final INTERNAL_LIST_CONTAINER_ID:I = 0xff0003

.field static final INTERNAL_PROGRESS_CONTAINER_ID:I = 0xff0002


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
    .line 71
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    #@3
    .line 47
    new-instance v0, Landroid/os/Handler;

    #@5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@8
    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    #@a
    .line 49
    new-instance v0, Landroid/support/v4/app/ListFragment$1;

    #@c
    invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$1;-><init>(Landroid/support/v4/app/ListFragment;)V

    #@f
    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@11
    .line 56
    new-instance v0, Landroid/support/v4/app/ListFragment$2;

    #@13
    invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$2;-><init>(Landroid/support/v4/app/ListFragment;)V

    #@16
    .line 55
    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@18
    .line 71
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
    .line 323
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 324
    return-void

    #@7
    .line 326
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getView()Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    .line 327
    .local v2, "root":Landroid/view/View;
    if-nez v2, :cond_1

    #@d
    .line 328
    new-instance v3, Ljava/lang/IllegalStateException;

    #@f
    const-string/jumbo v4, "Content view not yet created"

    #@12
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v3

    #@16
    .line 330
    :cond_1
    instance-of v3, v2, Landroid/widget/ListView;

    #@18
    if-eqz v3, :cond_4

    #@1a
    .line 331
    check-cast v2, Landroid/widget/ListView;

    #@1c
    .end local v2    # "root":Landroid/view/View;
    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@1e
    .line 360
    :cond_2
    :goto_0
    const/4 v3, 0x1

    #@1f
    iput-boolean v3, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    #@21
    .line 361
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@23
    iget-object v4, p0, Landroid/support/v4/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@25
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@28
    .line 362
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@2a
    if-eqz v3, :cond_9

    #@2c
    .line 363
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@2e
    .line 364
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iput-object v5, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@30
    .line 365
    invoke-virtual {p0, v0}, Landroid/support/v4/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    #@33
    .line 373
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    #@35
    iget-object v4, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@37
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@3a
    .line 322
    return-void

    #@3b
    .line 333
    .restart local v2    # "root":Landroid/view/View;
    :cond_4
    const v3, 0xff0001

    #@3e
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Landroid/widget/TextView;

    #@44
    iput-object v3, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@46
    .line 334
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@48
    if-nez v3, :cond_5

    #@4a
    .line 335
    const v3, 0x1020004

    #@4d
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@50
    move-result-object v3

    #@51
    iput-object v3, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    #@53
    .line 339
    :goto_2
    const v3, 0xff0002

    #@56
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@59
    move-result-object v3

    #@5a
    iput-object v3, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@5c
    .line 340
    const v3, 0xff0003

    #@5f
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@62
    move-result-object v3

    #@63
    iput-object v3, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    #@65
    .line 341
    const v3, 0x102000a

    #@68
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@6b
    move-result-object v1

    #@6c
    .line 342
    .local v1, "rawListView":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/ListView;

    #@6e
    if-nez v3, :cond_7

    #@70
    .line 343
    if-nez v1, :cond_6

    #@72
    .line 344
    new-instance v3, Ljava/lang/RuntimeException;

    #@74
    .line 345
    const-string/jumbo v4, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    #@77
    .line 344
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v3

    #@7b
    .line 337
    .end local v1    # "rawListView":Landroid/view/View;
    :cond_5
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@7d
    const/16 v4, 0x8

    #@7f
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    #@82
    goto :goto_2

    #@83
    .line 348
    .restart local v1    # "rawListView":Landroid/view/View;
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    #@85
    .line 349
    const-string/jumbo v4, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    #@88
    .line 348
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8b
    throw v3

    #@8c
    .line 352
    :cond_7
    check-cast v1, Landroid/widget/ListView;

    #@8e
    .end local v1    # "rawListView":Landroid/view/View;
    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@90
    .line 353
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    #@92
    if-eqz v3, :cond_8

    #@94
    .line 354
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@96
    iget-object v4, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    #@98
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    #@9b
    goto :goto_0

    #@9c
    .line 355
    :cond_8
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    #@9e
    if-eqz v3, :cond_2

    #@a0
    .line 356
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@a2
    iget-object v4, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    #@a4
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@a7
    .line 357
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@a9
    iget-object v4, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@ab
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    #@ae
    goto/16 :goto_0

    #@b0
    .line 369
    .end local v2    # "root":Landroid/view/View;
    :cond_9
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@b2
    if-eqz v3, :cond_3

    #@b4
    .line 370
    invoke-direct {p0, v6, v6}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    #@b7
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
    .line 280
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    #@b
    .line 281
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@d
    if-nez v0, :cond_0

    #@f
    .line 282
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v1, "Can\'t be used with a custom content view"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 284
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    #@1a
    if-ne v0, p1, :cond_1

    #@1c
    .line 285
    return-void

    #@1d
    .line 287
    :cond_1
    iput-boolean p1, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    #@1f
    .line 288
    if-eqz p1, :cond_3

    #@21
    .line 289
    if-eqz p2, :cond_2

    #@23
    .line 290
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@25
    .line 291
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@28
    move-result-object v1

    #@29
    .line 290
    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@30
    .line 292
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    #@32
    .line 293
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@35
    move-result-object v1

    #@36
    .line 292
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@3d
    .line 298
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@3f
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    #@42
    .line 299
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    #@44
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    #@47
    .line 279
    :goto_1
    return-void

    #@48
    .line 295
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@4a
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    #@4d
    .line 296
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    #@4f
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    #@52
    goto :goto_0

    #@53
    .line 301
    :cond_3
    if-eqz p2, :cond_4

    #@55
    .line 302
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@57
    .line 303
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@5a
    move-result-object v1

    #@5b
    .line 302
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@62
    .line 304
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    #@64
    .line 305
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@67
    move-result-object v1

    #@68
    .line 304
    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@6f
    .line 310
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@71
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    #@74
    .line 311
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    #@76
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    #@79
    goto :goto_1

    #@7a
    .line 307
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@7c
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    #@7f
    .line 308
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

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
    .line 319
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    #@0
    .prologue
    .line 222
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    #@3
    .line 223
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@5
    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    #@0
    .prologue
    .line 214
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    #@3
    .line 215
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

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
    .line 206
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    #@3
    .line 207
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@5
    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/16 v11, 0x11

    #@2
    const/4 v10, -0x2

    #@3
    const/4 v9, -0x1

    #@4
    .line 91
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@7
    move-result-object v0

    #@8
    .line 93
    .local v0, "context":Landroid/content/Context;
    new-instance v5, Landroid/widget/FrameLayout;

    #@a
    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@d
    .line 97
    .local v5, "root":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/LinearLayout;

    #@f
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@12
    .line 98
    .local v3, "pframe":Landroid/widget/LinearLayout;
    const v7, 0xff0002

    #@15
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setId(I)V

    #@18
    .line 99
    const/4 v7, 0x1

    #@19
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@1c
    .line 100
    const/16 v7, 0x8

    #@1e
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@21
    .line 101
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    #@24
    .line 103
    new-instance v4, Landroid/widget/ProgressBar;

    #@26
    const/4 v7, 0x0

    #@27
    .line 104
    const v8, 0x101007a

    #@2a
    .line 103
    invoke-direct {v4, v0, v7, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@2d
    .line 105
    .local v4, "progress":Landroid/widget/ProgressBar;
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    #@2f
    invoke-direct {v7, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@32
    invoke-virtual {v3, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@35
    .line 108
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    #@37
    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@3a
    invoke-virtual {v5, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@3d
    .line 113
    new-instance v1, Landroid/widget/FrameLayout;

    #@3f
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@42
    .line 114
    .local v1, "lframe":Landroid/widget/FrameLayout;
    const v7, 0xff0003

    #@45
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    #@48
    .line 116
    new-instance v6, Landroid/widget/TextView;

    #@4a
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@4d
    move-result-object v7

    #@4e
    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@51
    .line 117
    .local v6, "tv":Landroid/widget/TextView;
    const v7, 0xff0001

    #@54
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    #@57
    .line 118
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setGravity(I)V

    #@5a
    .line 119
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    #@5c
    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@5f
    invoke-virtual {v1, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@62
    .line 122
    new-instance v2, Landroid/widget/ListView;

    #@64
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@67
    move-result-object v7

    #@68
    invoke-direct {v2, v7}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    #@6b
    .line 123
    .local v2, "lv":Landroid/widget/ListView;
    const v7, 0x102000a

    #@6e
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setId(I)V

    #@71
    .line 124
    const/4 v7, 0x0

    #@72
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    #@75
    .line 125
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    #@77
    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@7a
    invoke-virtual {v1, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@7d
    .line 128
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    #@7f
    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@82
    invoke-virtual {v5, v1, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@85
    .line 133
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    #@87
    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@8a
    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@8d
    .line 136
    return-object v5
.end method

.method public onDestroyView()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 153
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    #@3
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@8
    .line 154
    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@a
    .line 155
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    #@d
    .line 156
    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    #@f
    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@11
    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    #@13
    .line 157
    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@15
    .line 158
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    #@18
    .line 152
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
    .line 172
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #@3
    .line 145
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    #@6
    .line 143
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 232
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    #@3
    .line 233
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "Can\'t be used with a custom content view"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 236
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@15
    .line 237
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    #@17
    if-nez v0, :cond_1

    #@19
    .line 238
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@1b
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@1d
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    #@20
    .line 240
    :cond_1
    iput-object p1, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    #@22
    .line 231
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 179
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@3
    if-eqz v1, :cond_1

    #@5
    const/4 v0, 0x1

    #@6
    .line 180
    .local v0, "hadAdapter":Z
    :goto_0
    iput-object p1, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@8
    .line 181
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 182
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@e
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@11
    .line 183
    iget-boolean v1, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    #@13
    if-nez v1, :cond_0

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 178
    :cond_0
    :goto_1
    return-void

    #@18
    .line 179
    .end local v0    # "hadAdapter":Z
    :cond_1
    const/4 v0, 0x0

    #@19
    .restart local v0    # "hadAdapter":Z
    goto :goto_0

    #@1a
    .line 186
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getView()Landroid/view/View;

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
    invoke-direct {p0, v2, v1}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

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
    .line 258
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    #@4
    .line 257
    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 266
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    #@4
    .line 265
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 198
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    #@3
    .line 199
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    #@8
    .line 197
    return-void
.end method
