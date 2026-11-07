.class public final Landroid/database/sqlite/SQLiteDatabaseConfiguration;
.super Ljava/lang/Object;
.source "SQLiteDatabaseConfiguration.java"


# static fields
.field private static final greylist-max-o EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

.field public static final greylist-max-o MEMORY_DB_PATH:Ljava/lang/String; = ":memory:"


# instance fields
.field public final blacklist customAggregateFunctions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/function/BinaryOperator<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final blacklist customScalarFunctions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public greylist-max-o foreignKeyConstraintsEnabled:Z

.field public greylist-max-o idleConnectionTimeoutMs:J

.field public greylist-max-o journalMode:Ljava/lang/String;

.field public final greylist-max-o label:Ljava/lang/String;

.field public greylist-max-o locale:Ljava/util/Locale;

.field public greylist-max-o lookasideSlotCount:I

.field public greylist-max-o lookasideSlotSize:I

.field public greylist maxSqlCacheSize:I

.field public greylist-max-o openFlags:I

.field public final greylist-max-o path:Ljava/lang/String;

.field public final blacklist perConnectionSql:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public blacklist shouldTruncateWalFile:Z

.field public greylist-max-o syncMode:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    nop

    .line 47
    const-string v0, "[\\w\\.\\-]+@[\\w\\.\\-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    .line 46
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .registers 4
    .param p1, "other"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    .line 122
    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    .line 129
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    .line 173
    if-eqz p1, :cond_32

    .line 177
    iget-object v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    .line 179
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 180
    return-void

    .line 174
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "openFlags"    # I

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    .line 122
    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    .line 129
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    .line 154
    if-eqz p1, :cond_3b

    .line 158
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 159
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->stripPathForLogs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    .line 160
    iput p2, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 163
    const/16 v0, 0x19

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 164
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 165
    return-void

    .line 155
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "path must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist isWalEnabledInternal()Z
    .registers 7

    .line 310
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v2

    .line 313
    .local v0, "walEnabled":Z
    :goto_c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isLegacyCompatibilityWalEnabled()Z

    move-result v3

    .line 314
    .local v3, "isCompatibilityWalEnabled":Z
    if-nez v0, :cond_25

    if-nez v3, :cond_25

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->journalMode:Ljava/lang/String;

    if-eqz v4, :cond_23

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->journalMode:Ljava/lang/String;

    .line 316
    const-string v5, "WAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_25

    :cond_23
    move v1, v2

    goto :goto_26

    :cond_25
    :goto_25
    nop

    .line 314
    :goto_26
    return v1
.end method

.method private static greylist-max-o stripPathForLogs(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 232
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 233
    return-object p0

    .line 235
    :cond_a
    sget-object v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "XX@YY"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o isInMemoryDb()Z
    .registers 3

    .line 219
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    const-string v1, ":memory:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method blacklist isLegacyCompatibilityWalEnabled()Z
    .registers 3

    .line 227
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->journalMode:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->syncMode:Ljava/lang/String;

    if-nez v0, :cond_11

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method greylist-max-o isLookasideConfigSet()Z
    .registers 2

    .line 239
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    if-ltz v0, :cond_a

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isReadOnlyDatabase()Z
    .registers 3

    .line 223
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist resolveJournalMode()Ljava/lang/String;
    .registers 3

    .line 251
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isReadOnlyDatabase()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 253
    const-string v0, ""

    return-object v0

    .line 256
    :cond_9
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 257
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->journalMode:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->journalMode:Ljava/lang/String;

    .line 258
    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 259
    return-object v1

    .line 261
    :cond_1e
    const-string v0, "MEMORY"

    return-object v0

    .line 264
    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->shouldTruncateWalFile:Z

    .line 266
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isWalEnabledInternal()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->shouldTruncateWalFile:Z

    .line 268
    const-string v0, "WAL"

    return-object v0

    .line 271
    :cond_30
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->journalMode:Ljava/lang/String;

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->journalMode:Ljava/lang/String;

    goto :goto_3b

    .line 272
    :cond_37
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultJournalMode()Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_3b
    return-object v0
.end method

.method public blacklist resolveSyncMode()Ljava/lang/String;
    .registers 3

    .line 284
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isReadOnlyDatabase()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    .line 286
    return-object v1

    .line 289
    :cond_9
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 291
    return-object v1

    .line 294
    :cond_10
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->syncMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 295
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->syncMode:Ljava/lang/String;

    return-object v0

    .line 298
    :cond_1b
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isWalEnabledInternal()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 299
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isLegacyCompatibilityWalEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 300
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->getWALSyncMode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 302
    :cond_2c
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALSyncMode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 305
    :cond_31
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultSyncMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .registers 4
    .param p1, "other"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 189
    if-eqz p1, :cond_5e

    .line 192
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iget-object v1, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 197
    iget v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 198
    iget v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 199
    iget-object v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 200
    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 201
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 202
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 203
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 204
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 205
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 206
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 207
    iget v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    .line 208
    iget v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    .line 209
    iget-wide v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    .line 210
    iget-object v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->journalMode:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->journalMode:Ljava/lang/String;

    .line 211
    iget-object v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->syncMode:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->syncMode:Ljava/lang/String;

    .line 212
    return-void

    .line 193
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other configuration must refer to the same database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
