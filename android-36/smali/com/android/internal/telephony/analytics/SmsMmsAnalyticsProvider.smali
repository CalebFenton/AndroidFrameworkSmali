.class public Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;
.super Ljava/lang/Object;
.source "SmsMmsAnalyticsProvider.java"

# interfaces
.implements Lcom/android/internal/telephony/analytics/TelephonyAnalyticsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;,
        Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;
    }
.end annotation


# static fields
.field private static final blacklist DECIMAL_FORMAT:Ljava/text/DecimalFormat;

.field private static final blacklist SMS_MMS_INSERTION_PROJECTION:[Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "SmsMmsAnalyticsProvider"


# instance fields
.field private blacklist mDateOfDeletedRecordsSmsMmsTable:Ljava/lang/String;

.field private final blacklist mSlotIndex:I

.field private blacklist mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;


# direct methods
.method public static synthetic blacklist $r8$lambda$HbI3ZfO4-EPVuloYyKPHZwbAlYg(JJLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 9

    .line 459
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    add-long/2addr p0, p2

    long-to-double p0, p0

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p0

    .line 462
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed SMS Count for RAT : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", Percentage = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    .line 468
    invoke-virtual {p1, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 462
    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    .line 113
    const-string v0, "_id"

    const-string v1, "Count"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->SMS_MMS_INSERTION_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;I)V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    .line 109
    iput p2, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mSlotIndex:I

    .line 110
    const-string p0, "CREATE TABLE IF NOT EXISTS SmsMmsDataLogs(_id INTEGER PRIMARY KEY,LogDate DATE ,SmsMmsStatus TEXT DEFAULT \'\',SmsMmsType TEXT DEFAULT \'\',SlotID INTEGER , RAT TEXT DEFAULT \'\',FailureReason TEXT DEFAULT \'\',ReleaseVersion TEXT DEFAULT \'\' , Count INTEGER DEFAULT 1 );"

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->createTable(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 8

    .line 145
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 146
    sget-object v1, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsDatabase;->DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string v2, "LogDate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "SmsMmsStatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string p1, "SmsMmsType"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string p1, "RAT"

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget p0, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mSlotIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "SlotID"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    const-string p0, "FailureReason"

    invoke-virtual {v0, p0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string p0, "ReleaseVersion"

    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist getFailedIncomingMms()J
    .registers 3

    .line 344
    sget-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->MMS_INCOMING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    iget-object v0, v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->value:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->FAILURE:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    iget-object v1, v1, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getSmsMmsOfTypeAndStatus(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getFailedIncomingSms()J
    .registers 3

    .line 336
    sget-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->SMS_INCOMING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    iget-object v0, v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->value:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->FAILURE:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    iget-object v1, v1, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getSmsMmsOfTypeAndStatus(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getFailedOutgoingMms()J
    .registers 3

    .line 340
    sget-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->MMS_OUTGOING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    iget-object v0, v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->value:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->FAILURE:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    iget-object v1, v1, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getSmsMmsOfTypeAndStatus(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getFailedOutgoingSms()J
    .registers 3

    .line 332
    sget-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->SMS_OUTGOING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    iget-object v0, v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->value:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->FAILURE:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    iget-object v1, v1, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getSmsMmsOfTypeAndStatus(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getMmsIncomingCount()J
    .registers 3

    .line 328
    sget-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->MMS_INCOMING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    iget-object v0, v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->value:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getSmsMmsOfTypeAndStatus(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getMmsOutgoingCount()J
    .registers 3

    .line 324
    sget-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->MMS_OUTGOING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    iget-object v0, v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->value:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getSmsMmsOfTypeAndStatus(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getSmsFailedCountByRat()Ljava/util/HashMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 349
    const-string v1, "SUM(Count) as count "

    const-string v2, "RAT"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v5

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SlotID = ? AND SmsMmsStatus = ? AND SmsMmsType IN (\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->SMS_INCOMING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    iget-object v3, v3, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->SMS_OUTGOING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    iget-object v3, v3, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' ) "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 363
    iget v1, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->FAILURE:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    iget-object v3, v3, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->value:Ljava/lang/String;

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v7

    .line 364
    const-string v8, "RAT"

    const/4 v1, 0x0

    .line 367
    :try_start_44
    iget-object v3, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v4, "SmsMmsDataLogs"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 368
    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_79

    .line 378
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 379
    const-string v2, "count"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq p0, v3, :cond_79

    if-eq v2, v3, :cond_79

    .line 382
    :goto_60
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 383
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 384
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 385
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catchall {:try_start_44 .. :try_end_75} :catchall_76

    goto :goto_60

    :catchall_76
    move-exception v0

    move-object p0, v0

    goto :goto_7f

    :cond_79
    if-eqz v1, :cond_7e

    .line 391
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7e
    return-object v0

    :goto_7f
    if-eqz v1, :cond_84

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_84
    throw p0
.end method

.method private blacklist getSmsIncomingCount()J
    .registers 3

    .line 320
    sget-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->SMS_INCOMING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    iget-object v0, v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->value:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getSmsMmsOfTypeAndStatus(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getSmsMmsOfTypeAndStatus(Ljava/lang/String;Ljava/lang/String;)J
    .registers 8

    .line 284
    const-string v0, "SUM(Count)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 286
    new-array v2, v1, [Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mSlotIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x2

    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    const/4 v2, 0x3

    .line 296
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v4

    aput-object p2, v2, v1

    iget p1, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mSlotIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "SmsMmsType = ? AND SmsMmsStatus = ? AND SlotID = ? "

    goto :goto_4d

    :cond_29
    if-eqz p1, :cond_3a

    .line 303
    new-array v2, v3, [Ljava/lang/String;

    aput-object p1, v2, v4

    iget p1, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mSlotIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "SmsMmsType = ? AND SlotID = ? "

    goto :goto_4d

    :cond_3a
    if-eqz p2, :cond_4b

    .line 310
    new-array v2, v3, [Ljava/lang/String;

    aput-object p2, v2, v4

    iget p1, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mSlotIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "SmsMmsStatus = ? AND SlotID = ? "

    goto :goto_4d

    .line 304
    :cond_4b
    const-string p1, "SlotID = ? "

    .line 312
    :goto_4d
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getCount([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist getSmsOutgoingCount()J
    .registers 3

    .line 316
    sget-object v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->SMS_OUTGOING:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;

    iget-object v0, v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsType;->value:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getSmsMmsOfTypeAndStatus(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public blacklist aggregate()Ljava/util/ArrayList;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 485
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getSmsOutgoingCount()J

    move-result-wide v2

    .line 486
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getSmsIncomingCount()J

    move-result-wide v4

    .line 487
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getMmsOutgoingCount()J

    move-result-wide v10

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getMmsIncomingCount()J

    move-result-wide v12

    .line 489
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getFailedOutgoingSms()J

    move-result-wide v6

    .line 490
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getFailedIncomingSms()J

    move-result-wide v8

    .line 491
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getFailedOutgoingMms()J

    move-result-wide v0

    .line 492
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getFailedIncomingMms()J

    move-result-wide v14

    .line 493
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getSmsFailedCountByRat()Ljava/util/HashMap;

    move-result-object v22

    const-wide/16 v16, 0x0

    cmp-long v18, v2, v16

    const-wide/16 v19, 0x0

    const-wide/high16 v23, 0x4059000000000000L    # 100.0

    if-eqz v18, :cond_38

    move-wide/from16 v25, v12

    long-to-double v12, v6

    move-wide/from16 v27, v6

    long-to-double v6, v2

    div-double/2addr v12, v6

    mul-double v12, v12, v23

    goto :goto_3e

    :cond_38
    move-wide/from16 v27, v6

    move-wide/from16 v25, v12

    move-wide/from16 v12, v19

    :goto_3e
    cmp-long v6, v4, v16

    if-eqz v6, :cond_4a

    long-to-double v6, v8

    move-wide/from16 v29, v2

    long-to-double v2, v4

    div-double/2addr v6, v2

    mul-double v6, v6, v23

    goto :goto_4e

    :cond_4a
    move-wide/from16 v29, v2

    move-wide/from16 v6, v19

    :goto_4e
    cmp-long v2, v10, v16

    if-eqz v2, :cond_58

    long-to-double v0, v0

    long-to-double v2, v10

    div-double/2addr v0, v2

    mul-double v0, v0, v23

    goto :goto_5a

    :cond_58
    move-wide/from16 v0, v19

    :goto_5a
    cmp-long v2, v25, v16

    if-eqz v2, :cond_77

    long-to-double v2, v14

    move-wide/from16 v16, v0

    move-wide/from16 v14, v25

    long-to-double v0, v14

    div-double/2addr v2, v0

    mul-double v19, v2, v23

    move-wide v1, v14

    move-wide v14, v12

    move-wide v12, v1

    move-wide/from16 v20, v19

    move-wide/from16 v18, v16

    move-object/from16 v1, p0

    move-wide/from16 v2, v29

    move-wide/from16 v16, v6

    move-wide/from16 v6, v27

    goto :goto_86

    :cond_77
    move-wide v14, v12

    move-wide/from16 v20, v19

    move-wide/from16 v12, v25

    move-wide/from16 v18, v0

    move-wide/from16 v16, v6

    move-wide/from16 v6, v27

    move-wide/from16 v2, v29

    move-object/from16 v1, p0

    .line 513
    :goto_86
    invoke-virtual/range {v1 .. v22}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->dumpInformationInList(JJJJJJDDDDLjava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist deleteOldAndOverflowData()V
    .registers 6

    .line 398
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsDatabase;->DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mDateOfDeletedRecordsSmsMmsTable:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 400
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    .line 401
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v2, "_id IN  ( SELECT _id FROM SmsMmsDataLogs ORDER BY LogDate DESC LIMIT -1 OFFSET ? ) "

    const-string v3, "LogDate < ? "

    const-string v4, "SmsMmsDataLogs"

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->deleteOverflowAndOldData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iput-object v0, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mDateOfDeletedRecordsSmsMmsTable:Ljava/lang/String;

    return-void
.end method

.method public blacklist dumpInformationInList(JJJJJJDDDDLjava/util/HashMap;)Ljava/util/ArrayList;
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJJJDDDD",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    .line 433
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 434
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Total Outgoing Sms Count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Total Incoming Sms Count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed Outgoing SMS Count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " Percentage failure rate for Outgoing SMS :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    move-wide/from16 v10, p13

    .line 440
    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "%"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 436
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed Incoming SMS Count = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " Percentage failure rate for Incoming SMS :"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p15

    .line 446
    invoke-virtual {v9, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 442
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long/2addr v4, v6

    long-to-double v4, v4

    add-long v6, v2, p1

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    .line 453
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Overall Fail Percentage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v9, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 453
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    :try_start_a5
    new-instance v4, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$$ExternalSyntheticLambda0;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a7} :catch_bc

    move-object/from16 p10, p0

    move-wide/from16 p8, p1

    move-wide/from16 p6, v2

    move-object/from16 p5, v4

    :try_start_af
    invoke-direct/range {p5 .. p10}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$$ExternalSyntheticLambda0;-><init>(JJLjava/util/ArrayList;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_be

    move-object/from16 v0, p5

    move-object/from16 p0, p10

    move-object/from16 v1, p21

    :try_start_b8
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bb} :catch_bc

    return-object p0

    :catch_bc
    move-exception v0

    goto :goto_c1

    :catch_be
    move-exception v0

    move-object/from16 p0, p10

    .line 473
    :goto_c1
    sget-object v1, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in adding to List = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public blacklist getCount([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 15

    const/4 v1, 0x0

    .line 264
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v3, "SmsMmsDataLogs"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 265
    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 274
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCountFromCursor(Landroid/database/Cursor;)J

    move-result-wide p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1c

    if-eqz v1, :cond_1b

    .line 277
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1b
    return-wide p0

    :catchall_1c
    move-exception v0

    move-object p0, v0

    if-eqz v1, :cond_23

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 279
    :cond_23
    throw p0
.end method

.method public blacklist insertDataToDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 26

    move-object/from16 v0, p0

    .line 167
    const-string v1, "SmsMmsStatus"

    invoke-direct/range {p0 .. p4}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 168
    sget-object v3, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 172
    :try_start_12
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->SUCCESS:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;

    iget-object v6, v6, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider$SmsMmsStatus;->value:Ljava/lang/String;

    .line 173
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1e} :catch_66
    .catchall {:try_start_12 .. :try_end_1e} :catchall_64

    const-string v6, "SlotID"

    const-string v7, "SmsMmsType"

    const-string v8, "LogDate"

    if-eqz v5, :cond_68

    .line 174
    :try_start_26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Success Entry Data for Sms/Mms: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v3, v5, v1, v6}, [Ljava/lang/String;

    move-result-object v11

    .line 182
    iget-object v7, v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v8, "SmsMmsDataLogs"

    sget-object v9, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->SMS_MMS_INSERTION_PROJECTION:[Ljava/lang/String;

    const-string v10, "LogDate = ? AND SmsMmsType = ? AND SmsMmsStatus = ? AND SlotID = ? "

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 183
    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_62
    move-object v4, v1

    goto :goto_a4

    :catchall_64
    move-exception v0

    goto :goto_cc

    :catch_66
    move-exception v0

    goto :goto_b0

    .line 196
    :cond_68
    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "RAT"

    .line 199
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 200
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "FailureReason"

    .line 201
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "ReleaseVersion"

    .line 202
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v1

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v16

    .line 204
    iget-object v12, v0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v13, "SmsMmsDataLogs"

    sget-object v14, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->SMS_MMS_INSERTION_PROJECTION:[Ljava/lang/String;

    const-string v15, "LogDate = ? AND SmsMmsStatus = ? AND SmsMmsType = ? AND RAT = ? AND SlotID = ? AND FailureReason = ? AND ReleaseVersion = ? "

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 205
    invoke-virtual/range {v12 .. v20}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_62

    .line 215
    :goto_a4
    invoke-virtual {v0, v4, v2}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->updateIfEntryExistsOtherwiseInsert(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 216
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->deleteOldAndOverflowData()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_aa} :catch_66
    .catchall {:try_start_26 .. :try_end_aa} :catchall_64

    if-eqz v4, :cond_cb

    .line 221
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    .line 218
    :goto_b0
    :try_start_b0
    sget-object v1, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during Sms/Mms Insertion [insertDataToDb()] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_b0 .. :try_end_c6} :catchall_64

    if-eqz v4, :cond_cb

    .line 221
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_cb
    return-void

    :goto_cc
    if-eqz v4, :cond_d1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_d1
    throw v0
.end method

.method public blacklist setDateOfDeletedRecordsSmsMmsTable(Ljava/lang/String;)V
    .registers 2

    .line 411
    iput-object p1, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mDateOfDeletedRecordsSmsMmsTable:Ljava/lang/String;

    return-void
.end method

.method public blacklist updateIfEntryExistsOtherwiseInsert(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .registers 8

    .line 233
    const-string v0, "SmsMmsDataLogs"

    if-eqz p1, :cond_56

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 234
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 235
    const-string v2, "Count"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v1, v4, :cond_55

    if-eq v3, v4, :cond_55

    .line 237
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 238
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 245
    sget-object v1, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v1, "_id = ? "

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_55
    return-void

    .line 254
    :cond_56
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->insert(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method
