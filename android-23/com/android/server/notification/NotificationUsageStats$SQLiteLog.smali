.class Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SQLiteLog"
.end annotation


# static fields
.field private static final COL_ACTION_COUNT:Ljava/lang/String; = "action_count"

.field private static final COL_AIRTIME_EXPANDED_MS:Ljava/lang/String; = "expansion_airtime_ms"

.field private static final COL_AIRTIME_MS:Ljava/lang/String; = "airtime_ms"

.field private static final COL_CATEGORY:Ljava/lang/String; = "category"

.field private static final COL_DEFAULTS:Ljava/lang/String; = "defaults"

.field private static final COL_EVENT_TIME:Ljava/lang/String; = "event_time_ms"

.field private static final COL_EVENT_TYPE:Ljava/lang/String; = "event_type"

.field private static final COL_EVENT_USER_ID:Ljava/lang/String; = "event_user_id"

.field private static final COL_EXPAND_COUNT:Ljava/lang/String; = "expansion_count"

.field private static final COL_FIRST_EXPANSIONTIME_MS:Ljava/lang/String; = "first_expansion_time_ms"

.field private static final COL_FLAGS:Ljava/lang/String; = "flags"

.field private static final COL_KEY:Ljava/lang/String; = "key"

.field private static final COL_NOTIFICATION_ID:Ljava/lang/String; = "nid"

.field private static final COL_PKG:Ljava/lang/String; = "pkg"

.field private static final COL_POSTTIME_MS:Ljava/lang/String; = "posttime_ms"

.field private static final COL_PRIORITY:Ljava/lang/String; = "priority"

.field private static final COL_TAG:Ljava/lang/String; = "tag"

.field private static final COL_WHEN_MS:Ljava/lang/String; = "when_ms"

.field private static final DAY_MS:J = 0x5265c00L

.field private static final DB_NAME:Ljava/lang/String; = "notification_log.db"

.field private static final DB_VERSION:I = 0x4

.field private static final EVENT_TYPE_CLICK:I = 0x2

.field private static final EVENT_TYPE_DISMISS:I = 0x4

.field private static final EVENT_TYPE_POST:I = 0x1

.field private static final EVENT_TYPE_REMOVE:I = 0x3

.field private static final HORIZON_MS:J = 0x240c8400L

.field private static final MSG_CLICK:I = 0x2

.field private static final MSG_DISMISS:I = 0x4

.field private static final MSG_POST:I = 0x1

.field private static final MSG_REMOVE:I = 0x3

.field private static final PRUNE_MIN_DELAY_MS:J = 0x1499700L

.field private static final PRUNE_MIN_WRITES:J = 0x400L

.field private static final TAB_LOG:Ljava/lang/String; = "log"

.field private static final TAG:Ljava/lang/String; = "NotificationSQLiteLog"

.field private static sLastPruneMs:J

.field private static sNumWrites:J


