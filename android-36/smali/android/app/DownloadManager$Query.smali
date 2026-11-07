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
.field public static final greylist-max-o ORDER_ASCENDING:I = 0x1

.field public static final greylist-max-o ORDER_DESCENDING:I = 0x2


# instance fields
.field private greylist-max-o mFilterString:Ljava/lang/String;

.field private greylist-max-o mIds:[J

.field private greylist-max-o mOnlyIncludeVisibleInDownloadsUi:Z

.field private greylist-max-o mOrderByColumn:Ljava/lang/String;

.field private greylist-max-o mOrderDirection:I

.field private greylist-max-o mStatusFlags:Ljava/lang/Integer;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    .line 887
    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    .line 888
    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mFilterString:Ljava/lang/String;

    .line 889
    const-string/jumbo v0, "lastmod"

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    .line 890
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/DownloadManager$Query;->mOrderDirection:I

    .line 891
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    return-void
.end method

.method private greylist-max-o joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 7
    .param p1, "joiner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1029
    .local p2, "parts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1030
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1031
    .local v1, "first":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1032
    .local v3, "part":Ljava/lang/String;
    if-nez v1, :cond_1b

    .line 1033
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    :cond_1b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    const/4 v1, 0x0

    .line 1037
    .end local v3    # "part":Ljava/lang/String;
    goto :goto_a

    .line 1038
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o statusClause(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-p orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$Query;
    .registers 6
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "direction"    # I

    .line 949
    const/4 v0, 0x1

    if-eq p2, v0, :cond_20

    const/4 v0, 0x2

    if-ne p2, v0, :cond_7

    goto :goto_20

    .line 950
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_20
    :goto_20
    const-string/jumbo v0, "last_modified_timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 954
    const-string/jumbo v0, "lastmod"

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    goto :goto_3d

    .line 955
    :cond_2f
    const-string/jumbo v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 956
    const-string/jumbo v0, "total_bytes"

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    .line 960
    :goto_3d
    iput p2, p0, Landroid/app/DownloadManager$Query;->mOrderDirection:I

    .line 961
    return-object p0

    .line 958
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot order by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 14
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "baseUri"    # Landroid/net/Uri;

    .line 970
    move-object v1, p3

    .line 971
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 972
    .local v6, "selectionParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 974
    .local v0, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    if-nez v2, :cond_e

    const/4 v2, 0x0

    goto :goto_11

    :cond_e
    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    array-length v2, v2

    .line 975
    .local v2, "whereArgsCount":I
    :goto_11
    iget-object v3, p0, Landroid/app/DownloadManager$Query;->mFilterString:Ljava/lang/String;

    if-nez v3, :cond_17

    move v3, v2

    goto :goto_19

    :cond_17
    add-int/lit8 v3, v2, 0x1

    :goto_19
    move v7, v3

    .line 976
    .end local v2    # "whereArgsCount":I
    .local v7, "whereArgsCount":I
    new-array v4, v7, [Ljava/lang/String;

    .line 978
    .end local v0    # "selectionArgs":[Ljava/lang/String;
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x1

    if-lez v7, :cond_58

    .line 979
    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    if-eqz v2, :cond_31

    .line 980
    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    invoke-static {v2}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    invoke-static {v2, v4}, Landroid/app/DownloadManager;->getWhereArgsForIds([J[Ljava/lang/String;)[Ljava/lang/String;

    .line 984
    :cond_31
    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mFilterString:Ljava/lang/String;

    if-eqz v2, :cond_58

    .line 985
    const-string/jumbo v2, "title LIKE ?"

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    array-length v2, v4

    sub-int/2addr v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Landroid/app/DownloadManager$Query;->mFilterString:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 990
    :cond_58
    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    const-string v3, " AND "

    if-eqz v2, :cond_112

    .line 991
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 992
    .local v2, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, v0

    const-string v8, "="

    if-eqz v5, :cond_77

    .line 993
    const/16 v5, 0xbe

    invoke-direct {p0, v8, v5}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    :cond_77
    iget-object v5, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_8a

    .line 996
    const/16 v5, 0xc0

    invoke-direct {p0, v8, v5}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    :cond_8a
    iget-object v5, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_b8

    .line 999
    const/16 v5, 0xc1

    invoke-direct {p0, v8, v5}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    const/16 v5, 0xc2

    invoke-direct {p0, v8, v5}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    const/16 v5, 0xc3

    invoke-direct {p0, v8, v5}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    const/16 v5, 0xc4

    invoke-direct {p0, v8, v5}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    :cond_b8
    iget-object v5, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_cb

    .line 1005
    const/16 v5, 0xc8

    invoke-direct {p0, v8, v5}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    :cond_cb
    iget-object v5, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_109

    .line 1008
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ">="

    const/16 v9, 0x190

    invoke-direct {p0, v8, v9}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1009
    const-string v8, "<"

    const/16 v9, 0x258

    invoke-direct {p0, v8, v9}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1008
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    :cond_109
    const-string v5, " OR "

    invoke-direct {p0, v5, v2}, Landroid/app/DownloadManager$Query;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    .end local v2    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_112
    iget-boolean v2, p0, Landroid/app/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    if-eqz v2, :cond_11c

    .line 1015
    const-string/jumbo v2, "is_visible_in_downloads_ui != \'0\'"

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    :cond_11c
    const-string v2, "deleted != \'1\'"

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1021
    invoke-direct {p0, v3, v6}, Landroid/app/DownloadManager$Query;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 1022
    .local v3, "selection":Ljava/lang/String;
    iget v2, p0, Landroid/app/DownloadManager$Query;->mOrderDirection:I

    if-ne v2, v0, :cond_12c

    const-string v0, "ASC"

    goto :goto_12e

    :cond_12c
    const-string v0, "DESC"

    :goto_12e
    move-object v8, v0

    .line 1023
    .local v8, "orderDirection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1025
    .local v5, "orderBy":Ljava/lang/String;
    move-object v0, p1

    move-object v2, p2

    .end local p1    # "resolver":Landroid/content/ContentResolver;
    .end local p2    # "projection":[Ljava/lang/String;
    .local v0, "resolver":Landroid/content/ContentResolver;
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public varargs whitelist setFilterById([J)Landroid/app/DownloadManager$Query;
    .registers 2
    .param p1, "ids"    # [J

    .line 898
    iput-object p1, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    .line 899
    return-object p0
.end method

.method public whitelist setFilterByStatus(I)Landroid/app/DownloadManager$Query;
    .registers 3
    .param p1, "flags"    # I

    .line 919
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    .line 920
    return-object p0
.end method

.method public greylist-max-o setFilterByString(Ljava/lang/String;)Landroid/app/DownloadManager$Query;
    .registers 2
    .param p1, "filter"    # Ljava/lang/String;

    .line 909
    iput-object p1, p0, Landroid/app/DownloadManager$Query;->mFilterString:Ljava/lang/String;

    .line 910
    return-object p0
.end method

.method public greylist setOnlyIncludeVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Query;
    .registers 2
    .param p1, "value"    # Z

    .line 933
    iput-boolean p1, p0, Landroid/app/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    .line 934
    return-object p0
.end method
