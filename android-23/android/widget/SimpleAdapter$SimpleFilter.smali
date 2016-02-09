.class Landroid/widget/SimpleAdapter$SimpleFilter;
.super Landroid/widget/Filter;
.source "SimpleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SimpleAdapter;


# direct methods
.method private constructor <init>(Landroid/widget/SimpleAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SimpleAdapter;

    #@0
    .prologue
    .line 359
    iput-object p1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    #@2
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SimpleAdapter;Landroid/widget/SimpleAdapter$SimpleFilter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SimpleAdapter;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SimpleAdapter$SimpleFilter;-><init>(Landroid/widget/SimpleAdapter;)V

    #@3
    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 19
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 363
    new-instance v10, Landroid/widget/Filter$FilterResults;

    #@2
    invoke-direct {v10}, Landroid/widget/Filter$FilterResults;-><init>()V

    #@5
    .line 365
    .local v10, "results":Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    #@7
    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    #@9
    move-object/from16 v16, v0

    #@b
    invoke-static/range {v16 .. v16}, Landroid/widget/SimpleAdapter;->-get3(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    #@e
    move-result-object v16

    #@f
    if-nez v16, :cond_0

    #@11
    .line 366
    move-object/from16 v0, p0

    #@13
    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    #@15
    move-object/from16 v16, v0

    #@17
    new-instance v17, Ljava/util/ArrayList;

    #@19
    move-object/from16 v0, p0

    #@1b
    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    #@1d
    move-object/from16 v18, v0

    #@1f
    invoke-static/range {v18 .. v18}, Landroid/widget/SimpleAdapter;->-get0(Landroid/widget/SimpleAdapter;)Ljava/util/List;

    #@22
    move-result-object v18

    #@23
    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@26
    invoke-static/range {v16 .. v17}, Landroid/widget/SimpleAdapter;->-set1(Landroid/widget/SimpleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    #@29
    .line 369
    :cond_0
    if-eqz p1, :cond_1

    #@2b
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@2e
    move-result v16

    #@2f
    if-nez v16, :cond_2

    #@31
    .line 370
    :cond_1
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    #@35
    move-object/from16 v16, v0

    #@37
    invoke-static/range {v16 .. v16}, Landroid/widget/SimpleAdapter;->-get3(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    #@3a
    move-result-object v7

    #@3b
    .line 371
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object v7, v10, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@3d
    .line 372
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v16

    #@41
    move/from16 v0, v16

    #@43
    iput v0, v10, Landroid/widget/Filter$FilterResults;->count:I

    #@45
    .line 409
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :goto_0
    return-object v10

    #@46
    .line 374
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@49
    move-result-object v16

    #@4a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@4d
    move-result-object v9

    #@4e
    .line 376
    .local v9, "prefixString":Ljava/lang/String;
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    #@52
    move-object/from16 v16, v0

    #@54
    invoke-static/range {v16 .. v16}, Landroid/widget/SimpleAdapter;->-get3(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    #@57
    move-result-object v12

    #@58
    .line 377
    .local v12, "unfilteredValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@5b
    move-result v1

    #@5c
    .line 379
    .local v1, "count":I
    new-instance v8, Ljava/util/ArrayList;

    #@5e
    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@61
    .line 381
    .local v8, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v3, 0x0

    #@62
    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_6

    #@64
    .line 382
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@67
    move-result-object v2

    #@68
    check-cast v2, Ljava/util/Map;

    #@6a
    .line 383
    .local v2, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v2, :cond_5

    #@6c
    .line 385
    move-object/from16 v0, p0

    #@6e
    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    #@70
    move-object/from16 v16, v0

    #@72
    invoke-static/range {v16 .. v16}, Landroid/widget/SimpleAdapter;->-get2(Landroid/widget/SimpleAdapter;)[I

    #@75
    move-result-object v16

    #@76
    move-object/from16 v0, v16

    #@78
    array-length v6, v0

    #@79
    .line 387
    .local v6, "len":I
    const/4 v4, 0x0

    #@7a
    .local v4, "j":I
    :goto_2
    if-ge v4, v6, :cond_5

    #@7c
    .line 388
    move-object/from16 v0, p0

    #@7e
    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    #@80
    move-object/from16 v16, v0

    #@82
    invoke-static/range {v16 .. v16}, Landroid/widget/SimpleAdapter;->-get1(Landroid/widget/SimpleAdapter;)[Ljava/lang/String;

    #@85
    move-result-object v16

    #@86
    aget-object v16, v16, v4

    #@88
    move-object/from16 v0, v16

    #@8a
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8d
    move-result-object v11

    #@8e
    check-cast v11, Ljava/lang/String;

    #@90
    .line 390
    .local v11, "str":Ljava/lang/String;
    const-string/jumbo v16, " "

    #@93
    move-object/from16 v0, v16

    #@95
    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@98
    move-result-object v15

    #@99
    .line 391
    .local v15, "words":[Ljava/lang/String;
    array-length v14, v15

    #@9a
    .line 393
    .local v14, "wordCount":I
    const/4 v5, 0x0

    #@9b
    .local v5, "k":I
    :goto_3
    if-ge v5, v14, :cond_3

    #@9d
    .line 394
    aget-object v13, v15, v5

    #@9f
    .line 396
    .local v13, "word":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@a2
    move-result-object v16

    #@a3
    move-object/from16 v0, v16

    #@a5
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a8
    move-result v16

    #@a9
    if-eqz v16, :cond_4

    #@ab
    .line 397
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ae
    .line 387
    .end local v13    # "word":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@b0
    goto :goto_2

    #@b1
    .line 393
    .restart local v13    # "word":Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@b3
    goto :goto_3

    #@b4
    .line 381
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "len":I
    .end local v11    # "str":Ljava/lang/String;
    .end local v13    # "word":Ljava/lang/String;
    .end local v14    # "wordCount":I
    .end local v15    # "words":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@b6
    goto :goto_1

    #@b7
    .line 405
    .end local v2    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_6
    iput-object v8, v10, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@b9
    .line 406
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@bc
    move-result v16

    #@bd
    move/from16 v0, v16

    #@bf
    iput v0, v10, Landroid/widget/Filter$FilterResults;->count:I

    #@c1
    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    #@0
    .prologue
    .line 415
    iget-object v1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    #@2
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@4
    check-cast v0, Ljava/util/List;

    #@6
    invoke-static {v1, v0}, Landroid/widget/SimpleAdapter;->-set0(Landroid/widget/SimpleAdapter;Ljava/util/List;)Ljava/util/List;

    #@9
    .line 416
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    #@b
    if-lez v0, :cond_0

    #@d
    .line 417
    iget-object v0, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    #@f
    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    #@12
    .line 413
    :goto_0
    return-void

    #@13
    .line 419
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    #@15
    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetInvalidated()V

    #@18
    goto :goto_0
.end method
