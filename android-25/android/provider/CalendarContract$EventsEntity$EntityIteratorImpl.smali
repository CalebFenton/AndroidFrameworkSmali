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
.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field private static final COLUMN_ATTENDEE_EMAIL:I = 0x1

.field private static final COLUMN_ATTENDEE_IDENTITY:I = 0x5

.field private static final COLUMN_ATTENDEE_ID_NAMESPACE:I = 0x6

.field private static final COLUMN_ATTENDEE_NAME:I = 0x0

.field private static final COLUMN_ATTENDEE_RELATIONSHIP:I = 0x2

.field private static final COLUMN_ATTENDEE_STATUS:I = 0x4

.field private static final COLUMN_ATTENDEE_TYPE:I = 0x3

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_METHOD:I = 0x1

.field private static final COLUMN_MINUTES:I = 0x0

.field private static final COLUMN_NAME:I = 0x1

.field private static final COLUMN_VALUE:I = 0x2

.field private static final EXTENDED_PROJECTION:[Ljava/lang/String;

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String;

.field private static final WHERE_EVENT_ID:Ljava/lang/String; = "event_id=?"


# instance fields
.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 1313
    new-array v0, v5, [Ljava/lang/String;

    #@6
    .line 1314
    const-string/jumbo v1, "minutes"

    #@9
    aput-object v1, v0, v3

    #@b
    .line 1315
    const-string/jumbo v1, "method"

    #@e
    aput-object v1, v0, v4

    #@10
    .line 1313
    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    #@12
    .line 1320
    const/4 v0, 0x7

    #@13
    new-array v0, v0, [Ljava/lang/String;

    #@15
    .line 1321
    const-string/jumbo v1, "attendeeName"

    #@18
    aput-object v1, v0, v3

    #@1a
    .line 1322
    const-string/jumbo v1, "attendeeEmail"

    #@1d
    aput-object v1, v0, v4

    #@1f
    .line 1323
    const-string/jumbo v1, "attendeeRelationship"

    #@22
    aput-object v1, v0, v5

    #@24
    .line 1324
    const-string/jumbo v1, "attendeeType"

    #@27
    aput-object v1, v0, v6

    #@29
    .line 1325
    const-string/jumbo v1, "attendeeStatus"

    #@2c
    const/4 v2, 0x4

    #@2d
    aput-object v1, v0, v2

    #@2f
    .line 1326
    const-string/jumbo v1, "attendeeIdentity"

    #@32
    const/4 v2, 0x5

    #@33
    aput-object v1, v0, v2

    #@35
    .line 1327
    const-string/jumbo v1, "attendeeIdNamespace"

    #@38
    const/4 v2, 0x6

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 1320
    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    #@3d
    .line 1337
    new-array v0, v6, [Ljava/lang/String;

    #@3f
    .line 1338
    const-string/jumbo v1, "_id"

    #@42
    aput-object v1, v0, v3

    #@44
    .line 1339
    const-string/jumbo v1, "name"

    #@47
    aput-object v1, v0, v4

    #@49
    .line 1340
    const-string/jumbo v1, "value"

    #@4c
    aput-object v1, v0, v5

    #@4e
    .line 1337
    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    #@50
    .line 1309
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "provider"    # Landroid/content/ContentProviderClient;

    #@0
    .prologue
    .line 1355
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    #@3
    .line 1356
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    #@6
    .line 1357
    iput-object p2, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    #@8
    .line 1354
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 1349
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    #@3
    .line 1350
    iput-object p2, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    #@5
    .line 1351
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    #@8
    .line 1348
    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 17
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1363
    const-string/jumbo v2, "_id"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@8
    move-result v2

    #@9
    move-object/from16 v0, p1

    #@b
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    #@e
    move-result-wide v12

    #@f
    .line 1364
    .local v12, "eventId":J
    new-instance v9, Landroid/content/ContentValues;

    #@11
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    #@14
    .line 1365
    .local v9, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "_id"

    #@17
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@1e
    .line 1366
    const-string/jumbo v2, "calendar_id"

    #@21
    move-object/from16 v0, p1

    #@23
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@26
    .line 1367
    const-string/jumbo v2, "title"

    #@29
    move-object/from16 v0, p1

    #@2b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@2e
    .line 1368
    const-string/jumbo v2, "description"

    #@31
    move-object/from16 v0, p1

    #@33
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@36
    .line 1369
    const-string/jumbo v2, "eventLocation"

    #@39
    move-object/from16 v0, p1

    #@3b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@3e
    .line 1370
    const-string/jumbo v2, "eventStatus"

    #@41
    move-object/from16 v0, p1

    #@43
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@46
    .line 1371
    const-string/jumbo v2, "selfAttendeeStatus"

    #@49
    move-object/from16 v0, p1

    #@4b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@4e
    .line 1372
    const-string/jumbo v2, "dtstart"

    #@51
    move-object/from16 v0, p1

    #@53
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@56
    .line 1373
    const-string/jumbo v2, "dtend"

    #@59
    move-object/from16 v0, p1

    #@5b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@5e
    .line 1374
    const-string/jumbo v2, "duration"

    #@61
    move-object/from16 v0, p1

    #@63
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@66
    .line 1375
    const-string/jumbo v2, "eventTimezone"

    #@69
    move-object/from16 v0, p1

    #@6b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@6e
    .line 1376
    const-string/jumbo v2, "eventEndTimezone"

    #@71
    move-object/from16 v0, p1

    #@73
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@76
    .line 1377
    const-string/jumbo v2, "allDay"

    #@79
    move-object/from16 v0, p1

    #@7b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@7e
    .line 1378
    const-string/jumbo v2, "accessLevel"

    #@81
    move-object/from16 v0, p1

    #@83
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@86
    .line 1379
    const-string/jumbo v2, "availability"

    #@89
    move-object/from16 v0, p1

    #@8b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@8e
    .line 1380
    const-string/jumbo v2, "eventColor"

    #@91
    move-object/from16 v0, p1

    #@93
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@96
    .line 1381
    const-string/jumbo v2, "eventColor_index"

    #@99
    move-object/from16 v0, p1

    #@9b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@9e
    .line 1382
    const-string/jumbo v2, "hasAlarm"

    #@a1
    move-object/from16 v0, p1

    #@a3
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@a6
    .line 1384
    const-string/jumbo v2, "hasExtendedProperties"

    #@a9
    .line 1383
    move-object/from16 v0, p1

    #@ab
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@ae
    .line 1385
    const-string/jumbo v2, "rrule"

    #@b1
    move-object/from16 v0, p1

    #@b3
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@b6
    .line 1386
    const-string/jumbo v2, "rdate"

    #@b9
    move-object/from16 v0, p1

    #@bb
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@be
    .line 1387
    const-string/jumbo v2, "exrule"

    #@c1
    move-object/from16 v0, p1

    #@c3
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@c6
    .line 1388
    const-string/jumbo v2, "exdate"

    #@c9
    move-object/from16 v0, p1

    #@cb
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@ce
    .line 1389
    const-string/jumbo v2, "original_sync_id"

    #@d1
    move-object/from16 v0, p1

    #@d3
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@d6
    .line 1390
    const-string/jumbo v2, "original_id"

    #@d9
    move-object/from16 v0, p1

    #@db
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@de
    .line 1392
    const-string/jumbo v2, "originalInstanceTime"

    #@e1
    .line 1391
    move-object/from16 v0, p1

    #@e3
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@e6
    .line 1393
    const-string/jumbo v2, "originalAllDay"

    #@e9
    move-object/from16 v0, p1

    #@eb
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@ee
    .line 1394
    const-string/jumbo v2, "lastDate"

    #@f1
    move-object/from16 v0, p1

    #@f3
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@f6
    .line 1395
    const-string/jumbo v2, "hasAttendeeData"

    #@f9
    move-object/from16 v0, p1

    #@fb
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@fe
    .line 1397
    const-string/jumbo v2, "guestsCanInviteOthers"

    #@101
    .line 1396
    move-object/from16 v0, p1

    #@103
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@106
    .line 1398
    const-string/jumbo v2, "guestsCanModify"

    #@109
    move-object/from16 v0, p1

    #@10b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@10e
    .line 1399
    const-string/jumbo v2, "guestsCanSeeGuests"

    #@111
    move-object/from16 v0, p1

    #@113
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@116
    .line 1400
    const-string/jumbo v2, "customAppPackage"

    #@119
    move-object/from16 v0, p1

    #@11b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@11e
    .line 1401
    const-string/jumbo v2, "customAppUri"

    #@121
    move-object/from16 v0, p1

    #@123
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@126
    .line 1402
    const-string/jumbo v2, "uid2445"

    #@129
    move-object/from16 v0, p1

    #@12b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@12e
    .line 1403
    const-string/jumbo v2, "organizer"

    #@131
    move-object/from16 v0, p1

    #@133
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@136
    .line 1404
    const-string/jumbo v2, "isOrganizer"

    #@139
    move-object/from16 v0, p1

    #@13b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@13e
    .line 1405
    const-string/jumbo v2, "_sync_id"

    #@141
    move-object/from16 v0, p1

    #@143
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@146
    .line 1406
    const-string/jumbo v2, "dirty"

    #@149
    move-object/from16 v0, p1

    #@14b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@14e
    .line 1407
    const-string/jumbo v2, "mutators"

    #@151
    move-object/from16 v0, p1

    #@153
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@156
    .line 1408
    const-string/jumbo v2, "lastSynced"

    #@159
    move-object/from16 v0, p1

    #@15b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@15e
    .line 1409
    const-string/jumbo v2, "deleted"

    #@161
    move-object/from16 v0, p1

    #@163
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@166
    .line 1410
    const-string/jumbo v2, "sync_data1"

    #@169
    move-object/from16 v0, p1

    #@16b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@16e
    .line 1411
    const-string/jumbo v2, "sync_data2"

    #@171
    move-object/from16 v0, p1

    #@173
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@176
    .line 1412
    const-string/jumbo v2, "sync_data3"

    #@179
    move-object/from16 v0, p1

    #@17b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@17e
    .line 1413
    const-string/jumbo v2, "sync_data4"

    #@181
    move-object/from16 v0, p1

    #@183
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@186
    .line 1414
    const-string/jumbo v2, "sync_data5"

    #@189
    move-object/from16 v0, p1

    #@18b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@18e
    .line 1415
    const-string/jumbo v2, "sync_data6"

    #@191
    move-object/from16 v0, p1

    #@193
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@196
    .line 1416
    const-string/jumbo v2, "sync_data7"

    #@199
    move-object/from16 v0, p1

    #@19b
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@19e
    .line 1417
    const-string/jumbo v2, "sync_data8"

    #@1a1
    move-object/from16 v0, p1

    #@1a3
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@1a6
    .line 1418
    const-string/jumbo v2, "sync_data9"

    #@1a9
    move-object/from16 v0, p1

    #@1ab
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@1ae
    .line 1419
    const-string/jumbo v2, "sync_data10"

    #@1b1
    move-object/from16 v0, p1

    #@1b3
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@1b6
    .line 1420
    const-string/jumbo v2, "cal_sync1"

    #@1b9
    move-object/from16 v0, p1

    #@1bb
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@1be
    .line 1421
    const-string/jumbo v2, "cal_sync2"

    #@1c1
    move-object/from16 v0, p1

    #@1c3
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@1c6
    .line 1422
    const-string/jumbo v2, "cal_sync3"

    #@1c9
    move-object/from16 v0, p1

    #@1cb
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@1ce
    .line 1423
    const-string/jumbo v2, "cal_sync4"

    #@1d1
    move-object/from16 v0, p1

    #@1d3
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@1d6
    .line 1424
    const-string/jumbo v2, "cal_sync5"

    #@1d9
    move-object/from16 v0, p1

    #@1db
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@1de
    .line 1425
    const-string/jumbo v2, "cal_sync6"

    #@1e1
    move-object/from16 v0, p1

    #@1e3
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@1e6
    .line 1426
    const-string/jumbo v2, "cal_sync7"

    #@1e9
    move-object/from16 v0, p1

    #@1eb
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@1ee
    .line 1427
    const-string/jumbo v2, "cal_sync8"

    #@1f1
    move-object/from16 v0, p1

    #@1f3
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@1f6
    .line 1428
    const-string/jumbo v2, "cal_sync9"

    #@1f9
    move-object/from16 v0, p1

    #@1fb
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@1fe
    .line 1429
    const-string/jumbo v2, "cal_sync10"

    #@201
    move-object/from16 v0, p1

    #@203
    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@206
    .line 1431
    new-instance v10, Landroid/content/Entity;

    #@208
    invoke-direct {v10, v9}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    #@20b
    .line 1433
    .local v10, "entity":Landroid/content/Entity;
    move-object/from16 v0, p0

    #@20d
    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    #@20f
    if-eqz v2, :cond_0

    #@211
    .line 1434
    move-object/from16 v0, p0

    #@213
    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    #@215
    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    #@217
    sget-object v4, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    #@219
    .line 1435
    const-string/jumbo v5, "event_id=?"

    #@21c
    .line 1436
    const/4 v6, 0x1

    #@21d
    new-array v6, v6, [Ljava/lang/String;

    #@21f
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@222
    move-result-object v7

    #@223
    const/16 v16, 0x0

    #@225
    aput-object v7, v6, v16

    #@227
    .line 1437
    const/4 v7, 0x0

    #@228
    .line 1434
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@22b
    move-result-object v15

    #@22c
    .line 1445
    .local v15, "subCursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    #@22f
    move-result v2

    #@230
    if-eqz v2, :cond_1

    #@232
    .line 1446
    new-instance v14, Landroid/content/ContentValues;

    #@234
    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    #@237
    .line 1447
    .local v14, "reminderValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "minutes"

    #@23a
    const/4 v3, 0x0

    #@23b
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    #@23e
    move-result v3

    #@23f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@242
    move-result-object v3

    #@243
    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@246
    .line 1448
    const-string/jumbo v2, "method"

    #@249
    const/4 v3, 0x1

    #@24a
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    #@24d
    move-result v3

    #@24e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@251
    move-result-object v3

    #@252
    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@255
    .line 1449
    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    #@257
    invoke-virtual {v10, v2, v14}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25a
    goto :goto_0

    #@25b
    .line 1451
    .end local v14    # "reminderValues":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    #@25c
    .line 1452
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    #@25f
    .line 1451
    throw v2

    #@260
    .line 1439
    .end local v15    # "subCursor":Landroid/database/Cursor;
    :cond_0
    move-object/from16 v0, p0

    #@262
    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    #@264
    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    #@266
    sget-object v4, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    #@268
    .line 1440
    const-string/jumbo v5, "event_id=?"

    #@26b
    .line 1441
    const/4 v6, 0x1

    #@26c
    new-array v6, v6, [Ljava/lang/String;

    #@26e
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@271
    move-result-object v7

    #@272
    const/16 v16, 0x0

    #@274
    aput-object v7, v6, v16

    #@276
    .line 1442
    const/4 v7, 0x0

    #@277
    .line 1439
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@27a
    move-result-object v15

    #@27b
    .restart local v15    # "subCursor":Landroid/database/Cursor;
    goto :goto_0

    #@27c
    .line 1452
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    #@27f
    .line 1455
    move-object/from16 v0, p0

    #@281
    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    #@283
    if-eqz v2, :cond_2

    #@285
    .line 1456
    move-object/from16 v0, p0

    #@287
    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    #@289
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    #@28b
    sget-object v4, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    #@28d
    .line 1457
    const-string/jumbo v5, "event_id=?"

    #@290
    .line 1458
    const/4 v6, 0x1

    #@291
    new-array v6, v6, [Ljava/lang/String;

    #@293
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@296
    move-result-object v7

    #@297
    const/16 v16, 0x0

    #@299
    aput-object v7, v6, v16

    #@29b
    .line 1459
    const/4 v7, 0x0

    #@29c
    .line 1456
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@29f
    move-result-object v15

    #@2a0
    .line 1467
    :goto_1
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    #@2a3
    move-result v2

    #@2a4
    if-eqz v2, :cond_3

    #@2a6
    .line 1468
    new-instance v8, Landroid/content/ContentValues;

    #@2a8
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    #@2ab
    .line 1469
    .local v8, "attendeeValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "attendeeName"

    #@2ae
    .line 1470
    const/4 v3, 0x0

    #@2af
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2b2
    move-result-object v3

    #@2b3
    .line 1469
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@2b6
    .line 1471
    const-string/jumbo v2, "attendeeEmail"

    #@2b9
    .line 1472
    const/4 v3, 0x1

    #@2ba
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2bd
    move-result-object v3

    #@2be
    .line 1471
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@2c1
    .line 1473
    const-string/jumbo v2, "attendeeRelationship"

    #@2c4
    .line 1474
    const/4 v3, 0x2

    #@2c5
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    #@2c8
    move-result v3

    #@2c9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2cc
    move-result-object v3

    #@2cd
    .line 1473
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@2d0
    .line 1475
    const-string/jumbo v2, "attendeeType"

    #@2d3
    .line 1476
    const/4 v3, 0x3

    #@2d4
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    #@2d7
    move-result v3

    #@2d8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2db
    move-result-object v3

    #@2dc
    .line 1475
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@2df
    .line 1477
    const-string/jumbo v2, "attendeeStatus"

    #@2e2
    .line 1478
    const/4 v3, 0x4

    #@2e3
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    #@2e6
    move-result v3

    #@2e7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2ea
    move-result-object v3

    #@2eb
    .line 1477
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@2ee
    .line 1479
    const-string/jumbo v2, "attendeeIdentity"

    #@2f1
    .line 1480
    const/4 v3, 0x5

    #@2f2
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2f5
    move-result-object v3

    #@2f6
    .line 1479
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@2f9
    .line 1481
    const-string/jumbo v2, "attendeeIdNamespace"

    #@2fc
    .line 1482
    const/4 v3, 0x6

    #@2fd
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@300
    move-result-object v3

    #@301
    .line 1481
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@304
    .line 1483
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    #@306
    invoke-virtual {v10, v2, v8}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@309
    goto :goto_1

    #@30a
    .line 1485
    .end local v8    # "attendeeValues":Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    #@30b
    .line 1486
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    #@30e
    .line 1485
    throw v2

    #@30f
    .line 1461
    :cond_2
    move-object/from16 v0, p0

    #@311
    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    #@313
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    #@315
    sget-object v4, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    #@317
    .line 1462
    const-string/jumbo v5, "event_id=?"

    #@31a
    .line 1463
    const/4 v6, 0x1

    #@31b
    new-array v6, v6, [Ljava/lang/String;

    #@31d
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@320
    move-result-object v7

    #@321
    const/16 v16, 0x0

    #@323
    aput-object v7, v6, v16

    #@325
    .line 1464
    const/4 v7, 0x0

    #@326
    .line 1461
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@329
    move-result-object v15

    #@32a
    goto/16 :goto_1

    #@32c
    .line 1486
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    #@32f
    .line 1489
    move-object/from16 v0, p0

    #@331
    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    #@333
    if-eqz v2, :cond_4

    #@335
    .line 1490
    move-object/from16 v0, p0

    #@337
    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    #@339
    sget-object v3, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    #@33b
    sget-object v4, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    #@33d
    .line 1491
    const-string/jumbo v5, "event_id=?"

    #@340
    .line 1492
    const/4 v6, 0x1

    #@341
    new-array v6, v6, [Ljava/lang/String;

    #@343
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@346
    move-result-object v7

    #@347
    const/16 v16, 0x0

    #@349
    aput-object v7, v6, v16

    #@34b
    .line 1493
    const/4 v7, 0x0

    #@34c
    .line 1490
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@34f
    move-result-object v15

    #@350
    .line 1501
    :goto_2
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    #@353
    move-result v2

    #@354
    if-eqz v2, :cond_5

    #@356
    .line 1502
    new-instance v11, Landroid/content/ContentValues;

    #@358
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    #@35b
    .line 1503
    .local v11, "extendedValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "_id"

    #@35e
    .line 1504
    const/4 v3, 0x0

    #@35f
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@362
    move-result-object v3

    #@363
    .line 1503
    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@366
    .line 1505
    const-string/jumbo v2, "name"

    #@369
    .line 1506
    const/4 v3, 0x1

    #@36a
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@36d
    move-result-object v3

    #@36e
    .line 1505
    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@371
    .line 1507
    const-string/jumbo v2, "value"

    #@374
    .line 1508
    const/4 v3, 0x2

    #@375
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@378
    move-result-object v3

    #@379
    .line 1507
    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@37c
    .line 1509
    sget-object v2, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    #@37e
    invoke-virtual {v10, v2, v11}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@381
    goto :goto_2

    #@382
    .line 1511
    .end local v11    # "extendedValues":Landroid/content/ContentValues;
    :catchall_2
    move-exception v2

    #@383
    .line 1512
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    #@386
    .line 1511
    throw v2

    #@387
    .line 1495
    :cond_4
    move-object/from16 v0, p0

    #@389
    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    #@38b
    sget-object v3, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    #@38d
    sget-object v4, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    #@38f
    .line 1496
    const-string/jumbo v5, "event_id=?"

    #@392
    .line 1497
    const/4 v6, 0x1

    #@393
    new-array v6, v6, [Ljava/lang/String;

    #@395
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@398
    move-result-object v7

    #@399
    const/16 v16, 0x0

    #@39b
    aput-object v7, v6, v16

    #@39d
    .line 1498
    const/4 v7, 0x0

    #@39e
    .line 1495
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@3a1
    move-result-object v15

    #@3a2
    goto :goto_2

    #@3a3
    .line 1512
    :cond_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    #@3a6
    .line 1515
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    #@3a9
    .line 1516
    return-object v10
.end method
