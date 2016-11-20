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
.field public timezone:Ljava/lang/String;

.field public final wallTime:Llibcore/util/ZoneInfo$WallTime;

.field private zoneInfo:Llibcore/util/ZoneInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "timezoneId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1071
    invoke-static {p1}, Landroid/text/format/Time$TimeCalculator;->lookupZoneInfo(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    #@9
    .line 1072
    new-instance v0, Llibcore/util/ZoneInfo$WallTime;

    #@b
    invoke-direct {v0}, Llibcore/util/ZoneInfo$WallTime;-><init>()V

    #@e
    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@10
    .line 1070
    return-void
.end method

.method public static compare(Landroid/text/format/Time$TimeCalculator;Landroid/text/format/Time$TimeCalculator;)I
    .locals 12
    .param p0, "aObject"    # Landroid/text/format/Time$TimeCalculator;
    .param p1, "bObject"    # Landroid/text/format/Time$TimeCalculator;

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 1208
    iget-object v8, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    #@5
    iget-object v9, p1, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    #@7
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v8

    #@b
    if-eqz v8, :cond_6

    #@d
    .line 1210
    iget-object v8, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@f
    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    #@12
    move-result v8

    #@13
    iget-object v9, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@15
    invoke-virtual {v9}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    #@18
    move-result v9

    #@19
    sub-int v4, v8, v9

    #@1b
    .line 1211
    .local v4, "diff":I
    if-eqz v4, :cond_0

    #@1d
    .line 1212
    return v4

    #@1e
    .line 1215
    :cond_0
    iget-object v8, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@20
    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    #@23
    move-result v8

    #@24
    iget-object v9, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@26
    invoke-virtual {v9}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    #@29
    move-result v9

    #@2a
    sub-int v4, v8, v9

    #@2c
    .line 1216
    if-eqz v4, :cond_1

    #@2e
    .line 1217
    return v4

    #@2f
    .line 1220
    :cond_1
    iget-object v8, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@31
    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    #@34
    move-result v8

    #@35
    iget-object v9, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@37
    invoke-virtual {v9}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    #@3a
    move-result v9

    #@3b
    sub-int v4, v8, v9

    #@3d
    .line 1221
    if-eqz v4, :cond_2

    #@3f
    .line 1222
    return v4

    #@40
    .line 1225
    :cond_2
    iget-object v8, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@42
    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    #@45
    move-result v8

    #@46
    iget-object v9, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@48
    invoke-virtual {v9}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    #@4b
    move-result v9

    #@4c
    sub-int v4, v8, v9

    #@4e
    .line 1226
    if-eqz v4, :cond_3

    #@50
    .line 1227
    return v4

    #@51
    .line 1230
    :cond_3
    iget-object v8, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@53
    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    #@56
    move-result v8

    #@57
    iget-object v9, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@59
    invoke-virtual {v9}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    #@5c
    move-result v9

    #@5d
    sub-int v4, v8, v9

    #@5f
    .line 1231
    if-eqz v4, :cond_4

    #@61
    .line 1232
    return v4

    #@62
    .line 1235
    :cond_4
    iget-object v8, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@64
    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    #@67
    move-result v8

    #@68
    iget-object v9, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@6a
    invoke-virtual {v9}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    #@6d
    move-result v9

    #@6e
    sub-int v4, v8, v9

    #@70
    .line 1236
    if-eqz v4, :cond_5

    #@72
    .line 1237
    return v4

    #@73
    .line 1240
    :cond_5
    return v5

    #@74
    .line 1245
    .end local v4    # "diff":I
    :cond_6
    invoke-virtual {p0, v5}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    #@77
    move-result-wide v0

    #@78
    .line 1246
    .local v0, "am":J
    invoke-virtual {p1, v5}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    #@7b
    move-result-wide v2

    #@7c
    .line 1247
    .local v2, "bm":J
    sub-long v6, v0, v2

    #@7e
    .line 1248
    .local v6, "diff":J
    cmp-long v8, v6, v10

    #@80
    if-gez v8, :cond_8

    #@82
    const/4 v5, -0x1

    #@83
    :cond_7
    :goto_0
    return v5

    #@84
    :cond_8
    cmp-long v8, v6, v10

    #@86
    if-lez v8, :cond_7

    #@88
    const/4 v5, 0x1

    #@89
    goto :goto_0
.end method

.method private static lookupZoneInfo(Ljava/lang/String;)Llibcore/util/ZoneInfo;
    .locals 5
    .param p0, "timezoneId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1111
    :try_start_0
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2, p0}, Llibcore/util/ZoneInfoDB$TzData;->makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    #@7
    move-result-object v1

    #@8
    .line 1112
    .local v1, "zoneInfo":Llibcore/util/ZoneInfo;
    if-nez v1, :cond_0

    #@a
    .line 1113
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    #@d
    move-result-object v2

    #@e
    const-string/jumbo v3, "GMT"

    #@11
    invoke-virtual {v2, v3}, Llibcore/util/ZoneInfoDB$TzData;->makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    #@14
    move-result-object v1

    #@15
    .line 1115
    :cond_0
    if-nez v1, :cond_1

    #@17
    .line 1116
    new-instance v2, Ljava/lang/AssertionError;

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "GMT not found: \""

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    const-string/jumbo v4, "\""

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@37
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 1119
    .end local v1    # "zoneInfo":Llibcore/util/ZoneInfo;
    :catch_0
    move-exception v0

    #@39
    .line 1121
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    #@3b
    new-instance v3, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v4, "Error loading timezone: \""

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    const-string/jumbo v4, "\""

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-direct {v2, v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@59
    throw v2

    #@5a
    .line 1118
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "zoneInfo":Llibcore/util/ZoneInfo;
    :cond_1
    return-object v1
.end method

.method private toChar(I)C
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 1180
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0x9

    #@4
    if-gt p1, v0, :cond_0

    #@6
    add-int/lit8 v0, p1, 0x30

    #@8
    int-to-char v0, v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/16 v0, 0x20

    #@c
    goto :goto_0
.end method

.method private updateZoneInfoFromTimeZone()V
    .locals 2

    #@0
    .prologue
    .line 1104
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    #@2
    invoke-virtual {v0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1105
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    #@10
    invoke-static {v0}, Landroid/text/format/Time$TimeCalculator;->lookupZoneInfo(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    #@16
    .line 1103
    :cond_0
    return-void
.end method


# virtual methods
.method public copyFieldsFromTime(Landroid/text/format/Time;)V
    .locals 4
    .param p1, "time"    # Landroid/text/format/Time;

    #@0
    .prologue
    .line 1272
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@2
    iget v1, p1, Landroid/text/format/Time;->second:I

    #@4
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setSecond(I)V

    #@7
    .line 1273
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@9
    iget v1, p1, Landroid/text/format/Time;->minute:I

    #@b
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setMinute(I)V

    #@e
    .line 1274
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@10
    iget v1, p1, Landroid/text/format/Time;->hour:I

    #@12
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setHour(I)V

    #@15
    .line 1275
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@17
    iget v1, p1, Landroid/text/format/Time;->monthDay:I

    #@19
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setMonthDay(I)V

    #@1c
    .line 1276
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@1e
    iget v1, p1, Landroid/text/format/Time;->month:I

    #@20
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setMonth(I)V

    #@23
    .line 1277
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@25
    iget v1, p1, Landroid/text/format/Time;->year:I

    #@27
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setYear(I)V

    #@2a
    .line 1278
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@2c
    iget v1, p1, Landroid/text/format/Time;->weekDay:I

    #@2e
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setWeekDay(I)V

    #@31
    .line 1279
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@33
    iget v1, p1, Landroid/text/format/Time;->yearDay:I

    #@35
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setYearDay(I)V

    #@38
    .line 1280
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@3a
    iget v1, p1, Landroid/text/format/Time;->isDst:I

    #@3c
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setIsDst(I)V

    #@3f
    .line 1281
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@41
    iget-wide v2, p1, Landroid/text/format/Time;->gmtoff:J

    #@43
    long-to-int v1, v2

    #@44
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setGmtOffset(I)V

    #@47
    .line 1283
    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    #@49
    if-eqz v0, :cond_2

    #@4b
    iget v0, p1, Landroid/text/format/Time;->second:I

    #@4d
    if-nez v0, :cond_0

    #@4f
    iget v0, p1, Landroid/text/format/Time;->minute:I

    #@51
    if-eqz v0, :cond_1

    #@53
    .line 1284
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@55
    const-string/jumbo v1, "allDay is true but sec, min, hour are not 0."

    #@58
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v0

    #@5c
    .line 1283
    :cond_1
    iget v0, p1, Landroid/text/format/Time;->hour:I

    #@5e
    if-nez v0, :cond_0

    #@60
    .line 1287
    :cond_2
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    #@62
    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    #@64
    .line 1288
    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    #@67
    .line 1271
    return-void
.end method

.method public copyFieldsToTime(Landroid/text/format/Time;)V
    .locals 2
    .param p1, "time"    # Landroid/text/format/Time;

    #@0
    .prologue
    .line 1254
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@2
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    #@5
    move-result v0

    #@6
    iput v0, p1, Landroid/text/format/Time;->second:I

    #@8
    .line 1255
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@a
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    #@d
    move-result v0

    #@e
    iput v0, p1, Landroid/text/format/Time;->minute:I

    #@10
    .line 1256
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@12
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    #@15
    move-result v0

    #@16
    iput v0, p1, Landroid/text/format/Time;->hour:I

    #@18
    .line 1257
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@1a
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    #@1d
    move-result v0

    #@1e
    iput v0, p1, Landroid/text/format/Time;->monthDay:I

    #@20
    .line 1258
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@22
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    #@25
    move-result v0

    #@26
    iput v0, p1, Landroid/text/format/Time;->month:I

    #@28
    .line 1259
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@2a
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    #@2d
    move-result v0

    #@2e
    iput v0, p1, Landroid/text/format/Time;->year:I

    #@30
    .line 1262
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@32
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    #@35
    move-result v0

    #@36
    iput v0, p1, Landroid/text/format/Time;->weekDay:I

    #@38
    .line 1263
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@3a
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    #@3d
    move-result v0

    #@3e
    iput v0, p1, Landroid/text/format/Time;->yearDay:I

    #@40
    .line 1266
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@42
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    #@45
    move-result v0

    #@46
    iput v0, p1, Landroid/text/format/Time;->isDst:I

    #@48
    .line 1268
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@4a
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getGmtOffset()I

    #@4d
    move-result v0

    #@4e
    int-to-long v0, v0

    #@4f
    iput-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    #@51
    .line 1253
    return-void
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1096
    if-nez p1, :cond_0

    #@2
    .line 1097
    const-string/jumbo p1, "%c"

    #@5
    .line 1099
    :cond_0
    new-instance v0, Landroid/text/format/TimeFormatter;

    #@7
    invoke-direct {v0}, Landroid/text/format/TimeFormatter;-><init>()V

    #@a
    .line 1100
    .local v0, "formatter":Landroid/text/format/TimeFormatter;
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@c
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    #@e
    invoke-virtual {v0, p1, v1, v2}, Landroid/text/format/TimeFormatter;->format(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public format2445(Z)Ljava/lang/String;
    .locals 8
    .param p1, "hasTime"    # Z

    #@0
    .prologue
    const/16 v3, 0x10

    #@2
    const/16 v7, 0xf

    #@4
    const/16 v4, 0x8

    #@6
    const/4 v6, 0x0

    #@7
    .line 1133
    if-eqz p1, :cond_0

    #@9
    move v2, v3

    #@a
    :goto_0
    new-array v0, v2, [C

    #@c
    .line 1134
    .local v0, "buf":[C
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@e
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    #@11
    move-result v1

    #@12
    .line 1136
    .local v1, "n":I
    div-int/lit16 v2, v1, 0x3e8

    #@14
    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    #@17
    move-result v2

    #@18
    aput-char v2, v0, v6

    #@1a
    .line 1137
    rem-int/lit16 v1, v1, 0x3e8

    #@1c
    .line 1138
    div-int/lit8 v2, v1, 0x64

    #@1e
    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    #@21
    move-result v2

    #@22
    const/4 v5, 0x1

    #@23
    aput-char v2, v0, v5

    #@25
    .line 1139
    rem-int/lit8 v1, v1, 0x64

    #@27
    .line 1140
    div-int/lit8 v2, v1, 0xa

    #@29
    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    #@2c
    move-result v2

    #@2d
    const/4 v5, 0x2

    #@2e
    aput-char v2, v0, v5

    #@30
    .line 1141
    rem-int/lit8 v1, v1, 0xa

    #@32
    .line 1142
    invoke-direct {p0, v1}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    #@35
    move-result v2

    #@36
    const/4 v5, 0x3

    #@37
    aput-char v2, v0, v5

    #@39
    .line 1144
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@3b
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    #@3e
    move-result v2

    #@3f
    add-int/lit8 v1, v2, 0x1

    #@41
    .line 1145
    div-int/lit8 v2, v1, 0xa

    #@43
    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    #@46
    move-result v2

    #@47
    const/4 v5, 0x4

    #@48
    aput-char v2, v0, v5

    #@4a
    .line 1146
    rem-int/lit8 v2, v1, 0xa

    #@4c
    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    #@4f
    move-result v2

    #@50
    const/4 v5, 0x5

    #@51
    aput-char v2, v0, v5

    #@53
    .line 1148
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@55
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    #@58
    move-result v1

    #@59
    .line 1149
    div-int/lit8 v2, v1, 0xa

    #@5b
    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    #@5e
    move-result v2

    #@5f
    const/4 v5, 0x6

    #@60
    aput-char v2, v0, v5

    #@62
    .line 1150
    rem-int/lit8 v2, v1, 0xa

    #@64
    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    #@67
    move-result v2

    #@68
    const/4 v5, 0x7

    #@69
    aput-char v2, v0, v5

    #@6b
    .line 1152
    if-nez p1, :cond_1

    #@6d
    .line 1153
    new-instance v2, Ljava/lang/String;

    #@6f
    invoke-direct {v2, v0, v6, v4}, Ljava/lang/String;-><init>([CII)V

    #@72
    return-object v2

    #@73
    .end local v0    # "buf":[C
    .end local v1    # "n":I
    :cond_0
    move v2, v4

    #@74
    .line 1133
    goto :goto_0

    #@75
    .line 1156
    .restart local v0    # "buf":[C
    .restart local v1    # "n":I
    :cond_1
    const/16 v2, 0x54

    #@77
    aput-char v2, v0, v4

    #@79
    .line 1158
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@7b
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    #@7e
    move-result v1

    #@7f
    .line 1159
    div-int/lit8 v2, v1, 0xa

    #@81
    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    #@84
    move-result v2

    #@85
    const/16 v4, 0x9

    #@87
    aput-char v2, v0, v4

    #@89
    .line 1160
    rem-int/lit8 v2, v1, 0xa

    #@8b
    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    #@8e
    move-result v2

    #@8f
    const/16 v4, 0xa

    #@91
    aput-char v2, v0, v4

    #@93
    .line 1162
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@95
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    #@98
    move-result v1

    #@99
    .line 1163
    div-int/lit8 v2, v1, 0xa

    #@9b
    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    #@9e
    move-result v2

    #@9f
    const/16 v4, 0xb

    #@a1
    aput-char v2, v0, v4

    #@a3
    .line 1164
    rem-int/lit8 v2, v1, 0xa

    #@a5
    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    #@a8
    move-result v2

    #@a9
    const/16 v4, 0xc

    #@ab
    aput-char v2, v0, v4

    #@ad
    .line 1166
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@af
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    #@b2
    move-result v1

    #@b3
    .line 1167
    div-int/lit8 v2, v1, 0xa

    #@b5
    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    #@b8
    move-result v2

    #@b9
    const/16 v4, 0xd

    #@bb
    aput-char v2, v0, v4

    #@bd
    .line 1168
    rem-int/lit8 v2, v1, 0xa

    #@bf
    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    #@c2
    move-result v2

    #@c3
    const/16 v4, 0xe

    #@c5
    aput-char v2, v0, v4

    #@c7
    .line 1170
    const-string/jumbo v2, "UTC"

    #@ca
    iget-object v4, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    #@cc
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cf
    move-result v2

    #@d0
    if-eqz v2, :cond_2

    #@d2
    .line 1172
    const/16 v2, 0x5a

    #@d4
    aput-char v2, v0, v7

    #@d6
    .line 1173
    new-instance v2, Ljava/lang/String;

    #@d8
    invoke-direct {v2, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    #@db
    return-object v2

    #@dc
    .line 1175
    :cond_2
    new-instance v2, Ljava/lang/String;

    #@de
    invoke-direct {v2, v0, v6, v7}, Ljava/lang/String;-><init>([CII)V

    #@e1
    return-object v2
.end method

.method public setTimeInMillis(J)V
    .locals 5
    .param p1, "millis"    # J

    #@0
    .prologue
    .line 1089
    const-wide/16 v2, 0x3e8

    #@2
    div-long v2, p1, v2

    #@4
    long-to-int v0, v2

    #@5
    .line 1091
    .local v0, "intSeconds":I
    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    #@8
    .line 1092
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@a
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    #@c
    invoke-virtual {v1, v0, v2}, Llibcore/util/ZoneInfo$WallTime;->localtime(ILlibcore/util/ZoneInfo;)V

    #@f
    .line 1087
    return-void
.end method

.method public switchTimeZone(Ljava/lang/String;)V
    .locals 3
    .param p1, "timezone"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1126
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@2
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    #@4
    invoke-virtual {v1, v2}, Llibcore/util/ZoneInfo$WallTime;->mktime(Llibcore/util/ZoneInfo;)I

    #@7
    move-result v0

    #@8
    .line 1127
    .local v0, "seconds":I
    iput-object p1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    #@a
    .line 1128
    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    #@d
    .line 1129
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@f
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    #@11
    invoke-virtual {v1, v0, v2}, Llibcore/util/ZoneInfo$WallTime;->localtime(ILlibcore/util/ZoneInfo;)V

    #@14
    .line 1125
    return-void
.end method

.method public toMillis(Z)J
    .locals 6
    .param p1, "ignoreDst"    # Z

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1076
    if-eqz p1, :cond_0

    #@3
    .line 1077
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@5
    invoke-virtual {v1, v3}, Llibcore/util/ZoneInfo$WallTime;->setIsDst(I)V

    #@8
    .line 1080
    :cond_0
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@a
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    #@c
    invoke-virtual {v1, v2}, Llibcore/util/ZoneInfo$WallTime;->mktime(Llibcore/util/ZoneInfo;)I

    #@f
    move-result v0

    #@10
    .line 1081
    .local v0, "r":I
    if-ne v0, v3, :cond_1

    #@12
    .line 1082
    const-wide/16 v2, -0x1

    #@14
    return-wide v2

    #@15
    .line 1084
    :cond_1
    int-to-long v2, v0

    #@16
    const-wide/16 v4, 0x3e8

    #@18
    mul-long/2addr v2, v4

    #@19
    return-wide v2
.end method

.method public toStringInternal()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1190
    const-string/jumbo v0, "%04d%02d%02dT%02d%02d%02d%s(%d,%d,%d,%d,%d)"

    #@4
    const/16 v1, 0xc

    #@6
    new-array v1, v1, [Ljava/lang/Object;

    #@8
    .line 1191
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@a
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    #@d
    move-result v2

    #@e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v2

    #@12
    aput-object v2, v1, v4

    #@14
    .line 1192
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@16
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    #@19
    move-result v2

    #@1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v2

    #@20
    const/4 v3, 0x1

    #@21
    aput-object v2, v1, v3

    #@23
    .line 1193
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@25
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    #@28
    move-result v2

    #@29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v2

    #@2d
    const/4 v3, 0x2

    #@2e
    aput-object v2, v1, v3

    #@30
    .line 1194
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@32
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    #@35
    move-result v2

    #@36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v2

    #@3a
    const/4 v3, 0x3

    #@3b
    aput-object v2, v1, v3

    #@3d
    .line 1195
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@3f
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    #@42
    move-result v2

    #@43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v2

    #@47
    const/4 v3, 0x4

    #@48
    aput-object v2, v1, v3

    #@4a
    .line 1196
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@4c
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    #@4f
    move-result v2

    #@50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v2

    #@54
    const/4 v3, 0x5

    #@55
    aput-object v2, v1, v3

    #@57
    .line 1197
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    #@59
    const/4 v3, 0x6

    #@5a
    aput-object v2, v1, v3

    #@5c
    .line 1198
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@5e
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    #@61
    move-result v2

    #@62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v2

    #@66
    const/4 v3, 0x7

    #@67
    aput-object v2, v1, v3

    #@69
    .line 1199
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@6b
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    #@6e
    move-result v2

    #@6f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72
    move-result-object v2

    #@73
    const/16 v3, 0x8

    #@75
    aput-object v2, v1, v3

    #@77
    .line 1200
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@79
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getGmtOffset()I

    #@7c
    move-result v2

    #@7d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@80
    move-result-object v2

    #@81
    const/16 v3, 0x9

    #@83
    aput-object v2, v1, v3

    #@85
    .line 1201
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    #@87
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    #@8a
    move-result v2

    #@8b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8e
    move-result-object v2

    #@8f
    const/16 v3, 0xa

    #@91
    aput-object v2, v1, v3

    #@93
    .line 1202
    invoke-virtual {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    #@96
    move-result-wide v2

    #@97
    const-wide/16 v4, 0x3e8

    #@99
    div-long/2addr v2, v4

    #@9a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9d
    move-result-object v2

    #@9e
    const/16 v3, 0xb

    #@a0
    aput-object v2, v1, v3

    #@a2
    .line 1190
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a5
    move-result-object v0

    #@a6
    return-object v0
.end method
