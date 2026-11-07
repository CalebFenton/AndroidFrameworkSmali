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
.method public constructor greylist-max-o <init>(Landroid/database/Cursor;)V
    .registers 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 594
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 595
    return-void
.end method


# virtual methods
.method public greylist-max-o getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .registers 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 603
    .local v1, "calendarId":J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 604
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 606
    const-string v0, "account_name"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 607
    const-string v0, "account_type"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 609
    const-string v0, "_sync_id"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 610
    const-string v0, "dirty"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 611
    const-string/jumbo v0, "mutators"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 613
    const-string v0, "cal_sync1"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 614
    const-string v0, "cal_sync2"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 615
    const-string v0, "cal_sync3"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 616
    const-string v0, "cal_sync4"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 617
    const-string v0, "cal_sync5"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 618
    const-string v0, "cal_sync6"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 619
    const-string v0, "cal_sync7"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 620
    const-string v0, "cal_sync8"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 621
    const-string v0, "cal_sync9"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 622
    const-string v0, "cal_sync10"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 624
    const-string/jumbo v0, "name"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 625
    const-string v0, "calendar_displayName"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 627
    const-string v0, "calendar_color"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 629
    const-string v0, "calendar_color_index"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 631
    const-string v0, "calendar_access_level"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 632
    const-string/jumbo v0, "visible"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 633
    const-string/jumbo v0, "sync_events"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 634
    const-string v0, "calendar_location"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 636
    const-string v0, "calendar_timezone"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 637
    const-string/jumbo v0, "ownerAccount"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 639
    const-string v0, "canOrganizerRespond"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 641
    const-string v0, "canModifyTimeZone"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 643
    const-string/jumbo v0, "maxReminders"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 645
    const-string v0, "canPartiallyUpdate"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 647
    const-string v0, "allowedReminders"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 650
    const-string v0, "deleted"

    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 653
    new-instance v0, Landroid/content/Entity;

    invoke-direct {v0, v3}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 656
    .local v0, "entity":Landroid/content/Entity;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 659
    return-object v0
.end method
