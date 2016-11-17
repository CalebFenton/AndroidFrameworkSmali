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

.field private static final COL_DEMOTED:Ljava/lang/String; = "demoted"

.field private static final COL_EVENT_TIME:Ljava/lang/String; = "event_time_ms"

.field private static final COL_EVENT_TYPE:Ljava/lang/String; = "event_type"

.field private static final COL_EVENT_USER_ID:Ljava/lang/String; = "event_user_id"

.field private static final COL_EXPAND_COUNT:Ljava/lang/String; = "expansion_count"

.field private static final COL_FIRST_EXPANSIONTIME_MS:Ljava/lang/String; = "first_expansion_time_ms"

.field private static final COL_FLAGS:Ljava/lang/String; = "flags"

.field private static final COL_IMPORTANCE_FINAL:Ljava/lang/String; = "importance_final"

.field private static final COL_IMPORTANCE_REQ:Ljava/lang/String; = "importance_request"

.field private static final COL_KEY:Ljava/lang/String; = "key"

.field private static final COL_MUTED:Ljava/lang/String; = "muted"

.field private static final COL_NOISY:Ljava/lang/String; = "noisy"

.field private static final COL_NOTIFICATION_ID:Ljava/lang/String; = "nid"

.field private static final COL_PKG:Ljava/lang/String; = "pkg"

.field private static final COL_POSTTIME_MS:Ljava/lang/String; = "posttime_ms"

.field private static final COL_TAG:Ljava/lang/String; = "tag"

.field private static final COL_WHEN_MS:Ljava/lang/String; = "when_ms"

.field private static final DAY_MS:J = 0x5265c00L

.field private static final DB_NAME:Ljava/lang/String; = "notification_log.db"

.field private static final DB_VERSION:I = 0x5

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

