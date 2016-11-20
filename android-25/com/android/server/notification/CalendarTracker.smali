.class public Lcom/android/server/notification/CalendarTracker;
.super Ljava/lang/Object;
.source "CalendarTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/CalendarTracker$1;,
        Lcom/android/server/notification/CalendarTracker$Callback;,
        Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    }
.end annotation


# static fields
.field private static final ATTENDEE_PROJECTION:[Ljava/lang/String;

.field private static final ATTENDEE_SELECTION:Ljava/lang/String; = "event_id = ? AND attendeeEmail = ?"

.field private static final DEBUG:Z

.field private static final DEBUG_ATTENDEES:Z = false

.field private static final EVENT_CHECK_LOOKAHEAD:I = 0x5265c00

.field private static final INSTANCE_ORDER_BY:Ljava/lang/String; = "begin ASC"

.field private static final INSTANCE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.CT"


# instance fields
.field private mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mRegistered:Z

.field private final mSystemContext:Landroid/content/Context;

.field private final mUserContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/notification/CalendarTracker;)Lcom/android/server/notification/CalendarTracker$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/notification/CalendarTracker;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, 0x3

    #@4
    .line 40
    const-string/jumbo v0, "ConditionProviders"

    #@7
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@a
    move-result v0

    #@b
    sput-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@d
    .line 45
    const/16 v0, 0x9

    #@f
    new-array v0, v0, [Ljava/lang/String;

    #@11
    .line 46
    const-string/jumbo v1, "begin"

    #@14
    aput-object v1, v0, v4

    #@16
    .line 47
    const-string/jumbo v1, "end"

    #@19
    aput-object v1, v0, v5

    #@1b
    .line 48
    const-string/jumbo v1, "title"

    #@1e
    aput-object v1, v0, v6

    #@20
    .line 49
    const-string/jumbo v1, "visible"

    #@23
    aput-object v1, v0, v3

    #@25
    .line 50
    const-string/jumbo v1, "event_id"

    #@28
    const/4 v2, 0x4

    #@29
    aput-object v1, v0, v2

    #@2b
    .line 51
    const-string/jumbo v1, "calendar_displayName"

    #@2e
    const/4 v2, 0x5

    #@2f
    aput-object v1, v0, v2

    #@31
    .line 52
    const-string/jumbo v1, "ownerAccount"

    #@34
    const/4 v2, 0x6

    #@35
    aput-object v1, v0, v2

    #@37
    .line 53
    const-string/jumbo v1, "calendar_id"

    #@3a
    const/4 v2, 0x7

    #@3b
    aput-object v1, v0, v2

    #@3d
    .line 54
    const-string/jumbo v1, "availability"

    #@40
    const/16 v2, 0x8

    #@42
    aput-object v1, v0, v2

    #@44
    .line 45
    sput-object v0, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    #@46
    .line 59
    new-array v0, v3, [Ljava/lang/String;

    #@48
    .line 60
    const-string/jumbo v1, "event_id"

    #@4b
    aput-object v1, v0, v4

    #@4d
    .line 61
    const-string/jumbo v1, "attendeeEmail"

    #@50
    aput-object v1, v0, v5

    #@52
    .line 62
    const-string/jumbo v1, "attendeeStatus"

    #@55
    aput-object v1, v0, v6

    #@57
    .line 59
    sput-object v0, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    #@59
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 2
    .param p1, "systemContext"    # Landroid/content/Context;
    .param p2, "userContext"    # Landroid/content/Context;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 260
    new-instance v0, Lcom/android/server/notification/CalendarTracker$1;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/CalendarTracker$1;-><init>(Lcom/android/server/notification/CalendarTracker;Landroid/os/Handler;)V

    #@9
    iput-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    #@b
    .line 75
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    #@d
    .line 76
    iput-object p2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    #@f
    .line 74
    return-void
.end method

.method private static attendeeStatusToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # I

    #@0
    .prologue
    .line 227
    packed-switch p0, :pswitch_data_0

    #@3
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "ATTENDEE_STATUS_UNKNOWN_"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 228
    :pswitch_0
    const-string/jumbo v0, "ATTENDEE_STATUS_NONE"

    #@1b
    return-object v0

    #@1c
    .line 229
    :pswitch_1
    const-string/jumbo v0, "ATTENDEE_STATUS_ACCEPTED"

    #@1f
    return-object v0

    #@20
    .line 230
    :pswitch_2
    const-string/jumbo v0, "ATTENDEE_STATUS_DECLINED"

    #@23
    return-object v0

    #@24
    .line 231
    :pswitch_3
    const-string/jumbo v0, "ATTENDEE_STATUS_INVITED"

    #@27
    return-object v0

    #@28
    .line 232
    :pswitch_4
    const-string/jumbo v0, "ATTENDEE_STATUS_TENTATIVE"

    #@2b
    return-object v0

    #@2c
    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static availabilityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "availability"    # I

    #@0
    .prologue
    .line 238
    packed-switch p0, :pswitch_data_0

    #@3
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "AVAILABILITY_UNKNOWN_"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 239
    :pswitch_0
    const-string/jumbo v0, "AVAILABILITY_BUSY"

    #@1b
    return-object v0

    #@1c
    .line 240
    :pswitch_1
    const-string/jumbo v0, "AVAILABILITY_FREE"

    #@1f
    return-object v0

    #@20
    .line 241
    :pswitch_2
    const-string/jumbo v0, "AVAILABILITY_TENTATIVE"

    #@23
    return-object v0

    #@24
    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPrimaryCalendars()Landroid/util/ArraySet;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v10

    #@5
    .line 93
    .local v10, "start":J
    new-instance v8, Landroid/util/ArraySet;

    #@7
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    #@a
    .line 94
    .local v8, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string/jumbo v7, "\"primary\""

    #@d
    .line 95
    .local v7, "primary":Ljava/lang/String;
    const/4 v0, 0x2

    #@e
    new-array v2, v0, [Ljava/lang/String;

    #@10
    const-string/jumbo v0, "_id"

    #@13
    aput-object v0, v2, v1

    #@15
    .line 96
    const-string/jumbo v0, "(account_name=ownerAccount) AS \"primary\""

    #@18
    const/4 v1, 0x1

    #@19
    aput-object v0, v2, v1

    #@1b
    .line 97
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v9, "\"primary\" = 1"

    #@1e
    .line 98
    .local v9, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    #@1f
    .line 100
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    #@21
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@24
    move-result-object v0

    #@25
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    #@27
    .line 101
    const-string/jumbo v3, "\"primary\" = 1"

    #@2a
    const/4 v4, 0x0

    #@2b
    const/4 v5, 0x0

    #@2c
    .line 100
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@2f
    move-result-object v6

    #@30
    .line 102
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_1

    #@32
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_1

    #@38
    .line 103
    const/4 v0, 0x0

    #@39
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    #@3c
    move-result-wide v0

    #@3d
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 105
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    #@46
    .line 106
    if-eqz v6, :cond_0

    #@48
    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@4b
    .line 105
    :cond_0
    throw v0

    #@4c
    .line 106
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v6, :cond_2

    #@4e
    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@51
    .line 110
    :cond_2
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@53
    if-eqz v0, :cond_3

    #@55
    const-string/jumbo v0, "ConditionProviders.CT"

    #@58
    new-instance v1, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v3, "getPrimaryCalendars took "

    #@60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@67
    move-result-wide v4

    #@68
    sub-long/2addr v4, v10

    #@69
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 111
    :cond_3
    return-object v8
.end method

.method private meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z
    .locals 20
    .param p1, "filter"    # Landroid/service/notification/ZenModeConfig$EventInfo;
    .param p2, "eventId"    # I
    .param p3, "email"    # Ljava/lang/String;

    #@0
    .prologue
    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v16

    #@4
    .line 174
    .local v16, "start":J
    const-string/jumbo v5, "event_id = ? AND attendeeEmail = ?"

    #@7
    .line 175
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x2

    #@8
    new-array v6, v2, [Ljava/lang/String;

    #@a
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    const/4 v3, 0x0

    #@f
    aput-object v2, v6, v3

    #@11
    const/4 v2, 0x1

    #@12
    aput-object p3, v6, v2

    #@14
    .line 180
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@16
    iget-object v2, v0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    #@18
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1b
    move-result-object v2

    #@1c
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    #@1e
    .line 181
    sget-object v4, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    #@20
    const/4 v7, 0x0

    #@21
    .line 180
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@24
    move-result-object v8

    #@25
    .line 183
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    #@28
    move-result v2

    #@29
    if-nez v2, :cond_2

    #@2b
    .line 184
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@2d
    if-eqz v2, :cond_0

    #@2f
    const-string/jumbo v2, "ConditionProviders.CT"

    #@32
    const-string/jumbo v3, "No attendees found"

    #@35
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 185
    :cond_0
    const/4 v2, 0x1

    #@39
    .line 203
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3c
    .line 204
    sget-boolean v3, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@3e
    if-eqz v3, :cond_1

    #@40
    const-string/jumbo v3, "ConditionProviders.CT"

    #@43
    new-instance v4, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v7, "meetsAttendee took "

    #@4b
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@52
    move-result-wide v18

    #@53
    sub-long v18, v18, v16

    #@55
    move-wide/from16 v0, v18

    #@57
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 185
    :cond_1
    return v2

    #@63
    .line 187
    :cond_2
    const/4 v14, 0x0

    #@64
    .line 188
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@67
    move-result v2

    #@68
    if-eqz v2, :cond_5

    #@6a
    .line 189
    const/4 v2, 0x0

    #@6b
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    #@6e
    move-result-wide v12

    #@6f
    .line 190
    .local v12, "rowEventId":J
    const/4 v2, 0x1

    #@70
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@73
    move-result-object v11

    #@74
    .line 191
    .local v11, "rowEmail":Ljava/lang/String;
    const/4 v2, 0x2

    #@75
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    #@78
    move-result v15

    #@79
    .line 192
    .local v15, "status":I
    move-object/from16 v0, p1

    #@7b
    iget v2, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    #@7d
    invoke-static {v2, v15}, Lcom/android/server/notification/CalendarTracker;->meetsReply(II)Z

    #@80
    move-result v10

    #@81
    .line 193
    .local v10, "meetsReply":Z
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@83
    if-eqz v2, :cond_3

    #@85
    const-string/jumbo v2, "ConditionProviders.CT"

    #@88
    new-instance v3, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    .line 194
    const-string/jumbo v4, ""

    #@90
    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v3

    #@94
    .line 195
    const-string/jumbo v4, "status=%s, meetsReply=%s"

    #@97
    const/4 v7, 0x2

    #@98
    new-array v7, v7, [Ljava/lang/Object;

    #@9a
    .line 196
    invoke-static {v15}, Lcom/android/server/notification/CalendarTracker;->attendeeStatusToString(I)Ljava/lang/String;

    #@9d
    move-result-object v18

    #@9e
    const/16 v19, 0x0

    #@a0
    aput-object v18, v7, v19

    #@a2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a5
    move-result-object v18

    #@a6
    const/16 v19, 0x1

    #@a8
    aput-object v18, v7, v19

    #@aa
    .line 195
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ad
    move-result-object v4

    #@ae
    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v3

    #@b2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v3

    #@b6
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b9
    .line 197
    :cond_3
    move/from16 v0, p2

    #@bb
    int-to-long v2, v0

    #@bc
    cmp-long v2, v12, v2

    #@be
    if-nez v2, :cond_4

    #@c0
    move-object/from16 v0, p3

    #@c2
    invoke-static {v11, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c5
    move-result v2

    #@c6
    if-eqz v2, :cond_4

    #@c8
    move v9, v10

    #@c9
    .line 199
    .local v9, "eventMeets":Z
    :goto_1
    or-int/2addr v14, v9

    #@ca
    .local v14, "rt":Z
    goto :goto_0

    #@cb
    .line 197
    .end local v9    # "eventMeets":Z
    .end local v14    # "rt":Z
    :cond_4
    const/4 v9, 0x0

    #@cc
    goto :goto_1

    #@cd
    .line 203
    .end local v10    # "meetsReply":Z
    .end local v11    # "rowEmail":Ljava/lang/String;
    .end local v12    # "rowEventId":J
    .end local v15    # "status":I
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@d0
    .line 204
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@d2
    if-eqz v2, :cond_6

    #@d4
    const-string/jumbo v2, "ConditionProviders.CT"

    #@d7
    new-instance v3, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@dc
    const-string/jumbo v4, "meetsAttendee took "

    #@df
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v3

    #@e3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e6
    move-result-wide v18

    #@e7
    sub-long v18, v18, v16

    #@e9
    move-wide/from16 v0, v18

    #@eb
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v3

    #@ef
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v3

    #@f3
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f6
    .line 201
    :cond_6
    return v14

    #@f7
    .line 202
    :catchall_0
    move-exception v2

    #@f8
    .line 203
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@fb
    .line 204
    sget-boolean v3, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@fd
    if-eqz v3, :cond_7

    #@ff
    const-string/jumbo v3, "ConditionProviders.CT"

    #@102
    new-instance v4, Ljava/lang/StringBuilder;

    #@104
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@107
    const-string/jumbo v7, "meetsAttendee took "

    #@10a
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v4

    #@10e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@111
    move-result-wide v18

    #@112
    sub-long v18, v18, v16

    #@114
    move-wide/from16 v0, v18

    #@116
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@119
    move-result-object v4

    #@11a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v4

    #@11e
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@121
    .line 202
    :cond_7
    throw v2
.end method

.method private static meetsReply(II)Z
    .locals 3
    .param p0, "reply"    # I
    .param p1, "attendeeStatus"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 247
    packed-switch p0, :pswitch_data_0

    #@5
    .line 256
    return v1

    #@6
    .line 249
    :pswitch_0
    if-ne p1, v0, :cond_0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    move v0, v1

    #@a
    goto :goto_0

    #@b
    .line 251
    :pswitch_1
    if-eq p1, v0, :cond_1

    #@d
    .line 252
    const/4 v2, 0x4

    #@e
    if-ne p1, v2, :cond_2

    #@10
    .line 251
    :cond_1
    :goto_1
    return v0

    #@11
    :cond_2
    move v0, v1

    #@12
    .line 252
    goto :goto_1

    #@13
    .line 254
    :pswitch_2
    const/4 v2, 0x2

    #@14
    if-eq p1, v2, :cond_3

    #@16
    :goto_2
    return v0

    #@17
    :cond_3
    move v0, v1

    #@18
    goto :goto_2

    #@19
    .line 247
    nop

    #@1a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRegistered(Z)V
    .locals 6
    .param p1, "registered"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 209
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    #@3
    if-ne v2, p1, :cond_0

    #@5
    return-void

    #@6
    .line 210
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v0

    #@c
    .line 211
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    #@e
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    #@11
    move-result v1

    #@12
    .line 212
    .local v1, "userId":I
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    #@14
    if-eqz v2, :cond_2

    #@16
    .line 213
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@18
    if-eqz v2, :cond_1

    #@1a
    const-string/jumbo v2, "ConditionProviders.CT"

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "unregister content observer u="

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 214
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    #@36
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@39
    .line 216
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    #@3b
    .line 217
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@3d
    if-eqz v2, :cond_3

    #@3f
    const-string/jumbo v2, "ConditionProviders.CT"

    #@42
    new-instance v3, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v4, "mRegistered = "

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    const-string/jumbo v4, " u="

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 218
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    #@66
    if-eqz v2, :cond_5

    #@68
    .line 219
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@6a
    if-eqz v2, :cond_4

    #@6c
    const-string/jumbo v2, "ConditionProviders.CT"

    #@6f
    new-instance v3, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v4, "register content observer u="

    #@77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v3

    #@83
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    .line 220
    :cond_4
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    #@88
    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    #@8a
    invoke-virtual {v0, v2, v5, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@8d
    .line 221
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    #@8f
    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    #@91
    invoke-virtual {v0, v2, v5, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@94
    .line 222
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    #@96
    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    #@98
    invoke-virtual {v0, v2, v5, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@9b
    .line 208
    :cond_5
    return-void
.end method


# virtual methods
.method public checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .locals 32
    .param p1, "filter"    # Landroid/service/notification/ZenModeConfig$EventInfo;
    .param p2, "time"    # J

    #@0
    .prologue
    .line 115
    sget-object v4, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    #@2
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@5
    move-result-object v30

    #@6
    .line 116
    .local v30, "uriBuilder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v30

    #@8
    move-wide/from16 v1, p2

    #@a
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    #@d
    .line 117
    const-wide/32 v6, 0x5265c00

    #@10
    add-long v6, v6, p2

    #@12
    move-object/from16 v0, v30

    #@14
    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    #@17
    .line 118
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@1a
    move-result-object v5

    #@1b
    .line 119
    .local v5, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@1d
    iget-object v4, v0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    #@1f
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@22
    move-result-object v4

    #@23
    sget-object v6, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    #@25
    .line 120
    const-string/jumbo v9, "begin ASC"

    #@28
    const/4 v7, 0x0

    #@29
    const/4 v8, 0x0

    #@2a
    .line 119
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@2d
    move-result-object v17

    #@2e
    .line 121
    .local v17, "cursor":Landroid/database/Cursor;
    new-instance v28, Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    #@30
    invoke-direct/range {v28 .. v28}, Lcom/android/server/notification/CalendarTracker$CheckEventResult;-><init>()V

    #@33
    .line 122
    .local v28, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    const-wide/32 v6, 0x5265c00

    #@36
    add-long v6, v6, p2

    #@38
    move-object/from16 v0, v28

    #@3a
    iput-wide v6, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@3c
    .line 124
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/CalendarTracker;->getPrimaryCalendars()Landroid/util/ArraySet;

    #@3f
    move-result-object v27

    #@40
    .line 125
    .local v27, "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    if-eqz v17, :cond_d

    #@42
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_d

    #@48
    .line 126
    const/4 v4, 0x0

    #@49
    move-object/from16 v0, v17

    #@4b
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    #@4e
    move-result-wide v12

    #@4f
    .line 127
    .local v12, "begin":J
    const/4 v4, 0x1

    #@50
    move-object/from16 v0, v17

    #@52
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    #@55
    move-result-wide v18

    #@56
    .line 128
    .local v18, "end":J
    const/4 v4, 0x2

    #@57
    move-object/from16 v0, v17

    #@59
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@5c
    move-result-object v29

    #@5d
    .line 129
    .local v29, "title":Ljava/lang/String;
    const/4 v4, 0x3

    #@5e
    move-object/from16 v0, v17

    #@60
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    #@63
    move-result v4

    #@64
    const/4 v6, 0x1

    #@65
    if-ne v4, v6, :cond_7

    #@67
    const/16 v16, 0x1

    #@69
    .line 130
    .local v16, "calendarVisible":Z
    :goto_1
    const/4 v4, 0x4

    #@6a
    move-object/from16 v0, v17

    #@6c
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    #@6f
    move-result v20

    #@70
    .line 131
    .local v20, "eventId":I
    const/4 v4, 0x5

    #@71
    move-object/from16 v0, v17

    #@73
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@76
    move-result-object v25

    #@77
    .line 132
    .local v25, "name":Ljava/lang/String;
    const/4 v4, 0x6

    #@78
    move-object/from16 v0, v17

    #@7a
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@7d
    move-result-object v26

    #@7e
    .line 133
    .local v26, "owner":Ljava/lang/String;
    const/4 v4, 0x7

    #@7f
    move-object/from16 v0, v17

    #@81
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    #@84
    move-result-wide v14

    #@85
    .line 134
    .local v14, "calendarId":J
    const/16 v4, 0x8

    #@87
    move-object/from16 v0, v17

    #@89
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    #@8c
    move-result v10

    #@8d
    .line 135
    .local v10, "availability":I
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@90
    move-result-object v4

    #@91
    move-object/from16 v0, v27

    #@93
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@96
    move-result v11

    #@97
    .line 136
    .local v11, "calendarPrimary":Z
    sget-boolean v4, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@99
    if-eqz v4, :cond_1

    #@9b
    const-string/jumbo v4, "ConditionProviders.CT"

    #@9e
    .line 137
    const-string/jumbo v6, "%s %s-%s v=%s a=%s eid=%s n=%s o=%s cid=%s p=%s"

    #@a1
    .line 136
    const/16 v7, 0xa

    #@a3
    new-array v7, v7, [Ljava/lang/Object;

    #@a5
    .line 138
    const/4 v8, 0x0

    #@a6
    aput-object v29, v7, v8

    #@a8
    .line 139
    new-instance v8, Ljava/util/Date;

    #@aa
    invoke-direct {v8, v12, v13}, Ljava/util/Date;-><init>(J)V

    #@ad
    const/4 v9, 0x1

    #@ae
    aput-object v8, v7, v9

    #@b0
    new-instance v8, Ljava/util/Date;

    #@b2
    move-wide/from16 v0, v18

    #@b4
    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@b7
    const/4 v9, 0x2

    #@b8
    aput-object v8, v7, v9

    #@ba
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@bd
    move-result-object v8

    #@be
    const/4 v9, 0x3

    #@bf
    aput-object v8, v7, v9

    #@c1
    .line 140
    invoke-static {v10}, Lcom/android/server/notification/CalendarTracker;->availabilityToString(I)Ljava/lang/String;

    #@c4
    move-result-object v8

    #@c5
    const/4 v9, 0x4

    #@c6
    aput-object v8, v7, v9

    #@c8
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cb
    move-result-object v8

    #@cc
    const/4 v9, 0x5

    #@cd
    aput-object v8, v7, v9

    #@cf
    const/4 v8, 0x6

    #@d0
    aput-object v25, v7, v8

    #@d2
    const/4 v8, 0x7

    #@d3
    aput-object v26, v7, v8

    #@d5
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d8
    move-result-object v8

    #@d9
    const/16 v9, 0x8

    #@db
    aput-object v8, v7, v9

    #@dd
    .line 141
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e0
    move-result-object v8

    #@e1
    const/16 v9, 0x9

    #@e3
    aput-object v8, v7, v9

    #@e5
    .line 136
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e8
    move-result-object v6

    #@e9
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ec
    .line 142
    :cond_1
    cmp-long v4, p2, v12

    #@ee
    if-ltz v4, :cond_8

    #@f0
    cmp-long v4, p2, v18

    #@f2
    if-gez v4, :cond_8

    #@f4
    const/16 v24, 0x1

    #@f6
    .line 143
    .local v24, "meetsTime":Z
    :goto_2
    if-eqz v16, :cond_a

    #@f8
    if-eqz v11, :cond_a

    #@fa
    .line 144
    move-object/from16 v0, p1

    #@fc
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@fe
    if-eqz v4, :cond_9

    #@100
    move-object/from16 v0, p1

    #@102
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@104
    move-object/from16 v0, v26

    #@106
    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@109
    move-result v4

    #@10a
    if-nez v4, :cond_9

    #@10c
    .line 145
    move-object/from16 v0, p1

    #@10e
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@110
    move-object/from16 v0, v25

    #@112
    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@115
    move-result v23

    #@116
    .line 146
    :goto_3
    const/4 v4, 0x1

    #@117
    if-eq v10, v4, :cond_b

    #@119
    const/16 v22, 0x1

    #@11b
    .line 147
    .local v22, "meetsAvailability":Z
    :goto_4
    if-eqz v23, :cond_0

    #@11d
    if-eqz v22, :cond_0

    #@11f
    .line 148
    sget-boolean v4, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@121
    if-eqz v4, :cond_2

    #@123
    const-string/jumbo v4, "ConditionProviders.CT"

    #@126
    const-string/jumbo v6, "  MEETS CALENDAR & AVAILABILITY"

    #@129
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12c
    .line 149
    :cond_2
    move-object/from16 v0, p0

    #@12e
    move-object/from16 v1, p1

    #@130
    move/from16 v2, v20

    #@132
    move-object/from16 v3, v26

    #@134
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/CalendarTracker;->meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z

    #@137
    move-result v21

    #@138
    .line 150
    .local v21, "meetsAttendee":Z
    if-eqz v21, :cond_0

    #@13a
    .line 151
    sget-boolean v4, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@13c
    if-eqz v4, :cond_3

    #@13e
    const-string/jumbo v4, "ConditionProviders.CT"

    #@141
    const-string/jumbo v6, "    MEETS ATTENDEE"

    #@144
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@147
    .line 152
    :cond_3
    if-eqz v24, :cond_5

    #@149
    .line 153
    sget-boolean v4, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@14b
    if-eqz v4, :cond_4

    #@14d
    const-string/jumbo v4, "ConditionProviders.CT"

    #@150
    const-string/jumbo v6, "      MEETS TIME"

    #@153
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@156
    .line 154
    :cond_4
    const/4 v4, 0x1

    #@157
    move-object/from16 v0, v28

    #@159
    iput-boolean v4, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    #@15b
    .line 156
    :cond_5
    cmp-long v4, v12, p2

    #@15d
    if-lez v4, :cond_c

    #@15f
    move-object/from16 v0, v28

    #@161
    iget-wide v6, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@163
    cmp-long v4, v12, v6

    #@165
    if-gez v4, :cond_c

    #@167
    .line 157
    move-object/from16 v0, v28

    #@169
    iput-wide v12, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16b
    goto/16 :goto_0

    #@16d
    .line 164
    .end local v10    # "availability":I
    .end local v11    # "calendarPrimary":Z
    .end local v12    # "begin":J
    .end local v14    # "calendarId":J
    .end local v16    # "calendarVisible":Z
    .end local v18    # "end":J
    .end local v20    # "eventId":I
    .end local v21    # "meetsAttendee":Z
    .end local v22    # "meetsAvailability":Z
    .end local v24    # "meetsTime":Z
    .end local v25    # "name":Ljava/lang/String;
    .end local v26    # "owner":Ljava/lang/String;
    .end local v27    # "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v29    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@16e
    .line 165
    if-eqz v17, :cond_6

    #@170
    .line 166
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@173
    .line 164
    :cond_6
    throw v4

    #@174
    .line 129
    .restart local v12    # "begin":J
    .restart local v18    # "end":J
    .restart local v27    # "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v29    # "title":Ljava/lang/String;
    :cond_7
    const/16 v16, 0x0

    #@176
    .restart local v16    # "calendarVisible":Z
    goto/16 :goto_1

    #@178
    .line 142
    .restart local v10    # "availability":I
    .restart local v11    # "calendarPrimary":Z
    .restart local v14    # "calendarId":J
    .restart local v20    # "eventId":I
    .restart local v25    # "name":Ljava/lang/String;
    .restart local v26    # "owner":Ljava/lang/String;
    :cond_8
    const/16 v24, 0x0

    #@17a
    .restart local v24    # "meetsTime":Z
    goto/16 :goto_2

    #@17c
    .line 144
    :cond_9
    const/16 v23, 0x1

    #@17e
    .local v23, "meetsCalendar":Z
    goto :goto_3

    #@17f
    .line 143
    .end local v23    # "meetsCalendar":Z
    :cond_a
    const/16 v23, 0x0

    #@181
    .restart local v23    # "meetsCalendar":Z
    goto :goto_3

    #@182
    .line 146
    .end local v23    # "meetsCalendar":Z
    :cond_b
    const/16 v22, 0x0

    #@184
    .restart local v22    # "meetsAvailability":Z
    goto :goto_4

    #@185
    .line 158
    .restart local v21    # "meetsAttendee":Z
    :cond_c
    cmp-long v4, v18, p2

    #@187
    if-lez v4, :cond_0

    #@189
    :try_start_1
    move-object/from16 v0, v28

    #@18b
    iget-wide v6, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@18d
    cmp-long v4, v18, v6

    #@18f
    if-gez v4, :cond_0

    #@191
    .line 159
    move-wide/from16 v0, v18

    #@193
    move-object/from16 v2, v28

    #@195
    iput-wide v0, v2, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@197
    goto/16 :goto_0

    #@199
    .line 165
    .end local v10    # "availability":I
    .end local v11    # "calendarPrimary":Z
    .end local v12    # "begin":J
    .end local v14    # "calendarId":J
    .end local v16    # "calendarVisible":Z
    .end local v18    # "end":J
    .end local v20    # "eventId":I
    .end local v21    # "meetsAttendee":Z
    .end local v22    # "meetsAvailability":Z
    .end local v24    # "meetsTime":Z
    .end local v25    # "name":Ljava/lang/String;
    .end local v26    # "owner":Ljava/lang/String;
    .end local v29    # "title":Ljava/lang/String;
    :cond_d
    if-eqz v17, :cond_e

    #@19b
    .line 166
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@19e
    .line 169
    :cond_e
    return-object v28
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 86
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mCallback="

    #@6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    #@b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e
    .line 87
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    const-string/jumbo v0, "mRegistered="

    #@14
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    #@19
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@1c
    .line 88
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    const-string/jumbo v0, "u="

    #@22
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    #@27
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    #@2a
    move-result v0

    #@2b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@2e
    .line 85
    return-void
.end method

.method public setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/CalendarTracker$Callback;

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    #@2
    if-ne v0, p1, :cond_0

    #@4
    return-void

    #@5
    .line 81
    :cond_0
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    #@7
    .line 82
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    #@9
    if-eqz v0, :cond_1

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/CalendarTracker;->setRegistered(Z)V

    #@f
    .line 79
    return-void

    #@10
    .line 82
    :cond_1
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method
