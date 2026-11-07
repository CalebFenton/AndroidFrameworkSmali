.class public final Landroid/text/format/RelativeDateTimeFormatter;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;
    }
.end annotation


# static fields
.field private static final blacklist CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

.field public static final blacklist DAY_IN_MILLIS:J = 0x5265c00L

.field private static final blacklist DAY_IN_MS:I = 0x5265c00

.field private static final blacklist EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final blacklist HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final blacklist MINUTE_IN_MILLIS:J = 0xea60L

.field public static final blacklist SECOND_IN_MILLIS:J = 0x3e8L

.field public static final blacklist WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final blacklist YEAR_IN_MILLIS:J = 0x7528ad000L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    invoke-direct {v0}, Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;-><init>()V

    sput-object v0, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method private static blacklist dayDistance(Landroid/icu/util/TimeZone;JJ)I
    .registers 7
    .param p0, "icuTimeZone"    # Landroid/icu/util/TimeZone;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 353
    invoke-static {p0, p3, p4}, Landroid/text/format/RelativeDateTimeFormatter;->julianDay(Landroid/icu/util/TimeZone;J)I

    move-result v0

    invoke-static {p0, p1, p2}, Landroid/text/format/RelativeDateTimeFormatter;->julianDay(Landroid/icu/util/TimeZone;J)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static blacklist getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;
    .registers 6
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "style"    # Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .param p2, "displayContext"    # Landroid/icu/text/DisplayContext;

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    invoke-virtual {v1, v0}, Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RelativeDateTimeFormatter;

    .line 342
    .local v1, "formatter":Landroid/icu/text/RelativeDateTimeFormatter;
    if-nez v1, :cond_33

    .line 343
    const/4 v2, 0x0

    invoke-static {p0, v2, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v1

    .line 345
    sget-object v2, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_33
    return-object v1
.end method

.method public static blacklist getRelativeDateTimeString(Ljava/util/Locale;Ljava/util/TimeZone;JJJJI)Ljava/lang/String;
    .registers 34
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "time"    # J
    .param p4, "now"    # J
    .param p6, "minResolution"    # J
    .param p8, "transitionResolution"    # J
    .param p10, "flags"    # I

    .line 264
    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    if-eqz p0, :cond_b2

    .line 267
    if-eqz p1, :cond_a9

    .line 270
    invoke-static/range {p0 .. p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 271
    .local v1, "icuLocale":Landroid/icu/util/ULocale;
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v2

    .line 273
    .local v2, "icuTimeZone":Landroid/icu/util/TimeZone;
    sub-long v7, v5, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 275
    .local v11, "duration":J
    const-wide/32 v7, 0x240c8400

    cmp-long v0, p8, v7

    if-lez v0, :cond_22

    .line 276
    const-wide/32 v7, 0x240c8400

    move-wide v13, v7

    .end local p8    # "transitionResolution":J
    .local v7, "transitionResolution":J
    goto :goto_24

    .line 275
    .end local v7    # "transitionResolution":J
    .restart local p8    # "transitionResolution":J
    :cond_22
    move-wide/from16 v13, p8

    .line 279
    .end local p8    # "transitionResolution":J
    .local v13, "transitionResolution":J
    :goto_24
    const/high16 v0, 0xc0000

    and-int v0, p10, v0

    if-eqz v0, :cond_2e

    .line 280
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-object v15, v0

    .local v0, "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    goto :goto_31

    .line 282
    .end local v0    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :cond_2e
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-object v15, v0

    .line 285
    .local v15, "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :goto_31
    invoke-static {v2, v1, v3, v4}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v7

    .line 286
    .local v7, "timeCalendar":Landroid/icu/util/Calendar;
    invoke-static {v2, v1, v5, v6}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v8

    .line 288
    .local v8, "nowCalendar":Landroid/icu/util/Calendar;
    invoke-static {v7, v8}, Landroid/text/format/DateUtilsBridge;->dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 292
    .local v16, "days":I
    cmp-long v0, v11, v13

    const/4 v9, 0x1

    if-gez v0, :cond_73

    .line 296
    if-lez v16, :cond_5a

    const-wide/32 v17, 0x5265c00

    cmp-long v0, p6, v17

    if-gez v0, :cond_5a

    .line 297
    const-wide/32 v17, 0x5265c00

    move-object v10, v7

    move-wide/from16 v21, v17

    move-object/from16 v17, v8

    move-wide/from16 v7, v21

    .end local p6    # "minResolution":J
    .local v17, "minResolution":J
    goto :goto_5f

    .line 299
    .end local v17    # "minResolution":J
    .restart local p6    # "minResolution":J
    :cond_5a
    move-object v10, v7

    move-object/from16 v17, v8

    move-wide/from16 v7, p6

    .end local v8    # "nowCalendar":Landroid/icu/util/Calendar;
    .end local p6    # "minResolution":J
    .local v7, "minResolution":J
    .local v10, "timeCalendar":Landroid/icu/util/Calendar;
    .local v17, "nowCalendar":Landroid/icu/util/Calendar;
    :goto_5f
    move-object/from16 v18, v10

    .end local v10    # "timeCalendar":Landroid/icu/util/Calendar;
    .local v18, "timeCalendar":Landroid/icu/util/Calendar;
    sget-object v10, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    move v0, v9

    move-wide/from16 v19, v11

    move-object/from16 v12, v17

    move-object/from16 v11, v18

    move/from16 v9, p10

    .end local v17    # "nowCalendar":Landroid/icu/util/Calendar;
    .end local v18    # "timeCalendar":Landroid/icu/util/Calendar;
    .local v11, "timeCalendar":Landroid/icu/util/Calendar;
    .local v12, "nowCalendar":Landroid/icu/util/Calendar;
    .local v19, "duration":J
    invoke-static/range {v1 .. v10}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v10

    move/from16 v3, p10

    .local v10, "dateClause":Ljava/lang/String;
    goto :goto_91

    .line 304
    .end local v10    # "dateClause":Ljava/lang/String;
    .end local v12    # "nowCalendar":Landroid/icu/util/Calendar;
    .end local v19    # "duration":J
    .local v7, "timeCalendar":Landroid/icu/util/Calendar;
    .restart local v8    # "nowCalendar":Landroid/icu/util/Calendar;
    .local v11, "duration":J
    .restart local p6    # "minResolution":J
    :cond_73
    move v0, v9

    move-wide/from16 v19, v11

    move-object v11, v7

    move-object v12, v8

    .end local v7    # "timeCalendar":Landroid/icu/util/Calendar;
    .end local v8    # "nowCalendar":Landroid/icu/util/Calendar;
    .local v11, "timeCalendar":Landroid/icu/util/Calendar;
    .restart local v12    # "nowCalendar":Landroid/icu/util/Calendar;
    .restart local v19    # "duration":J
    invoke-virtual {v11, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v12, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_86

    .line 306
    const v3, 0x20014

    .end local p10    # "flags":I
    .local v3, "flags":I
    goto :goto_89

    .line 309
    .end local v3    # "flags":I
    .restart local p10    # "flags":I
    :cond_86
    const v3, 0x10018

    .line 312
    .end local p10    # "flags":I
    .restart local v3    # "flags":I
    :goto_89
    sget-object v4, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    invoke-static {v1, v11, v3, v4}, Landroid/text/format/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v10

    move-wide/from16 v7, p6

    .line 316
    .end local p6    # "minResolution":J
    .local v7, "minResolution":J
    .restart local v10    # "dateClause":Ljava/lang/String;
    :goto_91
    sget-object v4, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-static {v1, v11, v0, v4}, Landroid/text/format/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "timeClause":Ljava/lang/String;
    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    .line 325
    .local v5, "capitalizationContext":Landroid/icu/text/DisplayContext;
    sget-object v6, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v6

    .line 326
    :try_start_9c
    invoke-static {v1, v15, v5}, Landroid/text/format/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    .line 327
    invoke-virtual {v0, v10, v4}, Landroid/icu/text/RelativeDateTimeFormatter;->combineDateAndTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v6

    .line 326
    return-object v0

    .line 328
    :catchall_a6
    move-exception v0

    monitor-exit v6
    :try_end_a8
    .catchall {:try_start_9c .. :try_end_a8} :catchall_a6

    throw v0

    .line 268
    .end local v1    # "icuLocale":Landroid/icu/util/ULocale;
    .end local v2    # "icuTimeZone":Landroid/icu/util/TimeZone;
    .end local v3    # "flags":I
    .end local v4    # "timeClause":Ljava/lang/String;
    .end local v5    # "capitalizationContext":Landroid/icu/text/DisplayContext;
    .end local v7    # "minResolution":J
    .end local v10    # "dateClause":Ljava/lang/String;
    .end local v11    # "timeCalendar":Landroid/icu/util/Calendar;
    .end local v12    # "nowCalendar":Landroid/icu/util/Calendar;
    .end local v13    # "transitionResolution":J
    .end local v15    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .end local v16    # "days":I
    .end local v19    # "duration":J
    .restart local p6    # "minResolution":J
    .restart local p8    # "transitionResolution":J
    .restart local p10    # "flags":I
    :cond_a9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tz == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_b2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;
    .registers 32
    .param p0, "icuLocale"    # Landroid/icu/util/ULocale;
    .param p1, "icuTimeZone"    # Landroid/icu/util/TimeZone;
    .param p2, "time"    # J
    .param p4, "now"    # J
    .param p6, "minResolution"    # J
    .param p8, "flags"    # I
    .param p9, "displayContext"    # Landroid/icu/text/DisplayContext;

    .line 124
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p9

    sub-long v8, v5, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 125
    .local v8, "duration":J
    cmp-long v0, v5, v3

    const/4 v10, 0x1

    if-ltz v0, :cond_17

    move v0, v10

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    move v11, v0

    .line 128
    .local v11, "past":Z
    const/high16 v0, 0xc0000

    and-int v0, p8, v0

    if-eqz v0, :cond_23

    .line 129
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-object v12, v0

    .local v0, "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    goto :goto_26

    .line 131
    .end local v0    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :cond_23
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-object v12, v0

    .line 135
    .local v12, "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :goto_26
    if-eqz v11, :cond_2c

    .line 136
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    move-object v13, v0

    .local v0, "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    goto :goto_2f

    .line 138
    .end local v0    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    :cond_2c
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    move-object v13, v0

    .line 144
    .local v13, "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    :goto_2f
    const/4 v14, 0x1

    .line 147
    .local v14, "relative":Z
    const/4 v15, 0x0

    .line 149
    .local v15, "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    const-wide/32 v16, 0xea60

    cmp-long v0, v8, v16

    if-gez v0, :cond_4f

    cmp-long v0, p6, v16

    if-gez v0, :cond_4f

    .line 150
    const-wide/16 v16, 0x3e8

    move-wide/from16 v18, v8

    .end local v8    # "duration":J
    .local v18, "duration":J
    div-long v8, v18, v16

    long-to-int v0, v8

    .line 151
    .local v0, "count":I
    sget-object v8, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move-object v9, v8

    move/from16 v17, v11

    move-object v11, v13

    move/from16 v16, v14

    move-object v10, v15

    move v8, v0

    .local v8, "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    goto/16 :goto_118

    .line 149
    .end local v0    # "count":I
    .end local v18    # "duration":J
    .local v8, "duration":J
    :cond_4f
    move-wide/from16 v18, v8

    .line 152
    .end local v8    # "duration":J
    .restart local v18    # "duration":J
    const-wide/32 v8, 0x36ee80

    cmp-long v0, v18, v8

    if-gez v0, :cond_6b

    cmp-long v0, p6, v8

    if-gez v0, :cond_6b

    .line 153
    div-long v8, v18, v16

    long-to-int v0, v8

    .line 154
    .restart local v0    # "count":I
    sget-object v8, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move-object v9, v8

    move/from16 v17, v11

    move-object v11, v13

    move/from16 v16, v14

    move-object v10, v15

    move v8, v0

    .local v8, "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    goto/16 :goto_118

    .line 155
    .end local v0    # "count":I
    .end local v8    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    :cond_6b
    const-wide/32 v16, 0x5265c00

    cmp-long v0, v18, v16

    if-gez v0, :cond_85

    cmp-long v0, p6, v16

    if-gez v0, :cond_85

    .line 159
    div-long v8, v18, v8

    long-to-int v0, v8

    .line 160
    .restart local v0    # "count":I
    sget-object v8, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move-object v9, v8

    move/from16 v17, v11

    move-object v11, v13

    move/from16 v16, v14

    move-object v10, v15

    move v8, v0

    .restart local v8    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    goto/16 :goto_118

    .line 161
    .end local v0    # "count":I
    .end local v8    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    :cond_85
    const-wide/32 v8, 0x240c8400

    cmp-long v0, v18, v8

    if-gez v0, :cond_107

    cmp-long v0, p6, v8

    if-gez v0, :cond_107

    .line 162
    invoke-static/range {p1 .. p5}, Landroid/text/format/RelativeDateTimeFormatter;->dayDistance(Landroid/icu/util/TimeZone;JJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 163
    .local v8, "count":I
    sget-object v9, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 165
    .local v9, "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    const/4 v0, 0x2

    if-ne v8, v0, :cond_e2

    .line 173
    if-eqz v11, :cond_c1

    .line 174
    sget-object v10, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v10

    .line 175
    :try_start_a2
    invoke-static {v1, v12, v7}, Landroid/text/format/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0
    :try_end_a6
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_b8

    move-object/from16 v16, v9

    .end local v9    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .local v16, "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    :try_start_a8
    sget-object v9, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    :try_end_aa
    .catchall {:try_start_a8 .. :try_end_aa} :catchall_b4

    move/from16 v17, v11

    .end local v11    # "past":Z
    .local v17, "past":Z
    :try_start_ac
    sget-object v11, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v0, v9, v11}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "str":Ljava/lang/String;
    monitor-exit v10

    goto :goto_d5

    .end local v0    # "str":Ljava/lang/String;
    .end local v17    # "past":Z
    .restart local v11    # "past":Z
    :catchall_b4
    move-exception v0

    move/from16 v17, v11

    .end local v11    # "past":Z
    .restart local v17    # "past":Z
    goto :goto_bd

    .end local v16    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .end local v17    # "past":Z
    .restart local v9    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .restart local v11    # "past":Z
    :catchall_b8
    move-exception v0

    move-object/from16 v16, v9

    move/from16 v17, v11

    .end local v9    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .end local v11    # "past":Z
    .restart local v16    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .restart local v17    # "past":Z
    :goto_bd
    monitor-exit v10
    :try_end_be
    .catchall {:try_start_ac .. :try_end_be} :catchall_bf

    throw v0

    :catchall_bf
    move-exception v0

    goto :goto_bd

    .line 180
    .end local v16    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .end local v17    # "past":Z
    .restart local v9    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .restart local v11    # "past":Z
    :cond_c1
    move-object/from16 v16, v9

    move/from16 v17, v11

    .end local v9    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .end local v11    # "past":Z
    .restart local v16    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .restart local v17    # "past":Z
    sget-object v9, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v9

    .line 181
    :try_start_c8
    invoke-static {v1, v12, v7}, Landroid/text/format/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    sget-object v10, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v11, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v0, v10, v11}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .restart local v0    # "str":Ljava/lang/String;
    monitor-exit v9
    :try_end_d5
    .catchall {:try_start_c8 .. :try_end_d5} :catchall_df

    .line 186
    :goto_d5
    if-eqz v0, :cond_de

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_de

    .line 187
    return-object v0

    .line 190
    .end local v0    # "str":Ljava/lang/String;
    :cond_de
    goto :goto_100

    .line 184
    :catchall_df
    move-exception v0

    :try_start_e0
    monitor-exit v9
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v0

    .line 190
    .end local v16    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .end local v17    # "past":Z
    .restart local v9    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .restart local v11    # "past":Z
    :cond_e2
    move-object/from16 v16, v9

    move/from16 v17, v11

    .end local v9    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .end local v11    # "past":Z
    .restart local v16    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .restart local v17    # "past":Z
    if-ne v8, v10, :cond_f2

    .line 192
    sget-object v15, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    .line 193
    const/4 v14, 0x0

    move-object v11, v13

    move-object v10, v15

    move-object/from16 v9, v16

    move/from16 v16, v14

    goto :goto_118

    .line 194
    :cond_f2
    if-nez v8, :cond_100

    .line 196
    sget-object v15, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    .line 197
    sget-object v13, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 198
    const/4 v14, 0x0

    move-object v11, v13

    move-object v10, v15

    move-object/from16 v9, v16

    move/from16 v16, v14

    goto :goto_118

    .line 226
    :cond_100
    :goto_100
    move-object v11, v13

    move-object v10, v15

    move-object/from16 v9, v16

    move/from16 v16, v14

    goto :goto_118

    .line 161
    .end local v8    # "count":I
    .end local v16    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .end local v17    # "past":Z
    .restart local v11    # "past":Z
    :cond_107
    move/from16 v17, v11

    .line 200
    .end local v11    # "past":Z
    .restart local v17    # "past":Z
    cmp-long v0, p6, v8

    if-nez v0, :cond_132

    .line 201
    div-long v8, v18, v8

    long-to-int v0, v8

    .line 202
    .local v0, "count":I
    sget-object v8, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move-object v9, v8

    move-object v11, v13

    move/from16 v16, v14

    move-object v10, v15

    move v8, v0

    .line 226
    .end local v0    # "count":I
    .end local v13    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .end local v14    # "relative":Z
    .end local v15    # "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .restart local v8    # "count":I
    .restart local v9    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .local v10, "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .local v11, "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .local v16, "relative":Z
    :goto_118
    sget-object v20, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v20

    .line 227
    nop

    .line 228
    :try_start_11c
    invoke-static {v1, v12, v7}, Landroid/text/format/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    .line 229
    .local v0, "formatter":Landroid/icu/text/RelativeDateTimeFormatter;
    if-eqz v16, :cond_129

    .line 230
    int-to-double v13, v8

    invoke-virtual {v0, v13, v14, v11, v9}, Landroid/icu/text/RelativeDateTimeFormatter;->format(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Ljava/lang/String;

    move-result-object v13

    monitor-exit v20

    return-object v13

    .line 232
    :cond_129
    invoke-virtual {v0, v11, v10}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v13

    monitor-exit v20

    return-object v13

    .line 234
    .end local v0    # "formatter":Landroid/icu/text/RelativeDateTimeFormatter;
    :catchall_12f
    move-exception v0

    monitor-exit v20
    :try_end_131
    .catchall {:try_start_11c .. :try_end_131} :catchall_12f

    throw v0

    .line 204
    .end local v8    # "count":I
    .end local v9    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .end local v10    # "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .end local v11    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .end local v16    # "relative":Z
    .restart local v13    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .restart local v14    # "relative":Z
    .restart local v15    # "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    :cond_132
    invoke-static {v2, v1, v3, v4}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 213
    .local v0, "timeCalendar":Landroid/icu/util/Calendar;
    and-int/lit8 v8, p8, 0xc

    if-nez v8, :cond_14e

    .line 214
    invoke-static {v2, v1, v5, v6}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v8

    .line 217
    .local v8, "nowCalendar":Landroid/icu/util/Calendar;
    invoke-virtual {v0, v10}, Landroid/icu/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v10}, Landroid/icu/util/Calendar;->get(I)I

    move-result v10

    if-eq v9, v10, :cond_14b

    .line 218
    or-int/lit8 v9, p8, 0x4

    .end local p8    # "flags":I
    .local v9, "flags":I
    goto :goto_150

    .line 220
    .end local v9    # "flags":I
    .restart local p8    # "flags":I
    :cond_14b
    or-int/lit8 v9, p8, 0x8

    .end local p8    # "flags":I
    .restart local v9    # "flags":I
    goto :goto_150

    .line 213
    .end local v8    # "nowCalendar":Landroid/icu/util/Calendar;
    .end local v9    # "flags":I
    .restart local p8    # "flags":I
    :cond_14e
    move/from16 v9, p8

    .line 223
    .end local p8    # "flags":I
    .restart local v9    # "flags":I
    :goto_150
    invoke-static {v1, v0, v9, v7}, Landroid/text/format/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static blacklist getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJI)Ljava/lang/String;
    .registers 20
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "time"    # J
    .param p4, "now"    # J
    .param p6, "minResolution"    # J
    .param p8, "flags"    # I

    .line 99
    sget-object v9, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    .line 101
    .local v9, "displayContext":Landroid/icu/text/DisplayContext;
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public static blacklist getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;
    .registers 21
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "time"    # J
    .param p4, "now"    # J
    .param p6, "minResolution"    # J
    .param p8, "flags"    # I
    .param p9, "displayContext"    # Landroid/icu/text/DisplayContext;

    .line 107
    if-eqz p0, :cond_22

    .line 110
    if-eqz p1, :cond_19

    .line 113
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 114
    .local v0, "icuLocale":Landroid/icu/util/ULocale;
    invoke-static {p1}, Landroid/text/format/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v1

    .line 115
    .local v1, "icuTimeZone":Landroid/icu/util/TimeZone;
    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v9}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 111
    .end local v0    # "icuLocale":Landroid/icu/util/ULocale;
    .end local v1    # "icuTimeZone":Landroid/icu/util/TimeZone;
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tz == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist julianDay(Landroid/icu/util/TimeZone;J)I
    .registers 7
    .param p0, "icuTimeZone"    # Landroid/icu/util/TimeZone;
    .param p1, "time"    # J

    .line 357
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    .line 358
    .local v0, "utcMs":J
    const-wide/32 v2, 0x5265c00

    div-long v2, v0, v2

    long-to-int v2, v2

    const v3, 0x253d8c    # 3.419992E-39f

    add-int/2addr v2, v3

    return v2
.end method
