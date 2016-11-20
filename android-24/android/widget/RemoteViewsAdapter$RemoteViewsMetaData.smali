.class Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsMetaData"
.end annotation


# instance fields
.field count:I

.field hasStableIds:Z

.field mFirstView:Landroid/widget/RemoteViews;

.field mFirstViewHeight:I

.field private final mTypeIdIndexMap:Landroid/util/SparseIntArray;

.field mUserLoadingView:Landroid/widget/RemoteViews;

.field viewTypeCount:I


# direct methods
.method static synthetic -wrap0(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->createDefaultLoadingView(Landroid/view/ViewGroup;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 412
    new-instance v0, Landroid/util/SparseIntArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@8
    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Landroid/util/SparseIntArray;

    #@a
    .line 415
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    #@d
    .line 414
    return-void
.end method

.method private declared-synchronized createDefaultLoadingView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 467
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    .line 468
    .local v0, "context":Landroid/content/Context;
    iget v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-gez v5, :cond_0

    #@9
    .line 470
    :try_start_1
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    #@b
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v5, v6, p1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    #@12
    move-result-object v3

    #@13
    .line 472
    .local v3, "firstView":Landroid/view/View;
    const/4 v5, 0x0

    #@14
    const/4 v6, 0x0

    #@15
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@18
    move-result v5

    #@19
    .line 473
    const/4 v6, 0x0

    #@1a
    const/4 v7, 0x0

    #@1b
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1e
    move-result v6

    #@1f
    .line 471
    invoke-virtual {v3, v5, v6}, Landroid/view/View;->measure(II)V

    #@22
    .line 474
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@25
    move-result v5

    #@26
    iput v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 480
    .end local v3    # "firstView":Landroid/view/View;
    :goto_0
    const/4 v5, 0x0

    #@29
    :try_start_2
    iput-object v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    #@2b
    .line 484
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@2e
    move-result-object v5

    #@2f
    .line 485
    const v6, 0x10900c3

    #@32
    .line 486
    const/4 v7, 0x0

    #@33
    .line 484
    invoke-virtual {v5, v6, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@36
    move-result-object v4

    #@37
    check-cast v4, Landroid/widget/TextView;

    #@39
    .line 487
    .local v4, "loadingTextView":Landroid/widget/TextView;
    iget v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    #@3b
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHeight(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    monitor-exit p0

    #@3f
    .line 488
    return-object v4

    #@40
    .line 475
    .end local v4    # "loadingTextView":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    #@41
    .line 476
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@48
    move-result-object v5

    #@49
    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    #@4b
    .line 477
    .local v1, "density":F
    const/high16 v5, 0x42480000    # 50.0f

    #@4d
    mul-float/2addr v5, v1

    #@4e
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    #@51
    move-result v5

    #@52
    iput v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    #@54
    .line 478
    const-string/jumbo v5, "RemoteViewsAdapter"

    #@57
    new-instance v6, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v7, "Error inflating first RemoteViews"

    #@5f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v6

    #@6b
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6e
    goto :goto_0

    #@6f
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "density":F
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@70
    monitor-exit p0

    #@71
    throw v5
.end method


# virtual methods
.method public getMappedViewType(I)I
    .locals 3
    .param p1, "typeId"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 448
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Landroid/util/SparseIntArray;

    #@3
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@6
    move-result v0

    #@7
    .line 449
    .local v0, "mappedTypeId":I
    if-ne v0, v2, :cond_0

    #@9
    .line 451
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Landroid/util/SparseIntArray;

    #@b
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    #@e
    move-result v1

    #@f
    add-int/lit8 v0, v1, 0x1

    #@11
    .line 452
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Landroid/util/SparseIntArray;

    #@13
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    #@16
    .line 454
    :cond_0
    return v0
.end method

.method public isViewTypeInRange(I)Z
    .locals 2
    .param p1, "typeId"    # I

    #@0
    .prologue
    .line 458
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getMappedViewType(I)I

    #@3
    move-result v0

    #@4
    .line 459
    .local v0, "mappedType":I
    iget v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    #@6
    if-ge v0, v1, :cond_0

    #@8
    const/4 v1, 0x1

    #@9
    :goto_0
    return v1

    #@a
    :cond_0
    const/4 v1, 0x0

    #@b
    goto :goto_0
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 428
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    #@5
    .line 431
    iput v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    #@7
    .line 432
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    #@9
    .line 433
    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    #@b
    .line 434
    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    #@d
    .line 435
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    #@f
    .line 436
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Landroid/util/SparseIntArray;

    #@11
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@14
    .line 427
    return-void
.end method

.method public set(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;)V
    .locals 2
    .param p1, "d"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@0
    .prologue
    .line 419
    monitor-enter p1

    #@1
    .line 420
    :try_start_0
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    #@3
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    #@5
    .line 421
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    #@7
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    #@9
    .line 422
    iget-boolean v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    #@b
    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    #@d
    .line 423
    iget-object v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    #@f
    iget-object v1, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p1

    #@15
    .line 418
    return-void

    #@16
    .line 419
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p1

    #@18
    throw v0
.end method

.method public setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "loadingView"    # Landroid/widget/RemoteViews;
    .param p2, "firstView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 440
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    #@2
    .line 441
    if-eqz p2, :cond_0

    #@4
    .line 442
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    #@6
    .line 443
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    #@9
    .line 439
    :cond_0
    return-void
.end method
