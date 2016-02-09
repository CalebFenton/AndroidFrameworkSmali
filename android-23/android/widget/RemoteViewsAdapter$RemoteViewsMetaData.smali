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

.field private final mTypeIdIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mUserLoadingView:Landroid/widget/RemoteViews;

.field viewTypeCount:I


# direct methods
.method static synthetic -wrap0(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "lock"    # Ljava/lang/Object;
    .param p5, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p6, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 405
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    #@a
    .line 408
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    #@d
    .line 407
    return-void
.end method

.method private createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "lock"    # Ljava/lang/Object;
    .param p5, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p6, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 464
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    .line 465
    .local v1, "context":Landroid/content/Context;
    new-instance v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    #@6
    invoke-direct {v6, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/content/Context;)V

    #@9
    .line 468
    .local v6, "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    monitor-enter p4

    #@a
    .line 469
    const/4 v2, 0x0

    #@b
    .line 471
    .local v2, "customLoadingViewAvailable":Z
    :try_start_0
    iget-object v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    if-eqz v9, :cond_0

    #@f
    .line 474
    :try_start_1
    iget-object v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    #@11
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@14
    move-result-object v10

    #@15
    move-object/from16 v0, p6

    #@17
    invoke-virtual {v9, v10, p3, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    #@1a
    move-result-object v8

    #@1b
    .line 477
    .local v8, "loadingView":Landroid/view/View;
    new-instance v9, Ljava/lang/Integer;

    #@1d
    const/4 v10, 0x0

    #@1e
    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    #@21
    .line 476
    const v10, 0x1020046

    #@24
    invoke-virtual {v8, v10, v9}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    #@27
    .line 478
    invoke-virtual {v6, v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 479
    const/4 v2, 0x1

    #@2b
    .line 485
    .end local v8    # "loadingView":Landroid/view/View;
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    #@2d
    .line 488
    :try_start_2
    iget v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2f
    if-gez v9, :cond_1

    #@31
    .line 490
    :try_start_3
    iget-object v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    #@33
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@36
    move-result-object v10

    #@37
    move-object/from16 v0, p6

    #@39
    invoke-virtual {v9, v10, p3, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    #@3c
    move-result-object v5

    #@3d
    .line 492
    .local v5, "firstView":Landroid/view/View;
    const/4 v9, 0x0

    #@3e
    const/4 v10, 0x0

    #@3f
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@42
    move-result v9

    #@43
    .line 493
    const/4 v10, 0x0

    #@44
    const/4 v11, 0x0

    #@45
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@48
    move-result v10

    #@49
    .line 491
    invoke-virtual {v5, v9, v10}, Landroid/view/View;->measure(II)V

    #@4c
    .line 494
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@4f
    move-result v9

    #@50
    iput v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    #@52
    .line 495
    const/4 v9, 0x0

    #@53
    iput-object v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@55
    .line 507
    .end local v5    # "firstView":Landroid/view/View;
    :cond_1
    :goto_1
    const v9, 0x10900bc

    #@58
    .line 508
    const/4 v10, 0x0

    #@59
    .line 506
    :try_start_4
    move-object/from16 v0, p5

    #@5b
    invoke-virtual {v0, v9, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@5e
    move-result-object v7

    #@5f
    check-cast v7, Landroid/widget/TextView;

    #@61
    .line 509
    .local v7, "loadingTextView":Landroid/widget/TextView;
    iget v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    #@63
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setHeight(I)V

    #@66
    .line 510
    new-instance v9, Ljava/lang/Integer;

    #@68
    const/4 v10, 0x0

    #@69
    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    #@6c
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    #@6f
    .line 512
    invoke-virtual {v6, v7}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@72
    .end local v7    # "loadingTextView":Landroid/widget/TextView;
    :cond_2
    monitor-exit p4

    #@73
    .line 516
    return-object v6

    #@74
    .line 480
    :catch_0
    move-exception v4

    #@75
    .line 481
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v9, "RemoteViewsAdapter"

    #@78
    const-string/jumbo v10, "Error inflating custom loading view, using default loadingview instead"

    #@7b
    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@7e
    goto :goto_0

    #@7f
    .line 468
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    #@80
    monitor-exit p4

    #@81
    throw v9

    #@82
    .line 496
    :catch_1
    move-exception v4

    #@83
    .line 497
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@86
    move-result-object v9

    #@87
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@8a
    move-result-object v9

    #@8b
    iget v3, v9, Landroid/util/DisplayMetrics;->density:F

    #@8d
    .line 499
    .local v3, "density":F
    const/high16 v9, 0x42480000    # 50.0f

    #@8f
    mul-float/2addr v9, v3

    #@90
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    #@93
    move-result v9

    #@94
    .line 498
    iput v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    #@96
    .line 500
    const/4 v9, 0x0

    #@97
    iput-object v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    #@99
    .line 501
    const-string/jumbo v9, "RemoteViewsAdapter"

    #@9c
    new-instance v10, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v11, "Error inflating first RemoteViews"

    #@a4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v10

    #@a8
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v10

    #@ac
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v10

    #@b0
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@b3
    goto :goto_1
.end method


# virtual methods
.method public getMappedViewType(I)I
    .locals 4
    .param p1, "typeId"    # I

    #@0
    .prologue
    .line 441
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 442
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/lang/Integer;

    #@18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 445
    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    #@22
    move-result v1

    #@23
    add-int/lit8 v0, v1, 0x1

    #@25
    .line 446
    .local v0, "incrementalTypeId":I
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    #@27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 447
    return v0
.end method

.method public isViewTypeInRange(I)Z
    .locals 2
    .param p1, "typeId"    # I

    #@0
    .prologue
    .line 452
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getMappedViewType(I)I

    #@3
    move-result v0

    #@4
    .line 453
    .local v0, "mappedType":I
    iget v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    #@6
    if-lt v0, v1, :cond_0

    #@8
    .line 454
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 456
    :cond_0
    const/4 v1, 0x1

    #@b
    return v1
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
    .line 421
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    #@5
    .line 424
    iput v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    #@7
    .line 425
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    #@9
    .line 426
    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    #@b
    .line 427
    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    #@d
    .line 428
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    #@f
    .line 429
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    #@11
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@14
    .line 420
    return-void
.end method

.method public set(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;)V
    .locals 2
    .param p1, "d"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    #@0
    .prologue
    .line 412
    monitor-enter p1

    #@1
    .line 413
    :try_start_0
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    #@3
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    #@5
    .line 414
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    #@7
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    #@9
    .line 415
    iget-boolean v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    #@b
    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    #@d
    .line 416
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
    .line 411
    return-void

    #@16
    .line 412
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
    .line 433
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    #@2
    .line 434
    if-eqz p2, :cond_0

    #@4
    .line 435
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    #@6
    .line 436
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    #@9
    .line 432
    :cond_0
    return-void
.end method
