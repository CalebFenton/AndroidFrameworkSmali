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
.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o SORT_ORDER_ALARMTIME_ASC:Ljava/lang/String; = "alarmTime ASC"

.field public static final greylist-max-o TABLE_NAME:Ljava/lang/String; = "CalendarAlerts"

.field private static final greylist-max-o WHERE_ALARM_EXISTS:Ljava/lang/String; = "event_id=? AND begin=? AND alarmTime=?"

.field private static final greylist-max-o WHERE_FINDNEXTALARMTIME:Ljava/lang/String; = "alarmTime>=?"

.field private static final greylist-max-o WHERE_RESCHEDULE_MISSED_ALARMS:Ljava/lang/String; = "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2452
    const-string v0, "content://com.android.calendar/calendar_alerts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 2478
    nop

    .line 2479
    const-string v0, "content://com.android.calendar/calendar_alerts/by_instance"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    .line 2478
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final greylist-max-o alarmExists(Landroid/content/ContentResolver;JJJ)Z
    .registers 14
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "eventId"    # J
    .param p3, "begin"    # J
    .param p5, "alarmTime"    # J

    .line 2652
    const-string v0, "alarmTime"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 2653
    .local v3, "projection":[Ljava/lang/String;
    sget-object v2, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 2655
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v1, v4}, [Ljava/lang/String;

    move-result-object v5

    .line 2653
    const-string v4, "event_id=? AND begin=? AND alarmTime=?"

    const/4 v6, 0x0

    move-object v1, p0

    .end local p0    # "cr":Landroid/content/ContentResolver;
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 2657
    .local p0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 2659
    .local v2, "found":Z
    if-eqz p0, :cond_33

    :try_start_24
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_2c

    if-lez v0, :cond_33

    .line 2660
    const/4 v2, 0x1

    goto :goto_33

    .line 2663
    :catchall_2c
    move-exception v0

    if-eqz p0, :cond_32

    .line 2664
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2666
    :cond_32
    throw v0

    .line 2663
    :cond_33
    :goto_33
    if-eqz p0, :cond_38

    .line 2664
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2667
    :cond_38
    return v2
.end method

.method public static final greylist-max-r findNextAlarmTime(Landroid/content/ContentResolver;J)J
    .registers 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "millis"    # J

    .line 2519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alarmTime>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2522
    .local v1, "selection":Ljava/lang/String;
    const-string v0, "alarmTime"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 2523
    .local v4, "projection":[Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 2525
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    .line 2523
    const-string v5, "alarmTime>=?"

    const-string v7, "alarmTime ASC"

    move-object v2, p0

    .end local p0    # "cr":Landroid/content/ContentResolver;
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 2527
    .local p0, "cursor":Landroid/database/Cursor;
    const-wide/16 v5, -0x1

    .line 2529
    .local v5, "alarmTime":J
    if-eqz p0, :cond_45

    :try_start_31
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2530
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3e

    move-wide v5, v7

    goto :goto_45

    .line 2533
    :catchall_3e
    move-exception v0

    if-eqz p0, :cond_44

    .line 2534
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2536
    :cond_44
    throw v0

    .line 2533
    :cond_45
    :goto_45
    if-eqz p0, :cond_4a

    .line 2534
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2537
    :cond_4a
    return-wide v5
.end method

.method public static final greylist-max-o insert(Landroid/content/ContentResolver;JJJJI)Landroid/net/Uri;
    .registers 15
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "eventId"    # J
    .param p3, "begin"    # J
    .param p5, "end"    # J
    .param p7, "alarmTime"    # J
    .param p9, "minutes"    # I

    .line 2491
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2492
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2493
    const-string v1, "begin"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2494
    const-string v1, "end"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2495
    const-string v1, "alarmTime"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2497
    .local v1, "currentTime":J
    const-string v3, "creationTime"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2498
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "receivedTime"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2499
    const-string/jumbo v4, "notifyTime"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2500
    const-string/jumbo v4, "state"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2501
    const-string/jumbo v3, "minutes"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2502
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static final greylist-max-r rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V
    .registers 15
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/app/AlarmManager;

    .line 2556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2557
    .local v1, "now":J
    const-wide/32 v3, 0x5265c00

    sub-long v3, v1, v3

    .line 2558
    .local v3, "ancient":J
    const-string v0, "alarmTime"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 2564
    .local v7, "projection":[Ljava/lang/String;
    sget-object v6, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 2566
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v0, v5, v8}, [Ljava/lang/String;

    move-result-object v9

    .line 2564
    const-string/jumbo v8, "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"

    const-string v10, "alarmTime ASC"

    move-object v5, p0

    .end local p0    # "cr":Landroid/content/ContentResolver;
    .local v5, "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 2568
    .local p0, "cursor":Landroid/database/Cursor;
    if-nez p0, :cond_2f

    .line 2569
    return-void

    .line 2577
    :cond_2f
    const-wide/16 v8, -0x1

    .line 2579
    .local v8, "alarmTime":J
    :goto_31
    :try_start_31
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2580
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2581
    .local v10, "newAlarmTime":J
    cmp-long v0, v8, v10

    if-eqz v0, :cond_44

    .line 2585
    invoke-static {p1, p2, v10, v11}, Landroid/provider/CalendarContract$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    :try_end_43
    .catchall {:try_start_31 .. :try_end_43} :catchall_4a

    .line 2586
    move-wide v8, v10

    .line 2588
    .end local v10    # "newAlarmTime":J
    :cond_44
    goto :goto_31

    .line 2590
    .end local v8    # "alarmTime":J
    :cond_45
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2591
    nop

    .line 2592
    return-void

    .line 2590
    :catchall_4a
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2591
    throw v0
.end method

.method public static greylist-max-r scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Landroid/app/AlarmManager;
    .param p2, "alarmTime"    # J

    .line 2615
    if-nez p1, :cond_b

    .line 2616
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/app/AlarmManager;

    .line 2619
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EVENT_REMINDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2620
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2621
    const-string v1, "alarmTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2622
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2626
    invoke-static {}, Landroid/os/StrictMode;->allowVmViolations()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 2627
    .local v1, "oldVmPolicy":Landroid/os/StrictMode$VmPolicy;
    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2629
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 2631
    invoke-virtual {p1, v3, p2, p3, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 2632
    return-void
.end method
