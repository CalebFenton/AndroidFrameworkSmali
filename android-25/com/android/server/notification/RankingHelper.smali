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
.field private static final ATT_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static final ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATT_TOPIC_ID:Ljava/lang/String; = "id"

.field private static final ATT_TOPIC_LABEL:Ljava/lang/String; = "label"

.field private static final ATT_UID:Ljava/lang/String; = "uid"

.field private static final ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final DEFAULT_IMPORTANCE:I = -0x3e8

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

.field private final mRankingHandler:Lcom/android/server/notification/RankingHandler;

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
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rankingHandler"    # Lcom/android/server/notification/RankingHandler;
    .param p3, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;
    .param p4, "extractorNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    new-instance v7, Lcom/android/server/notification/NotificationComparator;

    #@5
    invoke-direct {v7}, Lcom/android/server/notification/NotificationComparator;-><init>()V

    #@8
    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    #@a
    .line 67
    new-instance v7, Lcom/android/server/notification/GlobalSortKeyComparator;

    #@c
    invoke-direct {v7}, Lcom/android/server/notification/GlobalSortKeyComparator;-><init>()V

    #@f
    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    #@11
    .line 69
    new-instance v7, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    #@16
    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@18
    .line 70
    new-instance v7, Landroid/util/ArrayMap;

    #@1a
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    #@1d
    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    #@1f
    .line 71
    new-instance v7, Landroid/util/ArrayMap;

    #@21
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    #@24
    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    #@26
    .line 78
    iput-object p1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    #@28
    .line 79
    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    #@2a
    .line 81
    array-length v0, p4

    #@2b
    .line 82
    .local v0, "N":I
    new-array v7, v0, [Lcom/android/server/notification/NotificationSignalExtractor;

    #@2d
    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@2f
    .line 83
    const/4 v6, 0x0

    #@30
    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_0

    #@32
    .line 85
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
    .line 87
    .local v5, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@41
    move-result-object v4

    #@42
    check-cast v4, Lcom/android/server/notification/NotificationSignalExtractor;

    #@44
    .line 88
    .local v4, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    #@46
    invoke-interface {v4, v7, p3}, Lcom/android/server/notification/NotificationSignalExtractor;->initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V

    #@49
    .line 89
    invoke-interface {v4, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    #@4c
    .line 90
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@4e
    aput-object v4, v7, v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 83
    .end local v4    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v5    # "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@52
    goto :goto_0

    #@53
    .line 95
    :catch_0
    move-exception v2

    #@54
    .line 96
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
    .line 93
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    #@79
    .line 94
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
    .line 91
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    #@9e
    .line 92
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
    .line 77
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    return-void
.end method

.method private static dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .locals 6
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
    .local p3, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/RankingHelper$Record;>;"
    const/16 v5, -0x3e8

    #@2
    .line 400
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v0

    #@6
    .line 401
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    #@9
    .line 402
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    #@f
    .line 403
    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p2, :cond_0

    #@11
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    #@13
    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_4

    #@19
    .line 404
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    .line 405
    const-string/jumbo v3, "  "

    #@1f
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    .line 406
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    #@24
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27
    .line 407
    const-string/jumbo v3, " ("

    #@2a
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    .line 408
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    #@2f
    sget v4, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    #@31
    if-ne v3, v4, :cond_5

    #@33
    const-string/jumbo v3, "UNKNOWN_UID"

    #@36
    :goto_1
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    .line 409
    const/16 v3, 0x29

    #@3b
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    #@3e
    .line 410
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    #@40
    if-eq v3, v5, :cond_1

    #@42
    .line 411
    const-string/jumbo v3, " importance="

    #@45
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    .line 412
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    #@4a
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    .line 414
    :cond_1
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@53
    if-eqz v3, :cond_2

    #@55
    .line 415
    const-string/jumbo v3, " priority="

    #@58
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b
    .line 416
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@5d
    invoke-static {v3}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64
    .line 418
    :cond_2
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@66
    if-eq v3, v5, :cond_3

    #@68
    .line 419
    const-string/jumbo v3, " visibility="

    #@6b
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6e
    .line 420
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@70
    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    .line 422
    :cond_3
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@7a
    .line 401
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 408
    :cond_5
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    #@7f
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@82
    move-result-object v3

    #@83
    goto :goto_1

    #@84
    .line 399
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
    .line 181
    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 182
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lcom/android/server/notification/RankingHelper$Record;

    #@d
    .line 183
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v1, :cond_0

    #@f
    .line 184
    new-instance v1, Lcom/android/server/notification/RankingHelper$Record;

    #@11
    .end local v1    # "r":Lcom/android/server/notification/RankingHelper$Record;
    invoke-direct {v1, v3}, Lcom/android/server/notification/RankingHelper$Record;-><init>(Lcom/android/server/notification/RankingHelper$Record;)V

    #@14
    .line 185
    .restart local v1    # "r":Lcom/android/server/notification/RankingHelper$Record;
    iput-object p1, v1, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    #@16
    .line 186
    iput p2, v1, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    #@18
    .line 187
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@1a
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 189
    :cond_0
    return-object v1
.end method

.method private static recordKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 177
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

.method private static safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    #@0
    .prologue
    .line 299
    const/4 v1, 0x0

    #@1
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 300
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
    .line 313
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    return p1

    #@7
    .line 314
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
    .line 304
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    return p1

    #@7
    .line 306
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 307
    :catch_0
    move-exception v0

    #@d
    .line 308
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method private updateConfig()V
    .locals 3

    #@0
    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@2
    array-length v0, v2

    #@3
    .line 230
    .local v0, "N":I
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@6
    .line 231
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@8
    aget-object v2, v2, v1

    #@a
    invoke-interface {v2, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    #@d
    .line 230
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 233
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    #@12
    invoke-interface {v2}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    #@15
    .line 228
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
    .line 377
    if-nez p3, :cond_0

    #@2
    .line 378
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@4
    array-length v0, v2

    #@5
    .line 379
    .local v0, "N":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    .line 380
    const-string/jumbo v2, "mSignalExtractors.length = "

    #@b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    .line 381
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@11
    .line 382
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@14
    .line 383
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    .line 384
    const-string/jumbo v2, "  "

    #@1a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    .line 385
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@1f
    aget-object v2, v2, v1

    #@21
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@24
    .line 382
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 388
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    if-nez p3, :cond_1

    #@29
    .line 389
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    .line 390
    const-string/jumbo v2, "per-package config:"

    #@2f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@32
    .line 392
    :cond_1
    const-string/jumbo v2, "Records:"

    #@35
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38
    .line 393
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@3a
    invoke-static {p1, p2, p3, v2}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    #@3d
    .line 394
    const-string/jumbo v2, "Restored without uid:"

    #@40
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 395
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    #@45
    invoke-static {p1, p2, p3, v2}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    #@48
    .line 376
    return-void
.end method

.method public dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .locals 9
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 476
    new-instance v3, Lorg/json/JSONArray;

    #@2
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    #@5
    .line 477
    .local v3, "bans":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->getPackageBans()Ljava/util/Map;

    #@8
    move-result-object v5

    #@9
    .line 478
    .local v5, "packageBans":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@c
    move-result-object v8

    #@d
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "ban$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v8

    #@15
    if-eqz v8, :cond_2

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/util/Map$Entry;

    #@1d
    .line 479
    .local v0, "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@20
    move-result-object v8

    #@21
    check-cast v8, Ljava/lang/Integer;

    #@23
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v8

    #@27
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    #@2a
    move-result v7

    #@2b
    .line 480
    .local v7, "userId":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2e
    move-result-object v6

    #@2f
    check-cast v6, Ljava/lang/String;

    #@31
    .line 481
    .local v6, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_1

    #@33
    invoke-virtual {p1, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    #@36
    move-result v8

    #@37
    if-eqz v8, :cond_0

    #@39
    .line 482
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    #@3b
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    #@3e
    .line 484
    .local v2, "banJson":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v8, "userId"

    #@41
    invoke-virtual {v2, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@44
    .line 485
    const-string/jumbo v8, "packageName"

    #@47
    invoke-virtual {v2, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    #@4a
    .line 489
    :goto_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@4d
    goto :goto_0

    #@4e
    .line 486
    :catch_0
    move-exception v4

    #@4f
    .line 487
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    #@52
    goto :goto_1

    #@53
    .line 492
    .end local v0    # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "banJson":Lorg/json/JSONObject;
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "userId":I
    :cond_2
    return-object v3
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .locals 10
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    const/16 v9, -0x3e8

    #@2
    .line 428
    new-instance v4, Lorg/json/JSONObject;

    #@4
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    #@7
    .line 429
    .local v4, "ranking":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONArray;

    #@9
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    #@c
    .line 431
    .local v6, "records":Lorg/json/JSONArray;
    :try_start_0
    const-string/jumbo v7, "noUid"

    #@f
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@14
    move-result v8

    #@15
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    #@18
    .line 435
    :goto_0
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@1a
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@1d
    move-result v0

    #@1e
    .line 436
    .local v0, "N":I
    const/4 v2, 0x0

    #@1f
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    #@21
    .line 437
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@23
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    #@29
    .line 438
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p1, :cond_0

    #@2b
    iget-object v7, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    #@2d
    invoke-virtual {p1, v7}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    #@30
    move-result v7

    #@31
    if-eqz v7, :cond_4

    #@33
    .line 439
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    #@35
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    #@38
    .line 441
    .local v5, "record":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v7, "userId"

    #@3b
    iget v8, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    #@3d
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    #@40
    move-result v8

    #@41
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@44
    .line 442
    const-string/jumbo v7, "packageName"

    #@47
    iget-object v8, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    #@49
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@4c
    .line 443
    iget v7, v3, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    #@4e
    if-eq v7, v9, :cond_1

    #@50
    .line 444
    const-string/jumbo v7, "importance"

    #@53
    iget v8, v3, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    #@55
    invoke-static {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    #@58
    move-result-object v8

    #@59
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@5c
    .line 446
    :cond_1
    iget v7, v3, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@5e
    if-eqz v7, :cond_2

    #@60
    .line 447
    const-string/jumbo v7, "priority"

    #@63
    iget v8, v3, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@65
    invoke-static {v8}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    #@68
    move-result-object v8

    #@69
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@6c
    .line 449
    :cond_2
    iget v7, v3, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@6e
    if-eq v7, v9, :cond_3

    #@70
    .line 450
    const-string/jumbo v7, "visibility"

    #@73
    iget v8, v3, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@75
    invoke-static {v8}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    #@78
    move-result-object v8

    #@79
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    #@7c
    .line 455
    :cond_3
    :goto_2
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@7f
    .line 436
    .end local v5    # "record":Lorg/json/JSONObject;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@81
    goto :goto_1

    #@82
    .line 459
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_5
    :try_start_2
    const-string/jumbo v7, "records"

    #@85
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    #@88
    .line 463
    :goto_3
    return-object v4

    #@89
    .line 460
    :catch_0
    move-exception v1

    #@8a
    .local v1, "e":Lorg/json/JSONException;
    goto :goto_3

    #@8b
    .line 452
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .restart local v5    # "record":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    #@8c
    .restart local v1    # "e":Lorg/json/JSONException;
    goto :goto_2

    #@8d
    .line 432
    .end local v0    # "N":I
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "i":I
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v5    # "record":Lorg/json/JSONObject;
    :catch_2
    move-exception v1

    #@8e
    .restart local v1    # "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method public extractSignals(Lcom/android/server/notification/NotificationRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 114
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@2
    array-length v0, v5

    #@3
    .line 115
    .local v0, "N":I
    const/4 v2, 0x0

    #@4
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@6
    .line 116
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@8
    aget-object v1, v5, v2

    #@a
    .line 118
    .local v1, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/server/notification/NotificationSignalExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    #@d
    move-result-object v3

    #@e
    .line 119
    .local v3, "recon":Lcom/android/server/notification/RankingReconsideration;
    if-eqz v3, :cond_0

    #@10
    .line 120
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    #@12
    invoke-interface {v5, v3}, Lcom/android/server/notification/RankingHandler;->requestReconsideration(Lcom/android/server/notification/RankingReconsideration;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 115
    .end local v3    # "recon":Lcom/android/server/notification/RankingReconsideration;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 122
    :catch_0
    move-exception v4

    #@19
    .line 123
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "RankingHelper"

    #@1c
    const-string/jumbo v6, "NotificationSignalExtractor failed."

    #@1f
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_1

    #@23
    .line 113
    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v4    # "t":Ljava/lang/Throwable;
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
    .line 103
    .local p1, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@2
    array-length v0, v3

    #@3
    .line 104
    .local v0, "N":I
    const/4 v2, 0x0

    #@4
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@6
    .line 105
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    #@8
    aget-object v1, v3, v2

    #@a
    .line 106
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
    .line 107
    return-object v1

    #@15
    .line 104
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 110
    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :cond_1
    const/4 v3, 0x0

    #@19
    return-object v3
.end method

.method public getImportance(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 356
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    #@6
    return v0
.end method

.method public getPackageBans()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 496
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v0

    #@6
    .line 497
    .local v0, "N":I
    new-instance v2, Landroid/util/ArrayMap;

    #@8
    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    #@b
    .line 498
    .local v2, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@e
    .line 499
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    #@16
    .line 500
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    #@18
    if-nez v4, :cond_0

    #@1a
    .line 501
    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    #@1c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v4

    #@20
    iget-object v5, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    #@22
    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 498
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 504
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_1
    return-object v2
.end method

.method public getPriority(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 322
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@6
    return v0
.end method

.method public getVisibilityOverride(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@6
    return v0
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
    .line 295
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
    .param p1, "removingPackage"    # Z
    .param p2, "pkgList"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 508
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 510
    :cond_0
    return-void

    #@6
    .line 508
    :cond_1
    array-length v6, p2

    #@7
    if-eqz v6, :cond_0

    #@9
    .line 509
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    #@e
    move-result v6

    #@f
    .line 508
    if-nez v6, :cond_0

    #@11
    .line 512
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v2

    #@17
    .line 513
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    #@18
    .line 514
    .local v4, "updated":Z
    array-length v6, p2

    #@19
    :goto_0
    if-ge v5, v6, :cond_3

    #@1b
    aget-object v1, p2, v5

    #@1d
    .line 515
    .local v1, "pkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    #@25
    .line 516
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v3, :cond_2

    #@27
    .line 519
    :try_start_0
    iget-object v7, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    #@29
    const/4 v8, 0x0

    #@2a
    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    #@2d
    move-result v7

    #@2e
    iput v7, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    #@30
    .line 520
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    #@32
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 521
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
    .line 522
    const/4 v4, 0x1

    #@43
    .line 514
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@45
    goto :goto_0

    #@46
    .line 528
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_3
    if-eqz v4, :cond_4

    #@48
    .line 529
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    #@4b
    .line 507
    :cond_4
    return-void

    #@4c
    .line 523
    .restart local v1    # "pkg":Ljava/lang/String;
    .restart local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :catch_0
    move-exception v0

    #@4d
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 13
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
    const/4 v12, 0x2

    #@1
    const/4 v11, 0x0

    #@2
    const/16 v10, -0x3e8

    #@4
    const/4 v9, 0x0

    #@5
    .line 130
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@a
    move-result-object v2

    #@b
    .line 131
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@e
    move-result v5

    #@f
    .line 132
    .local v5, "type":I
    if-eq v5, v12, :cond_0

    #@11
    return-void

    #@12
    .line 133
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 134
    .local v4, "tag":Ljava/lang/String;
    const-string/jumbo v7, "ranking"

    #@19
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v7

    #@1d
    if-nez v7, :cond_1

    #@1f
    return-void

    #@20
    .line 135
    :cond_1
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@22
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    #@25
    .line 136
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    #@2a
    .line 137
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@2d
    move-result v5

    #@2e
    const/4 v7, 0x1

    #@2f
    if-eq v5, v7, :cond_7

    #@31
    .line 138
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    .line 139
    const/4 v7, 0x3

    #@36
    if-ne v5, v7, :cond_3

    #@38
    const-string/jumbo v7, "ranking"

    #@3b
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v7

    #@3f
    if-eqz v7, :cond_3

    #@41
    .line 140
    return-void

    #@42
    .line 142
    :cond_3
    if-ne v5, v12, :cond_2

    #@44
    .line 143
    const-string/jumbo v7, "package"

    #@47
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v7

    #@4b
    if-eqz v7, :cond_2

    #@4d
    .line 144
    const-string/jumbo v7, "uid"

    #@50
    sget v8, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    #@52
    invoke-static {p1, v7, v8}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@55
    move-result v6

    #@56
    .line 145
    .local v6, "uid":I
    const-string/jumbo v7, "name"

    #@59
    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    .line 147
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@60
    move-result v7

    #@61
    if-nez v7, :cond_2

    #@63
    .line 148
    if-eqz p2, :cond_4

    #@65
    .line 151
    const/4 v7, 0x0

    #@66
    :try_start_0
    invoke-virtual {v2, v1, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@69
    move-result v6

    #@6a
    .line 156
    :cond_4
    :goto_1
    const/4 v3, 0x0

    #@6b
    .line 157
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    sget v7, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    #@6d
    if-ne v6, v7, :cond_6

    #@6f
    .line 158
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    #@71
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@74
    move-result-object v3

    #@75
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    #@77
    .line 159
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v3, :cond_5

    #@79
    .line 160
    new-instance v3, Lcom/android/server/notification/RankingHelper$Record;

    #@7b
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    invoke-direct {v3, v9}, Lcom/android/server/notification/RankingHelper$Record;-><init>(Lcom/android/server/notification/RankingHelper$Record;)V

    #@7e
    .line 161
    .restart local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    #@80
    invoke-virtual {v7, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    .line 166
    :cond_5
    :goto_2
    const-string/jumbo v7, "importance"

    #@86
    invoke-static {p1, v7, v10}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@89
    move-result v7

    #@8a
    iput v7, v3, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    #@8c
    .line 167
    const-string/jumbo v7, "priority"

    #@8f
    invoke-static {p1, v7, v11}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@92
    move-result v7

    #@93
    iput v7, v3, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@95
    .line 168
    const-string/jumbo v7, "visibility"

    #@98
    invoke-static {p1, v7, v10}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@9b
    move-result v7

    #@9c
    iput v7, v3, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@9e
    goto :goto_0

    #@9f
    .line 152
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :catch_0
    move-exception v0

    #@a0
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    #@a1
    .line 164
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_6
    invoke-direct {p0, v1, v6}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    #@a4
    move-result-object v3

    #@a5
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    goto :goto_2

    #@a6
    .line 173
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v6    # "uid":I
    :cond_7
    new-instance v7, Ljava/lang/IllegalStateException;

    #@a8
    const-string/jumbo v8, "Failed to reach END_DOCUMENT"

    #@ab
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@ae
    throw v7
.end method

.method public setEnabled(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getImportance(Ljava/lang/String;I)I

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    .line 370
    .local v0, "wasEnabled":Z
    :goto_0
    if-ne v0, p3, :cond_1

    #@a
    .line 371
    return-void

    #@b
    .end local v0    # "wasEnabled":Z
    :cond_0
    move v0, v1

    #@c
    .line 369
    goto :goto_0

    #@d
    .line 373
    .restart local v0    # "wasEnabled":Z
    :cond_1
    if-eqz p3, :cond_2

    #@f
    const/16 v1, -0x3e8

    #@11
    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/notification/RankingHelper;->setImportance(Ljava/lang/String;II)V

    #@14
    .line 368
    return-void
.end method

.method public setImportance(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    #@0
    .prologue
    .line 364
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    #@3
    move-result-object v0

    #@4
    iput p3, v0, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    #@6
    .line 365
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    #@9
    .line 363
    return-void
.end method

.method public setPriority(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "priority"    # I

    #@0
    .prologue
    .line 330
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    #@3
    move-result-object v0

    #@4
    iput p3, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@6
    .line 331
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    #@9
    .line 329
    return-void
.end method

.method public setVisibilityOverride(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "visibility"    # I

    #@0
    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    #@3
    move-result-object v0

    #@4
    iput p3, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@6
    .line 348
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    #@9
    .line 346
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
    .line 237
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v0

    #@4
    .line 239
    .local v0, "N":I
    add-int/lit8 v5, v0, -0x1

    #@6
    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_0

    #@8
    .line 240
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
    .line 239
    add-int/lit8 v5, v5, -0x1

    #@14
    goto :goto_0

    #@15
    .line 244
    :cond_0
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    #@17
    invoke-static {p1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@1a
    .line 246
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    #@1c
    monitor-enter v9

    #@1d
    .line 248
    add-int/lit8 v5, v0, -0x1

    #@1f
    :goto_1
    if-ltz v5, :cond_2

    #@21
    .line 249
    :try_start_0
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v7

    #@25
    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    #@27
    .line 250
    .local v7, "record":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v7, v5}, Lcom/android/server/notification/NotificationRecord;->setAuthoritativeRank(I)V

    #@2a
    .line 251
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 252
    .local v1, "groupKey":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@31
    move-result-object v8

    #@32
    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    #@35
    move-result v6

    #@36
    .line 253
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
    .line 248
    :goto_2
    add-int/lit8 v5, v5, -0x1

    #@42
    goto :goto_1

    #@43
    .line 254
    :cond_1
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    #@45
    invoke-virtual {v8, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    goto :goto_2

    #@49
    .line 246
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
    .line 259
    :cond_2
    const/4 v5, 0x0

    #@4d
    :goto_3
    if-ge v5, v0, :cond_7

    #@4f
    .line 260
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v7

    #@53
    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    #@55
    .line 261
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
    .line 262
    .local v2, "groupProxy":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@64
    move-result-object v8

    #@65
    invoke-virtual {v8}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    .line 270
    .local v3, "groupSortKey":Ljava/lang/String;
    if-nez v3, :cond_3

    #@6b
    .line 271
    const-string/jumbo v4, "nsk"

    #@6e
    .line 278
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
    .line 280
    .restart local v6    # "isGroupSummary":Z
    const-string/jumbo v10, "intrsv=%c:grnk=0x%04x:gsmry=%c:%s:rnk=0x%04x"

    #@79
    const/4 v8, 0x5

    #@7a
    new-array v11, v8, [Ljava/lang/Object;

    #@7c
    .line 281
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
    .line 282
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
    .line 283
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
    .line 284
    const/4 v8, 0x3

    #@a2
    aput-object v4, v11, v8

    #@a4
    .line 285
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
    .line 280
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b2
    move-result-object v8

    #@b3
    .line 279
    invoke-virtual {v7, v8}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    #@b6
    .line 259
    add-int/lit8 v5, v5, 0x1

    #@b8
    goto :goto_3

    #@b9
    .line 272
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
    .line 273
    const-string/jumbo v4, "esk"

    #@c5
    .restart local v4    # "groupSortKeyPortion":Ljava/lang/String;
    goto :goto_4

    #@c6
    .line 275
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
    .line 281
    .restart local v6    # "isGroupSummary":Z
    :cond_5
    const/16 v8, 0x31

    #@dd
    goto :goto_5

    #@de
    .line 283
    :cond_6
    const/16 v8, 0x31

    #@e0
    goto :goto_6

    #@e1
    .line 287
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
    .line 291
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    #@e9
    invoke-static {p1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@ec
    .line 236
    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 10
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/16 v9, -0x3e8

    #@4
    const/4 v8, 0x0

    #@5
    .line 193
    const-string/jumbo v6, "ranking"

    #@8
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b
    .line 194
    const-string/jumbo v6, "version"

    #@e
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@11
    move-result-object v7

    #@12
    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15
    .line 196
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@1a
    move-result v0

    #@1b
    .line 197
    .local v0, "N":I
    const/4 v2, 0x0

    #@1c
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_9

    #@1e
    .line 198
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    #@20
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    #@26
    .line 200
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p2, :cond_1

    #@28
    iget v6, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    #@2a
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    #@2d
    move-result v6

    #@2e
    if-eqz v6, :cond_1

    #@30
    .line 197
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0

    #@33
    .line 203
    :cond_1
    iget v6, v3, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    #@35
    if-ne v6, v9, :cond_2

    #@37
    .line 204
    iget v6, v3, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@39
    if-eqz v6, :cond_7

    #@3b
    :cond_2
    move v1, v4

    #@3c
    .line 205
    .local v1, "hasNonDefaultSettings":Z
    :goto_2
    if-eqz v1, :cond_0

    #@3e
    .line 206
    const-string/jumbo v6, "package"

    #@41
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@44
    .line 207
    const-string/jumbo v6, "name"

    #@47
    iget-object v7, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    #@49
    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4c
    .line 208
    iget v6, v3, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    #@4e
    if-eq v6, v9, :cond_3

    #@50
    .line 209
    const-string/jumbo v6, "importance"

    #@53
    iget v7, v3, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    #@55
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@58
    move-result-object v7

    #@59
    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5c
    .line 211
    :cond_3
    iget v6, v3, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@5e
    if-eqz v6, :cond_4

    #@60
    .line 212
    const-string/jumbo v6, "priority"

    #@63
    iget v7, v3, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    #@65
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@68
    move-result-object v7

    #@69
    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6c
    .line 214
    :cond_4
    iget v6, v3, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@6e
    if-eq v6, v9, :cond_5

    #@70
    .line 215
    const-string/jumbo v6, "visibility"

    #@73
    iget v7, v3, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@75
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@78
    move-result-object v7

    #@79
    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7c
    .line 218
    :cond_5
    if-nez p2, :cond_6

    #@7e
    .line 219
    const-string/jumbo v6, "uid"

    #@81
    iget v7, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    #@83
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@86
    move-result-object v7

    #@87
    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8a
    .line 222
    :cond_6
    const-string/jumbo v6, "package"

    #@8d
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@90
    goto :goto_1

    #@91
    .line 204
    .end local v1    # "hasNonDefaultSettings":Z
    :cond_7
    iget v6, v3, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    #@93
    if-eq v6, v9, :cond_8

    #@95
    move v1, v4

    #@96
    goto :goto_2

    #@97
    :cond_8
    move v1, v5

    #@98
    goto :goto_2

    #@99
    .line 225
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_9
    const-string/jumbo v4, "ranking"

    #@9c
    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9f
    .line 192
    return-void
.end method
