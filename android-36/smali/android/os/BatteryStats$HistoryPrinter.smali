.class public Landroid/os/BatteryStats$HistoryPrinter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPrinter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;
    }
.end annotation


# static fields
.field private static final blacklist FORMAT_LEGACY:I = 0x1

.field private static final blacklist FORMAT_VERSION:I = 0x2


# instance fields
.field greylist-max-o lastTime:J

.field private final blacklist mCurrentTimeEventTimeFormat:Ljava/text/SimpleDateFormat;

.field private final blacklist mDate:Ljava/util/Date;

.field private final blacklist mFormatVersion:I

.field private final blacklist mHistoryItemTimestampFormat:Ljava/text/SimpleDateFormat;

.field private final blacklist mHistoryLogTimeFormatter:Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;

.field private final blacklist mPerformanceBaseline:Z

.field private final blacklist mStringBuilder:Ljava/lang/StringBuilder;

.field greylist-max-o oldChargeMAh:I

.field greylist-max-o oldHealth:I

.field greylist-max-o oldLevel:I

.field blacklist oldModemRailChargeMah:D

.field greylist-max-o oldPlug:I

.field greylist-max-o oldState:I

.field greylist-max-o oldState2:I

.field greylist-max-o oldStatus:I

.field greylist-max-o oldTemp:I

.field greylist-max-o oldVolt:I

.field blacklist oldWifiRailChargeMah:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFormatVersion(Landroid/os/BatteryStats$HistoryPrinter;)I
    .registers 1

    iget p0, p0, Landroid/os/BatteryStats$HistoryPrinter;->mFormatVersion:I

    return p0
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 6979
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/BatteryStats$HistoryPrinter;-><init>(I)V

    .line 6980
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 6983
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/os/BatteryStats$HistoryPrinter;-><init>(Ljava/util/TimeZone;I)V

    .line 6984
    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/TimeZone;I)V
    .registers 8
    .param p1, "formatVersion"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "flags"    # I

    .line 6992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6954
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->mCurrentTimeEventTimeFormat:Ljava/text/SimpleDateFormat;

    .line 6959
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->mDate:Ljava/util/Date;

    .line 6964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 6965
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 6966
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    .line 6967
    const/4 v1, -0x1

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 6968
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 6969
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 6970
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 6971
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 6972
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 6973
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 6974
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    .line 6975
    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    .line 6976
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    .line 6993
    iput p1, p0, Landroid/os/BatteryStats$HistoryPrinter;->mFormatVersion:I

    .line 6994
    and-int/lit16 v1, p3, 0x80

    if-eqz v1, :cond_42

    const/4 v0, 0x1

    :cond_42
    iput-boolean v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->mPerformanceBaseline:Z

    .line 6995
    iget-boolean v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->mPerformanceBaseline:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    .line 6996
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->mHistoryItemTimestampFormat:Ljava/text/SimpleDateFormat;

    .line 6997
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->mHistoryItemTimestampFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 6998
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->mHistoryLogTimeFormatter:Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;

    goto :goto_69

    .line 7000
    :cond_60
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->mHistoryItemTimestampFormat:Ljava/text/SimpleDateFormat;

    .line 7001
    new-instance v0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;

    invoke-direct {v0, p2, v1}, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;-><init>(Ljava/util/TimeZone;Landroid/os/BatteryStats-IA;)V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->mHistoryLogTimeFormatter:Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;

    .line 7003
    :goto_69
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->mCurrentTimeEventTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 7004
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/TimeZone;I)V
    .registers 4
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "flags"    # I

    .line 6987
    nop

    .line 6988
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->extendedBatteryHistoryContinuousCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6989
    const/4 v0, 0x2

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    .line 6987
    :goto_a
    invoke-direct {p0, v0, p1, p2}, Landroid/os/BatteryStats$HistoryPrinter;-><init>(ILjava/util/TimeZone;I)V

    .line 6990
    return-void
.end method

