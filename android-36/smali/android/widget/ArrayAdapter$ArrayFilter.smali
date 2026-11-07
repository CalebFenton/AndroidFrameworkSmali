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
.field final synthetic blacklist this$0:Landroid/widget/ArrayAdapter;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ArrayAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 559
    .local p0, "this":Landroid/widget/ArrayAdapter$ArrayFilter;, "Landroid/widget/ArrayAdapter<TT;>.ArrayFilter;"
    iput-object p1, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ArrayAdapter$ArrayFilter;-><init>(Landroid/widget/ArrayAdapter;)V

    return-void
.end method


# virtual methods
.method protected whitelist performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 15
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 562
    .local p0, "this":Landroid/widget/ArrayAdapter$ArrayFilter;, "Landroid/widget/ArrayAdapter<TT;>.ArrayFilter;"
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 564
    .local v0, "results":Landroid/widget/Filter$FilterResults;
    iget-object v1, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v1}, Landroid/widget/ArrayAdapter;->-$$Nest$fgetmOriginalValues(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_29

    .line 565
    iget-object v1, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v1}, Landroid/widget/ArrayAdapter;->-$$Nest$fgetmLock(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 566
    :try_start_14
    iget-object v2, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v4}, Landroid/widget/ArrayAdapter;->-$$Nest$fgetmObjects(Landroid/widget/ArrayAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Landroid/widget/ArrayAdapter;->-$$Nest$fputmOriginalValues(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V

    .line 567
    monitor-exit v1

    goto :goto_29

    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_26

    throw v2

    .line 570
    :cond_29
    :goto_29
    if-eqz p1, :cond_97

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_32

    goto :goto_97

    .line 578
    :cond_32
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "prefixString":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v2}, Landroid/widget/ArrayAdapter;->-$$Nest$fgetmLock(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 582
    :try_start_41
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v4}, Landroid/widget/ArrayAdapter;->-$$Nest$fgetmOriginalValues(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 583
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_94

    .line 585
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 586
    .local v2, "count":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v4, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_57
    if-ge v5, v2, :cond_8b

    .line 589
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 590
    .local v6, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 593
    .local v7, "valueText":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 594
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_88

    .line 596
    :cond_6f
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 597
    .local v8, "words":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x0

    :goto_77
    if-ge v10, v9, :cond_88

    aget-object v11, v8, v10

    .line 598
    .local v11, "word":Ljava/lang/String;
    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_85

    .line 599
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    goto :goto_88

    .line 597
    .end local v11    # "word":Ljava/lang/String;
    :cond_85
    add-int/lit8 v10, v10, 0x1

    goto :goto_77

    .line 588
    .end local v6    # "value":Ljava/lang/Object;, "TT;"
    .end local v7    # "valueText":Ljava/lang/String;
    .end local v8    # "words":[Ljava/lang/String;
    :cond_88
    :goto_88
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 606
    .end local v5    # "i":I
    :cond_8b
    iput-object v4, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 607
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_b3

    .line 583
    .end local v2    # "count":I
    .end local v3    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local v4    # "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catchall_94
    move-exception v3

    :try_start_95
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v3

    .line 572
    .end local v1    # "prefixString":Ljava/lang/String;
    :cond_97
    :goto_97
    iget-object v1, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v1}, Landroid/widget/ArrayAdapter;->-$$Nest$fgetmLock(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 573
    :try_start_9e
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v3}, Landroid/widget/ArrayAdapter;->-$$Nest$fgetmOriginalValues(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 574
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_9e .. :try_end_aa} :catchall_b4

    .line 575
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 576
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 577
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    nop

    .line 610
    :goto_b3
    return-object v0

    .line 574
    :catchall_b4
    move-exception v2

    :try_start_b5
    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v2
.end method

.method protected whitelist publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .line 616
    .local p0, "this":Landroid/widget/ArrayAdapter$ArrayFilter;, "Landroid/widget/ArrayAdapter<TT;>.ArrayFilter;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Landroid/widget/ArrayAdapter;->-$$Nest$fputmObjects(Landroid/widget/ArrayAdapter;Ljava/util/List;)V

    .line 617
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_13

    .line 618
    iget-object v0, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_18

    .line 620
    :cond_13
    iget-object v0, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    .line 622
    :goto_18
    return-void
.end method
