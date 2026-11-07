.class public Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;
.super Ljava/lang/Object;
.source "ServiceStateAnalyticsProvider.java"

# interfaces
.implements Lcom/android/internal/telephony/analytics/TelephonyAnalyticsProvider;


# static fields
.field private static final blacklist DECIMAL_FORMAT:Ljava/text/DecimalFormat;

.field private static final blacklist SERVICE_STATE_INSERTION_COLUMNS:[Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "ServiceStateAnalyticsProvider"


# instance fields
.field private blacklist mDateOfDeletedRecordsServiceStateTable:Ljava/lang/String;

.field private final blacklist mSlotIndex:I

.field protected blacklist mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;


# direct methods
.method public static synthetic blacklist $r8$lambda$eNj9xNgtVPntw5elpOfIICqV2EU(Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 8

    .line 392
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const-wide/16 v0, 0x0

    goto :goto_1b

    .line 395
    :cond_d
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    .line 397
    :goto_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "IN_SERVICE RAT : "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", Percentage = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    .line 401
    invoke-virtual {p2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 397
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rKhS9L4rFjc4uh2TOWBNMhI8rUQ(Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 8

    .line 377
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const-wide/16 v0, 0x0

    goto :goto_1b

    .line 380
    :cond_d
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    .line 382
    :goto_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Out of service Reason = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", Percentage = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    .line 386
    invoke-virtual {p2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 382
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 64
    const-string v0, "_id"

    const-string v1, "TimeDuration"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->SERVICE_STATE_INSERTION_COLUMNS:[Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;I)V
    .registers 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    .line 106
    iput p2, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->mSlotIndex:I

    .line 107
    const-string p0, "CREATE TABLE IF NOT EXISTS ServiceStateLogs ( _id INTEGER PRIMARY KEY AUTOINCREMENT, LogDate DATE ,SlotID INTEGER , TimeDuration INTEGER ,RAT TEXT ,DeviceStatus TEXT ,ReleaseVersion TEXT );"

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->createTable(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist dumpInformationInList(Ljava/lang/Long;Ljava/lang/Long;DLjava/util/HashMap;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "D",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 366
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total UpTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of Service Time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " millis, Percentage "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    .line 372
    invoke-virtual {p2, p3, p4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 368
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance p2, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, p0}, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Long;Ljava/util/ArrayList;)V

    invoke-virtual {p5, p2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 389
    new-instance p2, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1, p0}, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Long;Ljava/util/ArrayList;)V

    invoke-virtual {p6, p2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object p0
.end method

.method private blacklist getContentValues(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;J)Landroid/content/ContentValues;
    .registers 6

    .line 113
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 114
    iget-wide v0, p1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mTimestampStart:J

    sub-long/2addr p2, v0

    .line 115
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsDatabase;->DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string v1, "LogDate"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "TimeDuration"

    invoke-virtual {p0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    iget p2, p1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mSlotIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "SlotID"

    invoke-virtual {p0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string p2, "RAT"

    iget-object p3, p1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mRAT:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string p2, "DeviceStatus"

    iget-object p1, p1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mDeviceStatus:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string p1, "ReleaseVersion"

    sget-object p2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private blacklist getInServiceDurationByRat()Ljava/util/HashMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 297
    const-string v1, "SUM(TimeDuration) AS totalTime"

    const-string v2, "RAT"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v5

    .line 301
    const-string v6, "RAT != ? AND SlotID = ? "

    .line 306
    iget v1, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->mSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "NA"

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v7

    .line 307
    const-string v8, "RAT"

    const/4 v1, 0x0

    .line 310
    :try_start_1e
    iget-object v3, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v4, "ServiceStateLogs"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 311
    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 322
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 323
    const-string v2, "totalTime"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq p0, v3, :cond_53

    if-eq v2, v3, :cond_53

    .line 326
    :goto_3a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 327
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 329
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catchall {:try_start_1e .. :try_end_4f} :catchall_50

    goto :goto_3a

    :catchall_50
    move-exception v0

    move-object p0, v0

    goto :goto_59

    :cond_53
    if-eqz v1, :cond_58

    .line 335
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_58
    return-object v0

    :goto_59
    if-eqz v1, :cond_5e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_5e
    throw p0
.end method

.method private blacklist getOutOfServiceDurationByReason()Ljava/util/HashMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 251
    const-string v1, "SUM(TimeDuration) AS totalTime"

    const-string v2, "DeviceStatus"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v5

    .line 255
    const-string v6, "DeviceStatus != ? AND SlotID = ? "

    .line 260
    iget v1, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->mSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "IN_SERVICE"

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v7

    .line 261
    const-string v8, "DeviceStatus"

    const/4 v1, 0x0

    .line 264
    :try_start_1e
    iget-object v3, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v4, "ServiceStateLogs"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 265
    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 276
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 277
    const-string v2, "totalTime"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq p0, v3, :cond_53

    if-eq v2, v3, :cond_53

    .line 280
    :goto_3a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 281
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 282
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 283
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catchall {:try_start_1e .. :try_end_4f} :catchall_50

    goto :goto_3a

    :catchall_50
    move-exception v0

    move-object p0, v0

    goto :goto_59

    :cond_53
    if-eqz v1, :cond_58

    .line 289
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_58
    return-object v0

    :goto_59
    if-eqz v1, :cond_5e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_5e
    throw p0
.end method

.method private blacklist getTotalUpTime()J
    .registers 12

    .line 187
    const-string v0, "SUM(TimeDuration)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 188
    const-string v4, "SlotID = ? "

    .line 189
    iget v0, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->mSlotIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    .line 194
    :try_start_13
    iget-object v1, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v2, "ServiceStateLogs"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 195
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_30

    .line 204
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 p0, 0x0

    .line 205
    invoke-interface {v10, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2d

    goto :goto_32

    :catchall_2d
    move-exception v0

    move-object p0, v0

    goto :goto_38

    :cond_30
    const-wide/16 v0, 0x0

    :goto_32
    if-eqz v10, :cond_37

    .line 209
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_37
    return-wide v0

    :goto_38
    if-eqz v10, :cond_3d

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_3d
    throw p0
.end method

.method private blacklist outOfServiceDuration()J
    .registers 12

    .line 217
    const-string v0, "SUM(TimeDuration)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 218
    const-string v4, "DeviceStatus != ?  AND SlotID = ? "

    .line 224
    iget v0, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->mSlotIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IN_SERVICE"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    .line 228
    :try_start_15
    iget-object v1, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v2, "ServiceStateLogs"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 229
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_32

    .line 238
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_32

    const/4 p0, 0x0

    .line 239
    invoke-interface {v10, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2f

    goto :goto_34

    :catchall_2f
    move-exception v0

    move-object p0, v0

    goto :goto_3a

    :cond_32
    const-wide/16 v0, 0x0

    :goto_34
    if-eqz v10, :cond_39

    .line 243
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_39
    return-wide v0

    :goto_3a
    if-eqz v10, :cond_3f

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_3f
    throw p0
.end method

.method private blacklist updateIfEntryExistsOtherwiseInsert(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .registers 8

    .line 161
    const-string v0, "ServiceStateLogs"

    if-eqz p1, :cond_43

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 162
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 163
    const-string v2, "TimeDuration"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v1, v4, :cond_42

    if-eq v3, v4, :cond_42

    .line 165
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 166
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 170
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr p1, v3

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string p1, "_id = ? "

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_42
    return-void

    .line 182
    :cond_43
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->insert(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public blacklist aggregate()Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 415
    invoke-direct {p0}, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->getTotalUpTime()J

    move-result-wide v0

    .line 416
    invoke-direct {p0}, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->outOfServiceDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_12

    const-wide/16 v4, 0x0

    :goto_10
    move-wide v9, v4

    goto :goto_19

    :cond_12
    long-to-double v4, v2

    long-to-double v6, v0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    goto :goto_10

    .line 423
    :goto_19
    invoke-direct {p0}, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->getOutOfServiceDurationByReason()Ljava/util/HashMap;

    move-result-object v11

    .line 424
    invoke-direct {p0}, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->getInServiceDurationByRat()Ljava/util/HashMap;

    move-result-object v12

    .line 426
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object v6, p0

    .line 425
    invoke-direct/range {v6 .. v12}, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->dumpInformationInList(Ljava/lang/Long;Ljava/lang/Long;DLjava/util/HashMap;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist deleteOldAndOverflowData()V
    .registers 6

    .line 343
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsDatabase;->DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->mDateOfDeletedRecordsServiceStateTable:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 345
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    .line 346
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v2, "_id IN  ( SELECT _id FROM ServiceStateLogs ORDER BY LogDate DESC LIMIT -1 OFFSET ? )"

    const-string v3, "LogDate < ? "

    const-string v4, "ServiceStateLogs"

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->deleteOverflowAndOldData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iput-object v0, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->mDateOfDeletedRecordsServiceStateTable:Ljava/lang/String;

    return-void
.end method

.method public blacklist insertDataToDb(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;J)V
    .registers 16

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->getContentValues(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;J)Landroid/content/ContentValues;

    move-result-object p1

    .line 130
    sget-object p2, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Time = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string p2, "LogDate"

    .line 132
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "SlotID"

    .line 133
    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "RAT"

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStatus"

    .line 135
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReleaseVersion"

    .line 136
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p2, p3, v0, v1, v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 p2, 0x0

    .line 140
    :try_start_4d
    iget-object v3, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    const-string v4, "ServiceStateLogs"

    sget-object v5, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->SERVICE_STATE_INSERTION_COLUMNS:[Ljava/lang/String;

    const-string v6, "LogDate = ? AND SlotID = ? AND RAT = ? AND DeviceStatus = ? AND ReleaseVersion = ? "

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 141
    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 150
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->updateIfEntryExistsOtherwiseInsert(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->deleteOldAndOverflowData()V
    :try_end_63
    .catchall {:try_start_4d .. :try_end_63} :catchall_69

    if-eqz p2, :cond_68

    .line 155
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_68
    return-void

    :catchall_69
    move-exception v0

    move-object p0, v0

    if-eqz p2, :cond_70

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_70
    throw p0
.end method

.method public blacklist setDateOfDeletedRecordsServiceStateTable(Ljava/lang/String;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->mDateOfDeletedRecordsServiceStateTable:Ljava/lang/String;

    return-void
.end method
