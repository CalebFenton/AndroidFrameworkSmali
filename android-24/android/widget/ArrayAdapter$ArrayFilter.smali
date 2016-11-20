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
    .line 489
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
    .locals 15
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 492
    .local p0, "this":Landroid/widget/ArrayAdapter$ArrayFilter;, "Landroid/widget/ArrayAdapter<TT;>.ArrayFilter;"
    new-instance v5, Landroid/widget/Filter$FilterResults;

    #@2
    invoke-direct {v5}, Landroid/widget/Filter$FilterResults;-><init>()V

    #@5
    .line 494
    .local v5, "results":Landroid/widget/Filter$FilterResults;
    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@7
    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get2(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    #@a
    move-result-object v11

    #@b
    if-nez v11, :cond_0

    #@d
    .line 495
    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@f
    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get0(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    #@12
    move-result-object v12

    #@13
    monitor-enter v12

    #@14
    .line 496
    :try_start_0
    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@16
    new-instance v13, Ljava/util/ArrayList;

    #@18
    iget-object v14, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@1a
    invoke-static {v14}, Landroid/widget/ArrayAdapter;->-get1(Landroid/widget/ArrayAdapter;)Ljava/util/List;

    #@1d
    move-result-object v14

    #@1e
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@21
    invoke-static {v11, v13}, Landroid/widget/ArrayAdapter;->-set1(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit v12

    #@25
    .line 500
    :cond_0
    if-eqz p1, :cond_1

    #@27
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@2a
    move-result v11

    #@2b
    if-nez v11, :cond_2

    #@2d
    .line 502
    :cond_1
    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@2f
    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get0(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    #@32
    move-result-object v12

    #@33
    monitor-enter v12

    #@34
    .line 503
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    #@36
    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@38
    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get2(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    #@3b
    move-result-object v11

    #@3c
    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3f
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    monitor-exit v12

    #@40
    .line 505
    iput-object v2, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@42
    .line 506
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@45
    move-result v11

    #@46
    iput v11, v5, Landroid/widget/Filter$FilterResults;->count:I

    #@48
    .line 540
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    return-object v5

    #@49
    .line 495
    :catchall_0
    move-exception v11

    #@4a
    monitor-exit v12

    #@4b
    throw v11

    #@4c
    .line 502
    :catchall_1
    move-exception v11

    #@4d
    monitor-exit v12

    #@4e
    throw v11

    #@4f
    .line 508
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@52
    move-result-object v11

    #@53
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    .line 511
    .local v4, "prefixString":Ljava/lang/String;
    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@59
    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get0(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    #@5c
    move-result-object v12

    #@5d
    monitor-enter v12

    #@5e
    .line 512
    :try_start_2
    new-instance v8, Ljava/util/ArrayList;

    #@60
    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@62
    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get2(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    #@65
    move-result-object v11

    #@66
    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@69
    .local v8, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    monitor-exit v12

    #@6a
    .line 515
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@6d
    move-result v0

    #@6e
    .line 516
    .local v0, "count":I
    new-instance v3, Ljava/util/ArrayList;

    #@70
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@73
    .line 518
    .local v3, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v1, 0x0

    #@74
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_6

    #@76
    .line 519
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@79
    move-result-object v6

    #@7a
    .line 520
    .local v6, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@7d
    move-result-object v11

    #@7e
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@81
    move-result-object v7

    #@82
    .line 523
    .local v7, "valueText":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@85
    move-result v11

    #@86
    if-eqz v11, :cond_4

    #@88
    .line 524
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8b
    .line 518
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@8d
    goto :goto_1

    #@8e
    .line 511
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local v6    # "value":Ljava/lang/Object;, "TT;"
    .end local v7    # "valueText":Ljava/lang/String;
    .end local v8    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catchall_2
    move-exception v11

    #@8f
    monitor-exit v12

    #@90
    throw v11

    #@91
    .line 526
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v6    # "value":Ljava/lang/Object;, "TT;"
    .restart local v7    # "valueText":Ljava/lang/String;
    .restart local v8    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_4
    const-string/jumbo v11, " "

    #@94
    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@97
    move-result-object v10

    #@98
    .line 527
    .local v10, "words":[Ljava/lang/String;
    const/4 v11, 0x0

    #@99
    array-length v12, v10

    #@9a
    :goto_3
    if-ge v11, v12, :cond_3

    #@9c
    aget-object v9, v10, v11

    #@9e
    .line 528
    .local v9, "word":Ljava/lang/String;
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a1
    move-result v13

    #@a2
    if-eqz v13, :cond_5

    #@a4
    .line 529
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a7
    goto :goto_2

    #@a8
    .line 527
    :cond_5
    add-int/lit8 v11, v11, 0x1

    #@aa
    goto :goto_3

    #@ab
    .line 536
    .end local v6    # "value":Ljava/lang/Object;, "TT;"
    .end local v7    # "valueText":Ljava/lang/String;
    .end local v9    # "word":Ljava/lang/String;
    .end local v10    # "words":[Ljava/lang/String;
    :cond_6
    iput-object v3, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@ad
    .line 537
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b0
    move-result v11

    #@b1
    iput v11, v5, Landroid/widget/Filter$FilterResults;->count:I

    #@b3
    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    #@0
    .prologue
    .line 546
    .local p0, "this":Landroid/widget/ArrayAdapter$ArrayFilter;, "Landroid/widget/ArrayAdapter<TT;>.ArrayFilter;"
    iget-object v1, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@2
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@4
    check-cast v0, Ljava/util/List;

    #@6
    invoke-static {v1, v0}, Landroid/widget/ArrayAdapter;->-set0(Landroid/widget/ArrayAdapter;Ljava/util/List;)Ljava/util/List;

    #@9
    .line 547
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    #@b
    if-lez v0, :cond_0

    #@d
    .line 548
    iget-object v0, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@f
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    #@12
    .line 544
    :goto_0
    return-void

    #@13
    .line 550
    :cond_0
    iget-object v0, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    #@15
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    #@18
    goto :goto_0
.end method
