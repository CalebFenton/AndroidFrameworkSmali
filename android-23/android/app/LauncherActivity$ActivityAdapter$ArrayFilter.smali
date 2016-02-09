.class Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LauncherActivity$ActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/LauncherActivity$ActivityAdapter;


# direct methods
.method private constructor <init>(Landroid/app/LauncherActivity$ActivityAdapter;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/LauncherActivity$ActivityAdapter;

    #@0
    .prologue
    .line 184
    iput-object p1, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    #@2
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/LauncherActivity$ActivityAdapter;Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/LauncherActivity$ActivityAdapter;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;-><init>(Landroid/app/LauncherActivity$ActivityAdapter;)V

    #@3
    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 17
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 187
    new-instance v8, Landroid/widget/Filter$FilterResults;

    #@2
    invoke-direct {v8}, Landroid/widget/Filter$FilterResults;-><init>()V

    #@5
    .line 189
    .local v8, "results":Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    #@7
    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    #@9
    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->-get1(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    #@c
    move-result-object v13

    #@d
    if-nez v13, :cond_0

    #@f
    .line 190
    move-object/from16 v0, p0

    #@11
    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    #@13
    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->-get0(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/lang/Object;

    #@16
    move-result-object v14

    #@17
    monitor-enter v14

    #@18
    .line 191
    :try_start_0
    move-object/from16 v0, p0

    #@1a
    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    #@1c
    new-instance v15, Ljava/util/ArrayList;

    #@1e
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    #@22
    move-object/from16 v16, v0

    #@24
    move-object/from16 v0, v16

    #@26
    iget-object v0, v0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    #@28
    move-object/from16 v16, v0

    #@2a
    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@2d
    invoke-static {v13, v15}, Landroid/app/LauncherActivity$ActivityAdapter;->-set0(Landroid/app/LauncherActivity$ActivityAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit v14

    #@31
    .line 195
    :cond_0
    if-eqz p1, :cond_1

    #@33
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@36
    move-result v13

    #@37
    if-nez v13, :cond_2

    #@39
    .line 196
    :cond_1
    move-object/from16 v0, p0

    #@3b
    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    #@3d
    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->-get0(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/lang/Object;

    #@40
    move-result-object v14

    #@41
    monitor-enter v14

    #@42
    .line 197
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    #@44
    move-object/from16 v0, p0

    #@46
    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    #@48
    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->-get1(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    #@4b
    move-result-object v13

    #@4c
    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@4f
    .line 198
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    iput-object v5, v8, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@51
    .line 199
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@54
    move-result v13

    #@55
    iput v13, v8, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@57
    monitor-exit v14

    #@58
    .line 229
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    :goto_0
    return-object v8

    #@59
    .line 190
    :catchall_0
    move-exception v13

    #@5a
    monitor-exit v14

    #@5b
    throw v13

    #@5c
    .line 196
    :catchall_1
    move-exception v13

    #@5d
    monitor-exit v14

    #@5e
    throw v13

    #@5f
    .line 202
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@62
    move-result-object v13

    #@63
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@66
    move-result-object v7

    #@67
    .line 204
    .local v7, "prefixString":Ljava/lang/String;
    move-object/from16 v0, p0

    #@69
    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    #@6b
    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->-get1(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    #@6e
    move-result-object v9

    #@6f
    .line 205
    .local v9, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@72
    move-result v1

    #@73
    .line 207
    .local v1, "count":I
    new-instance v6, Ljava/util/ArrayList;

    #@75
    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@78
    .line 209
    .local v6, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    const/4 v2, 0x0

    #@79
    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    #@7b
    .line 210
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7e
    move-result-object v3

    #@7f
    check-cast v3, Landroid/app/LauncherActivity$ListItem;

    #@81
    .line 212
    .local v3, "item":Landroid/app/LauncherActivity$ListItem;
    iget-object v13, v3, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    #@83
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@86
    move-result-object v13

    #@87
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@8a
    move-result-object v13

    #@8b
    const-string/jumbo v14, " "

    #@8e
    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@91
    move-result-object v12

    #@92
    .line 213
    .local v12, "words":[Ljava/lang/String;
    array-length v11, v12

    #@93
    .line 215
    .local v11, "wordCount":I
    const/4 v4, 0x0

    #@94
    .local v4, "k":I
    :goto_2
    if-ge v4, v11, :cond_3

    #@96
    .line 216
    aget-object v10, v12, v4

    #@98
    .line 218
    .local v10, "word":Ljava/lang/String;
    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9b
    move-result v13

    #@9c
    if-eqz v13, :cond_4

    #@9e
    .line 219
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a1
    .line 209
    .end local v10    # "word":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@a3
    goto :goto_1

    #@a4
    .line 215
    .restart local v10    # "word":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@a6
    goto :goto_2

    #@a7
    .line 225
    .end local v3    # "item":Landroid/app/LauncherActivity$ListItem;
    .end local v4    # "k":I
    .end local v10    # "word":Ljava/lang/String;
    .end local v11    # "wordCount":I
    .end local v12    # "words":[Ljava/lang/String;
    :cond_5
    iput-object v6, v8, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@a9
    .line 226
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@ac
    move-result v13

    #@ad
    iput v13, v8, Landroid/widget/Filter$FilterResults;->count:I

    #@af
    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    #@0
    .prologue
    .line 235
    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    #@2
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@4
    check-cast v0, Ljava/util/List;

    #@6
    iput-object v0, v1, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    #@8
    .line 236
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    #@a
    if-lez v0, :cond_0

    #@c
    .line 237
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    #@e
    invoke-virtual {v0}, Landroid/app/LauncherActivity$ActivityAdapter;->notifyDataSetChanged()V

    #@11
    .line 233
    :goto_0
    return-void

    #@12
    .line 239
    :cond_0
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    #@14
    invoke-virtual {v0}, Landroid/app/LauncherActivity$ActivityAdapter;->notifyDataSetInvalidated()V

    #@17
    goto :goto_0
.end method
