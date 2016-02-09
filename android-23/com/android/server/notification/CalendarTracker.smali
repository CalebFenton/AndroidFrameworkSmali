.class public Lcom/android/server/notification/CalendarTracker;
.super Ljava/lang/Object;
.source "CalendarTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/CalendarTracker$CheckEventResult;,
        Lcom/android/server/notification/CalendarTracker$Callback;,
        Lcom/android/server/notification/CalendarTracker$1;
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
    const/16 v0, 0x8

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
    const-string/jumbo v1, "ownerAccount"

    #@2e
    const/4 v2, 0x5

    #@2f
    aput-object v1, v0, v2

    #@31
    .line 52
    const-string/jumbo v1, "calendar_id"

    #@34
    const/4 v2, 0x6

    #@35
    aput-object v1, v0, v2

    #@37
    .line 53
    const-string/jumbo v1, "availability"

    #@3a
    const/4 v2, 0x7

    #@3b
    aput-object v1, v0, v2

    #@3d
    .line 45
    sput-object v0, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    #@3f
    .line 58
    new-array v0, v3, [Ljava/lang/String;

    #@41
    .line 59
    const-string/jumbo v1, "event_id"

    #@44
    aput-object v1, v0, v4

    #@46
    .line 60
    const-string/jumbo v1, "attendeeEmail"

    #@49
    aput-object v1, v0, v5

    #@4b
    .line 61
    const-string/jumbo v1, "attendeeStatus"

    #@4e
    aput-object v1, v0, v6

    #@50
    .line 58
    sput-object v0, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    #@52
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 2
    .param p1, "systemContext"    # Landroid/content/Context;
    .param p2, "userContext"    # Landroid/content/Context;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 299
    new-instance v0, Lcom/android/server/notification/CalendarTracker$1;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/CalendarTracker$1;-><init>(Lcom/android/server/notification/CalendarTracker;Landroid/os/Handler;)V

    #@9
    iput-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    #@b
    .line 74
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    #@d
    .line 75
    iput-object p2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    #@f
    .line 73
    return-void
.end method

.method private static attendeeStatusToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # I

    #@0
    .prologue
    .line 266
    packed-switch p0, :pswitch_data_0

    #@3
    .line 272
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
    .line 267
    :pswitch_0
    const-string/jumbo v0, "ATTENDEE_STATUS_NONE"

    #@1b
    return-object v0

    #@1c
    .line 268
    :pswitch_1
    const-string/jumbo v0, "ATTENDEE_STATUS_ACCEPTED"

    #@1f
    return-object v0

    #@20
    .line 269
    :pswitch_2
    const-string/jumbo v0, "ATTENDEE_STATUS_DECLINED"

    #@23
    return-object v0

    #@24
    .line 270
    :pswitch_3
    const-string/jumbo v0, "ATTENDEE_STATUS_INVITED"

    #@27
    return-object v0

    #@28
    .line 271
    :pswitch_4
    const-string/jumbo v0, "ATTENDEE_STATUS_TENTATIVE"

    #@2b
    return-object v0

    #@2c
    .line 266
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
    .line 277
    packed-switch p0, :pswitch_data_0

    #@3
    .line 281
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
    .line 278
    :pswitch_0
    const-string/jumbo v0, "AVAILABILITY_BUSY"

    #@1b
    return-object v0

    #@1c
    .line 279
    :pswitch_1
    const-string/jumbo v0, "AVAILABILITY_FREE"

    #@1f
    return-object v0

    #@20
    .line 280
    :pswitch_2
    const-string/jumbo v0, "AVAILABILITY_TENTATIVE"

    #@23
    return-object v0

    #@24
    .line 277
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
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v10

    #@5
    .line 135
    .local v10, "start":J
    new-instance v8, Landroid/util/ArraySet;

    #@7
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    #@a
    .line 136
    .local v8, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string/jumbo v7, "\"primary\""

    #@d
    .line 137
    .local v7, "primary":Ljava/lang/String;
    const/4 v0, 0x2

    #@e
    new-array v2, v0, [Ljava/lang/String;

    #@10
    const-string/jumbo v0, "_id"

    #@13
    aput-object v0, v2, v1

    #@15
    .line 138
    const-string/jumbo v0, "(account_name=ownerAccount) AS \"primary\""

    #@18
    const/4 v1, 0x1

    #@19
    aput-object v0, v2, v1

    #@1b
    .line 139
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v9, "\"primary\" = 1"

    #@1e
    .line 140
    .local v9, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    #@1f
    .line 142
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
    .line 143
    const-string/jumbo v3, "\"primary\" = 1"

    #@2a
    const/4 v4, 0x0

    #@2b
    const/4 v5, 0x0

    #@2c
    .line 142
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@2f
    move-result-object v6

    #@30
    .line 144
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
    .line 145
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
    .line 147
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    #@46
    .line 148
    if-eqz v6, :cond_0

    #@48
    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@4b
    .line 147
    :cond_0
    throw v0

    #@4c
    .line 148
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v6, :cond_2

    #@4e
    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@51
    .line 152
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
    .line 153
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
    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v16

    #@4
    .line 213
    .local v16, "start":J
    const-string/jumbo v5, "event_id = ? AND attendeeEmail = ?"

    #@7
    .line 214
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
    .line 219
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
    .line 220
    sget-object v4, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    #@20
    const/4 v7, 0x0

    #@21
    .line 219
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@24
    move-result-object v8

    #@25
    .line 222
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    #@28
    move-result v2

    #@29
    if-nez v2, :cond_2

    #@2b
    .line 223
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
    .line 224
    :cond_0
    const/4 v2, 0x1

    #@39
    .line 242
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3c
    .line 243
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
    .line 224
    :cond_1
    return v2

    #@63
    .line 226
    :cond_2
    const/4 v14, 0x0

    #@64
    .line 227
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@67
    move-result v2

    #@68
    if-eqz v2, :cond_5

    #@6a
    .line 228
    const/4 v2, 0x0

    #@6b
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    #@6e
    move-result-wide v12

    #@6f
    .line 229
    .local v12, "rowEventId":J
    const/4 v2, 0x1

    #@70
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@73
    move-result-object v11

    #@74
    .line 230
    .local v11, "rowEmail":Ljava/lang/String;
    const/4 v2, 0x2

    #@75
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    #@78
    move-result v15

    #@79
    .line 231
    .local v15, "status":I
    move-object/from16 v0, p1

    #@7b
    iget v2, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    #@7d
    invoke-static {v2, v15}, Lcom/android/server/notification/CalendarTracker;->meetsReply(II)Z

    #@80
    move-result v10

    #@81
    .line 232
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
    .line 233
    const-string/jumbo v4, ""

    #@90
    .line 232
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v3

    #@94
    .line 234
    const-string/jumbo v4, "status=%s, meetsReply=%s"

    #@97
    const/4 v7, 0x2

    #@98
    new-array v7, v7, [Ljava/lang/Object;

    #@9a
    .line 235
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
    .line 234
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ad
    move-result-object v4

    #@ae
    .line 232
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
    .line 236
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
    .line 237
    move v9, v10

    #@c9
    .line 238
    :goto_1
    or-int/2addr v14, v9

    #@ca
    .local v14, "rt":Z
    goto :goto_0

    #@cb
    .line 236
    .end local v14    # "rt":Z
    :cond_4
    const/4 v9, 0x0

    #@cc
    .local v9, "eventMeets":Z
    goto :goto_1

    #@cd
    .line 242
    .end local v9    # "eventMeets":Z
    .end local v10    # "meetsReply":Z
    .end local v11    # "rowEmail":Ljava/lang/String;
    .end local v12    # "rowEventId":J
    .end local v15    # "status":I
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@d0
    .line 243
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
    .line 240
    :cond_6
    return v14

    #@f7
    .line 241
    :catchall_0
    move-exception v2

    #@f8
    .line 242
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@fb
    .line 243
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
    .line 241
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
    .line 286
    packed-switch p0, :pswitch_data_0

    #@5
    .line 295
    return v1

    #@6
    .line 288
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
    .line 290
    :pswitch_1
    if-eq p1, v0, :cond_1

    #@d
    .line 291
    const/4 v2, 0x4

    #@e
    if-ne p1, v2, :cond_2

    #@10
    .line 290
    :cond_1
    :goto_1
    return v0

    #@11
    :cond_2
    move v0, v1

    #@12
    .line 291
    goto :goto_1

    #@13
    .line 293
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
    .line 286
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
    .line 248
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    #@3
    if-ne v2, p1, :cond_0

    #@5
    return-void

    #@6
    .line 249
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v0

    #@c
    .line 250
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    #@e
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    #@11
    move-result v1

    #@12
    .line 251
    .local v1, "userId":I
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    #@14
    if-eqz v2, :cond_2

    #@16
    .line 252
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
    .line 253
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    #@36
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@39
    .line 255
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    #@3b
    .line 256
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
    .line 257
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    #@66
    if-eqz v2, :cond_5

    #@68
    .line 258
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
    .line 259
    :cond_4
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    #@88
    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    #@8a
    invoke-virtual {v0, v2, v5, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@8d
    .line 260
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    #@8f
    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    #@91
    invoke-virtual {v0, v2, v5, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@94
    .line 261
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    #@96
    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    #@98
    invoke-virtual {v0, v2, v5, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@9b
    .line 247
    :cond_5
    return-void
.end method


# virtual methods
.method public checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .locals 30
    .param p1, "filter"    # Landroid/service/notification/ZenModeConfig$EventInfo;
    .param p2, "time"    # J

    #@0
    .prologue
    .line 157
    sget-object v4, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    #@2
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@5
    move-result-object v29

    #@6
    .line 158
    .local v29, "uriBuilder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v29

    #@8
    move-wide/from16 v1, p2

    #@a
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    #@d
    .line 159
    const-wide/32 v6, 0x5265c00

    #@10
    add-long v6, v6, p2

    #@12
    move-object/from16 v0, v29

    #@14
    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    #@17
    .line 160
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@1a
    move-result-object v5

    #@1b
    .line 161
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
    .line 162
    const-string/jumbo v9, "begin ASC"

    #@28
    const/4 v7, 0x0

    #@29
    const/4 v8, 0x0

    #@2a
    .line 161
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@2d
    move-result-object v17

    #@2e
    .line 163
    .local v17, "cursor":Landroid/database/Cursor;
    new-instance v27, Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    #@30
    invoke-direct/range {v27 .. v27}, Lcom/android/server/notification/CalendarTracker$CheckEventResult;-><init>()V

    #@33
    .line 164
    .local v27, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    const-wide/32 v6, 0x5265c00

    #@36
    add-long v6, v6, p2

    #@38
    move-object/from16 v0, v27

    #@3a
    iput-wide v6, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@3c
    .line 166
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/CalendarTracker;->getPrimaryCalendars()Landroid/util/ArraySet;

    #@3f
    move-result-object v26

    #@40
    .line 167
    .local v26, "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
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
    .line 168
    const/4 v4, 0x0

    #@49
    move-object/from16 v0, v17

    #@4b
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    #@4e
    move-result-wide v12

    #@4f
    .line 169
    .local v12, "begin":J
    const/4 v4, 0x1

    #@50
    move-object/from16 v0, v17

    #@52
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    #@55
    move-result-wide v18

    #@56
    .line 170
    .local v18, "end":J
    const/4 v4, 0x2

    #@57
    move-object/from16 v0, v17

    #@59
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@5c
    move-result-object v28

    #@5d
    .line 171
    .local v28, "title":Ljava/lang/String;
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
    .line 172
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
    .line 173
    .local v20, "eventId":I
    const/4 v4, 0x5

    #@71
    move-object/from16 v0, v17

    #@73
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@76
    move-result-object v25

    #@77
    .line 174
    .local v25, "owner":Ljava/lang/String;
    const/4 v4, 0x6

    #@78
    move-object/from16 v0, v17

    #@7a
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    #@7d
    move-result-wide v14

    #@7e
    .line 175
    .local v14, "calendarId":J
    const/4 v4, 0x7

    #@7f
    move-object/from16 v0, v17

    #@81
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    #@84
    move-result v10

    #@85
    .line 176
    .local v10, "availability":I
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@88
    move-result-object v4

    #@89
    move-object/from16 v0, v26

    #@8b
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@8e
    move-result v11

    #@8f
    .line 177
    .local v11, "calendarPrimary":Z
    sget-boolean v4, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@91
    if-eqz v4, :cond_1

    #@93
    const-string/jumbo v4, "ConditionProviders.CT"

    #@96
    const-string/jumbo v6, "%s %s-%s v=%s a=%s eid=%s o=%s cid=%s p=%s"

    #@99
    const/16 v7, 0x9

    #@9b
    new-array v7, v7, [Ljava/lang/Object;

    #@9d
    .line 178
    const/4 v8, 0x0

    #@9e
    aput-object v28, v7, v8

    #@a0
    .line 179
    new-instance v8, Ljava/util/Date;

    #@a2
    invoke-direct {v8, v12, v13}, Ljava/util/Date;-><init>(J)V

    #@a5
    const/4 v9, 0x1

    #@a6
    aput-object v8, v7, v9

    #@a8
    new-instance v8, Ljava/util/Date;

    #@aa
    move-wide/from16 v0, v18

    #@ac
    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@af
    const/4 v9, 0x2

    #@b0
    aput-object v8, v7, v9

    #@b2
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b5
    move-result-object v8

    #@b6
    const/4 v9, 0x3

    #@b7
    aput-object v8, v7, v9

    #@b9
    .line 180
    invoke-static {v10}, Lcom/android/server/notification/CalendarTracker;->availabilityToString(I)Ljava/lang/String;

    #@bc
    move-result-object v8

    #@bd
    const/4 v9, 0x4

    #@be
    aput-object v8, v7, v9

    #@c0
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c3
    move-result-object v8

    #@c4
    const/4 v9, 0x5

    #@c5
    aput-object v8, v7, v9

    #@c7
    const/4 v8, 0x6

    #@c8
    aput-object v25, v7, v8

    #@ca
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@cd
    move-result-object v8

    #@ce
    const/4 v9, 0x7

    #@cf
    aput-object v8, v7, v9

    #@d1
    .line 181
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d4
    move-result-object v8

    #@d5
    const/16 v9, 0x8

    #@d7
    aput-object v8, v7, v9

    #@d9
    .line 177
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@dc
    move-result-object v6

    #@dd
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e0
    .line 182
    :cond_1
    cmp-long v4, p2, v12

    #@e2
    if-ltz v4, :cond_8

    #@e4
    cmp-long v4, p2, v18

    #@e6
    if-gez v4, :cond_8

    #@e8
    const/16 v24, 0x1

    #@ea
    .line 183
    .local v24, "meetsTime":Z
    :goto_2
    if-eqz v16, :cond_a

    #@ec
    if-eqz v11, :cond_a

    #@ee
    .line 184
    move-object/from16 v0, p1

    #@f0
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@f2
    if-eqz v4, :cond_9

    #@f4
    move-object/from16 v0, p1

    #@f6
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@f8
    move-object/from16 v0, v25

    #@fa
    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@fd
    move-result v23

    #@fe
    .line 185
    :goto_3
    const/4 v4, 0x1

    #@ff
    if-eq v10, v4, :cond_b

    #@101
    const/16 v22, 0x1

    #@103
    .line 186
    .local v22, "meetsAvailability":Z
    :goto_4
    if-eqz v23, :cond_0

    #@105
    if-eqz v22, :cond_0

    #@107
    .line 187
    sget-boolean v4, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@109
    if-eqz v4, :cond_2

    #@10b
    const-string/jumbo v4, "ConditionProviders.CT"

    #@10e
    const-string/jumbo v6, "  MEETS CALENDAR & AVAILABILITY"

    #@111
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@114
    .line 188
    :cond_2
    move-object/from16 v0, p0

    #@116
    move-object/from16 v1, p1

    #@118
    move/from16 v2, v20

    #@11a
    move-object/from16 v3, v25

    #@11c
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/CalendarTracker;->meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z

    #@11f
    move-result v21

    #@120
    .line 189
    .local v21, "meetsAttendee":Z
    if-eqz v21, :cond_0

    #@122
    .line 190
    sget-boolean v4, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@124
    if-eqz v4, :cond_3

    #@126
    const-string/jumbo v4, "ConditionProviders.CT"

    #@129
    const-string/jumbo v6, "    MEETS ATTENDEE"

    #@12c
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12f
    .line 191
    :cond_3
    if-eqz v24, :cond_5

    #@131
    .line 192
    sget-boolean v4, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    #@133
    if-eqz v4, :cond_4

    #@135
    const-string/jumbo v4, "ConditionProviders.CT"

    #@138
    const-string/jumbo v6, "      MEETS TIME"

    #@13b
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13e
    .line 193
    :cond_4
    const/4 v4, 0x1

    #@13f
    move-object/from16 v0, v27

    #@141
    iput-boolean v4, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    #@143
    .line 195
    :cond_5
    cmp-long v4, v12, p2

    #@145
    if-lez v4, :cond_c

    #@147
    move-object/from16 v0, v27

    #@149
    iget-wide v6, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@14b
    cmp-long v4, v12, v6

    #@14d
    if-gez v4, :cond_c

    #@14f
    .line 196
    move-object/from16 v0, v27

    #@151
    iput-wide v12, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@153
    goto/16 :goto_0

    #@155
    .line 203
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
    .end local v25    # "owner":Ljava/lang/String;
    .end local v26    # "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v28    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@156
    .line 204
    if-eqz v17, :cond_6

    #@158
    .line 205
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@15b
    .line 203
    :cond_6
    throw v4

    #@15c
    .line 171
    .restart local v12    # "begin":J
    .restart local v18    # "end":J
    .restart local v26    # "primaryCalendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v28    # "title":Ljava/lang/String;
    :cond_7
    const/16 v16, 0x0

    #@15e
    .restart local v16    # "calendarVisible":Z
    goto/16 :goto_1

    #@160
    .line 182
    .restart local v10    # "availability":I
    .restart local v11    # "calendarPrimary":Z
    .restart local v14    # "calendarId":J
    .restart local v20    # "eventId":I
    .restart local v25    # "owner":Ljava/lang/String;
    :cond_8
    const/16 v24, 0x0

    #@162
    .restart local v24    # "meetsTime":Z
    goto :goto_2

    #@163
    .line 184
    :cond_9
    const/16 v23, 0x1

    #@165
    .local v23, "meetsCalendar":Z
    goto :goto_3

    #@166
    .line 183
    .end local v23    # "meetsCalendar":Z
    :cond_a
    const/16 v23, 0x0

    #@168
    .restart local v23    # "meetsCalendar":Z
    goto :goto_3

    #@169
    .line 185
    .end local v23    # "meetsCalendar":Z
    :cond_b
    const/16 v22, 0x0

    #@16b
    .restart local v22    # "meetsAvailability":Z
    goto :goto_4

    #@16c
    .line 197
    .restart local v21    # "meetsAttendee":Z
    :cond_c
    cmp-long v4, v18, p2

    #@16e
    if-lez v4, :cond_0

    #@170
    :try_start_1
    move-object/from16 v0, v27

    #@172
    iget-wide v6, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    #@174
    cmp-long v4, v18, v6

    #@176
    if-gez v4, :cond_0

    #@178
    .line 198
    move-wide/from16 v0, v18

    #@17a
    move-object/from16 v2, v27

    #@17c
    iput-wide v0, v2, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17e
    goto/16 :goto_0

    #@180
    .line 204
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
    .end local v25    # "owner":Ljava/lang/String;
    .end local v28    # "title":Ljava/lang/String;
    :cond_d
    if-eqz v17, :cond_e

    #@182
    .line 205
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@185
    .line 208
    :cond_e
    return-object v27
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 85
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
    .line 86
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
    .line 87
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
    .line 84
    return-void
.end method

.method public dumpContent(Landroid/net/Uri;)V
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 91
    const-string/jumbo v0, "ConditionProviders.CT"

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "dumpContent: "

    #@c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 92
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    #@1d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@20
    move-result-object v0

    #@21
    move-object v1, p1

    #@22
    move-object v3, v2

    #@23
    move-object v4, v2

    #@24
    move-object v5, v2

    #@25
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@28
    move-result-object v6

    #@29
    .line 94
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    #@2a
    .line 95
    .local v10, "r":I
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 96
    const-string/jumbo v0, "ConditionProviders.CT"

    #@33
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v2, "Row "

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    add-int/lit8 v10, v10, 0x1

    #@41
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    const-string/jumbo v2, ": id="

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    .line 97
    const-string/jumbo v2, "_id"

    #@4f
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@52
    move-result v2

    #@53
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    #@56
    move-result v2

    #@57
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 98
    const/4 v7, 0x0

    #@63
    .local v7, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    #@66
    move-result v0

    #@67
    if-ge v7, v0, :cond_0

    #@69
    .line 99
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    #@6c
    move-result-object v8

    #@6d
    .line 100
    .local v8, "name":Ljava/lang/String;
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getType(I)I

    #@70
    move-result v11

    #@71
    .line 101
    .local v11, "type":I
    const/4 v9, 0x0

    #@72
    .line 102
    .local v9, "o":Ljava/lang/Object;
    const/4 v12, 0x0

    #@73
    .line 103
    .local v12, "typeName":Ljava/lang/String;
    packed-switch v11, :pswitch_data_0

    #@76
    .line 117
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@78
    new-instance v1, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v2, "type: "

    #@80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v1

    #@84
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v1

    #@8c
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@90
    .line 128
    .end local v7    # "i":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "o":Ljava/lang/Object;
    .end local v11    # "type":I
    .end local v12    # "typeName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    #@91
    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@94
    .line 128
    throw v0

    #@95
    .line 105
    .restart local v7    # "i":I
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "o":Ljava/lang/Object;
    .restart local v11    # "type":I
    .restart local v12    # "typeName":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    #@98
    move-result-wide v0

    #@99
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9c
    move-result-object v9

    #@9d
    .line 106
    const-string/jumbo v12, "INTEGER"

    #@a0
    .line 119
    .end local v9    # "o":Ljava/lang/Object;
    .local v12, "typeName":Ljava/lang/String;
    :goto_1
    const-string/jumbo v0, "_id"

    #@a3
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v0

    #@a7
    if-nez v0, :cond_1

    #@a9
    .line 120
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@ac
    move-result-object v0

    #@ad
    const-string/jumbo v1, "sync"

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@b3
    move-result v0

    #@b4
    .line 119
    if-nez v0, :cond_1

    #@b6
    .line 121
    if-nez v9, :cond_2

    #@b8
    .line 98
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    #@ba
    goto :goto_0

    #@bb
    .line 109
    .restart local v9    # "o":Ljava/lang/Object;
    .local v12, "typeName":Ljava/lang/String;
    :pswitch_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@be
    move-result-object v9

    #@bf
    .line 110
    const-string/jumbo v12, "STRING"

    #@c2
    .local v12, "typeName":Ljava/lang/String;
    goto :goto_1

    #@c3
    .line 113
    .local v12, "typeName":Ljava/lang/String;
    :pswitch_3
    const/4 v9, 0x0

    #@c4
    .line 114
    const-string/jumbo v12, "NULL"

    #@c7
    .local v12, "typeName":Ljava/lang/String;
    goto :goto_1

    #@c8
    .line 124
    .end local v9    # "o":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v0, "ConditionProviders.CT"

    #@cb
    new-instance v1, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v2, "  "

    #@d3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v1

    #@d7
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v1

    #@db
    const-string/jumbo v2, "("

    #@de
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v1

    #@e2
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v1

    #@e6
    const-string/jumbo v2, ")="

    #@e9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v1

    #@ed
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v1

    #@f1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v1

    #@f5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f8
    goto :goto_2

    #@f9
    .line 127
    .end local v7    # "i":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v11    # "type":I
    .end local v12    # "typeName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "ConditionProviders.CT"

    #@fc
    new-instance v1, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    const-string/jumbo v2, "  "

    #@104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v1

    #@108
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v1

    #@10c
    const-string/jumbo v2, " "

    #@10f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v1

    #@113
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@116
    move-result-object v1

    #@117
    const-string/jumbo v2, " rows"

    #@11a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v1

    #@11e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v1

    #@122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@125
    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@128
    .line 90
    return-void

    #@129
    .line 103
    nop

    #@12a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/CalendarTracker$Callback;

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    #@2
    if-ne v0, p1, :cond_0

    #@4
    return-void

    #@5
    .line 80
    :cond_0
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    #@7
    .line 81
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    #@9
    if-eqz v0, :cond_1

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/CalendarTracker;->setRegistered(Z)V

    #@f
    .line 78
    return-void

    #@10
    .line 81
    :cond_1
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method
