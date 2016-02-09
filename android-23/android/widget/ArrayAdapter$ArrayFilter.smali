.class Landroid/widget/ArrayAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "ArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ArrayAdapter;


# direct methods
.method private constructor <init>(Landroid/widget/ArrayAdapter;)V
    .locals 0

    #@0
    .prologue
    .line 482
    .local p0, "this":Landroid/widget/ArrayAdapter$ArrayFilter;, "Landroid/widget/ArrayAdapter<TT;>.ArrayFilter;"
    .local p1, "this$0":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iput-object p1, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@2
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter$ArrayFilter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ArrayAdapter;

    #@0
    .prologue
    .local p0, "this":Landroid/widget/ArrayAdapter$ArrayFilter;, "Landroid/widget/ArrayAdapter<TT;>.ArrayFilter;"
    invoke-direct {p0, p1}, Landroid/widget/ArrayAdapter$ArrayFilter;-><init>(Landroid/widget/ArrayAdapter;)V

    #@3
    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 17
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 485
    .local p0, "this":Landroid/widget/ArrayAdapter$ArrayFilter;, "Landroid/widget/ArrayAdapter<TT;>.ArrayFilter;"
    new-instance v7, Landroid/widget/Filter$FilterResults;

    #@2
    invoke-direct {v7}, Landroid/widget/Filter$FilterResults;-><init>()V

    #@5
    .line 487
    .local v7, "results":Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    #@7
    iget-object v13, v0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@9
    invoke-static {v13}, Landroid/widget/ArrayAdapter;->-get2(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    #@c
    move-result-object v13

    #@d
    if-nez v13, :cond_0

    #@f
    .line 488
    move-object/from16 v0, p0

    #@11
    iget-object v13, v0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@13
    invoke-static {v13}, Landroid/widget/ArrayAdapter;->-get0(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    #@16
    move-result-object v14

    #@17
    monitor-enter v14

    #@18
    .line 489
    :try_start_0
    move-object/from16 v0, p0

    #@1a
    iget-object v13, v0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@1c
    new-instance v15, Ljava/util/ArrayList;

    #@1e
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@22
    move-object/from16 v16, v0

    #@24
    invoke-static/range {v16 .. v16}, Landroid/widget/ArrayAdapter;->-get1(Landroid/widget/ArrayAdapter;)Ljava/util/List;

    #@27
    move-result-object v16

    #@28
    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@2b
    invoke-static {v13, v15}, Landroid/widget/ArrayAdapter;->-set1(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit v14

    #@2f
    .line 493
    :cond_0
    if-eqz p1, :cond_1

    #@31
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@34
    move-result v13

    #@35
    if-nez v13, :cond_2

    #@37
    .line 495
    :cond_1
    move-object/from16 v0, p0

    #@39
    iget-object v13, v0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@3b
    invoke-static {v13}, Landroid/widget/ArrayAdapter;->-get0(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    #@3e
    move-result-object v14

    #@3f
    monitor-enter v14

    #@40
    .line 496
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    #@42
    move-object/from16 v0, p0

    #@44
    iget-object v13, v0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@46
    invoke-static {v13}, Landroid/widget/ArrayAdapter;->-get2(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    #@49
    move-result-object v13

    #@4a
    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4d
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    monitor-exit v14

    #@4e
    .line 498
    iput-object v4, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@50
    .line 499
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@53
    move-result v13

    #@54
    iput v13, v7, Landroid/widget/Filter$FilterResults;->count:I

    #@56
    .line 536
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    return-object v7

    #@57
    .line 488
    :catchall_0
    move-exception v13

    #@58
    monitor-exit v14

    #@59
    throw v13

    #@5a
    .line 495
    :catchall_1
    move-exception v13

    #@5b
    monitor-exit v14

    #@5c
    throw v13

    #@5d
    .line 501
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@60
    move-result-object v13

    #@61
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    .line 504
    .local v6, "prefixString":Ljava/lang/String;
    move-object/from16 v0, p0

    #@67
    iget-object v13, v0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@69
    invoke-static {v13}, Landroid/widget/ArrayAdapter;->-get0(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    #@6c
    move-result-object v14

    #@6d
    monitor-enter v14

    #@6e
    .line 505
    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    #@70
    move-object/from16 v0, p0

    #@72
    iget-object v13, v0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@74
    invoke-static {v13}, Landroid/widget/ArrayAdapter;->-get2(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    #@77
    move-result-object v13

    #@78
    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@7b
    .local v10, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    monitor-exit v14

    #@7c
    .line 508
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@7f
    move-result v1

    #@80
    .line 509
    .local v1, "count":I
    new-instance v5, Ljava/util/ArrayList;

    #@82
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@85
    .line 511
    .local v5, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v2, 0x0

    #@86
    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_6

    #@88
    .line 512
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8b
    move-result-object v8

    #@8c
    .line 513
    .local v8, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8f
    move-result-object v13

    #@90
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@93
    move-result-object v9

    #@94
    .line 516
    .local v9, "valueText":Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@97
    move-result v13

    #@98
    if-eqz v13, :cond_4

    #@9a
    .line 517
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9d
    .line 511
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@9f
    goto :goto_1

    #@a0
    .line 504
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v5    # "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local v8    # "value":Ljava/lang/Object;, "TT;"
    .end local v9    # "valueText":Ljava/lang/String;
    .end local v10    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catchall_2
    move-exception v13

    #@a1
    monitor-exit v14

    #@a2
    throw v13

    #@a3
    .line 519
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v5    # "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v8    # "value":Ljava/lang/Object;, "TT;"
    .restart local v9    # "valueText":Ljava/lang/String;
    .restart local v10    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_4
    const-string/jumbo v13, " "

    #@a6
    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@a9
    move-result-object v12

    #@aa
    .line 520
    .local v12, "words":[Ljava/lang/String;
    array-length v11, v12

    #@ab
    .line 523
    .local v11, "wordCount":I
    const/4 v3, 0x0

    #@ac
    .local v3, "k":I
    :goto_3
    if-ge v3, v11, :cond_3

    #@ae
    .line 524
    aget-object v13, v12, v3

    #@b0
    invoke-virtual {v13, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b3
    move-result v13

    #@b4
    if-eqz v13, :cond_5

    #@b6
    .line 525
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b9
    goto :goto_2

    #@ba
    .line 523
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@bc
    goto :goto_3

    #@bd
    .line 532
    .end local v3    # "k":I
    .end local v8    # "value":Ljava/lang/Object;, "TT;"
    .end local v9    # "valueText":Ljava/lang/String;
    .end local v11    # "wordCount":I
    .end local v12    # "words":[Ljava/lang/String;
    :cond_6
    iput-object v5, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@bf
    .line 533
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@c2
    move-result v13

    #@c3
    iput v13, v7, Landroid/widget/Filter$FilterResults;->count:I

    #@c5
    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    #@0
    .prologue
    .line 542
    .local p0, "this":Landroid/widget/ArrayAdapter$ArrayFilter;, "Landroid/widget/ArrayAdapter<TT;>.ArrayFilter;"
    iget-object v1, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@2
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@4
    check-cast v0, Ljava/util/List;

    #@6
    invoke-static {v1, v0}, Landroid/widget/ArrayAdapter;->-set0(Landroid/widget/ArrayAdapter;Ljava/util/List;)Ljava/util/List;

    #@9
    .line 543
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    #@b
    if-lez v0, :cond_0

    #@d
    .line 544
    iget-object v0, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@f
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    #@12
    .line 540
    :goto_0
    return-void

    #@13
    .line 546
    :cond_0
    iget-object v0, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@15
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    #@18
    goto :goto_0
.end method
