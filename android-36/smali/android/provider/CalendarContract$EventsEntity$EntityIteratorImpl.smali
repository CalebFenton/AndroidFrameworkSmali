.class Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "CalendarContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract$EventsEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityIteratorImpl"
.end annotation


# static fields
.field private static final greylist-max-o ATTENDEES_PROJECTION:[Ljava/lang/String;

.field private static final greylist-max-o COLUMN_ATTENDEE_EMAIL:I = 0x1

.field private static final greylist-max-o COLUMN_ATTENDEE_IDENTITY:I = 0x5

.field private static final greylist-max-o COLUMN_ATTENDEE_ID_NAMESPACE:I = 0x6

.field private static final greylist-max-o COLUMN_ATTENDEE_NAME:I = 0x0

.field private static final greylist-max-o COLUMN_ATTENDEE_RELATIONSHIP:I = 0x2

.field private static final greylist-max-o COLUMN_ATTENDEE_STATUS:I = 0x4

.field private static final greylist-max-o COLUMN_ATTENDEE_TYPE:I = 0x3

.field private static final greylist-max-o COLUMN_ID:I = 0x0

.field private static final greylist-max-o COLUMN_METHOD:I = 0x1

.field private static final greylist-max-o COLUMN_MINUTES:I = 0x0

.field private static final greylist-max-o COLUMN_NAME:I = 0x1

.field private static final greylist-max-o COLUMN_VALUE:I = 0x2

.field private static final greylist-max-o EXTENDED_PROJECTION:[Ljava/lang/String;

.field private static final greylist-max-o REMINDERS_PROJECTION:[Ljava/lang/String;

.field private static final greylist-max-o WHERE_EVENT_ID:Ljava/lang/String; = "event_id=?"


# instance fields
.field private final greylist-max-o mProvider:Landroid/content/ContentProviderClient;

.field private final greylist-max-o mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 1426
    const-string/jumbo v0, "minutes"

    const-string/jumbo v1, "method"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 1433
    const-string v6, "attendeeIdentity"

    const-string v7, "attendeeIdNamespace"

    const-string v1, "attendeeName"

    const-string v2, "attendeeEmail"

    const-string v3, "attendeeRelationship"

    const-string v4, "attendeeType"

    const-string v5, "attendeeStatus"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 1450
    const-string/jumbo v0, "name"

    const-string/jumbo v1, "value"

    const-string v2, "_id"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "provider"    # Landroid/content/ContentProviderClient;

    .line 1468
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 1469
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    .line 1470
    iput-object p2, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    .line 1471
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 1462
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 1463
    iput-object p2, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    .line 1464
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    .line 1465
    return-void
.end method


# virtual methods
.method public greylist-max-o getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .registers 20
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1476
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1477
    .local v3, "eventId":J
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1478
    .local v5, "cv":Landroid/content/ContentValues;
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1479
    const-string v6, "calendar_id"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1480
    const-string/jumbo v6, "title"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1481
    const-string v6, "description"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1482
    const-string v6, "eventLocation"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1483
    const-string v6, "eventStatus"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1484
    const-string/jumbo v6, "selfAttendeeStatus"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1485
    const-string v6, "dtstart"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1486
    const-string v6, "dtend"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1487
    const-string v6, "duration"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1488
    const-string v6, "eventTimezone"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1489
    const-string v6, "eventEndTimezone"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1490
    const-string v6, "allDay"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1491
    const-string v6, "accessLevel"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1492
    const-string v6, "availability"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1493
    const-string v6, "eventColor"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1494
    const-string v6, "eventColor_index"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1495
    const-string/jumbo v6, "hasAlarm"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1496
    const-string/jumbo v6, "hasExtendedProperties"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1498
    const-string/jumbo v6, "rrule"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1499
    const-string/jumbo v6, "rdate"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1500
    const-string v6, "exrule"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1501
    const-string v6, "exdate"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1502
    const-string/jumbo v6, "original_sync_id"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1503
    const-string/jumbo v6, "original_id"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1504
    const-string/jumbo v6, "originalInstanceTime"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1506
    const-string/jumbo v6, "originalAllDay"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1507
    const-string/jumbo v6, "lastDate"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1508
    const-string/jumbo v6, "hasAttendeeData"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1509
    const-string/jumbo v6, "guestsCanInviteOthers"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1511
    const-string/jumbo v6, "guestsCanModify"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1512
    const-string/jumbo v6, "guestsCanSeeGuests"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1513
    const-string v6, "customAppPackage"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1514
    const-string v6, "customAppUri"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1515
    const-string/jumbo v6, "uid2445"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1516
    const-string/jumbo v6, "organizer"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1517
    const-string/jumbo v6, "isOrganizer"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1518
    const-string v6, "_sync_id"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1519
    const-string v6, "dirty"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1520
    const-string/jumbo v6, "mutators"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1521
    const-string/jumbo v6, "lastSynced"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1522
    const-string v6, "deleted"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1523
    const-string/jumbo v6, "sync_data1"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1524
    const-string/jumbo v6, "sync_data2"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1525
    const-string/jumbo v6, "sync_data3"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1526
    const-string/jumbo v6, "sync_data4"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1527
    const-string/jumbo v6, "sync_data5"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1528
    const-string/jumbo v6, "sync_data6"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1529
    const-string/jumbo v6, "sync_data7"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1530
    const-string/jumbo v6, "sync_data8"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1531
    const-string/jumbo v6, "sync_data9"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1532
    const-string/jumbo v6, "sync_data10"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1533
    const-string v6, "cal_sync1"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1534
    const-string v6, "cal_sync2"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1535
    const-string v6, "cal_sync3"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1536
    const-string v6, "cal_sync4"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1537
    const-string v6, "cal_sync5"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1538
    const-string v6, "cal_sync6"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1539
    const-string v6, "cal_sync7"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1540
    const-string v6, "cal_sync8"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1541
    const-string v6, "cal_sync9"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1542
    const-string v6, "cal_sync10"

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1544
    new-instance v6, Landroid/content/Entity;

    invoke-direct {v6, v5}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 1546
    .local v6, "entity":Landroid/content/Entity;
    iget-object v7, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    if-eqz v7, :cond_188

    .line 1547
    iget-object v8, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 1549
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    .line 1547
    const-string v11, "event_id=?"

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, "subCursor":Landroid/database/Cursor;
    goto :goto_19d

    .line 1552
    .end local v7    # "subCursor":Landroid/database/Cursor;
    :cond_188
    iget-object v8, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v9, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 1554
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    .line 1552
    const-string v11, "event_id=?"

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1558
    .restart local v7    # "subCursor":Landroid/database/Cursor;
    :goto_19d
    :try_start_19d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_1cc

    .line 1559
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1560
    .local v8, "reminderValues":Landroid/content/ContentValues;
    const-string/jumbo v11, "minutes"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1561
    const-string/jumbo v10, "method"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1562
    sget-object v9, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v9, v8}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_1cb
    .catchall {:try_start_19d .. :try_end_1cb} :catchall_2d6

    .line 1563
    .end local v8    # "reminderValues":Landroid/content/ContentValues;
    goto :goto_19d

    .line 1565
    :cond_1cc
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1566
    nop

    .line 1568
    iget-object v8, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    if-eqz v8, :cond_1eb

    .line 1569
    iget-object v11, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v12, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v13, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 1571
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v15

    .line 1569
    const-string v14, "event_id=?"

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_201

    .line 1574
    :cond_1eb
    iget-object v11, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v12, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v13, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 1576
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v15

    .line 1574
    const-string v14, "event_id=?"

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1580
    :goto_201
    :try_start_201
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    const/4 v11, 0x2

    if-eqz v8, :cond_262

    .line 1581
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1582
    .local v8, "attendeeValues":Landroid/content/ContentValues;
    const-string v12, "attendeeName"

    .line 1583
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1582
    invoke-virtual {v8, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    const-string v12, "attendeeEmail"

    .line 1585
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1584
    invoke-virtual {v8, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    const-string v12, "attendeeRelationship"

    .line 1587
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1586
    invoke-virtual {v8, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1588
    const-string v11, "attendeeType"

    .line 1589
    const/4 v12, 0x3

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1588
    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1590
    const-string v11, "attendeeStatus"

    .line 1591
    const/4 v12, 0x4

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1590
    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1592
    const-string v11, "attendeeIdentity"

    .line 1593
    const/4 v12, 0x5

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1592
    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    const-string v11, "attendeeIdNamespace"

    .line 1595
    const/4 v12, 0x6

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1594
    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    sget-object v11, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v11, v8}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_261
    .catchall {:try_start_201 .. :try_end_261} :catchall_2d1

    .line 1597
    .end local v8    # "attendeeValues":Landroid/content/ContentValues;
    goto :goto_201

    .line 1599
    :cond_262
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1600
    nop

    .line 1602
    iget-object v8, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    if-eqz v8, :cond_281

    .line 1603
    iget-object v12, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v13, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    sget-object v14, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    .line 1605
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v16

    .line 1603
    const-string v15, "event_id=?"

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_297

    .line 1608
    :cond_281
    iget-object v12, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v13, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    sget-object v14, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    .line 1610
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v16

    .line 1608
    const-string v15, "event_id=?"

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1614
    :goto_297
    :try_start_297
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2c4

    .line 1615
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1616
    .local v8, "extendedValues":Landroid/content/ContentValues;
    nop

    .line 1617
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1616
    invoke-virtual {v8, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    const-string/jumbo v12, "name"

    .line 1619
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1618
    invoke-virtual {v8, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    const-string/jumbo v12, "value"

    .line 1621
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1620
    invoke-virtual {v8, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    sget-object v12, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v12, v8}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_2c3
    .catchall {:try_start_297 .. :try_end_2c3} :catchall_2cc

    .line 1623
    .end local v8    # "extendedValues":Landroid/content/ContentValues;
    goto :goto_297

    .line 1625
    :cond_2c4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1626
    nop

    .line 1628
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 1629
    return-object v6

    .line 1625
    :catchall_2cc
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1626
    throw v0

    .line 1599
    :catchall_2d1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1600
    throw v0

    .line 1565
    :catchall_2d6
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1566
    throw v0
.end method