.field private static final STATS_QUERY:Ljava/lang/String; = "SELECT event_user_id, pkg, CAST(((%d - event_time_ms) / 86400000) AS int) AS day, COUNT(*) AS cnt, SUM(muted) as muted, SUM(noisy) as noisy, SUM(demoted) as demoted FROM log WHERE event_type=1 AND event_time_ms > %d  GROUP BY event_user_id, day, pkg"

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
    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1055
    new-instance v6, Landroid/os/HandlerThread;

    #@5
    const-string/jumbo v0, "notification-sqlite-log"

    #@8
    .line 1056
    const/16 v1, 0xa

    #@a
    .line 1055
    invoke-direct {v6, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@d
    .line 1057
    .local v6, "backgroundThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    #@10
    .line 1058
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
    .line 1082
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;

    #@1d
    const-string/jumbo v3, "notification_log.db"

    #@20
    const/4 v4, 0x0

    #@21
    const/4 v5, 0x5

    #@22
    move-object v1, p0

    #@23
    move-object v2, p1

    #@24
    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;-><init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #@27
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@29
    .line 1054
    return-void
.end method

.method private getMidnightMs()J
    .locals 7

    #@0
    .prologue
    const/16 v5, 0x3b

    #@2
    .line 1195
    new-instance v0, Ljava/util/GregorianCalendar;

    #@4
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    #@7
    .line 1196
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
    .line 1197
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
    .line 1196
    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    #@1c
    .line 1198
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    #@1f
    move-result-wide v2

    #@20
    return-wide v2
.end method

.method private jsonPostFrequencies(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .locals 20
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 1139
    new-instance v7, Lorg/json/JSONArray;

    #@2
    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    #@5
    .line 1140
    .local v7, "frequencies":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    #@7
    iget-object v0, v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@9
    move-object/from16 v16, v0

    #@b
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@e
    move-result-object v5

    #@f
    .line 1141
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->getMidnightMs()J

    #@12
    move-result-wide v8

    #@13
    .line 1142
    .local v8, "midnight":J
    const-string/jumbo v16, "SELECT event_user_id, pkg, CAST(((%d - event_time_ms) / 86400000) AS int) AS day, COUNT(*) AS cnt, SUM(muted) as muted, SUM(noisy) as noisy, SUM(demoted) as demoted FROM log WHERE event_type=1 AND event_time_ms > %d  GROUP BY event_user_id, day, pkg"

    #@16
    const/16 v17, 0x2

    #@18
    move/from16 v0, v17

    #@1a
    new-array v0, v0, [Ljava/lang/Object;

    #@1c
    move-object/from16 v17, v0

    #@1e
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@21
    move-result-object v18

    #@22
    const/16 v19, 0x0

    #@24
    aput-object v18, v17, v19

    #@26
    move-object/from16 v0, p1

    #@28
    iget-wide v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    #@2a
    move-wide/from16 v18, v0

    #@2c
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2f
    move-result-object v18

    #@30
    const/16 v19, 0x1

    #@32
    aput-object v18, v17, v19

    #@34
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@37
    move-result-object v13

    #@38
    .line 1143
    .local v13, "q":Ljava/lang/String;
    const/16 v16, 0x0

    #@3a
    move-object/from16 v0, v16

    #@3c
    invoke-virtual {v5, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@3f
    move-result-object v3

    #@40
    .line 1145
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    #@43
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    #@46
    move-result v16

    #@47
    if-nez v16, :cond_2

    #@49
    .line 1146
    const/16 v16, 0x0

    #@4b
    move/from16 v0, v16

    #@4d
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    #@50
    move-result v15

    #@51
    .line 1147
    .local v15, "userId":I
    const/16 v16, 0x1

    #@53
    move/from16 v0, v16

    #@55
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@58
    move-result-object v12

    #@59
    .line 1148
    .local v12, "pkg":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@5b
    move-object/from16 v0, p1

    #@5d
    invoke-virtual {v0, v12}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    #@60
    move-result v16

    #@61
    if-eqz v16, :cond_1

    #@63
    .line 1149
    :cond_0
    const/16 v16, 0x2

    #@65
    move/from16 v0, v16

    #@67
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    #@6a
    move-result v4

    #@6b
    .line 1150
    .local v4, "day":I
    const/16 v16, 0x3

    #@6d
    move/from16 v0, v16

    #@6f
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    #@72
    move-result v2

    #@73
    .line 1151
    .local v2, "count":I
    const/16 v16, 0x4

    #@75
    move/from16 v0, v16

    #@77
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    #@7a
    move-result v10

    #@7b
    .line 1152
    .local v10, "muted":I
    const/16 v16, 0x5

    #@7d
    move/from16 v0, v16

    #@7f
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    #@82
    move-result v11

    #@83
    .line 1153
    .local v11, "noisy":I
    const/16 v16, 0x6

    #@85
    move/from16 v0, v16

    #@87
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    #@8a
    move-result v6

    #@8b
    .line 1154
    .local v6, "demoted":I
    new-instance v14, Lorg/json/JSONObject;

    #@8d
    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    #@90
    .line 1155
    .local v14, "row":Lorg/json/JSONObject;
    const-string/jumbo v16, "user_id"

    #@93
    move-object/from16 v0, v16

    #@95
    invoke-virtual {v14, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@98
    .line 1156
    const-string/jumbo v16, "package"

    #@9b
    move-object/from16 v0, v16

    #@9d
    invoke-virtual {v14, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@a0
    .line 1157
    const-string/jumbo v16, "day"

    #@a3
    move-object/from16 v0, v16

    #@a5
    invoke-virtual {v14, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@a8
    .line 1158
    const-string/jumbo v16, "count"

    #@ab
    move-object/from16 v0, v16

    #@ad
    invoke-virtual {v14, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@b0
    .line 1159
    const-string/jumbo v16, "noisy"

    #@b3
    move-object/from16 v0, v16

    #@b5
    invoke-virtual {v14, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@b8
    .line 1160
    const-string/jumbo v16, "muted"

    #@bb
    move-object/from16 v0, v16

    #@bd
    invoke-virtual {v14, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@c0
    .line 1161
    const-string/jumbo v16, "demoted"

    #@c3
    move-object/from16 v0, v16

    #@c5
    invoke-virtual {v14, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@c8
    .line 1162
    invoke-virtual {v7, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@cb
    .line 1145
    .end local v2    # "count":I
    .end local v4    # "day":I
    .end local v6    # "demoted":I
    .end local v10    # "muted":I
    .end local v11    # "noisy":I
    .end local v14    # "row":Lorg/json/JSONObject;
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ce
    goto/16 :goto_0

    #@d0
    .line 1164
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v15    # "userId":I
    :catchall_0
    move-exception v16

    #@d1
    .line 1165
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    #@d4
    .line 1164
    throw v16

    #@d5
    .line 1165
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    #@d8
    .line 1167
    return-object v7
.end method

.method private pruneIfNecessary(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 1222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 1223
    .local v4, "nowMs":J
    sget-wide v6, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    #@6
    const-wide/16 v8, 0x400

    #@8
    cmp-long v1, v6, v8

    #@a
    if-gtz v1, :cond_0

    #@c
    .line 1224
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
    .line 1225
    :cond_0
    const-wide/16 v6, 0x0

    #@19
    sput-wide v6, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    #@1b
    .line 1226
    sput-wide v4, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sLastPruneMs:J

    #@1d
    .line 1227
    const-wide/32 v6, 0x240c8400

    #@20
    sub-long v2, v4, v6

    #@22
    .line 1228
    .local v2, "horizonStartMs":J
    const-string/jumbo v1, "log"

    #@25
    const-string/jumbo v6, "event_time_ms < ?"

    #@28
    .line 1229
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
    .line 1228
    invoke-virtual {p1, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@35
    move-result v0

    #@36
    .line 1230
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
    .line 1220
    .end local v0    # "deletedRows":I
    .end local v2    # "horizonStartMs":J
    :cond_1
    return-void
.end method

.method private static putNotificationDetails(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .locals 8
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"    # Landroid/content/ContentValues;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1240
    const-string/jumbo v3, "nid"

    #@5
    iget-object v6, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@7
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    #@a
    move-result v6

    #@b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {p1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@12
    .line 1241
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@14
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 1242
    const-string/jumbo v3, "tag"

    #@1d
    iget-object v6, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@1f
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {p1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 1244
    :cond_0
    const-string/jumbo v3, "when_ms"

    #@29
    iget-object v6, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2b
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    #@2e
    move-result-wide v6

    #@2f
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {p1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@36
    .line 1245
    const-string/jumbo v3, "flags"

    #@39
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@3c
    move-result-object v6

    #@3d
    iget v6, v6, Landroid/app/Notification;->flags:I

    #@3f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {p1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@46
    .line 1246
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@48
    iget v1, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    #@4a
    .line 1247
    .local v1, "before":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    #@4d
    move-result v0

    #@4e
    .line 1248
    .local v0, "after":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@50
    iget-boolean v2, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    #@52
    .line 1249
    .local v2, "noisy":Z
    const-string/jumbo v3, "importance_request"

    #@55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {p1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@5c
    .line 1250
    const-string/jumbo v3, "importance_final"

    #@5f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {p1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@66
    .line 1251
    const-string/jumbo v6, "demoted"

    #@69
    if-ge v0, v1, :cond_3

    #@6b
    move v3, v4

    #@6c
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {p1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@73
    .line 1252
    const-string/jumbo v3, "noisy"

    #@76
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {p1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@7d
    .line 1253
    if-eqz v2, :cond_4

    #@7f
    const/4 v3, 0x4

    #@80
    if-ge v0, v3, :cond_4

    #@82
    .line 1254
    const-string/jumbo v3, "muted"

    #@85
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@8c
    .line 1258
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@8f
    move-result-object v3

    #@90
    iget-object v3, v3, Landroid/app/Notification;->category:Ljava/lang/String;

    #@92
    if-eqz v3, :cond_1

    #@94
    .line 1259
    const-string/jumbo v3, "category"

    #@97
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@9a
    move-result-object v4

    #@9b
    iget-object v4, v4, Landroid/app/Notification;->category:Ljava/lang/String;

    #@9d
    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@a0
    .line 1261
    :cond_1
    const-string/jumbo v3, "action_count"

    #@a3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@a6
    move-result-object v4

    #@a7
    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@a9
    if-eqz v4, :cond_2

    #@ab
    .line 1262
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@ae
    move-result-object v4

    #@af
    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@b1
    array-length v5, v4

    #@b2
    .line 1261
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b5
    move-result-object v4

    #@b6
    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@b9
    .line 1239
    return-void

    #@ba
    :cond_3
    move v3, v5

    #@bb
    .line 1251
    goto :goto_0

    #@bc
    .line 1256
    :cond_4
    const-string/jumbo v3, "muted"

    #@bf
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c2
    move-result-object v4

    #@c3
    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@c6
    goto :goto_1
.end method

.method private static putNotificationIdentifiers(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 1235
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
    .line 1236
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
    .line 1234
    return-void
.end method

.method private static putPosttimeVisibility(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .locals 4
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 1266
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
    .line 1267
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
    .line 1268
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
    .line 1269
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
    .line 1270
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
    .line 1265
    return-void
.end method

.method private writeEvent(JILcom/android/server/notification/NotificationRecord;)V
    .locals 7
    .param p1, "eventTimeMs"    # J
    .param p3, "eventType"    # I
    .param p4, "r"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 1202
    new-instance v0, Landroid/content/ContentValues;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 1203
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
    .line 1204
    const-string/jumbo v2, "event_time_ms"

    #@1c
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@23
    .line 1205
    const-string/jumbo v2, "event_type"

    #@26
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@2d
    .line 1206
    invoke-static {p4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->putNotificationIdentifiers(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    #@30
    .line 1207
    const/4 v2, 0x1

    #@31
    if-ne p3, v2, :cond_1

    #@33
    .line 1208
    invoke-static {p4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->putNotificationDetails(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    #@36
    .line 1212
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@38
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@3b
    move-result-object v1

    #@3c
    .line 1213
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
    .line 1214
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
    .line 1216
    :cond_0
    sget-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    #@66
    const-wide/16 v4, 0x1

    #@68
    add-long/2addr v2, v4

    #@69
    sput-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    #@6b
    .line 1217
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->pruneIfNecessary(Landroid/database/sqlite/SQLiteDatabase;)V

    #@6e
    .line 1201
    return-void

    #@6f
    .line 1210
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
    .line 1274
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->printPostFrequencies(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@3
    .line 1273
    return-void
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 1278
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@5
    .line 1280
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "post_frequency"

    #@8
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->jsonPostFrequencies(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@f
    .line 1281
    const-string/jumbo v2, "since"

    #@12
    iget-wide v4, p1, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    #@14
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@17
    .line 1282
    const-string/jumbo v2, "now"

    #@1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1d
    move-result-wide v4

    #@1e
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 1286
    :goto_0
    return-object v0

    #@22
    .line 1283
    :catch_0
    move-exception v1

    #@23
    .local v1, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method public logClicked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 1127
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
    .line 1126
    return-void
.end method

.method public logDismissed(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 1135
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
    .line 1134
    return-void
.end method

.method public logPosted(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 1123
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
    .line 1122
    return-void
.end method

.method public logRemoved(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 1131
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
    .line 1130
    return-void
.end method

.method public printPostFrequencies(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 1171
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@4
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@7
    move-result-object v5

    #@8
    .line 1172
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->getMidnightMs()J

    #@b
    move-result-wide v8

    #@c
    .line 1173
    .local v8, "midnight":J
    const-string/jumbo v14, "SELECT event_user_id, pkg, CAST(((%d - event_time_ms) / 86400000) AS int) AS day, COUNT(*) AS cnt, SUM(muted) as muted, SUM(noisy) as noisy, SUM(demoted) as demoted FROM log WHERE event_type=1 AND event_time_ms > %d  GROUP BY event_user_id, day, pkg"

    #@f
    const/4 v15, 0x2

    #@10
    new-array v15, v15, [Ljava/lang/Object;

    #@12
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@15
    move-result-object v16

    #@16
    const/16 v17, 0x0

    #@18
    aput-object v16, v15, v17

    #@1a
    move-object/from16 v0, p3

    #@1c
    iget-wide v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    #@1e
    move-wide/from16 v16, v0

    #@20
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@23
    move-result-object v16

    #@24
    const/16 v17, 0x1

    #@26
    aput-object v16, v15, v17

    #@28
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v12

    #@2c
    .line 1174
    .local v12, "q":Ljava/lang/String;
    const/4 v14, 0x0

    #@2d
    invoke-virtual {v5, v12, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@30
    move-result-object v3

    #@31
    .line 1176
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    #@34
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    #@37
    move-result v14

    #@38
    if-nez v14, :cond_2

    #@3a
    .line 1177
    const/4 v14, 0x0

    #@3b
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    #@3e
    move-result v13

    #@3f
    .line 1178
    .local v13, "userId":I
    const/4 v14, 0x1

    #@40
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@43
    move-result-object v11

    #@44
    .line 1179
    .local v11, "pkg":Ljava/lang/String;
    if-eqz p3, :cond_0

    #@46
    move-object/from16 v0, p3

    #@48
    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    #@4b
    move-result v14

    #@4c
    if-eqz v14, :cond_1

    #@4e
    .line 1180
    :cond_0
    const/4 v14, 0x2

    #@4f
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    #@52
    move-result v4

    #@53
    .line 1181
    .local v4, "day":I
    const/4 v14, 0x3

    #@54
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    #@57
    move-result v2

    #@58
    .line 1182
    .local v2, "count":I
    const/4 v14, 0x4

    #@59
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    #@5c
    move-result v7

    #@5d
    .line 1183
    .local v7, "muted":I
    const/4 v14, 0x5

    #@5e
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    #@61
    move-result v10

    #@62
    .line 1184
    .local v10, "noisy":I
    const/4 v14, 0x6

    #@63
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    #@66
    move-result v6

    #@67
    .line 1185
    .local v6, "demoted":I
    new-instance v14, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    move-object/from16 v0, p2

    #@6e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v14

    #@72
    const-string/jumbo v15, "post_frequency{user_id="

    #@75
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v14

    #@79
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v14

    #@7d
    const-string/jumbo v15, ",pkg="

    #@80
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v14

    #@84
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v14

    #@88
    .line 1186
    const-string/jumbo v15, ",day="

    #@8b
    .line 1185
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v14

    #@8f
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    move-result-object v14

    #@93
    .line 1186
    const-string/jumbo v15, ",count="

    #@96
    .line 1185
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v14

    #@9a
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v14

    #@9e
    .line 1186
    const-string/jumbo v15, ",muted="

    #@a1
    .line 1185
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v14

    #@a5
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v14

    #@a9
    .line 1186
    const-string/jumbo v15, "/"

    #@ac
    .line 1185
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v14

    #@b0
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v14

    #@b4
    .line 1187
    const-string/jumbo v15, ",demoted="

    #@b7
    .line 1185
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v14

    #@bb
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    move-result-object v14

    #@bf
    .line 1187
    const-string/jumbo v15, "}"

    #@c2
    .line 1185
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v14

    #@c6
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v14

    #@ca
    move-object/from16 v0, p1

    #@cc
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cf
    .line 1176
    .end local v2    # "count":I
    .end local v4    # "day":I
    .end local v6    # "demoted":I
    .end local v7    # "muted":I
    .end local v10    # "noisy":I
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d2
    goto/16 :goto_0

    #@d4
    .line 1189
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v13    # "userId":I
    :catchall_0
    move-exception v14

    #@d5
    .line 1190
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    #@d8
    .line 1189
    throw v14

    #@d9
    .line 1190
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    #@dc
    .line 1170
    return-void
.end method
