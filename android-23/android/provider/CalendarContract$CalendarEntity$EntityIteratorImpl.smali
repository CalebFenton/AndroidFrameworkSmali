.class Landroid/provider/CalendarContract$CalendarEntity$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "CalendarContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract$CalendarEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityIteratorImpl"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 515
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    #@3
    .line 514
    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 521
    const-string/jumbo v4, "_id"

    #@3
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@6
    move-result v4

    #@7
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    #@a
    move-result-wide v0

    #@b
    .line 524
    .local v0, "calendarId":J
    new-instance v2, Landroid/content/ContentValues;

    #@d
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    #@10
    .line 525
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "_id"

    #@13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@1a
    .line 527
    const-string/jumbo v4, "account_name"

    #@1d
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@20
    .line 528
    const-string/jumbo v4, "account_type"

    #@23
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@26
    .line 530
    const-string/jumbo v4, "_sync_id"

    #@29
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@2c
    .line 531
    const-string/jumbo v4, "dirty"

    #@2f
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@32
    .line 532
    const-string/jumbo v4, "mutators"

    #@35
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@38
    .line 534
    const-string/jumbo v4, "cal_sync1"

    #@3b
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@3e
    .line 535
    const-string/jumbo v4, "cal_sync2"

    #@41
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@44
    .line 536
    const-string/jumbo v4, "cal_sync3"

    #@47
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@4a
    .line 537
    const-string/jumbo v4, "cal_sync4"

    #@4d
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@50
    .line 538
    const-string/jumbo v4, "cal_sync5"

    #@53
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@56
    .line 539
    const-string/jumbo v4, "cal_sync6"

    #@59
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@5c
    .line 540
    const-string/jumbo v4, "cal_sync7"

    #@5f
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@62
    .line 541
    const-string/jumbo v4, "cal_sync8"

    #@65
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@68
    .line 542
    const-string/jumbo v4, "cal_sync9"

    #@6b
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@6e
    .line 543
    const-string/jumbo v4, "cal_sync10"

    #@71
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@74
    .line 545
    const-string/jumbo v4, "name"

    #@77
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@7a
    .line 547
    const-string/jumbo v4, "calendar_displayName"

    #@7d
    .line 546
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@80
    .line 549
    const-string/jumbo v4, "calendar_color"

    #@83
    .line 548
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@86
    .line 551
    const-string/jumbo v4, "calendar_color_index"

    #@89
    .line 550
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@8c
    .line 552
    const-string/jumbo v4, "calendar_access_level"

    #@8f
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@92
    .line 553
    const-string/jumbo v4, "visible"

    #@95
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@98
    .line 554
    const-string/jumbo v4, "sync_events"

    #@9b
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@9e
    .line 556
    const-string/jumbo v4, "calendar_location"

    #@a1
    .line 555
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@a4
    .line 557
    const-string/jumbo v4, "calendar_timezone"

    #@a7
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@aa
    .line 559
    const-string/jumbo v4, "ownerAccount"

    #@ad
    .line 558
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@b0
    .line 561
    const-string/jumbo v4, "canOrganizerRespond"

    #@b3
    .line 560
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@b6
    .line 563
    const-string/jumbo v4, "canModifyTimeZone"

    #@b9
    .line 562
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@bc
    .line 565
    const-string/jumbo v4, "maxReminders"

    #@bf
    .line 564
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@c2
    .line 567
    const-string/jumbo v4, "canPartiallyUpdate"

    #@c5
    .line 566
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@c8
    .line 569
    const-string/jumbo v4, "allowedReminders"

    #@cb
    .line 568
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@ce
    .line 571
    const-string/jumbo v4, "deleted"

    #@d1
    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@d4
    .line 574
    new-instance v3, Landroid/content/Entity;

    #@d6
    invoke-direct {v3, v2}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    #@d9
    .line 577
    .local v3, "entity":Landroid/content/Entity;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    #@dc
    .line 580
    return-object v3
.end method
