.class public Landroid/app/DownloadManager$Query;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Query"
.end annotation


# static fields
.field public static final ORDER_ASCENDING:I = 0x1

.field public static final ORDER_DESCENDING:I = 0x2


# instance fields
.field private mIds:[J

.field private mOnlyIncludeVisibleInDownloadsUi:Z

.field private mOrderByColumn:Ljava/lang/String;

.field private mOrderDirection:I

.field private mStatusFlags:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 776
    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    #@6
    .line 777
    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    #@8
    .line 778
    const-string/jumbo v0, "lastmod"

    #@b
    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    #@d
    .line 779
    const/4 v0, 0x2

    #@e
    iput v0, p0, Landroid/app/DownloadManager$Query;->mOrderDirection:I

    #@10
    .line 780
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Landroid/app/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    #@13
    .line 763
    return-void
.end method

.method private joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .param p1, "joiner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 894
    .local p2, "parts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 895
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    #@6
    .line 896
    .local v1, "first":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v3

    #@a
    .local v3, "part$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/lang/String;

    #@16
    .line 897
    .local v2, "part":Ljava/lang/String;
    if-nez v1, :cond_0

    #@18
    .line 898
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 900
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 901
    const/4 v1, 0x0

    #@1f
    goto :goto_0

    #@20
    .line 903
    .end local v2    # "part":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    return-object v4
.end method

.method private statusClause(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "status"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "\'"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v1, "\'"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method


# virtual methods
.method public orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$Query;
    .locals 3
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "direction"    # I

    #@0
    .prologue
    .line 825
    const/4 v0, 0x1

    #@1
    if-eq p2, v0, :cond_0

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p2, v0, :cond_0

    #@6
    .line 826
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Invalid direction: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 829
    :cond_0
    const-string/jumbo v0, "last_modified_timestamp"

    #@23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 830
    const-string/jumbo v0, "lastmod"

    #@2c
    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    #@2e
    .line 836
    :goto_0
    iput p2, p0, Landroid/app/DownloadManager$Query;->mOrderDirection:I

    #@30
    .line 837
    return-object p0

    #@31
    .line 831
    :cond_1
    const-string/jumbo v0, "total_size"

    #@34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_2

    #@3a
    .line 832
    const-string/jumbo v0, "total_bytes"

    #@3d
    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    #@3f
    goto :goto_0

    #@40
    .line 834
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@42
    new-instance v1, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v2, "Cannot order by "

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw v0
.end method

.method runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "baseUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 846
    move-object v1, p3

    #@1
    .line 847
    .local v1, "uri":Landroid/net/Uri;
    new-instance v8, Ljava/util/ArrayList;

    #@3
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 848
    .local v8, "selectionParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@7
    .line 850
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 851
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    #@d
    invoke-static {v0}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    .line 852
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    #@16
    invoke-static {v0}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    .line 855
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    #@1c
    if-eqz v0, :cond_6

    #@1e
    .line 856
    new-instance v7, Ljava/util/ArrayList;

    #@20
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@23
    .line 857
    .local v7, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    #@25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@28
    move-result v0

    #@29
    and-int/lit8 v0, v0, 0x1

    #@2b
    if-eqz v0, :cond_1

    #@2d
    .line 858
    const-string/jumbo v0, "="

    #@30
    const/16 v2, 0xbe

    #@32
    invoke-direct {p0, v0, v2}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    .line 860
    :cond_1
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    #@3b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@3e
    move-result v0

    #@3f
    and-int/lit8 v0, v0, 0x2

    #@41
    if-eqz v0, :cond_2

    #@43
    .line 861
    const-string/jumbo v0, "="

    #@46
    const/16 v2, 0xc0

    #@48
    invoke-direct {p0, v0, v2}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4f
    .line 863
    :cond_2
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    #@51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@54
    move-result v0

    #@55
    and-int/lit8 v0, v0, 0x4

    #@57
    if-eqz v0, :cond_3

    #@59
    .line 864
    const-string/jumbo v0, "="

    #@5c
    const/16 v2, 0xc1

    #@5e
    invoke-direct {p0, v0, v2}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@65
    .line 865
    const-string/jumbo v0, "="

    #@68
    const/16 v2, 0xc2

    #@6a
    invoke-direct {p0, v0, v2}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@71
    .line 866
    const-string/jumbo v0, "="

    #@74
    const/16 v2, 0xc3

    #@76
    invoke-direct {p0, v0, v2}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    #@79
    move-result-object v0

    #@7a
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7d
    .line 867
    const-string/jumbo v0, "="

    #@80
    const/16 v2, 0xc4

    #@82
    invoke-direct {p0, v0, v2}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    #@85
    move-result-object v0

    #@86
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@89
    .line 869
    :cond_3
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    #@8b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@8e
    move-result v0

    #@8f
    and-int/lit8 v0, v0, 0x8

    #@91
    if-eqz v0, :cond_4

    #@93
    .line 870
    const-string/jumbo v0, "="

    #@96
    const/16 v2, 0xc8

    #@98
    invoke-direct {p0, v0, v2}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9f
    .line 872
    :cond_4
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    #@a1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@a4
    move-result v0

    #@a5
    and-int/lit8 v0, v0, 0x10

    #@a7
    if-eqz v0, :cond_5

    #@a9
    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v2, "("

    #@b1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v0

    #@b5
    const-string/jumbo v2, ">="

    #@b8
    const/16 v9, 0x190

    #@ba
    invoke-direct {p0, v2, v9}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    #@bd
    move-result-object v2

    #@be
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v0

    #@c2
    .line 874
    const-string/jumbo v2, " AND "

    #@c5
    .line 873
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v0

    #@c9
    .line 874
    const-string/jumbo v2, "<"

    #@cc
    const/16 v9, 0x258

    #@ce
    invoke-direct {p0, v2, v9}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    #@d1
    move-result-object v2

    #@d2
    .line 873
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v0

    #@d6
    .line 874
    const-string/jumbo v2, ")"

    #@d9
    .line 873
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v0

    #@dd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v0

    #@e1
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e4
    .line 876
    :cond_5
    const-string/jumbo v0, " OR "

    #@e7
    invoke-direct {p0, v0, v7}, Landroid/app/DownloadManager$Query;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    #@ea
    move-result-object v0

    #@eb
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ee
    .line 879
    .end local v7    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    iget-boolean v0, p0, Landroid/app/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    #@f0
    if-eqz v0, :cond_7

    #@f2
    .line 880
    const-string/jumbo v0, "is_visible_in_downloads_ui != \'0\'"

    #@f5
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f8
    .line 884
    :cond_7
    const-string/jumbo v0, "deleted != \'1\'"

    #@fb
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@fe
    .line 886
    const-string/jumbo v0, " AND "

    #@101
    invoke-direct {p0, v0, v8}, Landroid/app/DownloadManager$Query;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    #@104
    move-result-object v3

    #@105
    .line 887
    .local v3, "selection":Ljava/lang/String;
    iget v0, p0, Landroid/app/DownloadManager$Query;->mOrderDirection:I

    #@107
    const/4 v2, 0x1

    #@108
    if-ne v0, v2, :cond_8

    #@10a
    const-string/jumbo v6, "ASC"

    #@10d
    .line 888
    .local v6, "orderDirection":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    #@114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v0

    #@118
    const-string/jumbo v2, " "

    #@11b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v0

    #@11f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v0

    #@123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v5

    #@127
    .local v5, "orderBy":Ljava/lang/String;
    move-object v0, p1

    #@128
    move-object v2, p2

    #@129
    .line 890
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@12c
    move-result-object v0

    #@12d
    return-object v0

    #@12e
    .line 887
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "orderDirection":Ljava/lang/String;
    :cond_8
    const-string/jumbo v6, "DESC"

    #@131
    .restart local v6    # "orderDirection":Ljava/lang/String;
    goto :goto_0
.end method

.method public varargs setFilterById([J)Landroid/app/DownloadManager$Query;
    .locals 0
    .param p1, "ids"    # [J

    #@0
    .prologue
    .line 787
    iput-object p1, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    #@2
    .line 788
    return-object p0
.end method

.method public setFilterByStatus(I)Landroid/app/DownloadManager$Query;
    .locals 1
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 797
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    #@6
    .line 798
    return-object p0
.end method

.method public setOnlyIncludeVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Query;
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 810
    iput-boolean p1, p0, Landroid/app/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    #@2
    .line 811
    return-object p0
.end method
