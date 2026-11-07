.class public Landroid/database/sqlite/SQLiteCompatibilityWalFlags;
.super Ljava/lang/Object;
.source "SQLiteCompatibilityWalFlags.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SQLiteCompatibilityWalFlags"

.field private static volatile greylist-max-o sCallingGlobalSettings:Z

.field private static volatile greylist-max-o sInitialized:Z

.field private static volatile blacklist sLegacyCompatibilityWalEnabled:Z

.field private static volatile blacklist sTruncateSize:J

.field private static volatile greylist-max-o sWALSyncMode:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 45
    const-wide/16 v0, -0x1

    sput-wide v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sTruncateSize:J

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static blacklist getTruncateSize()J
    .registers 2

    .line 87
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->initIfNeeded()V

    .line 88
    sget-wide v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sTruncateSize:J

    return-wide v0
.end method

.method public static greylist-max-o getWALSyncMode()Ljava/lang/String;
    .registers 2

    .line 66
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->initIfNeeded()V

    .line 71
    sget-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sLegacyCompatibilityWalEnabled:Z

    if-eqz v0, :cond_a

    .line 75
    sget-object v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sWALSyncMode:Ljava/lang/String;

    return-object v0

    .line 72
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "isLegacyCompatibilityWalEnabled() == false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o init(Ljava/lang/String;)V
    .registers 7
    .param p0, "flags"    # Ljava/lang/String;

    .line 125
    const-string v0, "SQLiteCompatibilityWalFlags"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 126
    sput-boolean v2, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sInitialized:Z

    .line 127
    return-void

    .line 129
    :cond_c
    new-instance v1, Landroid/util/KeyValueListParser;

    const/16 v3, 0x2c

    invoke-direct {v1, v3}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 131
    .local v1, "parser":Landroid/util/KeyValueListParser;
    :try_start_13
    invoke-virtual {v1, p0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_16} :catch_60

    .line 136
    nop

    .line 137
    const-string/jumbo v3, "legacy_compatibility_wal_enabled"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sLegacyCompatibilityWalEnabled:Z

    .line 139
    const-string/jumbo v3, "wal_syncmode"

    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALSyncMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sWALSyncMode:Ljava/lang/String;

    .line 140
    const-string/jumbo v3, "truncate_size"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sTruncateSize:J

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read compatibility WAL flags: legacy_compatibility_wal_enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sLegacyCompatibilityWalEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wal_syncmode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sWALSyncMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sput-boolean v2, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sInitialized:Z

    .line 144
    return-void

    .line 132
    :catch_60
    move-exception v3

    .line 133
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting has invalid format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    sput-boolean v2, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sInitialized:Z

    .line 135
    return-void
.end method

.method private static greylist-max-o initIfNeeded()V
    .registers 8

    .line 92
    sget-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sInitialized:Z

    if-nez v0, :cond_5a

    sget-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sCallingGlobalSettings:Z

    if-eqz v0, :cond_9

    goto :goto_5a

    .line 95
    :cond_9
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 96
    .local v0, "activityThread":Landroid/app/ActivityThread;
    if-nez v0, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 97
    .local v1, "app":Landroid/app/Application;
    :goto_15
    const/4 v2, 0x0

    .line 98
    .local v2, "flags":Ljava/lang/String;
    const-string v3, "SQLiteCompatibilityWalFlags"

    if-nez v1, :cond_20

    .line 99
    const-string v4, "Cannot read global setting sqlite_compatibility_wal_flags - Application state not available"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 104
    :cond_20
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_22
    sput-boolean v4, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sCallingGlobalSettings:Z

    .line 105
    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "sqlite_compatibility_wal_flags"

    invoke-static {v4, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2f} :catch_36
    .catchall {:try_start_22 .. :try_end_2f} :catchall_34

    move-object v2, v3

    .line 113
    nop

    :goto_31
    sput-boolean v5, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sCallingGlobalSettings:Z

    .line 114
    goto :goto_53

    .line 113
    :catchall_34
    move-exception v3

    goto :goto_57

    .line 107
    :catch_36
    move-exception v4

    .line 110
    .local v4, "e":Ljava/lang/Exception;
    :try_start_37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read global setting sqlite_compatibility_wal_flags - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 111
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_37 .. :try_end_51} :catchall_34

    .line 113
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_31

    .line 117
    :goto_53
    invoke-static {v2}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 118
    return-void

    .line 113
    :goto_57
    sput-boolean v5, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sCallingGlobalSettings:Z

    .line 114
    throw v3

    .line 93
    .end local v0    # "activityThread":Landroid/app/ActivityThread;
    .end local v1    # "app":Landroid/app/Application;
    .end local v2    # "flags":Ljava/lang/String;
    :cond_5a
    :goto_5a
    return-void
.end method

.method public static blacklist isLegacyCompatibilityWalEnabled()Z
    .registers 1

    .line 57
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->initIfNeeded()V

    .line 58
    sget-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sLegacyCompatibilityWalEnabled:Z

    return v0
.end method

.method public static greylist-max-o reset()V
    .registers 1

    .line 152
    const/4 v0, 0x0

    sput-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sInitialized:Z

    .line 153
    sput-boolean v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sLegacyCompatibilityWalEnabled:Z

    .line 154
    const/4 v0, 0x0

    sput-object v0, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->sWALSyncMode:Ljava/lang/String;

    .line 155
    return-void
.end method