.method private greylist-max-o printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;
    .registers 24
    .param p1, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p2, "baseTime"    # J
    .param p4, "checkin"    # Z
    .param p5, "verbose"    # Z

    .line 7036
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 7037
    .local v2, "item":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7038
    const-string v8, " ("

    const/16 v9, 0x9

    const-string/jumbo v10, "h"

    const/16 v11, 0x2c

    if-nez p4, :cond_5e

    .line 7039
    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7040
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->mFormatVersion:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_36

    .line 7041
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v3, v3, p2

    const/16 v5, 0x13

    invoke-static {v3, v4, v2, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    .line 7043
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7044
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7045
    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_86

    .line 7047
    :cond_36
    iget-boolean v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->mPerformanceBaseline:Z

    const/16 v4, 0x20

    if-eqz v3, :cond_53

    .line 7048
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->mDate:Ljava/util/Date;

    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v3, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 7049
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->mHistoryItemTimestampFormat:Ljava/text/SimpleDateFormat;

    iget-object v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->mDate:Ljava/util/Date;

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_86

    .line 7051
    :cond_53
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->mHistoryLogTimeFormatter:Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;

    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v3, v2, v5, v6}, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->append(Ljava/lang/StringBuilder;J)V

    .line 7052
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_86

    .line 7056
    :cond_5e
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7057
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7058
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_7a

    .line 7059
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v3, v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_82

    .line 7061
    :cond_7a
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7063
    :goto_82
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    .line 7065
    :goto_86
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x4

    const-string v12, ":"

    if-ne v3, v4, :cond_9c

    .line 7066
    if-eqz p4, :cond_92

    .line 7067
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7069
    :cond_92
    const-string v3, "START\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7070
    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    goto/16 :goto_69d

    .line 7071
    :cond_9c
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x5

    const/4 v5, 0x7

    const-string v13, " "

    const-string v14, "\n"

    if-eq v3, v4, :cond_663

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v3, v5, :cond_ad

    move-object v3, v12

    goto/16 :goto_664

    .line 7090
    :cond_ad
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v4, 0x8

    if-ne v3, v4, :cond_bf

    .line 7091
    if-eqz p4, :cond_b8

    .line 7092
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7094
    :cond_b8
    const-string v3, "SHUTDOWN\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_69d

    .line 7095
    :cond_bf
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x6

    if-ne v3, v4, :cond_d0

    .line 7096
    if-eqz p4, :cond_c9

    .line 7097
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7099
    :cond_c9
    const-string v3, "*OVERFLOW*\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_69d

    .line 7101
    :cond_d0
    if-nez p4, :cond_151

    .line 7102
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const-string v4, "0"

    const-string v5, "00"

    const/16 v6, 0xa

    if-ge v3, v6, :cond_e0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e9

    .line 7103
    :cond_e0
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v6, 0x64

    if-ge v3, v6, :cond_e9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7104
    :cond_e9
    :goto_e9
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7105
    if-eqz p5, :cond_165

    .line 7106
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7107
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-gez v3, :cond_f8

    goto :goto_147

    .line 7108
    :cond_f8
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v6, 0x10

    if-ge v3, v6, :cond_104

    const-string v3, "0000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_147

    .line 7109
    :cond_104
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v6, 0x100

    if-ge v3, v6, :cond_110

    const-string v3, "000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_147

    .line 7110
    :cond_110
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v6, 0x1000

    if-ge v3, v6, :cond_11c

    const-string v3, "00000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_147

    .line 7111
    :cond_11c
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_128

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_147

    .line 7112
    :cond_128
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x100000

    if-ge v3, v6, :cond_134

    const-string v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_147

    .line 7113
    :cond_134
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x1000000

    if-ge v3, v6, :cond_13e

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_147

    .line 7114
    :cond_13e
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x10000000

    if-ge v3, v5, :cond_147

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7115
    :cond_147
    :goto_147
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_165

    .line 7118
    :cond_151
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v3, v4, :cond_165

    .line 7119
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 7120
    const-string v3, ",Bl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7123
    :cond_165
    :goto_165
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    const-string v5, "f"

    const-string/jumbo v6, "n"

    const-string v7, "d"

    const-string v15, "c"

    const-string v16, "?"

    const-string/jumbo v17, "unknown"

    if-eq v3, v4, :cond_1c6

    .line 7124
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 7125
    if-eqz p4, :cond_182

    const-string v3, ",Bs="

    goto :goto_184

    :cond_182
    const-string v3, " status="

    :goto_184
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7126
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    packed-switch v3, :pswitch_data_6a2

    .line 7143
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1c6

    .line 7140
    :pswitch_192
    if-eqz p4, :cond_196

    move-object v3, v5

    goto :goto_198

    :cond_196
    const-string v3, "full"

    :goto_198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7141
    goto :goto_1c6

    .line 7137
    :pswitch_19c
    if-eqz p4, :cond_1a0

    move-object v3, v6

    goto :goto_1a3

    :cond_1a0
    const-string/jumbo v3, "not-charging"

    :goto_1a3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7138
    goto :goto_1c6

    .line 7134
    :pswitch_1a7
    if-eqz p4, :cond_1ab

    move-object v3, v7

    goto :goto_1ad

    :cond_1ab
    const-string v3, "discharging"

    :goto_1ad
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7135
    goto :goto_1c6

    .line 7131
    :pswitch_1b1
    if-eqz p4, :cond_1b5

    move-object v3, v15

    goto :goto_1b7

    :cond_1b5
    const-string v3, "charging"

    :goto_1b7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7132
    goto :goto_1c6

    .line 7128
    :pswitch_1bb
    if-eqz p4, :cond_1c0

    move-object/from16 v3, v16

    goto :goto_1c2

    :cond_1c0
    move-object/from16 v3, v17

    :goto_1c2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7129
    nop

    .line 7147
    :cond_1c6
    :goto_1c6
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq v3, v4, :cond_22f

    .line 7148
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 7149
    if-eqz p4, :cond_1d5

    const-string v3, ",Bh="

    goto :goto_1d7

    :cond_1d5
    const-string v3, " health="

    :goto_1d7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7150
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch v3, :pswitch_data_6b0

    .line 7173
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_22f

    .line 7170
    :pswitch_1e5
    if-eqz p4, :cond_1e8

    goto :goto_1ea

    :cond_1e8
    const-string v15, "cold"

    :goto_1ea
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7171
    goto :goto_22f

    .line 7167
    :pswitch_1ee
    if-eqz p4, :cond_1f1

    goto :goto_1f3

    :cond_1f1
    const-string v5, "failure"

    :goto_1f3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7168
    goto :goto_22f

    .line 7164
    :pswitch_1f7
    if-eqz p4, :cond_1fd

    const-string/jumbo v3, "v"

    goto :goto_200

    :cond_1fd
    const-string/jumbo v3, "over-voltage"

    :goto_200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7165
    goto :goto_22f

    .line 7161
    :pswitch_204
    if-eqz p4, :cond_207

    goto :goto_209

    :cond_207
    const-string v7, "dead"

    :goto_209
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7162
    goto :goto_22f

    .line 7158
    :pswitch_20d
    if-eqz p4, :cond_211

    move-object v3, v10

    goto :goto_214

    :cond_211
    const-string/jumbo v3, "overheat"

    :goto_214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7159
    goto :goto_22f

    .line 7155
    :pswitch_218
    if-eqz p4, :cond_21d

    const-string v3, "g"

    goto :goto_220

    :cond_21d
    const-string/jumbo v3, "good"

    :goto_220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7156
    goto :goto_22f

    .line 7152
    :pswitch_224
    if-eqz p4, :cond_229

    move-object/from16 v3, v16

    goto :goto_22b

    :cond_229
    move-object/from16 v3, v17

    :goto_22b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7153
    nop

    .line 7177
    :cond_22f
    :goto_22f
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq v3, v4, :cond_27d

    .line 7178
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 7179
    if-eqz p4, :cond_23e

    const-string v3, ",Bp="

    goto :goto_240

    :cond_23e
    const-string v3, " plug="

    :goto_240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7180
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    packed-switch v3, :pswitch_data_6c2

    .line 7194
    :pswitch_248
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_27d

    .line 7191
    :pswitch_24e
    if-eqz p4, :cond_254

    const-string/jumbo v3, "w"

    goto :goto_257

    :cond_254
    const-string/jumbo v3, "wireless"

    :goto_257
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7192
    goto :goto_27d

    .line 7188
    :pswitch_25b
    if-eqz p4, :cond_261

    const-string/jumbo v3, "u"

    goto :goto_264

    :cond_261
    const-string/jumbo v3, "usb"

    :goto_264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7189
    goto :goto_27d

    .line 7185
    :pswitch_268
    if-eqz p4, :cond_26d

    const-string v3, "a"

    goto :goto_26f

    :cond_26d
    const-string v3, "ac"

    :goto_26f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7186
    goto :goto_27d

    .line 7182
    :pswitch_273
    if-eqz p4, :cond_276

    goto :goto_279

    :cond_276
    const-string/jumbo v6, "none"

    :goto_279
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7183
    nop

    .line 7198
    :cond_27d
    :goto_27d
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iget-short v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-eq v3, v4, :cond_296

    .line 7199
    iget-short v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 7200
    if-eqz p4, :cond_28c

    const-string v3, ",Bt="

    goto :goto_28e

    :cond_28c
    const-string v3, " temp="

    :goto_28e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7201
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7203
    :cond_296
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iget-short v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    if-eq v3, v4, :cond_2af

    .line 7204
    iget-short v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 7205
    if-eqz p4, :cond_2a5

    const-string v3, ",Bv="

    goto :goto_2a7

    :cond_2a5
    const-string v3, " volt="

    :goto_2a7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7206
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7208
    :cond_2af
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    div-int/lit16 v15, v3, 0x3e8

    .line 7209
    .local v15, "chargeMAh":I
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eq v3, v15, :cond_2c8

    .line 7210
    iput v15, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 7211
    if-eqz p4, :cond_2be

    const-string v3, ",Bcc="

    goto :goto_2c0

    :cond_2be
    const-string v3, " charge="

    :goto_2c0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7212
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7214
    :cond_2c8
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    cmpl-double v3, v3, v5

    const-string v4, "#.##"

    if-eqz v3, :cond_2ee

    .line 7215
    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    iput-wide v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    .line 7216
    if-eqz p4, :cond_2db

    const-string v3, ",Mrc="

    goto :goto_2dd

    :cond_2db
    const-string v3, " modemRailChargemAh="

    :goto_2dd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7217
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    invoke-virtual {v3, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7219
    :cond_2ee
    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    move-object/from16 v17, v12

    iget-wide v11, v1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    cmpl-double v3, v5, v11

    if-eqz v3, :cond_314

    .line 7220
    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    iput-wide v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    .line 7221
    if-eqz p4, :cond_301

    const-string v3, ",Wrc="

    goto :goto_303

    :cond_301
    const-string v3, " wifiRailChargemAh="

    :goto_303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7222
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7224
    :cond_314
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    sget-object v6, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v7, p4, 0x1

    invoke-static/range {v2 .. v7}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 7226
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    sget-object v6, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v7, p4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 7228
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const-string v4, ":\""

    const-string v5, "\""

    if-eqz v3, :cond_387

    .line 7229
    if-eqz p4, :cond_36e

    .line 7230
    const-string v3, ",wr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7231
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_366

    .line 7232
    invoke-static {}, Landroid/os/BatteryStats;->-$$Nest$sfgetsUidToString()Landroid/os/BatteryStats$IntToString;

    move-result-object v3

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v6, v6, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-interface {v3, v6}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7233
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7234
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const-string v6, "\"\""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7235
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_387

    .line 7237
    :cond_366
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_387

    .line 7240
    :cond_36e
    const-string v3, " wake_reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7241
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7242
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7243
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7244
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7247
    :cond_387
    :goto_387
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_426

    .line 7248
    if-eqz p4, :cond_38f

    const-string v13, ","

    :cond_38f
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7249
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v6, 0x8000

    and-int/2addr v3, v6

    if-eqz v3, :cond_3a0

    .line 7250
    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3ab

    .line 7251
    :cond_3a0
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_3ab

    .line 7252
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7254
    :cond_3ab
    :goto_3ab
    if-eqz p4, :cond_3b0

    sget-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    goto :goto_3b2

    .line 7255
    :cond_3b0
    sget-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    :goto_3b2
    nop

    .line 7256
    .local v3, "eventNames":[Ljava/lang/String;
    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v7, -0xc001

    and-int/2addr v6, v7

    .line 7258
    .local v6, "idx":I
    if-ltz v6, :cond_3c4

    array-length v7, v3

    if-ge v6, v7, :cond_3c4

    .line 7259
    aget-object v7, v3, v6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d1

    .line 7261
    :cond_3c4
    if-eqz p4, :cond_3c9

    const-string v7, "Ev"

    goto :goto_3cb

    :cond_3c9
    const-string v7, "event"

    :goto_3cb
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7262
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7264
    :goto_3d1
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7265
    if-eqz p4, :cond_40a

    .line 7266
    iget-object v7, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v7, v7, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    const/4 v11, -0x1

    if-ne v7, v11, :cond_402

    .line 7267
    sget-object v7, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    aget-object v7, v7, v6

    iget-object v11, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v11, v11, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 7268
    invoke-interface {v7, v11}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object v7

    .line 7267
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7269
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7270
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const-string v7, "\"\""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7271
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_426

    .line 7273
    :cond_402
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v4, v4, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_426

    .line 7276
    :cond_40a
    sget-object v7, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    aget-object v7, v7, v6

    iget-object v11, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v11, v11, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 7277
    invoke-interface {v7, v11}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object v7

    .line 7276
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7278
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7279
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7280
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7283
    .end local v3    # "eventNames":[Ljava/lang/String;
    .end local v6    # "idx":I
    :cond_426
    :goto_426
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v3, :cond_43e

    if-eqz p5, :cond_43e

    .line 7284
    if-nez p4, :cond_43e

    .line 7285
    const-string v3, "\n                 Stats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7287
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    const-string v4, "\n                    "

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerStats;->formatForBatteryHistory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7291
    :cond_43e
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-eqz v3, :cond_454

    if-eqz p5, :cond_454

    .line 7292
    if-nez p4, :cond_454

    .line 7293
    const-string v3, " procstate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7294
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    invoke-virtual {v3}, Landroid/os/BatteryStats$ProcessStateChange;->formatForBatteryHistory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7297
    :cond_454
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7298
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v3, :cond_64b

    .line 7299
    if-nez p4, :cond_58a

    .line 7300
    const-string v3, "                 Details: cpu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7301
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7302
    const-string/jumbo v3, "u+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7303
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7304
    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7305
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v3, :cond_4cd

    .line 7306
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7307
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    .line 7309
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v3, :cond_4ae

    .line 7310
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7311
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    .line 7314
    :cond_4ae
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v3, :cond_4c8

    .line 7315
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7316
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    .line 7319
    :cond_4c8
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7321
    :cond_4cd
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7322
    const-string v3, "                          /proc/stat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7323
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7324
    const-string v3, " usr, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7325
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7326
    const-string v3, " sys, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7327
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7328
    const-string v3, " io, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7329
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7330
    const-string v3, " irq, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7331
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7332
    const-string v3, " sirq, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7333
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7334
    const-string v3, " idle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7335
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    add-int/2addr v3, v4

    .line 7338
    .local v3, "totalRun":I
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    add-int/2addr v4, v3

    .line 7339
    .local v4, "total":I
    if-lez v4, :cond_570

    .line 7340
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7341
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    .line 7342
    .local v5, "perc":F
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%.1f%%"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7343
    const-string v6, " of "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7344
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7345
    .local v6, "sb":Ljava/lang/StringBuilder;
    mul-int/lit8 v7, v4, 0xa

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 7346
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 7347
    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7350
    .end local v5    # "perc":F
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_570
    const-string v5, ", SubsystemPowerState "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7351
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz v5, :cond_580

    .line 7352
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    goto :goto_582

    :cond_580
    const-string v5, "Empty"

    .line 7351
    :goto_582
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7353
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7354
    .end local v3    # "totalRun":I
    .end local v4    # "total":I
    goto/16 :goto_64b

    .line 7355
    :cond_58a
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7356
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",0,Dcpu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7357
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7358
    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7359
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7360
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v3, :cond_5ec

    .line 7361
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    .line 7363
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v3, :cond_5d7

    .line 7364
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    .line 7367
    :cond_5d7
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v3, :cond_5ec

    .line 7368
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    .line 7372
    :cond_5ec
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7373
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7374
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",0,Dpst="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7375
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7376
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7377
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7378
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7379
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7380
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7381
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7383
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7384
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7385
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7386
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7388
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz v3, :cond_648

    .line 7389
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7391
    :cond_648
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7394
    :cond_64b
    :goto_64b
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 7395
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    .line 7397
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_69d

    .line 7398
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v4, -0x80001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_69d

    .line 7071
    .end local v15    # "chargeMAh":I
    :cond_663
    move-object v3, v12

    .line 7073
    :goto_664
    if-eqz p4, :cond_669

    .line 7074
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7076
    :cond_669
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v3, v5, :cond_675

    .line 7077
    const-string v3, "RESET:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7078
    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    .line 7080
    :cond_675
    const-string v3, "TIME:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7081
    if-eqz p4, :cond_685

    .line 7082
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7083
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_69d

    .line 7085
    :cond_685
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7086
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->mDate:Ljava/util/Date;

    iget-wide v4, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 7087
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->mCurrentTimeEventTimeFormat:Ljava/text/SimpleDateFormat;

    iget-object v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->mDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7088
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7401
    :cond_69d
    :goto_69d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_data_6a2
    .packed-switch 0x1
        :pswitch_1bb
        :pswitch_1b1
        :pswitch_1a7
        :pswitch_19c
        :pswitch_192
    .end packed-switch

    :pswitch_data_6b0
    .packed-switch 0x1
        :pswitch_224
        :pswitch_218
        :pswitch_20d
        :pswitch_204
        :pswitch_1f7
        :pswitch_1ee
        :pswitch_1e5
    .end packed-switch

    :pswitch_data_6c2
    .packed-switch 0x0
        :pswitch_273
        :pswitch_268
        :pswitch_25b
        :pswitch_248
        :pswitch_24e
    .end packed-switch
.end method

.method private greylist-max-o printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "uid"    # I
    .param p3, "utime"    # I
    .param p4, "stime"    # I

    .line 7415
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7416
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7417
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7418
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7419
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7420
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7421
    return-void
.end method

.method private greylist-max-o printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "uid"    # I
    .param p3, "utime"    # I
    .param p4, "stime"    # I

    .line 7405
    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 7406
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7407
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7408
    const-string/jumbo v0, "u+"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7409
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7410
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7411
    return-void
.end method


# virtual methods
.method public greylist-max-o printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V
    .registers 14
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "baseTime"    # J
    .param p5, "verbose"    # Z

    .line 7027
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v5, p5

    .end local p2    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local p3    # "baseTime":J
    .end local p5    # "verbose":Z
    .local v1, "rec":Landroid/os/BatteryStats$HistoryItem;
    .local v2, "baseTime":J
    .local v5, "verbose":Z
    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object p2

    .line 7028
    .local p2, "item":Ljava/lang/String;
    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length p4, p3

    const/4 p5, 0x0

    :goto_11
    if-ge p5, p4, :cond_20

    aget-object v0, p3, p5

    .line 7029
    .local v0, "line":Ljava/lang/String;
    const-wide v6, 0x20900000006L

    invoke-virtual {p1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7028
    .end local v0    # "line":Ljava/lang/String;
    add-int/lit8 p5, p5, 0x1

    goto :goto_11

    .line 7031
    :cond_20
    return-void
.end method

.method public greylist-max-o printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "baseTime"    # J
    .param p5, "checkin"    # Z
    .param p6, "verbose"    # Z

    .line 7021
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move v5, p6

    .end local p2    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local p3    # "baseTime":J
    .end local p5    # "checkin":Z
    .end local p6    # "verbose":Z
    .local v1, "rec":Landroid/os/BatteryStats$HistoryItem;
    .local v2, "baseTime":J
    .local v4, "checkin":Z
    .local v5, "verbose":Z
    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7022
    return-void
.end method

.method greylist-max-o reset()V
    .registers 3

    .line 7007
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 7008
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 7009
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 7010
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 7011
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 7012
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 7013
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 7014
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 7015
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    .line 7016
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    .line 7017
    return-void
.end method
