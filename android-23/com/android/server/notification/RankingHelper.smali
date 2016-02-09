.class public Lcom/android/server/notification/RankingHelper;
.super Ljava/lang/Object;
.source "RankingHelper.java"

# interfaces
.implements Lcom/android/server/notification/RankingConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/RankingHelper$Record;
    }
.end annotation


# static fields
.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static final ATT_PEEKABLE:Ljava/lang/String; = "peekable"

.field private static final ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATT_UID:Ljava/lang/String; = "uid"

.field private static final ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final DEFAULT_PEEKABLE:Z = true

.field private static final DEFAULT_PRIORITY:I = 0x0

.field private static final DEFAULT_VISIBILITY:I = -0x3e8

.field private static final TAG:Ljava/lang/String; = "RankingHelper"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_RANKING:Ljava/lang/String; = "ranking"

.field private static final XML_VERSION:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

.field private final mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

.field private final mProxyByGroupTmp:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRankingHandler:Landroid/os/Handler;

.field private final mRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredWithoutUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rankingHandler"    # Landroid/os/Handler;
    .param p3, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;
    .param p4, "extractorNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    new-instance v7, Lcom/android/server/notification/NotificationComparator;

    #@5
    invoke-direct {v7}, Lcom/android/server/notification/NotificationComparator;-><init>()V

    #@8
    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    #@a
    .line 62
    new-instance v7, Lcom/android/server/notification/GlobalSortKeyComparator;

    #@c
    invoke-direct {v7}, Lcom/android/server/notification/GlobalSortKeyComparator;-><init>()V

    #@f
    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    #@11
    .line 64
    new-instance v7, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    #@16
    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@18
    .line 65
    new-instance v7, Landroid/util/ArrayMap;

    #@1a
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    #@1d
    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    #@1f
    .line 66
    new-instance v7, Landroid/util/ArrayMap;

    #@21
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    #@24
    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    #@26
    .line 73
    iput-object p1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    #@28
    .line 74
    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Landroid/os/Handler;

    #@2a
    .line 76
    array-length v0, p4

    #@2b
    .line 77
    .local v0, "N":I
    new-array v7, v0, [Lcom/android/server/notification/NotificationSignalExtractor;

    #@2d
    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@2f
    .line 78
    const/4 v6, 0x0

    #@30
    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_0

    #@32
    .line 80
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    #@34
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@37
    move-result-object v7

    #@38
    aget-object v8, p4, v6

    #@3a
    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@3d
    move-result-object v5

    #@3e
    .line 82
    .local v5, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@41
    move-result-object v4

    #@42
    check-cast v4, Lcom/android/server/notification/NotificationSignalExtractor;

    #@44
    .line 83
    .local v4, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    #@46
    invoke-interface {v4, v7, p3}, Lcom/android/server/notification/NotificationSignalExtractor;->initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V

    #@49
    .line 84
    invoke-interface {v4, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    #@4c
    .line 85
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@4e
    aput-object v4, v7, v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 78
    .end local v4    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v5    # "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@52
    goto :goto_0

    #@53
    .line 90
    :catch_0
    move-exception v2

    #@54
    .line 91
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v7, "RankingHelper"

    #@57
    new-instance v8, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v9, "Problem accessing extractor "

    #@5f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v8

    #@63
    aget-object v9, p4, v6

    #@65
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v8

    #@69
    const-string/jumbo v9, "."

    #@6c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v8

    #@70
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v8

    #@74
    invoke-static {v7, v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@77
    goto :goto_1

    #@78
    .line 88
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    #@79
    .line 89
    .local v3, "e":Ljava/lang/InstantiationException;
    const-string/jumbo v7, "RankingHelper"

    #@7c
    new-instance v8, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v9, "Couldn\'t instantiate extractor "

    #@84
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v8

    #@88
    aget-object v9, p4, v6

    #@8a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v8

    #@8e
    const-string/jumbo v9, "."

    #@91
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v8

    #@95
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v8

    #@99
    invoke-static {v7, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9c
    goto :goto_1

    #@9d
    .line 86
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    #@9e
    .line 87
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v7, "RankingHelper"

    #@a1
    new-instance v8, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v9, "Couldn\'t find extractor "

    #@a9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v8

    #@ad
    aget-object v9, p4, v6

    #@af
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v8

    #@b3
    const-string/jumbo v9, "."

    #@b6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v8

    #@ba
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v8

    #@be
    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c1
    goto :goto_1

    #@c2
    .line 72
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    return-void
.end method

.method private static dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 402
    .local p3, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/RankingHelper$Record;>;"
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    #@3
    move-result v0

    #@4
    .line 403
    .local v0, "N":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    #@7
    .line 404
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    #@d
    .line 405
    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p2, :cond_0

    #@f
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    #@11
    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_4

    #@17
    .line 406
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    .line 407
    const-string/jumbo v3, "  "

    #@1d
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 408
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    #@22
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    .line 409
    const-string/jumbo v3, " ("

    #@28
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    .line 410
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    #@2d
    sget v4, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    #@2f
    if-ne v3, v4, :cond_5

    #@31
    const-string/jumbo v3, "UNKNOWN_UID"

    #@34
    :goto_1
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37
    .line 411
    const/16 v3, 0x29

    #@39
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    #@3c
    .line 412
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@3e
    if-eqz v3, :cond_1

    #@40
    .line 413
    const-string/jumbo v3, " priority="

    #@43
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    .line 414
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@48
    invoke-static {v3}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f
    .line 416
    :cond_1
    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    #@51
    if-nez v3, :cond_2

    #@53
    .line 417
    const-string/jumbo v3, " peekable="

    #@56
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59
    .line 418
    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    #@5b
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@5e
    .line 420
    :cond_2
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@60
    const/16 v4, -0x3e8

    #@62
    if-eq v3, v4, :cond_3

    #@64
    .line 421
    const-string/jumbo v3, " visibility="

    #@67
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6a
    .line 422
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@6c
    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@73
    .line 424
    :cond_3
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@76
    .line 403
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@78
    goto :goto_0

    #@79
    .line 410
    :cond_5
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    #@7b
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    goto :goto_1

    #@80
    .line 401
    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_6
    return-void
.end method

.method private getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 187
    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 188
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lcom/android/server/notification/RankingHelper$Record;

    #@d
    .line 189
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v1, :cond_0

    #@f
    .line 190
    new-instance v1, Lcom/android/server/notification/RankingHelper$Record;

    #@11
    .end local v1    # "r":Lcom/android/server/notification/RankingHelper$Record;
    invoke-direct {v1, v3}, Lcom/android/server/notification/RankingHelper$Record;-><init>(Lcom/android/server/notification/RankingHelper$Record;)V

    #@14
    .line 191
    .restart local v1    # "r":Lcom/android/server/notification/RankingHelper$Record;
    iput-object p1, v1, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    #@16
    .line 192
    iput p2, v1, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    #@18
    .line 193
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@1a
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 195
    :cond_0
    return-object v1
.end method

.method private static recordKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "|"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method private removeDefaultRecords()V
    .locals 5

    #@0
    .prologue
    .line 199
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v0

    #@6
    .line 200
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 201
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    #@12
    .line 202
    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@14
    if-nez v3, :cond_0

    #@16
    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 203
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@1c
    const/16 v4, -0x3e8

    #@1e
    if-ne v3, v4, :cond_0

    #@20
    .line 204
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 200
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 198
    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_1
    return-void
.end method

.method private static safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    #@0
    .prologue
    .line 323
    const/4 v1, 0x0

    #@1
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 324
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/server/notification/RankingHelper;->tryParseBool(Ljava/lang/String;Z)Z

    #@8
    move-result v1

    #@9
    return v1
.end method

.method private static safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    #@0
    .prologue
    .line 309
    const/4 v1, 0x0

    #@1
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 310
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/server/notification/RankingHelper;->tryParseInt(Ljava/lang/String;I)I

    #@8
    move-result v1

    #@9
    return v1
.end method

.method private static tryParseBool(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    #@0
    .prologue
    .line 328
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    return p1

    #@7
    .line 329
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method private static tryParseInt(Ljava/lang/String;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    #@0
    .prologue
    .line 314
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    return p1

    #@7
    .line 316
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 317
    :catch_0
    move-exception v0

    #@11
    .line 318
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method private updateConfig()V
    .locals 4

    #@0
    .prologue
    .line 239
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@2
    array-length v0, v2

    #@3
    .line 240
    .local v0, "N":I
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@6
    .line 241
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@8
    aget-object v2, v2, v1

    #@a
    invoke-interface {v2, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    #@d
    .line 240
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 243
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Landroid/os/Handler;

    #@12
    const/4 v3, 0x5

    #@13
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@16
    .line 238
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 381
    if-nez p3, :cond_0

    #@2
    .line 382
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@4
    array-length v0, v2

    #@5
    .line 383
    .local v0, "N":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    .line 384
    const-string/jumbo v2, "mSignalExtractors.length = "

    #@b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    .line 385
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@11
    .line 386
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@14
    .line 387
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    .line 388
    const-string/jumbo v2, "  "

    #@1a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    .line 389
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@1f
    aget-object v2, v2, v1

    #@21
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@24
    .line 386
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 392
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    if-nez p3, :cond_1

    #@29
    .line 393
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    .line 394
    const-string/jumbo v2, "per-package config:"

    #@2f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@32
    .line 396
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@34
    invoke-static {p1, p2, p3, v2}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    #@37
    .line 397
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    #@39
    invoke-static {p1, p2, p3, v2}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    #@3c
    .line 380
    return-void
.end method

.method public extractSignals(Lcom/android/server/notification/NotificationRecord;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 109
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@2
    array-length v0, v8

    #@3
    .line 110
    .local v0, "N":I
    const/4 v4, 0x0

    #@4
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@6
    .line 111
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@8
    aget-object v1, v8, v4

    #@a
    .line 113
    .local v1, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/server/notification/NotificationSignalExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    #@d
    move-result-object v6

    #@e
    .line 114
    .local v6, "recon":Lcom/android/server/notification/RankingReconsideration;
    if-eqz v6, :cond_0

    #@10
    .line 115
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Landroid/os/Handler;

    #@12
    .line 116
    const/4 v9, 0x4

    #@13
    .line 115
    invoke-static {v8, v9, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@16
    move-result-object v5

    #@17
    .line 117
    .local v5, "m":Landroid/os/Message;
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@19
    invoke-virtual {v6, v8}, Lcom/android/server/notification/RankingReconsideration;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    #@1c
    move-result-wide v2

    #@1d
    .line 118
    .local v2, "delay":J
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Landroid/os/Handler;

    #@1f
    invoke-virtual {v8, v5, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 110
    .end local v2    # "delay":J
    .end local v5    # "m":Landroid/os/Message;
    .end local v6    # "recon":Lcom/android/server/notification/RankingReconsideration;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@24
    goto :goto_0

    #@25
    .line 120
    :catch_0
    move-exception v7

    #@26
    .line 121
    .local v7, "t":Ljava/lang/Throwable;
    const-string/jumbo v8, "RankingHelper"

    #@29
    const-string/jumbo v9, "NotificationSignalExtractor failed."

    #@2c
    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    goto :goto_1

    #@30
    .line 108
    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/notification/NotificationSignalExtractor;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 98
    .local p1, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@2
    array-length v0, v3

    #@3
    .line 99
    .local v0, "N":I
    const/4 v2, 0x0

    #@4
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@6
    .line 100
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@8
    aget-object v1, v3, v2

    #@a
    .line 101
    .local v1, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {p1, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 102
    return-object v1

    #@15
    .line 99
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 105
    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :cond_1
    const/4 v3, 0x0

    #@19
    return-object v3
.end method

.method public getPackagePeekable(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 350
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@2
    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/notification/RankingHelper$Record;

    #@c
    .line 351
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_0

    #@e
    iget-boolean v1, v0, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    const/4 v1, 0x1

    #@12
    goto :goto_0
.end method

.method public getPackagePriority(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@2
    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/notification/RankingHelper$Record;

    #@c
    .line 335
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_0

    #@e
    iget v1, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    const/4 v1, 0x0

    #@12
    goto :goto_0
.end method

.method public getPackageVisibilityOverride(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@2
    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/notification/RankingHelper$Record;

    #@c
    .line 367
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_0

    #@e
    iget v1, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    const/16 v1, -0x3e8

    #@13
    goto :goto_0
.end method

.method public indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I
    .locals 1
    .param p2, "target"    # Lcom/android/server/notification/NotificationRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/NotificationRecord;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .line 305
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    #@2
    invoke-static {p1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;)V
    .locals 10
    .param p1, "queryReplace"    # Z
    .param p2, "pkgList"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 430
    if-nez p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 432
    :cond_0
    return-void

    #@6
    .line 430
    :cond_1
    array-length v6, p2

    #@7
    if-eqz v6, :cond_0

    #@9
    .line 431
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    #@e
    move-result v6

    #@f
    .line 430
    if-nez v6, :cond_0

    #@11
    .line 434
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v2

    #@17
    .line 435
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    #@18
    .line 436
    .local v4, "updated":Z
    array-length v6, p2

    #@19
    :goto_0
    if-ge v5, v6, :cond_3

    #@1b
    aget-object v1, p2, v5

    #@1d
    .line 437
    .local v1, "pkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    #@25
    .line 438
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v3, :cond_2

    #@27
    .line 440
    :try_start_0
    iget-object v7, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    #@29
    const/4 v8, 0x0

    #@2a
    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    #@2d
    move-result v7

    #@2e
    iput v7, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    #@30
    .line 441
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    #@32
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 442
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@37
    iget-object v8, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    #@39
    iget v9, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    #@3b
    invoke-static {v8, v9}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    #@3e
    move-result-object v8

    #@3f
    invoke-virtual {v7, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 443
    const/4 v4, 0x1

    #@43
    .line 436
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@45
    goto :goto_0

    #@46
    .line 449
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_3
    if-eqz v4, :cond_4

    #@48
    .line 450
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    #@4b
    .line 429
    :cond_4
    return-void

    #@4c
    .line 444
    .restart local v1    # "pkg":Ljava/lang/String;
    .restart local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :catch_0
    move-exception v0

    #@4d
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    iget-object v10, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v3

    #@6
    .line 129
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@9
    move-result v7

    #@a
    .line 130
    .local v7, "type":I
    const/4 v10, 0x2

    #@b
    if-eq v7, v10, :cond_0

    #@d
    return-void

    #@e
    .line 131
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    .line 132
    .local v6, "tag":Ljava/lang/String;
    const-string/jumbo v10, "ranking"

    #@15
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v10

    #@19
    if-nez v10, :cond_1

    #@1b
    return-void

    #@1c
    .line 133
    :cond_1
    iget-object v10, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@1e
    invoke-virtual {v10}, Landroid/util/ArrayMap;->clear()V

    #@21
    .line 134
    iget-object v10, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    #@23
    invoke-virtual {v10}, Landroid/util/ArrayMap;->clear()V

    #@26
    .line 135
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@29
    move-result v7

    #@2a
    const/4 v10, 0x1

    #@2b
    if-eq v7, v10, :cond_9

    #@2d
    .line 136
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    .line 137
    const/4 v10, 0x3

    #@32
    if-ne v7, v10, :cond_3

    #@34
    const-string/jumbo v10, "ranking"

    #@37
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v10

    #@3b
    if-eqz v10, :cond_3

    #@3d
    .line 138
    return-void

    #@3e
    .line 140
    :cond_3
    const/4 v10, 0x2

    #@3f
    if-ne v7, v10, :cond_2

    #@41
    .line 141
    const-string/jumbo v10, "package"

    #@44
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v10

    #@48
    if-eqz v10, :cond_2

    #@4a
    .line 142
    const-string/jumbo v10, "uid"

    #@4d
    sget v11, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    #@4f
    invoke-static {p1, v10, v11}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@52
    move-result v8

    #@53
    .line 143
    .local v8, "uid":I
    const-string/jumbo v10, "priority"

    #@56
    const/4 v11, 0x0

    #@57
    invoke-static {p1, v10, v11}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@5a
    move-result v4

    #@5b
    .line 144
    .local v4, "priority":I
    const-string/jumbo v10, "peekable"

    #@5e
    const/4 v11, 0x1

    #@5f
    invoke-static {p1, v10, v11}, Lcom/android/server/notification/RankingHelper;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@62
    move-result v2

    #@63
    .line 145
    .local v2, "peekable":Z
    const-string/jumbo v10, "visibility"

    #@66
    const/16 v11, -0x3e8

    #@68
    invoke-static {p1, v10, v11}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@6b
    move-result v9

    #@6c
    .line 146
    .local v9, "vis":I
    const-string/jumbo v10, "name"

    #@6f
    const/4 v11, 0x0

    #@70
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    .line 148
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@77
    move-result v10

    #@78
    if-nez v10, :cond_2

    #@7a
    .line 149
    if-eqz p2, :cond_4

    #@7c
    .line 151
    const/4 v10, 0x0

    #@7d
    :try_start_0
    invoke-virtual {v3, v1, v10}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@80
    move-result v8

    #@81
    .line 156
    :cond_4
    :goto_1
    const/4 v5, 0x0

    #@82
    .line 157
    .local v5, "r":Lcom/android/server/notification/RankingHelper$Record;
    sget v10, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    #@84
    if-ne v8, v10, :cond_8

    #@86
    .line 158
    iget-object v10, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    #@88
    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8b
    move-result-object v5

    #@8c
    .end local v5    # "r":Lcom/android/server/notification/RankingHelper$Record;
    check-cast v5, Lcom/android/server/notification/RankingHelper$Record;

    #@8e
    .line 159
    .local v5, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v5, :cond_5

    #@90
    .line 160
    new-instance v5, Lcom/android/server/notification/RankingHelper$Record;

    #@92
    .end local v5    # "r":Lcom/android/server/notification/RankingHelper$Record;
    const/4 v10, 0x0

    #@93
    invoke-direct {v5, v10}, Lcom/android/server/notification/RankingHelper$Record;-><init>(Lcom/android/server/notification/RankingHelper$Record;)V

    #@96
    .line 161
    .restart local v5    # "r":Lcom/android/server/notification/RankingHelper$Record;
    iget-object v10, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    #@98
    invoke-virtual {v10, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    .line 166
    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    #@9d
    .line 167
    iput v4, v5, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@9f
    .line 169
    :cond_6
    if-nez v2, :cond_7

    #@a1
    .line 170
    iput-boolean v2, v5, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    #@a3
    .line 172
    :cond_7
    const/16 v10, -0x3e8

    #@a5
    if-eq v9, v10, :cond_2

    #@a7
    .line 173
    iput v9, v5, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@a9
    goto/16 :goto_0

    #@ab
    .line 152
    .end local v5    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :catch_0
    move-exception v0

    #@ac
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    #@ad
    .line 164
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v5, "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_8
    invoke-direct {p0, v1, v8}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    #@b0
    move-result-object v5

    #@b1
    .local v5, "r":Lcom/android/server/notification/RankingHelper$Record;
    goto :goto_2

    #@b2
    .line 179
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "peekable":Z
    .end local v4    # "priority":I
    .end local v5    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v8    # "uid":I
    .end local v9    # "vis":I
    :cond_9
    new-instance v10, Ljava/lang/IllegalStateException;

    #@b4
    const-string/jumbo v11, "Failed to reach END_DOCUMENT"

    #@b7
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@ba
    throw v10
.end method

.method public setPackagePeekable(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "peekable"    # Z

    #@0
    .prologue
    .line 356
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackagePeekable(Ljava/lang/String;I)Z

    #@3
    move-result v0

    #@4
    if-ne p3, v0, :cond_0

    #@6
    .line 357
    return-void

    #@7
    .line 359
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    #@a
    move-result-object v0

    #@b
    iput-boolean p3, v0, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    #@d
    .line 360
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->removeDefaultRecords()V

    #@10
    .line 361
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    #@13
    .line 355
    return-void
.end method

.method public setPackagePriority(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "priority"    # I

    #@0
    .prologue
    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackagePriority(Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
    if-ne p3, v0, :cond_0

    #@6
    .line 341
    return-void

    #@7
    .line 343
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    #@a
    move-result-object v0

    #@b
    iput p3, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@d
    .line 344
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->removeDefaultRecords()V

    #@10
    .line 345
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    #@13
    .line 339
    return-void
.end method

.method public setPackageVisibilityOverride(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "visibility"    # I

    #@0
    .prologue
    .line 372
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackageVisibilityOverride(Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
    if-ne p3, v0, :cond_0

    #@6
    .line 373
    return-void

    #@7
    .line 375
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    #@a
    move-result-object v0

    #@b
    iput p3, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@d
    .line 376
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->removeDefaultRecords()V

    #@10
    .line 377
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    #@13
    .line 371
    return-void
.end method

.method public sort(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 247
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v0

    #@4
    .line 249
    .local v0, "N":I
    add-int/lit8 v5, v0, -0x1

    #@6
    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_0

    #@8
    .line 250
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v8

    #@c
    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    #@e
    const/4 v9, 0x0

    #@f
    invoke-virtual {v8, v9}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    #@12
    .line 249
    add-int/lit8 v5, v5, -0x1

    #@14
    goto :goto_0

    #@15
    .line 254
    :cond_0
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    #@17
    invoke-static {p1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@1a
    .line 256
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    #@1c
    monitor-enter v9

    #@1d
    .line 258
    add-int/lit8 v5, v0, -0x1

    #@1f
    :goto_1
    if-ltz v5, :cond_2

    #@21
    .line 259
    :try_start_0
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v7

    #@25
    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    #@27
    .line 260
    .local v7, "record":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v7, v5}, Lcom/android/server/notification/NotificationRecord;->setAuthoritativeRank(I)V

    #@2a
    .line 261
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 262
    .local v1, "groupKey":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@31
    move-result-object v8

    #@32
    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    #@35
    move-result v6

    #@36
    .line 263
    .local v6, "isGroupSummary":Z
    if-nez v6, :cond_1

    #@38
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    #@3a
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@3d
    move-result v8

    #@3e
    if-eqz v8, :cond_1

    #@40
    .line 258
    :goto_2
    add-int/lit8 v5, v5, -0x1

    #@42
    goto :goto_1

    #@43
    .line 264
    :cond_1
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    #@45
    invoke-virtual {v8, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    goto :goto_2

    #@49
    .line 256
    .end local v1    # "groupKey":Ljava/lang/String;
    .end local v6    # "isGroupSummary":Z
    .end local v7    # "record":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v8

    #@4a
    monitor-exit v9

    #@4b
    throw v8

    #@4c
    .line 269
    :cond_2
    const/4 v5, 0x0

    #@4d
    :goto_3
    if-ge v5, v0, :cond_7

    #@4f
    .line 270
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v7

    #@53
    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    #@55
    .line 271
    .restart local v7    # "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    #@57
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    #@5a
    move-result-object v10

    #@5b
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    move-result-object v2

    #@5f
    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    #@61
    .line 272
    .local v2, "groupProxy":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@64
    move-result-object v8

    #@65
    invoke-virtual {v8}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    .line 280
    .local v3, "groupSortKey":Ljava/lang/String;
    if-nez v3, :cond_3

    #@6b
    .line 281
    const-string/jumbo v4, "nsk"

    #@6e
    .line 288
    .local v4, "groupSortKeyPortion":Ljava/lang/String;
    :goto_4
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@71
    move-result-object v8

    #@72
    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    #@75
    move-result v6

    #@76
    .line 290
    .restart local v6    # "isGroupSummary":Z
    const-string/jumbo v10, "intrsv=%c:grnk=0x%04x:gsmry=%c:%s:rnk=0x%04x"

    #@79
    const/4 v8, 0x5

    #@7a
    new-array v11, v8, [Ljava/lang/Object;

    #@7c
    .line 291
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    #@7f
    move-result v8

    #@80
    if-eqz v8, :cond_5

    #@82
    const/16 v8, 0x30

    #@84
    :goto_5
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@87
    move-result-object v8

    #@88
    const/4 v12, 0x0

    #@89
    aput-object v8, v11, v12

    #@8b
    .line 292
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    #@8e
    move-result v8

    #@8f
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@92
    move-result-object v8

    #@93
    const/4 v12, 0x1

    #@94
    aput-object v8, v11, v12

    #@96
    .line 293
    if-eqz v6, :cond_6

    #@98
    const/16 v8, 0x30

    #@9a
    :goto_6
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@9d
    move-result-object v8

    #@9e
    const/4 v12, 0x2

    #@9f
    aput-object v8, v11, v12

    #@a1
    .line 294
    const/4 v8, 0x3

    #@a2
    aput-object v4, v11, v8

    #@a4
    .line 295
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    #@a7
    move-result v8

    #@a8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ab
    move-result-object v8

    #@ac
    const/4 v12, 0x4

    #@ad
    aput-object v8, v11, v12

    #@af
    .line 290
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b2
    move-result-object v8

    #@b3
    .line 289
    invoke-virtual {v7, v8}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    #@b6
    .line 269
    add-int/lit8 v5, v5, 0x1

    #@b8
    goto :goto_3

    #@b9
    .line 282
    .end local v4    # "groupSortKeyPortion":Ljava/lang/String;
    .end local v6    # "isGroupSummary":Z
    :cond_3
    const-string/jumbo v8, ""

    #@bc
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v8

    #@c0
    if-eqz v8, :cond_4

    #@c2
    .line 283
    const-string/jumbo v4, "esk"

    #@c5
    .restart local v4    # "groupSortKeyPortion":Ljava/lang/String;
    goto :goto_4

    #@c6
    .line 285
    .end local v4    # "groupSortKeyPortion":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v10, "gsk="

    #@ce
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v8

    #@d2
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v8

    #@d6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v4

    #@da
    .restart local v4    # "groupSortKeyPortion":Ljava/lang/String;
    goto :goto_4

    #@db
    .line 291
    .restart local v6    # "isGroupSummary":Z
    :cond_5
    const/16 v8, 0x31

    #@dd
    goto :goto_5

    #@de
    .line 293
    :cond_6
    const/16 v8, 0x31

    #@e0
    goto :goto_6

    #@e1
    .line 297
    .end local v2    # "groupProxy":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "groupSortKey":Ljava/lang/String;
    .end local v4    # "groupSortKeyPortion":Ljava/lang/String;
    .end local v6    # "isGroupSummary":Z
    .end local v7    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_7
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    #@e3
    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e6
    monitor-exit v9

    #@e7
    .line 301
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    #@e9
    invoke-static {p1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@ec
    .line 246
    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 210
    const-string/jumbo v3, "ranking"

    #@4
    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 211
    const-string/jumbo v3, "version"

    #@a
    const/4 v4, 0x1

    #@b
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12
    .line 213
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@17
    move-result v0

    #@18
    .line 214
    .local v0, "N":I
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    #@1b
    .line 215
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@1d
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    #@23
    .line 216
    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p2, :cond_0

    #@25
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    #@27
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_0

    #@2d
    .line 214
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 219
    :cond_0
    const-string/jumbo v3, "package"

    #@33
    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@36
    .line 220
    const-string/jumbo v3, "name"

    #@39
    iget-object v4, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    #@3b
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3e
    .line 221
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@40
    if-eqz v3, :cond_1

    #@42
    .line 222
    const-string/jumbo v3, "priority"

    #@45
    iget v4, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@47
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4e
    .line 224
    :cond_1
    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    #@50
    if-nez v3, :cond_2

    #@52
    .line 225
    const-string/jumbo v3, "peekable"

    #@55
    iget-boolean v4, v2, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    #@57
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5e
    .line 227
    :cond_2
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@60
    const/16 v4, -0x3e8

    #@62
    if-eq v3, v4, :cond_3

    #@64
    .line 228
    const-string/jumbo v3, "visibility"

    #@67
    iget v4, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@69
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6c
    move-result-object v4

    #@6d
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@70
    .line 230
    :cond_3
    if-nez p2, :cond_4

    #@72
    .line 231
    const-string/jumbo v3, "uid"

    #@75
    iget v4, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    #@77
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7a
    move-result-object v4

    #@7b
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7e
    .line 233
    :cond_4
    const-string/jumbo v3, "package"

    #@81
    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@84
    goto :goto_1

    #@85
    .line 235
    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_5
    const-string/jumbo v3, "ranking"

    #@88
    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8b
    .line 209
    return-void
.end method
