.class public final Landroid/service/notification/SystemZenRules;
.super Ljava/lang/Object;
.source "SystemZenRules.java"


# static fields
.field public static final blacklist PACKAGE_ANDROID:Ljava/lang/String; = "android"

.field private static final blacklist TAG:Ljava/lang/String; = "SystemZenRules"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDaysOfWeekForLocale(Ljava/util/Calendar;)[I
    .registers 6
    .param p0, "c"    # Ljava/util/Calendar;

    .line 263
    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 264
    .local v1, "daysOfWeek":[I
    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    .line 265
    .local v2, "currentDay":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    array-length v4, v1

    if-ge v3, v4, :cond_15

    .line 266
    if-le v2, v0, :cond_e

    const/4 v2, 0x1

    .line 267
    :cond_e
    aput v2, v1, v3

    .line 268
    add-int/lit8 v2, v2, 0x1

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 270
    .end local v3    # "i":I
    :cond_15
    return-object v1
.end method

.method public static blacklist getDaysOfWeekFull(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 152
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 153
    invoke-static {p0}, Landroid/service/notification/SystemZenRules;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    const-string v2, "EEEE"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 152
    const v1, 0x1040b08

    invoke-static {p0, v1, v0, p1}, Landroid/service/notification/SystemZenRules;->getDaysSummary(Landroid/content/Context;ILjava/text/SimpleDateFormat;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDaysOfWeekShort(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 141
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 142
    invoke-static {p0}, Landroid/service/notification/SystemZenRules;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    const-string v2, "EEE"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 141
    const v1, 0x1040b07

    invoke-static {p0, v1, v0, p1}, Landroid/service/notification/SystemZenRules;->getDaysSummary(Landroid/content/Context;ILjava/text/SimpleDateFormat;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDaysSummary(Landroid/content/Context;ILjava/text/SimpleDateFormat;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rangeFormatResId"    # I
    .param p2, "dayOfWeekFormat"    # Ljava/text/SimpleDateFormat;
    .param p3, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 167
    .local v3, "days":[I
    if-eqz v3, :cond_b6

    array-length v4, v3

    if-lez v4, :cond_b6

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0}, Landroid/service/notification/SystemZenRules;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    .line 170
    .local v5, "cStart":Ljava/util/Calendar;
    invoke-static {v0}, Landroid/service/notification/SystemZenRules;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v6

    .line 171
    .local v6, "cEnd":Ljava/util/Calendar;
    invoke-static {v5}, Landroid/service/notification/SystemZenRules;->getDaysOfWeekForLocale(Ljava/util/Calendar;)[I

    move-result-object v7

    .line 175
    .local v7, "daysOfWeek":[I
    const/high16 v8, -0x80000000

    .line 176
    .local v8, "startDay":I
    const/high16 v9, -0x80000000

    .line 177
    .local v9, "lastSeenDay":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2b
    array-length v11, v7

    if-ge v10, v11, :cond_a9

    .line 178
    aget v11, v7, v10

    .line 184
    .local v11, "day":I
    add-int/lit8 v12, v9, 0x1

    const/4 v13, 0x1

    if-ne v10, v12, :cond_37

    move v12, v13

    goto :goto_38

    :cond_37
    const/4 v12, 0x0

    .line 185
    .local v12, "output":Z
    :goto_38
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_39
    array-length v15, v3

    if-ge v14, v15, :cond_52

    .line 186
    aget v15, v3, v14

    if-ne v11, v15, :cond_4f

    .line 188
    add-int/lit8 v15, v9, 0x1

    if-ne v10, v15, :cond_47

    .line 191
    move v9, v10

    .line 192
    const/4 v12, 0x0

    goto :goto_49

    .line 196
    :cond_47
    move v8, v10

    .line 197
    move v9, v10

    .line 203
    :goto_49
    array-length v15, v7

    sub-int/2addr v15, v13

    if-ne v10, v15, :cond_52

    .line 204
    const/4 v12, 0x1

    goto :goto_52

    .line 185
    :cond_4f
    add-int/lit8 v14, v14, 0x1

    goto :goto_39

    .line 213
    .end local v14    # "j":I
    :cond_52
    :goto_52
    if-eqz v12, :cond_a4

    .line 216
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_65

    .line 217
    nop

    .line 218
    const v13, 0x1040b06

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 217
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_65
    const/4 v13, 0x7

    if-ne v8, v9, :cond_7b

    .line 223
    aget v14, v7, v8

    invoke-virtual {v5, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 224
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p1

    goto :goto_a6

    .line 227
    :cond_7b
    aget v14, v7, v8

    invoke-virtual {v5, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 228
    aget v14, v7, v9

    invoke-virtual {v6, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 229
    nop

    .line 231
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 232
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    .line 229
    move/from16 v14, p1

    invoke-virtual {v0, v14, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a6

    .line 213
    :cond_a4
    move/from16 v14, p1

    .line 177
    .end local v11    # "day":I
    .end local v12    # "output":Z
    :goto_a6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2b

    :cond_a9
    move/from16 v14, p1

    .line 237
    .end local v10    # "i":I
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_b8

    .line 238
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 167
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "cStart":Ljava/util/Calendar;
    .end local v6    # "cEnd":Ljava/util/Calendar;
    .end local v7    # "daysOfWeek":[I
    .end local v8    # "startDay":I
    .end local v9    # "lastSeenDay":I
    :cond_b6
    move/from16 v14, p1

    .line 241
    :cond_b8
    const/4 v4, 0x0

    return-object v4
.end method

.method private static blacklist getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTimeSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 246
    iget v0, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 248
    invoke-static {p0, v0, v1}, Landroid/service/notification/SystemZenRules;->timeString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 249
    invoke-static {p0, v1, v2}, Landroid/service/notification/SystemZenRules;->timeString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 246
    const v1, 0x1040b07

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTriggerDescriptionForScheduleEvent(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 283
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 284
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    return-object v0

    .line 286
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040b04

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTriggerDescriptionForScheduleTime(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 122
    invoke-static {p0, p1}, Landroid/service/notification/SystemZenRules;->getDaysOfWeekShort(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "daysSummary":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 125
    const/4 v1, 0x0

    return-object v1

    .line 127
    :cond_8
    nop

    .line 130
    invoke-static {p0, p1}, Landroid/service/notification/SystemZenRules;->getTimeSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 127
    const v2, 0x1040b05

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist isSystemOwnedRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 3
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 67
    const-string v0, "android"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist maybeUpgradeRules(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 50
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 51
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {v1}, Landroid/service/notification/SystemZenRules;->isSystemOwnedRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 52
    iget v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_24

    .line 53
    invoke-static {p0, v1}, Landroid/service/notification/SystemZenRules;->upgradeSystemProviderRule(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 55
    :cond_24
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 56
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 59
    .end local v1    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2d
    goto :goto_a

    .line 60
    :cond_2e
    return-void
.end method

.method private static blacklist timeString(Landroid/content/Context;II)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 256
    invoke-static {p0}, Landroid/service/notification/SystemZenRules;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 257
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 258
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 259
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist updateTriggerDescription(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 93
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    .line 94
    .local v0, "scheduleInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    if-eqz v0, :cond_12

    .line 95
    nop

    .line 96
    invoke-static {p0, v0}, Landroid/service/notification/SystemZenRules;->getTriggerDescriptionForScheduleTime(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {p1, v1}, Landroid/service/notification/SystemZenRules;->updateTriggerDescription(Landroid/service/notification/ZenModeConfig$ZenRule;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 98
    :cond_12
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    .line 99
    .local v1, "eventInfo":Landroid/service/notification/ZenModeConfig$EventInfo;
    if-eqz v1, :cond_24

    .line 100
    nop

    .line 101
    invoke-static {p0, v1}, Landroid/service/notification/SystemZenRules;->getTriggerDescriptionForScheduleEvent(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {p1, v2}, Landroid/service/notification/SystemZenRules;->updateTriggerDescription(Landroid/service/notification/ZenModeConfig$ZenRule;Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 103
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t determine type of system-owned ZenRule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemZenRules"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v2, 0x0

    return v2
.end method

.method private static blacklist updateTriggerDescription(Landroid/service/notification/ZenModeConfig$ZenRule;Ljava/lang/String;)Z
    .registers 3
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p1, "triggerDescription"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 109
    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 110
    const/4 v0, 0x1

    return v0

    .line 112
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist upgradeSystemProviderRule(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 71
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    .line 72
    .local v0, "scheduleInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    if-eqz v0, :cond_12

    .line 73
    const/4 v1, 0x1

    iput v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 74
    invoke-static {p0, v0}, Landroid/service/notification/SystemZenRules;->getTriggerDescriptionForScheduleTime(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 75
    return-void

    .line 77
    :cond_12
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    .line 78
    .local v1, "eventInfo":Landroid/service/notification/ZenModeConfig$EventInfo;
    if-eqz v1, :cond_24

    .line 79
    const/4 v2, 0x2

    iput v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 80
    invoke-static {p0, v1}, Landroid/service/notification/SystemZenRules;->getTriggerDescriptionForScheduleEvent(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 81
    return-void

    .line 83
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t determine type of system-owned ZenRule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemZenRules"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method
