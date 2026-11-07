.class Landroid/text/format/Time$TimeCalculator;
.super Ljava/lang/Object;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/Time;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeCalculator"
.end annotation


# instance fields
.field private blacklist mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

.field public greylist-max-o timezone:Ljava/lang/String;

.field public final blacklist wallTime:Lcom/android/i18n/timezone/WallTime;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "timezoneId"    # Ljava/lang/String;

    .line 1081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1082
    invoke-static {p1}, Landroid/text/format/Time$TimeCalculator;->lookupZoneInfoData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    .line 1083
    new-instance v0, Lcom/android/i18n/timezone/WallTime;

    invoke-direct {v0}, Lcom/android/i18n/timezone/WallTime;-><init>()V

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1084
    return-void
.end method

.method public static greylist-max-o compare(Landroid/text/format/Time$TimeCalculator;Landroid/text/format/Time$TimeCalculator;)I
    .registers 12
    .param p0, "aObject"    # Landroid/text/format/Time$TimeCalculator;
    .param p1, "bObject"    # Landroid/text/format/Time$TimeCalculator;

    .line 1214
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    iget-object v1, p1, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6c

    .line 1216
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v0

    iget-object v2, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1217
    .local v0, "diff":I
    if-eqz v0, :cond_1b

    .line 1218
    return v0

    .line 1221
    :cond_1b
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v2

    iget-object v3, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1222
    .end local v0    # "diff":I
    .local v2, "diff":I
    if-eqz v2, :cond_2b

    .line 1223
    return v2

    .line 1226
    :cond_2b
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v0

    iget-object v3, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v3

    sub-int/2addr v0, v3

    .line 1227
    .end local v2    # "diff":I
    .restart local v0    # "diff":I
    if-eqz v0, :cond_3b

    .line 1228
    return v0

    .line 1231
    :cond_3b
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v2

    iget-object v3, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1232
    .end local v0    # "diff":I
    .restart local v2    # "diff":I
    if-eqz v2, :cond_4b

    .line 1233
    return v2

    .line 1236
    :cond_4b
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v0

    iget-object v3, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v3

    sub-int/2addr v0, v3

    .line 1237
    .end local v2    # "diff":I
    .restart local v0    # "diff":I
    if-eqz v0, :cond_5b

    .line 1238
    return v0

    .line 1241
    :cond_5b
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v2

    iget-object v3, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1242
    .end local v0    # "diff":I
    .restart local v2    # "diff":I
    if-eqz v2, :cond_6b

    .line 1243
    return v2

    .line 1246
    :cond_6b
    return v1

    .line 1251
    .end local v2    # "diff":I
    :cond_6c
    invoke-virtual {p0, v1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v2

    .line 1252
    .local v2, "am":J
    invoke-virtual {p1, v1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v4

    .line 1253
    .local v4, "bm":J
    sub-long v6, v2, v4

    .line 1254
    .local v6, "diff":J
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_7e

    const/4 v1, -0x1

    goto :goto_83

    :cond_7e
    cmp-long v0, v6, v8

    if-lez v0, :cond_83

    const/4 v1, 0x1

    :cond_83
    :goto_83
    return v1
.end method

.method private static blacklist lookupZoneInfoData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;
    .registers 5
    .param p0, "timezoneId"    # Ljava/lang/String;

    .line 1121
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->makeZoneInfoData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v0

    .line 1122
    .local v0, "zoneInfoData":Lcom/android/i18n/timezone/ZoneInfoData;
    if-nez v0, :cond_14

    .line 1123
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v1

    const-string v2, "GMT"

    invoke-virtual {v1, v2}, Lcom/android/i18n/timezone/ZoneInfoDb;->makeZoneInfoData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v0

    .line 1125
    :cond_14
    if-eqz v0, :cond_17

    .line 1128
    return-object v0

    .line 1126
    :cond_17
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMT not found: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private greylist-max-o toChar(I)C
    .registers 3
    .param p1, "n"    # I

    .line 1186
    if-ltz p1, :cond_a

    const/16 v0, 0x9

    if-gt p1, v0, :cond_a

    add-int/lit8 v0, p1, 0x30

    int-to-char v0, v0

    goto :goto_c

    :cond_a
    const/16 v0, 0x20

    :goto_c
    return v0
.end method

.method private greylist-max-o updateZoneInfoFromTimeZone()V
    .registers 3

    .line 1115
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/ZoneInfoData;->getID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1116
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/format/Time$TimeCalculator;->lookupZoneInfoData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    .line 1118
    :cond_16
    return-void
.end method


# virtual methods
.method public greylist-max-o copyFieldsFromTime(Landroid/text/format/Time;)V
    .registers 5
    .param p1, "time"    # Landroid/text/format/Time;

    .line 1278
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->second:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setSecond(I)V

    .line 1279
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->minute:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setMinute(I)V

    .line 1280
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->hour:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setHour(I)V

    .line 1281
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setMonthDay(I)V

    .line 1282
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->month:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setMonth(I)V

    .line 1283
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->year:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setYear(I)V

    .line 1284
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->weekDay:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setWeekDay(I)V

    .line 1285
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->yearDay:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setYearDay(I)V

    .line 1286
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->isDst:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setIsDst(I)V

    .line 1287
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-wide v1, p1, Landroid/text/format/Time;->gmtoff:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setGmtOffset(I)V

    .line 1289
    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    if-eqz v0, :cond_60

    iget v0, p1, Landroid/text/format/Time;->second:I

    if-nez v0, :cond_58

    iget v0, p1, Landroid/text/format/Time;->minute:I

    if-nez v0, :cond_58

    iget v0, p1, Landroid/text/format/Time;->hour:I

    if-nez v0, :cond_58

    goto :goto_60

    .line 1290
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "allDay is true but sec, min, hour are not 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1293
    :cond_60
    :goto_60
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 1294
    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    .line 1295
    return-void
.end method

.method public greylist-max-o copyFieldsToTime(Landroid/text/format/Time;)V
    .registers 4
    .param p1, "time"    # Landroid/text/format/Time;

    .line 1260
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->second:I

    .line 1261
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->minute:I

    .line 1262
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->hour:I

    .line 1263
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->monthDay:I

    .line 1264
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->month:I

    .line 1265
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->year:I

    .line 1268
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->weekDay:I

    .line 1269
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->yearDay:I

    .line 1272
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->isDst:I

    .line 1274
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getGmtOffset()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    .line 1275
    return-void
.end method

.method public greylist-max-o format(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "format"    # Ljava/lang/String;

    .line 1107
    if-nez p1, :cond_4

    .line 1108
    const-string p1, "%c"

    .line 1110
    :cond_4
    new-instance v0, Landroid/text/format/TimeFormatter;

    invoke-direct {v0}, Landroid/text/format/TimeFormatter;-><init>()V

    .line 1111
    .local v0, "formatter":Landroid/text/format/TimeFormatter;
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/format/TimeFormatter;->format(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o format2445(Z)Ljava/lang/String;
    .registers 11
    .param p1, "hasTime"    # Z

    .line 1139
    const/16 v0, 0x10

    const/16 v1, 0x8

    if-eqz p1, :cond_8

    move v2, v0

    goto :goto_9

    :cond_8
    move v2, v1

    :goto_9
    new-array v2, v2, [C

    .line 1140
    .local v2, "buf":[C
    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v3

    .line 1142
    .local v3, "n":I
    div-int/lit16 v4, v3, 0x3e8

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    const/4 v5, 0x0

    aput-char v4, v2, v5

    .line 1143
    rem-int/lit16 v3, v3, 0x3e8

    .line 1144
    div-int/lit8 v4, v3, 0x64

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    const/4 v6, 0x1

    aput-char v4, v2, v6

    .line 1145
    rem-int/lit8 v3, v3, 0x64

    .line 1146
    div-int/lit8 v4, v3, 0xa

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    const/4 v7, 0x2

    aput-char v4, v2, v7

    .line 1147
    const/16 v4, 0xa

    rem-int/2addr v3, v4

    .line 1148
    const/4 v7, 0x3

    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v8

    aput-char v8, v2, v7

    .line 1150
    iget-object v7, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v7}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v7

    add-int/2addr v7, v6

    .line 1151
    .end local v3    # "n":I
    .local v7, "n":I
    div-int/lit8 v3, v7, 0xa

    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v3

    const/4 v6, 0x4

    aput-char v3, v2, v6

    .line 1152
    rem-int/lit8 v3, v7, 0xa

    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v3

    const/4 v6, 0x5

    aput-char v3, v2, v6

    .line 1154
    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v3

    .line 1155
    .end local v7    # "n":I
    .restart local v3    # "n":I
    div-int/lit8 v6, v3, 0xa

    invoke-direct {p0, v6}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v6

    const/4 v7, 0x6

    aput-char v6, v2, v7

    .line 1156
    rem-int/lit8 v6, v3, 0xa

    invoke-direct {p0, v6}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v6

    const/4 v7, 0x7

    aput-char v6, v2, v7

    .line 1158
    if-nez p1, :cond_73

    .line 1159
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 1162
    :cond_73
    const/16 v6, 0x54

    aput-char v6, v2, v1

    .line 1164
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v1

    .line 1165
    .end local v3    # "n":I
    .local v1, "n":I
    div-int/lit8 v3, v1, 0xa

    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v3

    const/16 v6, 0x9

    aput-char v3, v2, v6

    .line 1166
    rem-int/lit8 v3, v1, 0xa

    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v3

    aput-char v3, v2, v4

    .line 1168
    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v1

    .line 1169
    div-int/lit8 v3, v1, 0xa

    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v3

    const/16 v4, 0xb

    aput-char v3, v2, v4

    .line 1170
    rem-int/lit8 v3, v1, 0xa

    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v3

    const/16 v4, 0xc

    aput-char v3, v2, v4

    .line 1172
    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v1

    .line 1173
    div-int/lit8 v3, v1, 0xa

    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v3

    const/16 v4, 0xd

    aput-char v3, v2, v4

    .line 1174
    rem-int/lit8 v3, v1, 0xa

    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v3

    const/16 v4, 0xe

    aput-char v3, v2, v4

    .line 1176
    const-string v3, "UTC"

    iget-object v4, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0xf

    if-eqz v3, :cond_d9

    .line 1178
    const/16 v3, 0x5a

    aput-char v3, v2, v4

    .line 1179
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v5, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    .line 1181
    :cond_d9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v5, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public greylist-max-o setTimeInMillis(J)V
    .registers 6
    .param p1, "millis"    # J

    .line 1100
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 1102
    .local v0, "intSeconds":I
    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    .line 1103
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v1, v0, v2}, Lcom/android/i18n/timezone/WallTime;->localtime(ILcom/android/i18n/timezone/ZoneInfoData;)V

    .line 1104
    return-void
.end method

.method public greylist-max-o switchTimeZone(Ljava/lang/String;)V
    .registers 5
    .param p1, "timezone"    # Ljava/lang/String;

    .line 1132
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->mktime(Lcom/android/i18n/timezone/ZoneInfoData;)I

    move-result v0

    .line 1133
    .local v0, "seconds":I
    iput-object p1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 1134
    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    .line 1135
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v1, v0, v2}, Lcom/android/i18n/timezone/WallTime;->localtime(ILcom/android/i18n/timezone/ZoneInfoData;)V

    .line 1136
    return-void
.end method

.method public greylist-max-o toMillis(Z)J
    .registers 8
    .param p1, "ignoreDst"    # Z

    .line 1087
    const/4 v0, -0x1

    if-eqz p1, :cond_8

    .line 1088
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v1, v0}, Lcom/android/i18n/timezone/WallTime;->setIsDst(I)V

    .line 1091
    :cond_8
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v1, v2}, Lcom/android/i18n/timezone/WallTime;->mktime(Lcom/android/i18n/timezone/ZoneInfoData;)I

    move-result v1

    .line 1092
    .local v1, "r":I
    if-ne v1, v0, :cond_15

    .line 1093
    const-wide/16 v2, -0x1

    return-wide v2

    .line 1095
    :cond_15
    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public greylist-max-o toStringInternal()Ljava/lang/String;
    .registers 18

    .line 1196
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1197
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, v0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1198
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, v0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1199
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, v0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1200
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v1, v0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1201
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v1, v0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1202
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    iget-object v1, v0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1204
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v1, v0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1205
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v1, v0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1206
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getGmtOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v1, v0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    .line 1207
    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1208
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    filled-new-array/range {v2 .. v13}, [Ljava/lang/Object;

    move-result-object v1

    .line 1196
    const-string v2, "%04d%02d%02dT%02d%02d%02d%s(%d,%d,%d,%d,%d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
