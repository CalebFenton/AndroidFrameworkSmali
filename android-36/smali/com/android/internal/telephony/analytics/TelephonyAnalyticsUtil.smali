.class public Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TelephonyAnalyticsUtil.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const-class v0, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 47
    const-string v2, "telephony_analytics.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private blacklist getCutoffDate()Ljava/lang/String;
    .registers 3

    .line 183
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, -0x2

    .line 184
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 185
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsDatabase;->DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p0}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;
    .registers 3

    const-class v0, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    monitor-enter v0

    .line 57
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->sTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    if-nez v1, :cond_11

    .line 58
    new-instance v1, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->sTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_15

    .line 60
    :cond_11
    :goto_11
    sget-object p0, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->sTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object p0

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw p0
.end method


# virtual methods
.method public declared-synchronized blacklist createTable(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 77
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_b
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    goto :goto_22

    :catchall_9
    move-exception p1

    goto :goto_24

    :catch_b
    move-exception p1

    .line 80
    :try_start_c
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error during table creation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_9

    .line 82
    :goto_22
    monitor-exit p0

    return-void

    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_9

    throw p1
.end method

.method public declared-synchronized blacklist delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 175
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_8} :catch_b
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    goto :goto_22

    :catchall_9
    move-exception p1

    goto :goto_24

    :catch_b
    move-exception p1

    .line 178
    :try_start_c
    sget-object p2, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sqlite Operation Error during deletion of Overflow data "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_9

    .line 180
    :goto_22
    monitor-exit p0

    return-void

    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_9

    throw p1
.end method

.method protected blacklist deleteOldData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 167
    invoke-direct {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCutoffDate()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist deleteOverFlowData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x3e8

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist deleteOverflowAndOldData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->deleteOverFlowData(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->deleteOldData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized blacklist getCountFromCursor(Landroid/database/Cursor;)J
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_13

    .line 147
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 148
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    int-to-long v0, p1

    goto :goto_15

    :catchall_10
    move-exception p1

    .line 147
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1

    :cond_13
    const-wide/16 v0, 0x0

    .line 150
    :goto_15
    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized blacklist getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18

    monitor-enter p0

    .line 126
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 128
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_13
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_13} :catch_17
    .catchall {:try_start_1 .. :try_end_13} :catchall_14

    goto :goto_30

    :catchall_14
    move-exception v0

    move-object p1, v0

    goto :goto_32

    :catch_17
    move-exception v0

    move-object p1, v0

    .line 138
    :try_start_19
    sget-object p2, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error during querying for getCursor()"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_14

    const/4 p1, 0x0

    .line 140
    :goto_30
    monitor-exit p0

    return-object p1

    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_14

    throw p1
.end method

.method public declared-synchronized blacklist insert(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 5

    monitor-enter p0

    .line 88
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_9} :catch_c
    .catchall {:try_start_1 .. :try_end_9} :catchall_a

    goto :goto_13

    :catchall_a
    move-exception p1

    goto :goto_15

    .line 91
    :catch_c
    :try_start_c
    sget-object p1, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->TAG:Ljava/lang/String;

    const-string p2, "error occurred during insertion"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_a

    .line 93
    :goto_13
    monitor-exit p0

    return-void

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_a

    throw p1
.end method

.method public whitelist onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 0
    return-void
.end method

.method public whitelist onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 0
    return-void
.end method

.method public declared-synchronized blacklist update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    monitor-enter p0

    .line 101
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_9} :catch_c
    .catchall {:try_start_1 .. :try_end_9} :catchall_a

    goto :goto_14

    :catchall_a
    move-exception p1

    goto :goto_16

    .line 105
    :catch_c
    :try_start_c
    sget-object p1, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->TAG:Ljava/lang/String;

    const-string p2, "Error during update."

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_a

    const/4 p1, -0x1

    .line 107
    :goto_14
    monitor-exit p0

    return p1

    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_a

    throw p1
.end method
