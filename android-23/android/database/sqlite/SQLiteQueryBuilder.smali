.class public Landroid/database/sqlite/SQLiteQueryBuilder;
.super Ljava/lang/Object;
.source "SQLiteQueryBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteQueryBuilder"

.field private static final sLimitPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mDistinct:Z

.field private mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStrict:Z

.field private mTables:Ljava/lang/String;

.field private mWhereClause:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    const-string/jumbo v0, "\\s*\\d+\\s*(,\\s*\\d+\\s*)?"

    #@3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    .line 40
    sput-object v0, Landroid/database/sqlite/SQLiteQueryBuilder;->sLimitPattern:Ljava/util/regex/Pattern;

    #@9
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 43
    iput-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    #@6
    .line 44
    const-string/jumbo v0, ""

    #@9
    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    #@b
    .line 45
    iput-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    #@d
    .line 51
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    #@10
    .line 52
    iput-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    #@12
    .line 50
    return-void
.end method

.method private static appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clause"    # Ljava/lang/String;

    #@0
    .prologue
    .line 235
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 236
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    .line 237
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 234
    :cond_0
    return-void
.end method

.method public static appendColumns(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 4
    .param p0, "s"    # Ljava/lang/StringBuilder;
    .param p1, "columns"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 246
    array-length v2, p1

    #@1
    .line 248
    .local v2, "n":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@4
    .line 249
    aget-object v0, p1, v1

    #@6
    .line 251
    .local v0, "column":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@8
    .line 252
    if-lez v1, :cond_0

    #@a
    .line 253
    const-string/jumbo v3, ", "

    #@d
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 255
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 248
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 258
    .end local v0    # "column":Ljava/lang/String;
    :cond_2
    const/16 v3, 0x20

    #@18
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 245
    return-void
.end method

.method public static buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "distinct"    # Z
    .param p1, "tables"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .param p7, "limit"    # Ljava/lang/String;

    #@0
    .prologue
    .line 204
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_3

    #@c
    .line 208
    :cond_0
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_1

    #@12
    sget-object v1, Landroid/database/sqlite/SQLiteQueryBuilder;->sLimitPattern:Ljava/util/regex/Pattern;

    #@14
    invoke-virtual {v1, p7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_4

    #@1e
    .line 212
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@20
    const/16 v1, 0x78

    #@22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@25
    .line 214
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SELECT "

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 215
    if-eqz p0, :cond_2

    #@2d
    .line 216
    const-string/jumbo v1, "DISTINCT "

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 218
    :cond_2
    if-eqz p2, :cond_5

    #@35
    array-length v1, p2

    #@36
    if-eqz v1, :cond_5

    #@38
    .line 219
    invoke-static {v0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendColumns(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    #@3b
    .line 223
    :goto_0
    const-string/jumbo v1, "FROM "

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 225
    const-string/jumbo v1, " WHERE "

    #@47
    invoke-static {v0, v1, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 226
    const-string/jumbo v1, " GROUP BY "

    #@4d
    invoke-static {v0, v1, p4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    #@50
    .line 227
    const-string/jumbo v1, " HAVING "

    #@53
    invoke-static {v0, v1, p5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    #@56
    .line 228
    const-string/jumbo v1, " ORDER BY "

    #@59
    invoke-static {v0, v1, p6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    #@5c
    .line 229
    const-string/jumbo v1, " LIMIT "

    #@5f
    invoke-static {v0, v1, p7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    #@62
    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    return-object v1

    #@67
    .line 205
    .end local v0    # "query":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@69
    .line 206
    const-string/jumbo v2, "HAVING clauses are only permitted when using a groupBy clause"

    #@6c
    .line 205
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v1

    #@70
    .line 209
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@72
    new-instance v2, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v3, "invalid LIMIT clauses:"

    #@7a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v2

    #@82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v2

    #@86
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@89
    throw v1

    #@8a
    .line 221
    .restart local v0    # "query":Ljava/lang/StringBuilder;
    :cond_5
    const-string/jumbo v1, "* "

    #@8d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    goto :goto_0
.end method

.method private computeProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .param p1, "projectionIn"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 611
    if-eqz p1, :cond_5

    #@3
    array-length v9, p1

    #@4
    if-lez v9, :cond_5

    #@6
    .line 612
    iget-object v9, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    #@8
    if-eqz v9, :cond_4

    #@a
    .line 613
    array-length v9, p1

    #@b
    new-array v7, v9, [Ljava/lang/String;

    #@d
    .line 614
    .local v7, "projection":[Ljava/lang/String;
    array-length v6, p1

    #@e
    .line 616
    .local v6, "length":I
    const/4 v4, 0x0

    #@f
    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_3

    #@11
    .line 617
    aget-object v8, p1, v4

    #@13
    .line 618
    .local v8, "userColumn":Ljava/lang/String;
    iget-object v9, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    #@15
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    .line 620
    .local v0, "column":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@1d
    .line 621
    aput-object v0, v7, v4

    #@1f
    .line 616
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@21
    goto :goto_0

    #@22
    .line 625
    :cond_0
    iget-boolean v9, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrict:Z

    #@24
    if-nez v9, :cond_2

    #@26
    .line 626
    const-string/jumbo v9, " AS "

    #@29
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@2c
    move-result v9

    #@2d
    if-nez v9, :cond_1

    #@2f
    const-string/jumbo v9, " as "

    #@32
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@35
    move-result v9

    #@36
    .line 625
    if-eqz v9, :cond_2

    #@38
    .line 628
    :cond_1
    aput-object v8, v7, v4

    #@3a
    goto :goto_1

    #@3b
    .line 632
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@3d
    new-instance v10, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v11, "Invalid column "

    #@45
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v10

    #@49
    .line 633
    aget-object v11, p1, v4

    #@4b
    .line 632
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v10

    #@4f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v10

    #@53
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v9

    #@57
    .line 635
    .end local v0    # "column":Ljava/lang/String;
    .end local v8    # "userColumn":Ljava/lang/String;
    :cond_3
    return-object v7

    #@58
    .line 637
    .end local v4    # "i":I
    .end local v6    # "length":I
    .end local v7    # "projection":[Ljava/lang/String;
    :cond_4
    return-object p1

    #@59
    .line 639
    :cond_5
    iget-object v9, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    #@5b
    if-eqz v9, :cond_8

    #@5d
    .line 641
    iget-object v9, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    #@5f
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@62
    move-result-object v3

    #@63
    .line 642
    .local v3, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    #@66
    move-result v9

    #@67
    new-array v7, v9, [Ljava/lang/String;

    #@69
    .line 643
    .restart local v7    # "projection":[Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@6c
    move-result-object v2

    #@6d
    .line 644
    .local v2, "entryIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    #@6e
    .line 646
    .restart local v4    # "i":I
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@71
    move-result v9

    #@72
    if-eqz v9, :cond_7

    #@74
    .line 647
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@77
    move-result-object v1

    #@78
    check-cast v1, Ljava/util/Map$Entry;

    #@7a
    .line 650
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@7d
    move-result-object v9

    #@7e
    check-cast v9, Ljava/lang/String;

    #@80
    const-string/jumbo v10, "_count"

    #@83
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v9

    #@87
    if-nez v9, :cond_6

    #@89
    .line 653
    add-int/lit8 v5, v4, 0x1

    #@8b
    .end local v4    # "i":I
    .local v5, "i":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@8e
    move-result-object v9

    #@8f
    check-cast v9, Ljava/lang/String;

    #@91
    aput-object v9, v7, v4

    #@93
    move v4, v5

    #@94
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    #@95
    .line 655
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    return-object v7

    #@96
    .line 657
    .end local v2    # "entryIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "i":I
    .end local v7    # "projection":[Ljava/lang/String;
    :cond_8
    return-object v10
.end method

.method private validateQuerySql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    #@3
    move-result-object v0

    #@4
    .line 413
    const/4 v1, 0x1

    #@5
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x0

    #@a
    .line 412
    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V

    #@d
    .line 411
    return-void
.end method


# virtual methods
.method public appendWhere(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "inWhere"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v1

    #@a
    add-int/lit8 v1, v1, 0x10

    #@c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@f
    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    #@11
    .line 98
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1

    #@19
    .line 99
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    #@1b
    const/16 v1, 0x28

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 101
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    #@22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@25
    .line 94
    return-void
.end method

.method public appendWhereEscapeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "inWhere"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v1

    #@a
    add-int/lit8 v1, v1, 0x10

    #@c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@f
    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    #@11
    .line 118
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1

    #@19
    .line 119
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    #@1b
    const/16 v1, 0x28

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 121
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    #@22
    invoke-static {v0, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@25
    .line 114
    return-void
.end method

.method public buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "projectionIn"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "groupBy"    # Ljava/lang/String;
    .param p4, "having"    # Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "limit"    # Ljava/lang/String;

    #@0
    .prologue
    .line 447
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeProjection([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 449
    .local v2, "projection":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 450
    .local v9, "where":Ljava/lang/StringBuilder;
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    #@b
    if-eqz v0, :cond_3

    #@d
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@12
    move-result v0

    #@13
    if-lez v0, :cond_3

    #@15
    const/4 v8, 0x1

    #@16
    .line 452
    .local v8, "hasBaseWhereClause":Z
    :goto_0
    if-eqz v8, :cond_0

    #@18
    .line 453
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 454
    const/16 v0, 0x29

    #@23
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    .line 458
    :cond_0
    if-eqz p2, :cond_2

    #@28
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@2b
    move-result v0

    #@2c
    if-lez v0, :cond_2

    #@2e
    .line 459
    if-eqz v8, :cond_1

    #@30
    .line 460
    const-string/jumbo v0, " AND "

    #@33
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 463
    :cond_1
    const/16 v0, 0x28

    #@38
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    .line 464
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 465
    const/16 v0, 0x29

    #@40
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@43
    .line 469
    :cond_2
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    #@45
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    #@47
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    move-object v4, p3

    #@4c
    move-object v5, p4

    #@4d
    move-object v6, p5

    #@4e
    move-object/from16 v7, p6

    #@50
    .line 468
    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    return-object v0

    #@55
    .line 450
    .end local v8    # "hasBaseWhereClause":Z
    :cond_3
    const/4 v8, 0x0

    #@56
    .restart local v8    # "hasBaseWhereClause":Z
    goto :goto_0
.end method

.method public buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "projectionIn"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "limit"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    move-object v0, p0

    #@1
    move-object v1, p1

    #@2
    move-object v2, p2

    #@3
    move-object v3, p4

    #@4
    move-object v4, p5

    #@5
    move-object v5, p6

    #@6
    move-object v6, p7

    #@7
    .line 483
    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subQueries"    # [Ljava/lang/String;
    .param p2, "sortOrder"    # Ljava/lang/String;
    .param p3, "limit"    # Ljava/lang/String;

    #@0
    .prologue
    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const/16 v4, 0x80

    #@4
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 596
    .local v1, "query":Ljava/lang/StringBuilder;
    array-length v2, p1

    #@8
    .line 597
    .local v2, "subQueryCount":I
    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    #@a
    if-eqz v4, :cond_1

    #@c
    const-string/jumbo v3, " UNION "

    #@f
    .line 599
    .local v3, "unionOperator":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    #@12
    .line 600
    if-lez v0, :cond_0

    #@14
    .line 601
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 603
    :cond_0
    aget-object v4, p1, v0

    #@19
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 599
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_1

    #@1f
    .line 597
    .end local v0    # "i":I
    .end local v3    # "unionOperator":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, " UNION ALL "

    #@22
    .restart local v3    # "unionOperator":Ljava/lang/String;
    goto :goto_0

    #@23
    .line 605
    .restart local v0    # "i":I
    :cond_2
    const-string/jumbo v4, " ORDER BY "

    #@26
    invoke-static {v1, v4, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    #@29
    .line 606
    const-string/jumbo v4, " LIMIT "

    #@2c
    invoke-static {v1, v4, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    #@2f
    .line 607
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    return-object v4
.end method

.method public buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "typeDiscriminatorColumn"    # Ljava/lang/String;
    .param p2, "unionColumns"    # [Ljava/lang/String;
    .param p4, "computedColumnsOffset"    # I
    .param p5, "typeDiscriminatorValue"    # Ljava/lang/String;
    .param p6, "selection"    # Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 534
    .local p3, "columnsPresentInTable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v9, p2

    #@1
    .line 535
    .local v9, "unionColumnsCount":I
    new-array v1, v9, [Ljava/lang/String;

    #@3
    .line 537
    .local v1, "projectionIn":[Ljava/lang/String;
    const/4 v7, 0x0

    #@4
    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_3

    #@6
    .line 538
    aget-object v8, p2, v7

    #@8
    .line 540
    .local v8, "unionColumn":Ljava/lang/String;
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "\'"

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v2, "\' AS "

    #@21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    aput-object v0, v1, v7

    #@2f
    .line 537
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@31
    goto :goto_0

    #@32
    .line 543
    :cond_0
    if-le v7, p4, :cond_1

    #@34
    .line 544
    invoke-interface {p3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@37
    move-result v0

    #@38
    .line 543
    if-eqz v0, :cond_2

    #@3a
    .line 545
    :cond_1
    aput-object v8, v1, v7

    #@3c
    goto :goto_1

    #@3d
    .line 547
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v2, "NULL AS "

    #@45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    aput-object v0, v1, v7

    #@53
    goto :goto_1

    #@54
    .line 552
    .end local v8    # "unionColumn":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    #@55
    .line 553
    const/4 v6, 0x0

    #@56
    move-object v0, p0

    #@57
    move-object/from16 v2, p6

    #@59
    move-object/from16 v3, p7

    #@5b
    move-object/from16 v4, p8

    #@5d
    .line 550
    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    return-object v0
.end method

.method public buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "typeDiscriminatorColumn"    # Ljava/lang/String;
    .param p2, "unionColumns"    # [Ljava/lang/String;
    .param p4, "computedColumnsOffset"    # I
    .param p5, "typeDiscriminatorValue"    # Ljava/lang/String;
    .param p6, "selection"    # Ljava/lang/String;
    .param p7, "selectionArgs"    # [Ljava/lang/String;
    .param p8, "groupBy"    # Ljava/lang/String;
    .param p9, "having"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .local p3, "columnsPresentInTable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    #@1
    move-object v1, p1

    #@2
    move-object v2, p2

    #@3
    move-object v3, p3

    #@4
    move v4, p4

    #@5
    move-object v5, p5

    #@6
    move-object v6, p6

    #@7
    move-object/from16 v7, p8

    #@9
    move-object/from16 v8, p9

    #@b
    .line 574
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getTables()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;

    #@0
    .prologue
    .line 295
    const/4 v8, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    move-object v4, p4

    #@7
    move-object v5, p5

    #@8
    move-object/from16 v6, p6

    #@a
    move-object/from16 v7, p7

    #@c
    .line 294
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;

    #@0
    .prologue
    .line 334
    const/4 v9, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    move-object/from16 v6, p6

    #@9
    move-object/from16 v7, p7

    #@b
    move-object/from16 v8, p8

    #@d
    .line 333
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;
    .param p9, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 375
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 376
    const/4 v1, 0x0

    #@5
    return-object v1

    #@6
    .line 379
    :cond_0
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrict:Z

    #@8
    if-eqz v1, :cond_1

    #@a
    if-eqz p3, :cond_1

    #@c
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@f
    move-result v1

    #@10
    if-lez v1, :cond_1

    #@12
    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "("

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, ")"

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    move-object v1, p0

    #@2e
    move-object v2, p2

    #@2f
    move-object v4, p5

    #@30
    move-object v5, p6

    #@31
    move-object/from16 v6, p7

    #@33
    move-object/from16 v7, p8

    #@35
    invoke-virtual/range {v1 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v8

    #@39
    .line 389
    .local v8, "sqlForValidation":Ljava/lang/String;
    move-object/from16 v0, p9

    #@3b
    invoke-direct {p0, p1, v8, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->validateQuerySql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/CancellationSignal;)V

    #@3e
    .end local v8    # "sqlForValidation":Ljava/lang/String;
    :cond_1
    move-object v1, p0

    #@3f
    move-object v2, p2

    #@40
    move-object v3, p3

    #@41
    move-object v4, p5

    #@42
    move-object v5, p6

    #@43
    move-object/from16 v6, p7

    #@45
    move-object/from16 v7, p8

    #@47
    .line 393
    invoke-virtual/range {v1 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    .line 397
    .local v3, "sql":Ljava/lang/String;
    const-string/jumbo v1, "SQLiteQueryBuilder"

    #@4e
    const/4 v2, 0x3

    #@4f
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@52
    move-result v1

    #@53
    if-eqz v1, :cond_2

    #@55
    .line 398
    const-string/jumbo v1, "SQLiteQueryBuilder"

    #@58
    new-instance v2, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v4, "Performing query: "

    #@60
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6f
    .line 401
    :cond_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    #@71
    .line 402
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    #@73
    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    move-object v1, p1

    #@78
    move-object v4, p4

    #@79
    move-object/from16 v6, p9

    #@7b
    .line 400
    invoke-virtual/range {v1 .. v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@7e
    move-result-object v1

    #@7f
    return-object v1
.end method

.method public setCursorFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 0
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    #@0
    .prologue
    .line 147
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    #@2
    .line 146
    return-void
.end method

.method public setDistinct(Z)V
    .locals 0
    .param p1, "distinct"    # Z

    #@0
    .prologue
    .line 61
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    #@2
    .line 60
    return-void
.end method

.method public setProjectionMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 136
    .local p1, "columnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    #@2
    .line 135
    return-void
.end method

.method public setStrict(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 172
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrict:Z

    #@2
    .line 171
    return-void
.end method

.method public setTables(Ljava/lang/String;)V
    .locals 0
    .param p1, "inTables"    # Ljava/lang/String;

    #@0
    .prologue
    .line 82
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    #@2
    .line 81
    return-void
.end method