# instance fields
.field private final mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mWriteHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "eventTimeMs"    # J
    .param p3, "eventType"    # I
    .param p4, "r"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->writeEvent(JILcom/android/server/notification/NotificationRecord;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 776
    new-instance v6, Landroid/os/HandlerThread;

    #@5
    const-string/jumbo v0, "notification-sqlite-log"

    #@8
    .line 777
    const/16 v1, 0xa

    #@a
    .line 776
    invoke-direct {v6, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@d
    .line 778
    .local v6, "backgroundThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    #@10
    .line 779
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;

    #@12
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;-><init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/os/Looper;)V

    #@19
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    #@1b
    .line 803
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;

    #@1d
    const-string/jumbo v3, "notification_log.db"

    #@20
    const/4 v4, 0x0

    #@21
    const/4 v5, 0x4

    #@22
    move-object v1, p0

    #@23
    move-object v2, p1

    #@24
    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;-><init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #@27
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@29
    .line 775
    return-void
.end method

.method private JsonPostFrequencies(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .locals 14
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 857
    new-instance v4, Lorg/json/JSONArray;

    #@2
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    #@5
    .line 858
    .local v4, "frequencies":Lorg/json/JSONArray;
    iget-object v11, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@7
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@a
    move-result-object v3

    #@b
    .line 859
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->getMidnightMs()J

    #@e
    move-result-wide v6

    #@f
    .line 860
    .local v6, "midnight":J
    new-instance v11, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v12, "SELECT event_user_id, pkg, CAST((("

    #@17
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v11

    #@1b
    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v11

    #@1f
    .line 864
    const-string/jumbo v12, " - "

    #@22
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v11

    #@26
    .line 864
    const-string/jumbo v12, "event_time_ms"

    #@29
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v11

    #@2d
    .line 864
    const-string/jumbo v12, ") / "

    #@30
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v11

    #@34
    .line 864
    const-wide/32 v12, 0x5265c00

    #@37
    .line 860
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v11

    #@3b
    .line 864
    const-string/jumbo v12, ") AS int) "

    #@3e
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v11

    #@42
    .line 865
    const-string/jumbo v12, "AS day, "

    #@45
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v11

    #@49
    .line 866
    const-string/jumbo v12, "COUNT(*) AS cnt "

    #@4c
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v11

    #@50
    .line 867
    const-string/jumbo v12, "FROM "

    #@53
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v11

    #@57
    .line 867
    const-string/jumbo v12, "log"

    #@5a
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v11

    #@5e
    .line 867
    const-string/jumbo v12, " "

    #@61
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v11

    #@65
    .line 868
    const-string/jumbo v12, "WHERE "

    #@68
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v11

    #@6c
    .line 869
    const-string/jumbo v12, "event_type"

    #@6f
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v11

    #@73
    .line 869
    const-string/jumbo v12, "="

    #@76
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v11

    #@7a
    .line 869
    const/4 v12, 0x1

    #@7b
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v11

    #@7f
    .line 870
    const-string/jumbo v12, " AND "

    #@82
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v11

    #@86
    .line 870
    const-string/jumbo v12, "event_time_ms"

    #@89
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v11

    #@8d
    .line 870
    const-string/jumbo v12, " > "

    #@90
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v11

    #@94
    .line 870
    iget-wide v12, p1, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    #@96
    .line 860
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@99
    move-result-object v11

    #@9a
    .line 871
    const-string/jumbo v12, " GROUP BY "

    #@9d
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v11

    #@a1
    .line 871
    const-string/jumbo v12, "event_user_id"

    #@a4
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v11

    #@a8
    .line 871
    const-string/jumbo v12, ", day, "

    #@ab
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v11

    #@af
    .line 871
    const-string/jumbo v12, "pkg"

    #@b2
    .line 860
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v11

    #@b6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v8

    #@ba
    .line 872
    .local v8, "q":Ljava/lang/String;
    const/4 v11, 0x0

    #@bb
    invoke-virtual {v3, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@be
    move-result-object v1

    #@bf
    .line 874
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    #@c2
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    #@c5
    move-result v11

    #@c6
    if-nez v11, :cond_2

    #@c8
    .line 875
    const/4 v11, 0x0

    #@c9
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    #@cc
    move-result v10

    #@cd
    .line 876
    .local v10, "userId":I
    const/4 v11, 0x1

    #@ce
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@d1
    move-result-object v5

    #@d2
    .line 877
    .local v5, "pkg":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@d4
    invoke-virtual {p1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    #@d7
    move-result v11

    #@d8
    if-eqz v11, :cond_1

    #@da
    .line 878
    :cond_0
    const/4 v11, 0x2

    #@db
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    #@de
    move-result v2

    #@df
    .line 879
    .local v2, "day":I
    const/4 v11, 0x3

    #@e0
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    #@e3
    move-result v0

    #@e4
    .line 880
    .local v0, "count":I
    new-instance v9, Lorg/json/JSONObject;

    #@e6
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    #@e9
    .line 881
    .local v9, "row":Lorg/json/JSONObject;
    const-string/jumbo v11, "user_id"

    #@ec
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@ef
    .line 882
    const-string/jumbo v11, "package"

    #@f2
    invoke-virtual {v9, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@f5
    .line 883
    const-string/jumbo v11, "day"

    #@f8
    invoke-virtual {v9, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@fb
    .line 884
    const-string/jumbo v11, "count"

    #@fe
    invoke-virtual {v9, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@101
    .line 885
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@104
    .line 874
    .end local v0    # "count":I
    .end local v2    # "day":I
    .end local v9    # "row":Lorg/json/JSONObject;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@107
    goto :goto_0

    #@108
    .line 887
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v10    # "userId":I
    :catchall_0
    move-exception v11

    #@109
    .line 888
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@10c
    .line 887
    throw v11

    #@10d
    .line 888
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@110
    .line 890
    return-object v4
.end method

.method private getMidnightMs()J
    .locals 7

    #@0
    .prologue
    const/16 v5, 0x3b

    #@2
    .line 924
    new-instance v0, Ljava/util/GregorianCalendar;

    #@4
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    #@7
    .line 925
    .local v0, "midnight":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    #@8
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@b
    move-result v1

    #@c
    const/4 v2, 0x2

    #@d
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    #@10
    move-result v2

    #@11
    .line 926
    const/4 v3, 0x5

    #@12
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    #@15
    move-result v3

    #@16
    const/16 v4, 0x17

    #@18
    move v6, v5

    #@19
    .line 925
    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    #@1c
    .line 927
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    #@1f
    move-result-wide v2

    #@20
    return-wide v2
.end method

.method private pruneIfNecessary(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 951
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 952
    .local v4, "nowMs":J
    sget-wide v6, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    #@6
    const-wide/16 v8, 0x400

    #@8
    cmp-long v1, v6, v8

    #@a
    if-gtz v1, :cond_0

    #@c
    .line 953
    sget-wide v6, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sLastPruneMs:J

    #@e
    sub-long v6, v4, v6

    #@10
    const-wide/32 v8, 0x1499700

    #@13
    cmp-long v1, v6, v8

    #@15
    if-lez v1, :cond_1

    #@17
    .line 954
    :cond_0
    const-wide/16 v6, 0x0

    #@19
    sput-wide v6, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    #@1b
    .line 955
    sput-wide v4, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sLastPruneMs:J

    #@1d
    .line 956
    const-wide/32 v6, 0x240c8400

    #@20
    sub-long v2, v4, v6

    #@22
    .line 957
    .local v2, "horizonStartMs":J
    const-string/jumbo v1, "log"

    #@25
    const-string/jumbo v6, "event_time_ms < ?"

    #@28
    .line 958
    const/4 v7, 0x1

    #@29
    new-array v7, v7, [Ljava/lang/String;

    #@2b
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@2e
    move-result-object v8

    #@2f
    const/4 v9, 0x0

    #@30
    aput-object v8, v7, v9

    #@32
    .line 957
    invoke-virtual {p1, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@35
    move-result v0

    #@36
    .line 959
    .local v0, "deletedRows":I
    const-string/jumbo v1, "NotificationSQLiteLog"

    #@39
    new-instance v6, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v7, "Pruned event entries: "

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 949
    .end local v0    # "deletedRows":I
    .end local v2    # "horizonStartMs":J
    :cond_1
    return-void
.end method

.method private static putNotificationDetails(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .locals 4
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 969
    const-string/jumbo v0, "nid"

    #@3
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@5
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    #@8
    move-result v1

    #@9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@10
    .line 970
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@12
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 971
    const-string/jumbo v0, "tag"

    #@1b
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@1d
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 973
    :cond_0
    const-string/jumbo v0, "when_ms"

    #@27
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@29
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    #@2c
    move-result-wide v2

    #@2d
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@34
    .line 974
    const-string/jumbo v0, "flags"

    #@37
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@3a
    move-result-object v1

    #@3b
    iget v1, v1, Landroid/app/Notification;->flags:I

    #@3d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@44
    .line 975
    const-string/jumbo v0, "priority"

    #@47
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@4a
    move-result-object v1

    #@4b
    iget v1, v1, Landroid/app/Notification;->priority:I

    #@4d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@54
    .line 976
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@57
    move-result-object v0

    #@58
    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    #@5a
    if-eqz v0, :cond_1

    #@5c
    .line 977
    const-string/jumbo v0, "category"

    #@5f
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@62
    move-result-object v1

    #@63
    iget-object v1, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    #@65
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@68
    .line 979
    :cond_1
    const-string/jumbo v1, "action_count"

    #@6b
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@6e
    move-result-object v0

    #@6f
    iget-object v0, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@71
    if-eqz v0, :cond_2

    #@73
    .line 980
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@76
    move-result-object v0

    #@77
    iget-object v0, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@79
    array-length v0, v0

    #@7a
    .line 979
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7d
    move-result-object v0

    #@7e
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@81
    .line 968
    return-void

    #@82
    .line 980
    :cond_2
    const/4 v0, 0x0

    #@83
    goto :goto_0
.end method

.method private static putNotificationIdentifiers(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 964
    const-string/jumbo v0, "key"

    #@3
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@5
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 965
    const-string/jumbo v0, "pkg"

    #@f
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@11
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 963
    return-void
.end method

.method private static putPosttimeVisibility(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .locals 4
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 984
    const-string/jumbo v0, "posttime_ms"

    #@3
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@5
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentPosttimeMs()J

    #@8
    move-result-wide v2

    #@9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@10
    .line 985
    const-string/jumbo v0, "airtime_ms"

    #@13
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@15
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentAirtimeMs()J

    #@18
    move-result-wide v2

    #@19
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@20
    .line 986
    const-string/jumbo v0, "expansion_count"

    #@23
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@25
    iget-wide v2, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    #@27
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@2e
    .line 987
    const-string/jumbo v0, "expansion_airtime_ms"

    #@31
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@33
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentAirtimeExpandedMs()J

    #@36
    move-result-wide v2

    #@37
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@3e
    .line 988
    const-string/jumbo v0, "first_expansion_time_ms"

    #@41
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@43
    iget-wide v2, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    #@45
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@4c
    .line 983
    return-void
.end method

.method private writeEvent(JILcom/android/server/notification/NotificationRecord;)V
    .locals 7
    .param p1, "eventTimeMs"    # J
    .param p3, "eventType"    # I
    .param p4, "r"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 931
    new-instance v0, Landroid/content/ContentValues;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 932
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "event_user_id"

    #@8
    iget-object v3, p4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@a
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    #@11
    move-result v3

    #@12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@19
    .line 933
    const-string/jumbo v2, "event_time_ms"

    #@1c
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@23
    .line 934
    const-string/jumbo v2, "event_type"

    #@26
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@2d
    .line 935
    invoke-static {p4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->putNotificationIdentifiers(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    #@30
    .line 936
    const/4 v2, 0x1

    #@31
    if-ne p3, v2, :cond_1

    #@33
    .line 937
    invoke-static {p4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->putNotificationDetails(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    #@36
    .line 941
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@38
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@3b
    move-result-object v1

    #@3c
    .line 942
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "log"

    #@3f
    const/4 v3, 0x0

    #@40
    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@43
    move-result-wide v2

    #@44
    const-wide/16 v4, 0x0

    #@46
    cmp-long v2, v2, v4

    #@48
    if-gez v2, :cond_0

    #@4a
    .line 943
    const-string/jumbo v2, "NotificationSQLiteLog"

    #@4d
    new-instance v3, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v4, "Error while trying to insert values: "

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 945
    :cond_0
    sget-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    #@66
    const-wide/16 v4, 0x1

    #@68
    add-long/2addr v2, v4

    #@69
    sput-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    #@6b
    .line 946
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->pruneIfNecessary(Landroid/database/sqlite/SQLiteDatabase;)V

    #@6e
    .line 930
    return-void

    #@6f
    .line 939
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    invoke-static {p4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->putPosttimeVisibility(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    #@72
    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 992
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->printPostFrequencies(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@3
    .line 991
    return-void
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 996
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@5
    .line 998
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "post_frequency"

    #@8
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->JsonPostFrequencies(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1002
    :goto_0
    return-object v0

    #@10
    .line 999
    :catch_0
    move-exception v1

    #@11
    .local v1, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method public logClicked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    #@4
    const/4 v2, 0x2

    #@5
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@c
    .line 844
    return-void
.end method

.method public logDismissed(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    #@4
    const/4 v2, 0x4

    #@5
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@c
    .line 852
    return-void
.end method

.method public logPosted(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    #@4
    const/4 v2, 0x1

    #@5
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@c
    .line 840
    return-void
.end method

.method public logRemoved(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    #@4
    const/4 v2, 0x3

    #@5
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@c
    .line 848
    return-void
.end method

.method public printPostFrequencies(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 894
    iget-object v9, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@5
    move-result-object v3

    #@6
    .line 895
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->getMidnightMs()J

    #@9
    move-result-wide v4

    #@a
    .line 896
    .local v4, "midnight":J
    new-instance v9, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v10, "SELECT event_user_id, pkg, CAST((("

    #@12
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v9

    #@16
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19
    move-result-object v9

    #@1a
    .line 900
    const-string/jumbo v10, " - "

    #@1d
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v9

    #@21
    .line 900
    const-string/jumbo v10, "event_time_ms"

    #@24
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v9

    #@28
    .line 900
    const-string/jumbo v10, ") / "

    #@2b
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v9

    #@2f
    .line 900
    const-wide/32 v10, 0x5265c00

    #@32
    .line 896
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@35
    move-result-object v9

    #@36
    .line 900
    const-string/jumbo v10, ") AS int) "

    #@39
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v9

    #@3d
    .line 901
    const-string/jumbo v10, "AS day, "

    #@40
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v9

    #@44
    .line 902
    const-string/jumbo v10, "COUNT(*) AS cnt "

    #@47
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v9

    #@4b
    .line 903
    const-string/jumbo v10, "FROM "

    #@4e
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v9

    #@52
    .line 903
    const-string/jumbo v10, "log"

    #@55
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v9

    #@59
    .line 903
    const-string/jumbo v10, " "

    #@5c
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v9

    #@60
    .line 904
    const-string/jumbo v10, "WHERE "

    #@63
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v9

    #@67
    .line 905
    const-string/jumbo v10, "event_type"

    #@6a
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v9

    #@6e
    .line 905
    const-string/jumbo v10, "="

    #@71
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v9

    #@75
    .line 905
    const/4 v10, 0x1

    #@76
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v9

    #@7a
    .line 905
    const-string/jumbo v10, " "

    #@7d
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v9

    #@81
    .line 906
    const-string/jumbo v10, "GROUP BY "

    #@84
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v9

    #@88
    .line 906
    const-string/jumbo v10, "event_user_id"

    #@8b
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v9

    #@8f
    .line 906
    const-string/jumbo v10, ", day, "

    #@92
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v9

    #@96
    .line 906
    const-string/jumbo v10, "pkg"

    #@99
    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v9

    #@9d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v7

    #@a1
    .line 907
    .local v7, "q":Ljava/lang/String;
    const/4 v9, 0x0

    #@a2
    invoke-virtual {v3, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@a5
    move-result-object v1

    #@a6
    .line 909
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    #@a9
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    #@ac
    move-result v9

    #@ad
    if-nez v9, :cond_2

    #@af
    .line 910
    const/4 v9, 0x0

    #@b0
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    #@b3
    move-result v8

    #@b4
    .line 911
    .local v8, "userId":I
    const/4 v9, 0x1

    #@b5
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@b8
    move-result-object v6

    #@b9
    .line 912
    .local v6, "pkg":Ljava/lang/String;
    if-eqz p3, :cond_0

    #@bb
    invoke-virtual {p3, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    #@be
    move-result v9

    #@bf
    if-eqz v9, :cond_1

    #@c1
    .line 913
    :cond_0
    const/4 v9, 0x2

    #@c2
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    #@c5
    move-result v2

    #@c6
    .line 914
    .local v2, "day":I
    const/4 v9, 0x3

    #@c7
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    #@ca
    move-result v0

    #@cb
    .line 915
    .local v0, "count":I
    new-instance v9, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v9

    #@d4
    const-string/jumbo v10, "post_frequency{user_id="

    #@d7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v9

    #@db
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@de
    move-result-object v9

    #@df
    const-string/jumbo v10, ",pkg="

    #@e2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v9

    #@e6
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v9

    #@ea
    .line 916
    const-string/jumbo v10, ",day="

    #@ed
    .line 915
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v9

    #@f1
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v9

    #@f5
    .line 916
    const-string/jumbo v10, ",count="

    #@f8
    .line 915
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v9

    #@fc
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v9

    #@100
    .line 916
    const-string/jumbo v10, "}"

    #@103
    .line 915
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v9

    #@107
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v9

    #@10b
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10e
    .line 909
    .end local v0    # "count":I
    .end local v2    # "day":I
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@111
    goto :goto_0

    #@112
    .line 918
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v8    # "userId":I
    :catchall_0
    move-exception v9

    #@113
    .line 919
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@116
    .line 918
    throw v9

    #@117
    .line 919
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@11a
    .line 893
    return-void
.end method
