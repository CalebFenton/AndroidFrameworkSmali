.class public final Landroid/provider/CalendarContract$CalendarAlerts;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$CalendarAlertsColumns;
.implements Landroid/provider/CalendarContract$EventsColumns;
.implements Landroid/provider/CalendarContract$CalendarColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalendarAlerts"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

.field private static final DEBUG:Z = false

.field private static final SORT_ORDER_ALARMTIME_ASC:Ljava/lang/String; = "alarmTime ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "CalendarAlerts"

.field private static final WHERE_ALARM_EXISTS:Ljava/lang/String; = "event_id=? AND begin=? AND alarmTime=?"

.field private static final WHERE_FINDNEXTALARMTIME:Ljava/lang/String; = "alarmTime>=?"

.field private static final WHERE_RESCHEDULE_MISSED_ALARMS:Ljava/lang/String; = "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 2226
    const-string/jumbo v0, "content://com.android.calendar/calendar_alerts"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 2253
    const-string/jumbo v0, "content://com.android.calendar/calendar_alerts/by_instance"

    #@c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@f
    move-result-object v0

    #@10
    .line 2252
    sput-object v0, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    #@12
    .line 2215
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final alarmExists(Landroid/content/ContentResolver;JJJ)Z
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "eventId"    # J
    .param p3, "begin"    # J
    .param p5, "alarmTime"    # J

    #@0
    .prologue
    .line 2417
    const/4 v0, 0x1

    #@1
    new-array v2, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v0, "alarmTime"

    #@6
    const/4 v1, 0x0

    #@7
    aput-object v0, v2, v1

    #@9
    .line 2418
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    #@b
    const-string/jumbo v3, "event_id=? AND begin=? AND alarmTime=?"

    #@e
    .line 2419
    const/4 v0, 0x3

    #@f
    new-array v4, v0, [Ljava/lang/String;

    #@11
    .line 2420
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    const/4 v5, 0x0

    #@16
    aput-object v0, v4, v5

    #@18
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    const/4 v5, 0x1

    #@1d
    aput-object v0, v4, v5

    #@1f
    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    const/4 v5, 0x2

    #@24
    aput-object v0, v4, v5

    #@26
    .line 2421
    const/4 v5, 0x0

    #@27
    move-object v0, p0

    #@28
    .line 2418
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@2b
    move-result-object v6

    #@2c
    .line 2422
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    #@2d
    .line 2424
    .local v7, "found":Z
    if-eqz v6, :cond_0

    #@2f
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result v0

    #@33
    if-lez v0, :cond_0

    #@35
    .line 2425
    const/4 v7, 0x1

    #@36
    .line 2428
    :cond_0
    if-eqz v6, :cond_1

    #@38
    .line 2429
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@3b
    .line 2432
    :cond_1
    return v7

    #@3c
    .line 2427
    :catchall_0
    move-exception v0

    #@3d
    .line 2428
    if-eqz v6, :cond_2

    #@3f
    .line 2429
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@42
    .line 2427
    :cond_2
    throw v0
.end method

.method public static final findNextAlarmTime(Landroid/content/ContentResolver;J)J
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "millis"    # J

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2292
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "alarmTime>="

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v9

    #@16
    .line 2295
    .local v9, "selection":Ljava/lang/String;
    new-array v2, v4, [Ljava/lang/String;

    #@18
    const-string/jumbo v0, "alarmTime"

    #@1b
    aput-object v0, v2, v5

    #@1d
    .line 2296
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    #@1f
    const-string/jumbo v3, "alarmTime>=?"

    #@22
    .line 2297
    new-array v4, v4, [Ljava/lang/String;

    #@24
    .line 2298
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    aput-object v0, v4, v5

    #@2a
    .line 2299
    const-string/jumbo v5, "alarmTime ASC"

    #@2d
    move-object v0, p0

    #@2e
    .line 2296
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@31
    move-result-object v8

    #@32
    .line 2300
    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    #@34
    .line 2302
    .local v6, "alarmTime":J
    if-eqz v8, :cond_0

    #@36
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_0

    #@3c
    .line 2303
    const/4 v0, 0x0

    #@3d
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    move-result-wide v6

    #@41
    .line 2306
    :cond_0
    if-eqz v8, :cond_1

    #@43
    .line 2307
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@46
    .line 2310
    :cond_1
    return-wide v6

    #@47
    .line 2305
    :catchall_0
    move-exception v0

    #@48
    .line 2306
    if-eqz v8, :cond_2

    #@4a
    .line 2307
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@4d
    .line 2305
    :cond_2
    throw v0
.end method

.method public static final insert(Landroid/content/ContentResolver;JJJJI)Landroid/net/Uri;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "eventId"    # J
    .param p3, "begin"    # J
    .param p5, "end"    # J
    .param p7, "alarmTime"    # J
    .param p9, "minutes"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2265
    new-instance v2, Landroid/content/ContentValues;

    #@3
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    #@6
    .line 2266
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "event_id"

    #@9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@10
    .line 2267
    const-string/jumbo v3, "begin"

    #@13
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@1a
    .line 2268
    const-string/jumbo v3, "end"

    #@1d
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@24
    .line 2269
    const-string/jumbo v3, "alarmTime"

    #@27
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@2e
    .line 2270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@31
    move-result-wide v0

    #@32
    .line 2271
    .local v0, "currentTime":J
    const-string/jumbo v3, "creationTime"

    #@35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@3c
    .line 2272
    const-string/jumbo v3, "receivedTime"

    #@3f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@46
    .line 2273
    const-string/jumbo v3, "notifyTime"

    #@49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@50
    .line 2274
    const-string/jumbo v3, "state"

    #@53
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@5a
    .line 2275
    const-string/jumbo v3, "minutes"

    #@5d
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@64
    .line 2276
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    #@66
    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@69
    move-result-object v3

    #@6a
    return-object v3
.end method

.method public static final rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 18
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/app/AlarmManager;

    #@0
    .prologue
    .line 2328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v16

    #@4
    .line 2329
    .local v16, "now":J
    const-wide/32 v2, 0x5265c00

    #@7
    sub-long v10, v16, v2

    #@9
    .line 2330
    .local v10, "ancient":J
    const/4 v2, 0x1

    #@a
    new-array v4, v2, [Ljava/lang/String;

    #@c
    .line 2331
    const-string/jumbo v2, "alarmTime"

    #@f
    const/4 v3, 0x0

    #@10
    aput-object v2, v4, v3

    #@12
    .line 2336
    .local v4, "projection":[Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    #@14
    .line 2337
    const-string/jumbo v5, "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"

    #@17
    const/4 v2, 0x3

    #@18
    new-array v6, v2, [Ljava/lang/String;

    #@1a
    .line 2338
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    const/4 v7, 0x0

    #@1f
    aput-object v2, v6, v7

    #@21
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    const/4 v7, 0x1

    #@26
    aput-object v2, v6, v7

    #@28
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    const/4 v7, 0x2

    #@2d
    aput-object v2, v6, v7

    #@2f
    .line 2339
    const-string/jumbo v7, "alarmTime ASC"

    #@32
    move-object/from16 v2, p0

    #@34
    .line 2336
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@37
    move-result-object v12

    #@38
    .line 2340
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_0

    #@3a
    .line 2341
    return-void

    #@3b
    .line 2349
    :cond_0
    const-wide/16 v8, -0x1

    #@3d
    .line 2351
    .local v8, "alarmTime":J
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_2

    #@43
    .line 2352
    const/4 v2, 0x0

    #@44
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    #@47
    move-result-wide v14

    #@48
    .line 2353
    .local v14, "newAlarmTime":J
    cmp-long v2, v8, v14

    #@4a
    if-eqz v2, :cond_1

    #@4c
    .line 2357
    move-object/from16 v0, p1

    #@4e
    move-object/from16 v1, p2

    #@50
    invoke-static {v0, v1, v14, v15}, Landroid/provider/CalendarContract$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@53
    .line 2358
    move-wide v8, v14

    #@54
    goto :goto_0

    #@55
    .line 2362
    .end local v14    # "newAlarmTime":J
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    #@58
    .line 2325
    return-void

    #@59
    .line 2361
    :catchall_0
    move-exception v2

    #@5a
    .line 2362
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    #@5d
    .line 2361
    throw v2
.end method

.method public static scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Landroid/app/AlarmManager;
    .param p2, "alarmTime"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2388
    if-nez p1, :cond_0

    #@3
    .line 2389
    const-string/jumbo v2, "alarm"

    #@6
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    .end local p1    # "manager":Landroid/app/AlarmManager;
    check-cast p1, Landroid/app/AlarmManager;

    #@c
    .line 2392
    .restart local p1    # "manager":Landroid/app/AlarmManager;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    #@e
    const-string/jumbo v2, "android.intent.action.EVENT_REMINDER"

    #@11
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@14
    .line 2393
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    #@16
    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@1d
    .line 2394
    const-string/jumbo v2, "alarmTime"

    #@20
    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@23
    .line 2395
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@26
    move-result-object v1

    #@27
    .line 2396
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p1, v3, p2, p3, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    #@2a
    .line 2380
    return-void
.end method
