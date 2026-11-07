.class public Landroid/database/sqlite/SQLiteQueryBuilder;
.super Ljava/lang/Object;
.source "SQLiteQueryBuilder.java"


# static fields
.field private static final blacklist STRICT_COLUMNS:I = 0x2

.field private static final blacklist STRICT_GRAMMAR:I = 0x4

.field private static final blacklist STRICT_PARENTHESES:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SQLiteQueryBuilder"

.field private static final blacklist sAggregationPattern:Ljava/util/regex/Pattern;


# instance fields
.field private greylist-max-p mDistinct:Z

.field private greylist-max-o mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private blacklist mProjectionGreylist:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStrictFlags:I

.field private greylist-max-p mTables:Ljava/lang/String;

.field private greylist-max-p mWhereClause:Ljava/lang/StringBuilder;


# direct methods
.method public static synthetic blacklist $r8$lambda$EEbhqTppbnvZCUlI6Z8L2GjkKmg(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictToken(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    const-string v0, "(?i)(AVG|COUNT|MAX|MIN|SUM|TOTAL|GROUP_CONCAT)\\((.+)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteQueryBuilder;->sAggregationPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    .line 68
    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionGreylist:Ljava/util/Collection;

    .line 70
    const-string v1, ""

    iput-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    .line 86
    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 87
    return-void
.end method

.method private static greylist-max-o appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "s"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clause"    # Ljava/lang/String;

    .line 413
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 414
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_c
    return-void
.end method

.method public static whitelist appendColumns(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 6
    .param p0, "s"    # Ljava/lang/StringBuilder;
    .param p1, "columns"    # [Ljava/lang/String;

    .line 424
    array-length v0, p1

    .line 426
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_15

    .line 427
    aget-object v2, p1, v1

    .line 429
    .local v2, "column":Ljava/lang/String;
    if-eqz v2, :cond_12

    .line 430
    if-lez v1, :cond_f

    .line 431
    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_f
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .end local v2    # "column":Ljava/lang/String;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 436
    .end local v1    # "i":I
    :cond_15
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    return-void
.end method

.method public static whitelist buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "distinct"    # Z
    .param p1, "tables"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .param p7, "limit"    # Ljava/lang/String;

    .line 385
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 386
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HAVING clauses are only permitted when using a groupBy clause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_15
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 392
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    if-eqz p0, :cond_28

    .line 394
    const-string v1, "DISTINCT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_28
    if-eqz p2, :cond_31

    array-length v1, p2

    if-eqz v1, :cond_31

    .line 397
    invoke-static {v0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendColumns(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    goto :goto_36

    .line 399
    :cond_31
    const-string v1, "* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :goto_36
    const-string v1, "FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v1, " WHERE "

    invoke-static {v0, v1, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v1, " GROUP BY "

    invoke-static {v0, v1, p4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v1, " HAVING "

    invoke-static {v0, v1, p5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v1, " ORDER BY "

    invoke-static {v0, v1, p6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v1, " LIMIT "

    invoke-static {v0, v1, p7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist computeSingleProjection(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "userColumn"    # Ljava/lang/String;

    .line 1128
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 1129
    return-object p1

    .line 1132
    :cond_5
    const/4 v0, 0x0

    .line 1133
    .local v0, "operator":Ljava/lang/String;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1136
    .local v1, "column":Ljava/lang/String;
    if-nez v1, :cond_2f

    .line 1137
    sget-object v2, Landroid/database/sqlite/SQLiteQueryBuilder;->sAggregationPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1138
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1139
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1140
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 1141
    iget-object v3, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    .line 1145
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_2f
    if-eqz v1, :cond_36

    .line 1146
    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->maybeWithOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1149
    :cond_36
    iget v2, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    if-nez v2, :cond_4f

    .line 1150
    const-string v2, " AS "

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4a

    const-string v2, " as "

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1152
    :cond_4a
    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->maybeWithOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1157
    :cond_4f
    iget-object v2, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionGreylist:Ljava/util/Collection;

    if-eqz v2, :cond_92

    .line 1158
    const/4 v2, 0x0

    .line 1159
    .local v2, "match":Z
    iget-object v3, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionGreylist:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/regex/Pattern;

    .line 1160
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 1161
    const/4 v2, 0x1

    .line 1162
    goto :goto_73

    .line 1164
    .end local v4    # "p":Ljava/util/regex/Pattern;
    :cond_72
    goto :goto_5a

    .line 1166
    :cond_73
    :goto_73
    if-eqz v2, :cond_92

    .line 1167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allowing abusive custom column: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SQLiteQueryBuilder"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->maybeWithOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1172
    .end local v2    # "match":Z
    :cond_92
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist computeSingleProjectionOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "userColumn"    # Ljava/lang/String;

    .line 1118
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeSingleProjection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1119
    .local v0, "column":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 1120
    return-object v0

    .line 1122
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist enforceStrictColumns(Landroid/content/ContentValues;)V
    .registers 8
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 784
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    const-string v1, "No projection map defined"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 786
    invoke-virtual {p1}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v0

    .line 787
    .local v0, "rawValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 788
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 789
    .local v2, "column":Ljava/lang/String;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 787
    .end local v2    # "column":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 790
    .restart local v2    # "column":Ljava/lang/String;
    :cond_23
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 793
    .end local v1    # "i":I
    .end local v2    # "column":Ljava/lang/String;
    :cond_3c
    return-void
.end method

.method private blacklist enforceStrictColumns([Ljava/lang/String;)V
    .registers 4
    .param p1, "projection"    # [Ljava/lang/String;

    .line 778
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    const-string v1, "No projection map defined"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 780
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeProjection([Ljava/lang/String;)[Ljava/lang/String;

    .line 781
    return-void
.end method

.method private blacklist enforceStrictGrammar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "groupBy"    # Ljava/lang/String;
    .param p3, "having"    # Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .param p5, "limit"    # Ljava/lang/String;

    .line 797
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;-><init>(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 799
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;-><init>(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    invoke-static {p2, v1, v0}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 801
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;-><init>(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    invoke-static {p3, v1, v0}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 803
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;-><init>(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    invoke-static {p4, v1, v0}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 805
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;-><init>(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    invoke-static {p5, v1, v0}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 807
    return-void
.end method

.method private blacklist enforceStrictToken(Ljava/lang/String;)V
    .registers 6
    .param p1, "token"    # Ljava/lang/String;

    .line 810
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 811
    :cond_7
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->isTableOrColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 812
    :cond_e
    invoke-static {p1}, Landroid/database/sqlite/SQLiteTokenizer;->isFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 813
    :cond_15
    invoke-static {p1}, Landroid/database/sqlite/SQLiteTokenizer;->isType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    .line 818
    :cond_1c
    invoke-static {p1}, Landroid/database/sqlite/SQLiteTokenizer;->isKeyword(Ljava/lang/String;)Z

    move-result v0

    .line 819
    .local v0, "isAllowedKeyword":Z
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_ac

    :cond_2d
    goto :goto_89

    :sswitch_2e
    const-string v2, "HAVING"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x4

    goto :goto_8a

    :sswitch_38
    const-string v2, "WHERE"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x2

    goto :goto_8a

    :sswitch_42
    const-string v2, "ORDER"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x7

    goto :goto_8a

    :sswitch_4c
    const-string v2, "LIMIT"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/16 v1, 0x8

    goto :goto_8a

    :sswitch_57
    const-string v2, "GROUP"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x3

    goto :goto_8a

    :sswitch_61
    const-string v2, "FROM"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_8a

    :sswitch_6b
    const-string v2, "WINDOW"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x5

    goto :goto_8a

    :sswitch_75
    const-string v2, "VALUES"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x6

    goto :goto_8a

    :sswitch_7f
    const-string v2, "SELECT"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x0

    goto :goto_8a

    :goto_89
    const/4 v1, -0x1

    :goto_8a
    packed-switch v1, :pswitch_data_d2

    goto :goto_8f

    .line 829
    :pswitch_8e
    const/4 v0, 0x0

    .line 832
    :goto_8f
    if-eqz v0, :cond_92

    .line 835
    return-void

    .line 833
    :cond_92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_ac
    .sparse-switch
        -0x6e6dd704 -> :sswitch_7f
        -0x69876ede -> :sswitch_75
        -0x67613010 -> :sswitch_6b
        0x210faa -> :sswitch_61
        0x40efe5f -> :sswitch_57
        0x451539b -> :sswitch_4c
        0x47f8f2e -> :sswitch_42
        0x4ebc4c7 -> :sswitch_38
        0x7e991825 -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
    .end packed-switch
.end method

.method private blacklist isTableOrColumn(Ljava/lang/String;)Z
    .registers 4
    .param p1, "token"    # Ljava/lang/String;

    .line 1176
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 1177
    :cond_a
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeSingleProjection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method private static blacklist maybeWithOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "column"    # Ljava/lang/String;

    .line 1080
    if-eqz p0, :cond_20

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1083
    :cond_20
    return-object p1
.end method

.method private blacklist wrap(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "arg"    # Ljava/lang/String;

    .line 1207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1208
    return-object p1

    .line 1210
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist appendWhere(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "inWhere"    # Ljava/lang/CharSequence;

    .line 137
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    if-nez v0, :cond_11

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    .line 140
    :cond_11
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 141
    return-void
.end method

.method public whitelist appendWhereEscapeString(Ljava/lang/String;)V
    .registers 4
    .param p1, "inWhere"    # Ljava/lang/String;

    .line 154
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    if-nez v0, :cond_11

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    .line 157
    :cond_11
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public whitelist appendWhereStandalone(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "inWhere"    # Ljava/lang/CharSequence;

    .line 172
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    if-nez v0, :cond_11

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    .line 175
    :cond_11
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_20

    .line 176
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_20
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    return-void
.end method

.method public blacklist buildDelete(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "selection"    # Ljava/lang/String;

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 946
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 950
    .local v1, "where":Ljava/lang/String;
    const-string v2, " WHERE "

    invoke-static {v0, v2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist buildInsert(Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 891
    if-eqz p1, :cond_63

    invoke-virtual {p1}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_63

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 896
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string v1, "INSERT INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {p1}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v1

    .line 901
    .local v1, "rawValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v4, 0x2c

    if-ge v2, v3, :cond_40

    .line 902
    if-lez v2, :cond_34

    .line 903
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 905
    :cond_34
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 907
    .end local v2    # "i":I
    :cond_40
    const-string v2, ") VALUES ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_46
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_59

    .line 909
    if-lez v2, :cond_51

    .line 910
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 912
    :cond_51
    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 908
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 914
    .end local v2    # "i":I
    :cond_59
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 892
    .end local v0    # "sql":Ljava/lang/StringBuilder;
    .end local v1    # "rawValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "projectionIn"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "groupBy"    # Ljava/lang/String;
    .param p4, "having"    # Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "limit"    # Ljava/lang/String;

    .line 868
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 869
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 871
    .local v3, "where":Ljava/lang/String;
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p3    # "groupBy":Ljava/lang/String;
    .end local p4    # "having":Ljava/lang/String;
    .end local p5    # "sortOrder":Ljava/lang/String;
    .end local p6    # "limit":Ljava/lang/String;
    .local v4, "groupBy":Ljava/lang/String;
    .local v5, "having":Ljava/lang/String;
    .local v6, "sortOrder":Ljava/lang/String;
    .local v7, "limit":Ljava/lang/String;
    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    return-object p3
.end method

.method public whitelist buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "projectionIn"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "limit"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 886
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "projectionIn":[Ljava/lang/String;
    .end local p2    # "selection":Ljava/lang/String;
    .end local p4    # "groupBy":Ljava/lang/String;
    .end local p5    # "having":Ljava/lang/String;
    .end local p6    # "sortOrder":Ljava/lang/String;
    .end local p7    # "limit":Ljava/lang/String;
    .local v1, "projectionIn":[Ljava/lang/String;
    .local v2, "selection":Ljava/lang/String;
    .local v3, "groupBy":Ljava/lang/String;
    .local v4, "having":Ljava/lang/String;
    .local v5, "sortOrder":Ljava/lang/String;
    .local v6, "limit":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "subQueries"    # [Ljava/lang/String;
    .param p2, "sortOrder"    # Ljava/lang/String;
    .param p3, "limit"    # Ljava/lang/String;

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1064
    .local v0, "query":Ljava/lang/StringBuilder;
    array-length v1, p1

    .line 1065
    .local v1, "subQueryCount":I
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    if-eqz v2, :cond_f

    const-string v2, " UNION "

    goto :goto_11

    :cond_f
    const-string v2, " UNION ALL "

    .line 1067
    .local v2, "unionOperator":Ljava/lang/String;
    :goto_11
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v1, :cond_21

    .line 1068
    if-lez v3, :cond_19

    .line 1069
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    :cond_19
    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1073
    .end local v3    # "i":I
    :cond_21
    const-string v3, " ORDER BY "

    invoke-static {v0, v3, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string v3, " LIMIT "

    invoke-static {v0, v3, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 17
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
            "Ljava/util/Set<",
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

    .line 1002
    .local p3, "columnsPresentInTable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v0, p2

    .line 1003
    .local v0, "unionColumnsCount":I
    new-array v2, v0, [Ljava/lang/String;

    .line 1005
    .local v2, "projectionIn":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_52

    .line 1006
    aget-object v3, p2, v1

    .line 1008
    .local v3, "unionColumn":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1009
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    goto :goto_4f

    .line 1011
    :cond_2e
    if-le v1, p4, :cond_4d

    .line 1012
    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_4d

    .line 1015
    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NULL AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    goto :goto_4f

    .line 1013
    :cond_4d
    :goto_4d
    aput-object v3, v2, v1

    .line 1005
    .end local v3    # "unionColumn":Ljava/lang/String;
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1018
    .end local v1    # "i":I
    :cond_52
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p6

    move-object v4, p7

    move-object/from16 v5, p8

    invoke-virtual/range {v1 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public whitelist buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 20
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
            "Ljava/util/Set<",
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

    .line 1042
    .local p3, "columnsPresentInTable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public blacklist buildUpdate(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;

    .line 920
    if-eqz p1, :cond_53

    invoke-virtual {p1}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_53

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 925
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    const-string v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {p1}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v1

    .line 930
    .local v1, "rawValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 931
    if-lez v2, :cond_34

    .line 932
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 934
    :cond_34
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 938
    .end local v2    # "i":I
    :cond_45
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 939
    .local v2, "where":Ljava/lang/String;
    const-string v3, " WHERE "

    invoke-static {v0, v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 921
    .end local v0    # "sql":Ljava/lang/StringBuilder;
    .end local v1    # "rawValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "where":Ljava/lang/String;
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-p computeProjection([Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p1, "projectionIn"    # [Ljava/lang/String;

    .line 1090
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1091
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 1092
    .local v0, "projectionOut":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_18

    .line 1093
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeSingleProjectionOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1092
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1095
    .end local v1    # "i":I
    :cond_18
    return-object v0

    .line 1096
    .end local v0    # "projectionOut":[Ljava/lang/String;
    :cond_19
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    if-eqz v0, :cond_56

    .line 1098
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1099
    .local v0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1100
    .local v1, "projection":[Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1101
    .local v2, "entryIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 1103
    .local v3, "i":I
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 1104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1107
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "_count"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 1108
    goto :goto_2e

    .line 1110
    :cond_49
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v1, v3

    .line 1111
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move v3, v5

    goto :goto_2e

    .line 1112
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :cond_55
    return-object v1

    .line 1114
    .end local v0    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "projection":[Ljava/lang/String;
    .end local v2    # "entryIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "i":I
    :cond_56
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist computeWhere(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "selection"    # Ljava/lang/String;

    .line 1182
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1183
    .local v0, "hasInternal":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1185
    .local v1, "hasExternal":Z
    if-nez v0, :cond_15

    if-eqz v1, :cond_13

    goto :goto_15

    .line 1198
    :cond_13
    const/4 v2, 0x0

    return-object v2

    .line 1186
    :cond_15
    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1187
    .local v2, "where":Ljava/lang/StringBuilder;
    const/16 v3, 0x29

    const/16 v4, 0x28

    if-eqz v0, :cond_2d

    .line 1188
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1190
    :cond_2d
    if-eqz v0, :cond_36

    if-eqz v1, :cond_36

    .line 1191
    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    :cond_36
    if-eqz v1, :cond_43

    .line 1194
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1196
    :cond_43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 733
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    const-string v1, "No tables defined"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 734
    const-string v0, "No database defined"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 737
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildDelete(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, "unwrappedSql":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrictGrammar()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 740
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p2

    .end local p2    # "selection":Ljava/lang/String;
    .local v3, "selection":Ljava/lang/String;
    invoke-direct/range {v2 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictGrammar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 739
    .end local v3    # "selection":Ljava/lang/String;
    .restart local p2    # "selection":Ljava/lang/String;
    :cond_20
    move-object v2, p0

    move-object v3, p2

    .line 742
    .end local p2    # "selection":Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    :goto_22
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrict()Z

    move-result p2

    if-eqz p2, :cond_36

    .line 756
    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->validateSql(Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .line 759
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildDelete(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 760
    .local p2, "wrappedSql":Ljava/lang/String;
    nop

    .line 761
    .local p2, "sql":Ljava/lang/String;
    goto :goto_37

    .line 763
    .end local p2    # "sql":Ljava/lang/String;
    :cond_36
    move-object p2, v0

    .line 766
    .restart local p2    # "sql":Ljava/lang/String;
    :goto_37
    move-object v1, p3

    .line 767
    .local v1, "sqlArgs":[Ljava/lang/String;
    const/4 v4, 0x3

    const-string v5, "SQLiteQueryBuilder"

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 768
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_64

    .line 769
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " with args "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 771
    :cond_64
    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_67
    :goto_67
    invoke-static {p1, p2, v1}, Landroid/database/DatabaseUtils;->executeUpdateDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v4

    return v4
.end method

.method public whitelist getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .registers 2

    .line 248
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object v0
.end method

.method public whitelist getProjectionGreylist()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionGreylist:Ljava/util/Collection;

    return-object v0
.end method

.method public whitelist getProjectionMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getTables()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .registers 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 615
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    const-string v1, "No tables defined"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 616
    const-string v0, "No database defined"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 617
    const-string v0, "No values defined"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 619
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrictColumns()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 620
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictColumns(Landroid/content/ContentValues;)V

    .line 623
    :cond_1a
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildInsert(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v1

    .line 626
    .local v1, "rawValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 627
    .local v2, "valuesLength":I
    new-array v3, v2, [Ljava/lang/Object;

    .line 628
    .local v3, "sqlArgs":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_29
    array-length v5, v3

    if-ge v4, v5, :cond_35

    .line 629
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 628
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 631
    .end local v4    # "i":I
    :cond_35
    const/4 v4, 0x3

    const-string v5, "SQLiteQueryBuilder"

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 632
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_61

    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " with args "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 635
    :cond_61
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_64
    :goto_64
    invoke-static {p1, v0, v3}, Landroid/database/DatabaseUtils;->executeInsert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)J

    move-result-wide v4

    return-wide v4
.end method

.method public whitelist isDistinct()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    return v0
.end method

.method public blacklist isProjectionAggregationAllowed()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isStrict()Z
    .registers 3

    .line 287
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist isStrictColumns()Z
    .registers 2

    .line 314
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isStrictGrammar()Z
    .registers 2

    .line 353
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;

    .line 472
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    return-object v8
.end method

.method public whitelist query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 19
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;

    .line 511
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    return-object v9
.end method

.method public whitelist query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 26
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;
    .param p9, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 553
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 554
    const/4 v1, 0x0

    return-object v1

    .line 558
    :cond_8
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 562
    .local v7, "unwrappedSql":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrictColumns()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 563
    move-object/from16 v6, p2

    invoke-direct {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictColumns([Ljava/lang/String;)V

    goto :goto_26

    .line 562
    :cond_24
    move-object/from16 v6, p2

    .line 565
    :goto_26
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrictGrammar()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 566
    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictGrammar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_39
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrict()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 582
    move-object/from16 v8, p1

    move-object/from16 v13, p9

    invoke-virtual {v8, v7, v13}, Landroid/database/sqlite/SQLiteDatabase;->validateSql(Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .line 585
    move-object/from16 v14, p3

    invoke-direct {v0, v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 586
    move-object/from16 v15, p6

    invoke-direct {v0, v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 585
    move-object/from16 v3, p5

    move-object/from16 v5, p7

    move-object v1, v6

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, "wrappedSql":Ljava/lang/String;
    nop

    .line 588
    .local v2, "sql":Ljava/lang/String;
    move-object v10, v2

    goto :goto_6a

    .line 590
    .end local v2    # "sql":Ljava/lang/String;
    :cond_60
    move-object/from16 v8, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p6

    move-object/from16 v13, p9

    move-object v2, v7

    move-object v10, v2

    .line 593
    .local v10, "sql":Ljava/lang/String;
    :goto_6a
    move-object/from16 v11, p4

    .line 594
    .local v11, "sqlArgs":[Ljava/lang/String;
    const/4 v1, 0x3

    const-string v2, "SQLiteQueryBuilder"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 595
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_98

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with args "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 598
    :cond_98
    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_9b
    :goto_9b
    iget-object v9, v0, Landroid/database/sqlite/SQLiteQueryBuilder;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v1, v0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    .line 603
    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 601
    invoke-virtual/range {v8 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public whitelist setCursorFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .registers 2
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 240
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 241
    return-void
.end method

.method public whitelist setDistinct(Z)V
    .registers 2
    .param p1, "distinct"    # Z

    .line 95
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    .line 96
    return-void
.end method

.method public blacklist setProjectionAggregationAllowed(Z)V
    .registers 2
    .param p1, "projectionAggregationAllowed"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    return-void
.end method

.method public whitelist setProjectionGreylist(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p1, "projectionGreylist":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/regex/Pattern;>;"
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionGreylist:Ljava/util/Collection;

    .line 211
    return-void
.end method

.method public whitelist setProjectionMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p1, "columnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    .line 194
    return-void
.end method

.method public whitelist setStrict(Z)V
    .registers 3
    .param p1, "strict"    # Z

    .line 275
    if-eqz p1, :cond_9

    .line 276
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    goto :goto_f

    .line 278
    :cond_9
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    .line 280
    :goto_f
    return-void
.end method

.method public whitelist setStrictColumns(Z)V
    .registers 3
    .param p1, "strictColumns"    # Z

    .line 302
    if-eqz p1, :cond_9

    .line 303
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    goto :goto_f

    .line 305
    :cond_9
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    .line 307
    :goto_f
    return-void
.end method

.method public whitelist setStrictGrammar(Z)V
    .registers 3
    .param p1, "strictGrammar"    # Z

    .line 341
    if-eqz p1, :cond_9

    .line 342
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    goto :goto_f

    .line 344
    :cond_9
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    .line 346
    :goto_f
    return-void
.end method

.method public whitelist setTables(Ljava/lang/String;)V
    .registers 2
    .param p1, "inTables"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public whitelist update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 657
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    const-string v1, "No tables defined"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 658
    const-string v0, "No database defined"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 659
    const-string v0, "No values defined"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 662
    invoke-virtual {p0, p2, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUpdate(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "unwrappedSql":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrictColumns()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 665
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictColumns(Landroid/content/ContentValues;)V

    .line 667
    :cond_1e
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrictGrammar()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 668
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p3

    .end local p3    # "selection":Ljava/lang/String;
    .local v3, "selection":Ljava/lang/String;
    invoke-direct/range {v2 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictGrammar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 667
    .end local v3    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :cond_2e
    move-object v2, p0

    move-object v3, p3

    .line 670
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    :goto_30
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrict()Z

    move-result p3

    if-eqz p3, :cond_44

    .line 684
    const/4 p3, 0x0

    invoke-virtual {p1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->validateSql(Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .line 687
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUpdate(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 688
    .local p3, "wrappedSql":Ljava/lang/String;
    nop

    .line 689
    .local p3, "sql":Ljava/lang/String;
    goto :goto_45

    .line 691
    .end local p3    # "sql":Ljava/lang/String;
    :cond_44
    move-object p3, v0

    .line 694
    .restart local p3    # "sql":Ljava/lang/String;
    :goto_45
    if-nez p4, :cond_49

    .line 695
    sget-object p4, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 697
    :cond_49
    invoke-virtual {p2}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v1

    .line 698
    .local v1, "rawValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 699
    .local v4, "valuesLength":I
    array-length v5, p4

    add-int/2addr v5, v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 700
    .local v5, "sqlArgs":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_56
    array-length v7, v5

    if-ge v6, v7, :cond_6b

    .line 701
    if-ge v6, v4, :cond_62

    .line 702
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    goto :goto_68

    .line 704
    :cond_62
    sub-int v7, v6, v4

    aget-object v7, p4, v7

    aput-object v7, v5, v6

    .line 700
    :goto_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    .line 707
    .end local v6    # "i":I
    :cond_6b
    const/4 v6, 0x3

    const-string v7, "SQLiteQueryBuilder"

    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 708
    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v6, :cond_97

    .line 709
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " with args "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    .line 711
    :cond_97
    invoke-static {v7, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_9a
    :goto_9a
    invoke-static {p1, p3, v5}, Landroid/database/DatabaseUtils;->executeUpdateDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v6

    return v6
.end method
