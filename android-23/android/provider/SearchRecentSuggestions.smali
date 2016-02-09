.class public Landroid/provider/SearchRecentSuggestions;
.super Ljava/lang/Object;
.source "SearchRecentSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SearchRecentSuggestions$SuggestionColumns;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SearchSuggestions"

.field private static final MAX_HISTORY_COUNT:I = 0xfa

.field public static final QUERIES_PROJECTION_1LINE:[Ljava/lang/String;

.field public static final QUERIES_PROJECTION_2LINE:[Ljava/lang/String;

.field public static final QUERIES_PROJECTION_DATE_INDEX:I = 0x1

.field public static final QUERIES_PROJECTION_DISPLAY1_INDEX:I = 0x3

.field public static final QUERIES_PROJECTION_DISPLAY2_INDEX:I = 0x4

.field public static final QUERIES_PROJECTION_QUERY_INDEX:I = 0x2

.field private static final sWritesInProgress:Ljava/util/concurrent/Semaphore;


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mSuggestionsUri:Landroid/net/Uri;

.field private final mTwoLineDisplay:Z


# direct methods
.method static synthetic -get0()Ljava/util/concurrent/Semaphore;
    .locals 1

    #@0
    sget-object v0, Landroid/provider/SearchRecentSuggestions;->sWritesInProgress:Ljava/util/concurrent/Semaphore;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/provider/SearchRecentSuggestions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "line2"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQueryBlocking(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 72
    new-array v0, v6, [Ljava/lang/String;

    #@7
    .line 73
    const-string/jumbo v1, "_id"

    #@a
    aput-object v1, v0, v2

    #@c
    .line 74
    const-string/jumbo v1, "date"

    #@f
    aput-object v1, v0, v3

    #@11
    .line 75
    const-string/jumbo v1, "query"

    #@14
    aput-object v1, v0, v4

    #@16
    .line 76
    const-string/jumbo v1, "display1"

    #@19
    aput-object v1, v0, v5

    #@1b
    .line 72
    sput-object v0, Landroid/provider/SearchRecentSuggestions;->QUERIES_PROJECTION_1LINE:[Ljava/lang/String;

    #@1d
    .line 84
    const/4 v0, 0x5

    #@1e
    new-array v0, v0, [Ljava/lang/String;

    #@20
    .line 85
    const-string/jumbo v1, "_id"

    #@23
    aput-object v1, v0, v2

    #@25
    .line 86
    const-string/jumbo v1, "date"

    #@28
    aput-object v1, v0, v3

    #@2a
    .line 87
    const-string/jumbo v1, "query"

    #@2d
    aput-object v1, v0, v4

    #@2f
    .line 88
    const-string/jumbo v1, "display1"

    #@32
    aput-object v1, v0, v5

    #@34
    .line 89
    const-string/jumbo v1, "display2"

    #@37
    aput-object v1, v0, v6

    #@39
    .line 84
    sput-object v0, Landroid/provider/SearchRecentSuggestions;->QUERIES_PROJECTION_2LINE:[Ljava/lang/String;

    #@3b
    .line 116
    new-instance v0, Ljava/util/concurrent/Semaphore;

    #@3d
    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    #@40
    sput-object v0, Landroid/provider/SearchRecentSuggestions;->sWritesInProgress:Ljava/util/concurrent/Semaphore;

    #@42
    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "mode"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 132
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 133
    and-int/lit8 v1, p3, 0x1

    #@c
    if-nez v1, :cond_1

    #@e
    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@13
    throw v0

    #@14
    .line 137
    :cond_1
    and-int/lit8 v1, p3, 0x2

    #@16
    if-eqz v1, :cond_2

    #@18
    const/4 v0, 0x1

    #@19
    :cond_2
    iput-boolean v0, p0, Landroid/provider/SearchRecentSuggestions;->mTwoLineDisplay:Z

    #@1b
    .line 140
    iput-object p1, p0, Landroid/provider/SearchRecentSuggestions;->mContext:Landroid/content/Context;

    #@1d
    .line 141
    new-instance v0, Ljava/lang/String;

    #@1f
    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@22
    iput-object v0, p0, Landroid/provider/SearchRecentSuggestions;->mAuthority:Ljava/lang/String;

    #@24
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v1, "content://"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    iget-object v1, p0, Landroid/provider/SearchRecentSuggestions;->mAuthority:Ljava/lang/String;

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    const-string/jumbo v1, "/suggestions"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@44
    move-result-object v0

    #@45
    iput-object v0, p0, Landroid/provider/SearchRecentSuggestions;->mSuggestionsUri:Landroid/net/Uri;

    #@47
    .line 131
    return-void
.end method

.method private saveRecentQueryBlocking(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "line2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 189
    iget-object v5, p0, Landroid/provider/SearchRecentSuggestions;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 190
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9
    move-result-wide v2

    #@a
    .line 194
    .local v2, "now":J
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    #@c
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    #@f
    .line 195
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "display1"

    #@12
    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    .line 196
    iget-boolean v5, p0, Landroid/provider/SearchRecentSuggestions;->mTwoLineDisplay:Z

    #@17
    if-eqz v5, :cond_0

    #@19
    .line 197
    const-string/jumbo v5, "display2"

    #@1c
    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 199
    :cond_0
    const-string/jumbo v5, "query"

    #@22
    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 200
    const-string/jumbo v5, "date"

    #@28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@2f
    .line 201
    iget-object v5, p0, Landroid/provider/SearchRecentSuggestions;->mSuggestionsUri:Landroid/net/Uri;

    #@31
    invoke-virtual {v0, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 207
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_0
    const/16 v5, 0xfa

    #@36
    invoke-virtual {p0, v0, v5}, Landroid/provider/SearchRecentSuggestions;->truncateHistory(Landroid/content/ContentResolver;I)V

    #@39
    .line 188
    return-void

    #@3a
    .line 202
    :catch_0
    move-exception v1

    #@3b
    .line 203
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "SearchSuggestions"

    #@3e
    const-string/jumbo v6, "saveRecentQuery"

    #@41
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@44
    goto :goto_0
.end method


# virtual methods
.method public clearHistory()V
    .locals 2

    #@0
    .prologue
    .line 219
    iget-object v1, p0, Landroid/provider/SearchRecentSuggestions;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 220
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/provider/SearchRecentSuggestions;->truncateHistory(Landroid/content/ContentResolver;I)V

    #@a
    .line 218
    return-void
.end method

.method public saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "line2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 163
    return-void

    #@7
    .line 165
    :cond_0
    iget-boolean v0, p0, Landroid/provider/SearchRecentSuggestions;->mTwoLineDisplay:Z

    #@9
    if-nez v0, :cond_1

    #@b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 169
    :cond_1
    new-instance v0, Landroid/provider/SearchRecentSuggestions$1;

    #@13
    const-string/jumbo v1, "saveRecentQuery"

    #@16
    invoke-direct {v0, p0, v1, p1, p2}, Landroid/provider/SearchRecentSuggestions$1;-><init>(Landroid/provider/SearchRecentSuggestions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@19
    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions$1;->start()V

    #@1c
    .line 161
    return-void

    #@1d
    .line 166
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@22
    throw v0
.end method

.method protected truncateHistory(Landroid/content/ContentResolver;I)V
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "maxEntries"    # I

    #@0
    .prologue
    .line 230
    if-gez p2, :cond_0

    #@2
    .line 231
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v2

    #@8
    .line 236
    :cond_0
    const/4 v1, 0x0

    #@9
    .line 237
    .local v1, "selection":Ljava/lang/String;
    if-lez p2, :cond_1

    #@b
    .line 238
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "_id IN (SELECT _id FROM suggestions ORDER BY date DESC LIMIT -1 OFFSET "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 241
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 241
    const-string/jumbo v3, ")"

    #@22
    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 243
    .end local v1    # "selection":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/provider/SearchRecentSuggestions;->mSuggestionsUri:Landroid/net/Uri;

    #@2c
    const/4 v3, 0x0

    #@2d
    invoke-virtual {p1, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 229
    :goto_0
    return-void

    #@31
    .line 244
    :catch_0
    move-exception v0

    #@32
    .line 245
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "SearchSuggestions"

    #@35
    const-string/jumbo v3, "truncateHistory"

    #@38
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    goto :goto_0
.end method

.method waitForSave()V
    .locals 1

    #@0
    .prologue
    .line 184
    :cond_0
    sget-object v0, Landroid/provider/SearchRecentSuggestions;->sWritesInProgress:Ljava/util/concurrent/Semaphore;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    #@5
    .line 185
    sget-object v0, Landroid/provider/SearchRecentSuggestions;->sWritesInProgress:Ljava/util/concurrent/Semaphore;

    #@7
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    #@a
    move-result v0

    #@b
    if-gtz v0, :cond_0

    #@d
    .line 179
    return-void
.end method
