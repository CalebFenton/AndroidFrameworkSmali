.class public final Llibcore/icu/RelativeDateTimeFormatter;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;
    }
.end annotation


# static fields
.field private static final CACHED_FORMATTERS:Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field private static final DAY_IN_MS:I = 0x5265c00

.field private static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    new-instance v0, Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

    #@2
    invoke-direct {v0}, Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;-><init>()V

    #@5
    sput-object v0, Llibcore/icu/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

    #@7
    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static dayDistance(Landroid/icu/util/TimeZone;JJ)I
    .locals 3
    .param p0, "icuTimeZone"    # Landroid/icu/util/TimeZone;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    #@0
    .prologue
    .line 353
    invoke-static {p0, p3, p4}, Llibcore/icu/RelativeDateTimeFormatter;->julianDay(Landroid/icu/util/TimeZone;J)I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2}, Llibcore/icu/RelativeDateTimeFormatter;->julianDay(Landroid/icu/util/TimeZone;J)I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method private static getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "style"    # Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .param p2, "displayContext"    # Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9
    move-result-object v2

    #@a
    const-string/jumbo v3, "\t"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, "\t"

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 341
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Llibcore/icu/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

    #@26
    invoke-virtual {v2, v1}, Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Landroid/icu/text/RelativeDateTimeFormatter;

    #@2c
    .line 342
    .local v0, "formatter":Landroid/icu/text/RelativeDateTimeFormatter;
    if-nez v0, :cond_0

    #@2e
    .line 343
    invoke-static {p0, v4, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    #@31
    move-result-object v0

    #@32
    .line 345
    sget-object v2, Llibcore/icu/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

    #@34
    invoke-virtual {v2, v1, v0}, Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 347
    :cond_0
    return-object v0
.end method

.method public static getRelativeDateTimeString(Ljava/util/Locale;Ljava/util/TimeZone;JJJJI)Ljava/lang/String;
    .locals 22
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "time"    # J
    .param p4, "now"    # J
    .param p6, "minResolution"    # J
    .param p8, "transitionResolution"    # J
    .param p10, "flags"    # I

    #@0
    .prologue
    .line 263
    if-nez p0, :cond_0

    #@2
    .line 264
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v5, "locale == null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 266
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 267
    new-instance v4, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v5, "tz == null"

    #@12
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 269
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@19
    move-result-object v2

    #@1a
    .line 270
    .local v2, "icuLocale":Landroid/icu/util/ULocale;
    invoke-static/range {p1 .. p1}, Llibcore/icu/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    #@1d
    move-result-object v3

    #@1e
    .line 272
    .local v3, "icuTimeZone":Landroid/icu/util/TimeZone;
    sub-long v4, p4, p2

    #@20
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    #@23
    move-result-wide v16

    #@24
    .line 274
    .local v16, "duration":J
    const-wide/32 v4, 0x240c8400

    #@27
    cmp-long v4, p8, v4

    #@29
    if-lez v4, :cond_2

    #@2b
    .line 275
    const-wide/32 p8, 0x240c8400

    #@2e
    .line 278
    :cond_2
    const/high16 v4, 0xc0000

    #@30
    and-int v4, v4, p10

    #@32
    if-eqz v4, :cond_4

    #@34
    .line 279
    sget-object v18, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@36
    .line 284
    .local v18, "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :goto_0
    move-wide/from16 v0, p2

    #@38
    invoke-static {v3, v2, v0, v1}, Llibcore/icu/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    #@3b
    move-result-object v19

    #@3c
    .line 285
    .local v19, "timeCalendar":Landroid/icu/util/Calendar;
    move-wide/from16 v0, p4

    #@3e
    invoke-static {v3, v2, v0, v1}, Llibcore/icu/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    #@41
    move-result-object v15

    #@42
    .line 287
    .local v15, "nowCalendar":Landroid/icu/util/Calendar;
    move-object/from16 v0, v19

    #@44
    invoke-static {v0, v15}, Llibcore/icu/DateUtilsBridge;->dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    #@47
    move-result v4

    #@48
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@4b
    move-result v14

    #@4c
    .line 291
    .local v14, "days":I
    cmp-long v4, v16, p8

    #@4e
    if-gez v4, :cond_5

    #@50
    .line 295
    if-lez v14, :cond_3

    #@52
    const-wide/32 v4, 0x5265c00

    #@55
    cmp-long v4, p6, v4

    #@57
    if-gez v4, :cond_3

    #@59
    .line 296
    const-wide/32 p6, 0x5265c00

    #@5c
    .line 299
    :cond_3
    sget-object v11, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@5e
    move-wide/from16 v4, p2

    #@60
    move-wide/from16 v6, p4

    #@62
    move-wide/from16 v8, p6

    #@64
    move/from16 v10, p10

    #@66
    .line 298
    invoke-static/range {v2 .. v11}, Llibcore/icu/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    #@69
    move-result-object v13

    #@6a
    .line 316
    .local v13, "dateClause":Ljava/lang/String;
    :goto_1
    sget-object v4, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@6c
    .line 315
    const/4 v5, 0x1

    #@6d
    move-object/from16 v0, v19

    #@6f
    invoke-static {v2, v0, v5, v4}, Llibcore/icu/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    #@72
    move-result-object v20

    #@73
    .line 320
    .local v20, "timeClause":Ljava/lang/String;
    sget-object v12, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@75
    .line 323
    .local v12, "capitalizationContext":Landroid/icu/text/DisplayContext;
    sget-object v5, Llibcore/icu/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

    #@77
    monitor-enter v5

    #@78
    .line 324
    :try_start_0
    move-object/from16 v0, v18

    #@7a
    invoke-static {v2, v0, v12}, Llibcore/icu/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    #@7d
    move-result-object v4

    #@7e
    move-object/from16 v0, v20

    #@80
    invoke-virtual {v4, v13, v0}, Landroid/icu/text/RelativeDateTimeFormatter;->combineDateAndTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@83
    move-result-object v4

    #@84
    monitor-exit v5

    #@85
    return-object v4

    #@86
    .line 281
    .end local v12    # "capitalizationContext":Landroid/icu/text/DisplayContext;
    .end local v13    # "dateClause":Ljava/lang/String;
    .end local v14    # "days":I
    .end local v15    # "nowCalendar":Landroid/icu/util/Calendar;
    .end local v18    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .end local v19    # "timeCalendar":Landroid/icu/util/Calendar;
    .end local v20    # "timeClause":Ljava/lang/String;
    :cond_4
    sget-object v18, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@88
    .restart local v18    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    goto :goto_0

    #@89
    .line 303
    .restart local v14    # "days":I
    .restart local v15    # "nowCalendar":Landroid/icu/util/Calendar;
    .restart local v19    # "timeCalendar":Landroid/icu/util/Calendar;
    :cond_5
    const/4 v4, 0x1

    #@8a
    move-object/from16 v0, v19

    #@8c
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@8f
    move-result v4

    #@90
    const/4 v5, 0x1

    #@91
    invoke-virtual {v15, v5}, Landroid/icu/util/Calendar;->get(I)I

    #@94
    move-result v5

    #@95
    if-eq v4, v5, :cond_6

    #@97
    .line 305
    const p10, 0x20014

    #@9a
    .line 312
    :goto_2
    sget-object v4, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@9c
    .line 311
    move-object/from16 v0, v19

    #@9e
    move/from16 v1, p10

    #@a0
    invoke-static {v2, v0, v1, v4}, Llibcore/icu/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    #@a3
    move-result-object v13

    #@a4
    .restart local v13    # "dateClause":Ljava/lang/String;
    goto :goto_1

    #@a5
    .line 308
    .end local v13    # "dateClause":Ljava/lang/String;
    :cond_6
    const p10, 0x10018

    #@a8
    goto :goto_2

    #@a9
    .line 323
    .restart local v12    # "capitalizationContext":Landroid/icu/text/DisplayContext;
    .restart local v13    # "dateClause":Ljava/lang/String;
    .restart local v20    # "timeClause":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@aa
    monitor-exit v5

    #@ab
    throw v4
.end method

.method private static getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;
    .locals 22
    .param p0, "icuLocale"    # Landroid/icu/util/ULocale;
    .param p1, "icuTimeZone"    # Landroid/icu/util/TimeZone;
    .param p2, "time"    # J
    .param p4, "now"    # J
    .param p6, "minResolution"    # J
    .param p8, "flags"    # I
    .param p9, "displayContext"    # Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    .line 117
    sub-long v18, p4, p2

    #@2
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    #@5
    move-result-wide v8

    #@6
    .line 118
    .local v8, "duration":J
    cmp-long v17, p4, p2

    #@8
    if-ltz v17, :cond_1

    #@a
    const/4 v11, 0x1

    #@b
    .line 121
    .local v11, "past":Z
    :goto_0
    const/high16 v17, 0xc0000

    #@d
    and-int v17, v17, p8

    #@f
    if-eqz v17, :cond_2

    #@11
    .line 122
    sget-object v14, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@13
    .line 128
    .local v14, "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :goto_1
    if-eqz v11, :cond_3

    #@15
    .line 129
    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@17
    .line 137
    .local v6, "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    :goto_2
    const/4 v12, 0x1

    #@18
    .line 140
    .local v12, "relative":Z
    const/4 v4, 0x0

    #@19
    .line 142
    .local v4, "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    const-wide/32 v18, 0xea60

    #@1c
    cmp-long v17, v8, v18

    #@1e
    if-gez v17, :cond_4

    #@20
    const-wide/32 v18, 0xea60

    #@23
    cmp-long v17, p6, v18

    #@25
    if-gez v17, :cond_4

    #@27
    .line 143
    const-wide/16 v18, 0x3e8

    #@29
    div-long v18, v8, v18

    #@2b
    move-wide/from16 v0, v18

    #@2d
    long-to-int v5, v0

    #@2e
    .line 144
    .local v5, "count":I
    sget-object v16, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@30
    .line 220
    .end local v4    # "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .local v16, "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    :cond_0
    :goto_3
    sget-object v18, Llibcore/icu/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

    #@32
    monitor-enter v18

    #@33
    .line 222
    :try_start_0
    move-object/from16 v0, p0

    #@35
    move-object/from16 v1, p9

    #@37
    invoke-static {v0, v14, v1}, Llibcore/icu/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    #@3a
    move-result-object v7

    #@3b
    .line 223
    .local v7, "formatter":Landroid/icu/text/RelativeDateTimeFormatter;
    if-eqz v12, :cond_e

    #@3d
    .line 224
    int-to-double v0, v5

    #@3e
    move-wide/from16 v20, v0

    #@40
    move-wide/from16 v0, v20

    #@42
    move-object/from16 v2, v16

    #@44
    invoke-virtual {v7, v0, v1, v6, v2}, Landroid/icu/text/RelativeDateTimeFormatter;->format(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@47
    move-result-object v17

    #@48
    monitor-exit v18

    #@49
    return-object v17

    #@4a
    .line 118
    .end local v5    # "count":I
    .end local v6    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .end local v7    # "formatter":Landroid/icu/text/RelativeDateTimeFormatter;
    .end local v11    # "past":Z
    .end local v12    # "relative":Z
    .end local v14    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .end local v16    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    :cond_1
    const/4 v11, 0x0

    #@4b
    .restart local v11    # "past":Z
    goto :goto_0

    #@4c
    .line 124
    :cond_2
    sget-object v14, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@4e
    .restart local v14    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    goto :goto_1

    #@4f
    .line 131
    :cond_3
    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@51
    .restart local v6    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    goto :goto_2

    #@52
    .line 145
    .restart local v4    # "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .restart local v12    # "relative":Z
    :cond_4
    const-wide/32 v18, 0x36ee80

    #@55
    cmp-long v17, v8, v18

    #@57
    if-gez v17, :cond_5

    #@59
    const-wide/32 v18, 0x36ee80

    #@5c
    cmp-long v17, p6, v18

    #@5e
    if-gez v17, :cond_5

    #@60
    .line 146
    const-wide/32 v18, 0xea60

    #@63
    div-long v18, v8, v18

    #@65
    move-wide/from16 v0, v18

    #@67
    long-to-int v5, v0

    #@68
    .line 147
    .restart local v5    # "count":I
    sget-object v16, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@6a
    .restart local v16    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    goto :goto_3

    #@6b
    .line 148
    .end local v5    # "count":I
    .end local v16    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    :cond_5
    const-wide/32 v18, 0x5265c00

    #@6e
    cmp-long v17, v8, v18

    #@70
    if-gez v17, :cond_6

    #@72
    const-wide/32 v18, 0x5265c00

    #@75
    cmp-long v17, p6, v18

    #@77
    if-gez v17, :cond_6

    #@79
    .line 152
    const-wide/32 v18, 0x36ee80

    #@7c
    div-long v18, v8, v18

    #@7e
    move-wide/from16 v0, v18

    #@80
    long-to-int v5, v0

    #@81
    .line 153
    .restart local v5    # "count":I
    sget-object v16, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@83
    .restart local v16    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    goto :goto_3

    #@84
    .line 154
    .end local v5    # "count":I
    .end local v16    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    :cond_6
    const-wide/32 v18, 0x240c8400

    #@87
    cmp-long v17, v8, v18

    #@89
    if-gez v17, :cond_a

    #@8b
    const-wide/32 v18, 0x240c8400

    #@8e
    cmp-long v17, p6, v18

    #@90
    if-gez v17, :cond_a

    #@92
    .line 155
    invoke-static/range {p1 .. p5}, Llibcore/icu/RelativeDateTimeFormatter;->dayDistance(Landroid/icu/util/TimeZone;JJ)I

    #@95
    move-result v17

    #@96
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    #@99
    move-result v5

    #@9a
    .line 156
    .restart local v5    # "count":I
    sget-object v16, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@9c
    .line 158
    .restart local v16    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    const/16 v17, 0x2

    #@9e
    move/from16 v0, v17

    #@a0
    if-ne v5, v0, :cond_8

    #@a2
    .line 166
    if-eqz v11, :cond_7

    #@a4
    .line 167
    sget-object v18, Llibcore/icu/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

    #@a6
    monitor-enter v18

    #@a7
    .line 168
    :try_start_1
    move-object/from16 v0, p0

    #@a9
    move-object/from16 v1, p9

    #@ab
    invoke-static {v0, v14, v1}, Llibcore/icu/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    #@ae
    move-result-object v17

    #@af
    .line 170
    sget-object v19, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@b1
    .line 171
    sget-object v20, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@b3
    .line 168
    move-object/from16 v0, v17

    #@b5
    move-object/from16 v1, v19

    #@b7
    move-object/from16 v2, v20

    #@b9
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@bc
    move-result-object v13

    #@bd
    .local v13, "str":Ljava/lang/String;
    :goto_4
    monitor-exit v18

    #@be
    .line 181
    if-eqz v13, :cond_0

    #@c0
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    #@c3
    move-result v17

    #@c4
    if-nez v17, :cond_0

    #@c6
    .line 182
    return-object v13

    #@c7
    .line 167
    .end local v13    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v17

    #@c8
    monitor-exit v18

    #@c9
    throw v17

    #@ca
    .line 174
    :cond_7
    sget-object v18, Llibcore/icu/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

    #@cc
    monitor-enter v18

    #@cd
    .line 175
    :try_start_2
    move-object/from16 v0, p0

    #@cf
    move-object/from16 v1, p9

    #@d1
    invoke-static {v0, v14, v1}, Llibcore/icu/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    #@d4
    move-result-object v17

    #@d5
    .line 177
    sget-object v19, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@d7
    .line 178
    sget-object v20, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@d9
    .line 175
    move-object/from16 v0, v17

    #@db
    move-object/from16 v1, v19

    #@dd
    move-object/from16 v2, v20

    #@df
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@e2
    move-result-object v13

    #@e3
    .restart local v13    # "str":Ljava/lang/String;
    goto :goto_4

    #@e4
    .line 174
    .end local v13    # "str":Ljava/lang/String;
    :catchall_1
    move-exception v17

    #@e5
    monitor-exit v18

    #@e6
    throw v17

    #@e7
    .line 185
    :cond_8
    const/16 v17, 0x1

    #@e9
    move/from16 v0, v17

    #@eb
    if-ne v5, v0, :cond_9

    #@ed
    .line 187
    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@ef
    .line 188
    .local v4, "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    const/4 v12, 0x0

    #@f0
    goto/16 :goto_3

    #@f2
    .line 189
    .local v4, "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    :cond_9
    if-nez v5, :cond_0

    #@f4
    .line 191
    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@f6
    .line 192
    .local v4, "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@f8
    .line 193
    const/4 v12, 0x0

    #@f9
    goto/16 :goto_3

    #@fb
    .line 195
    .end local v5    # "count":I
    .end local v16    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .local v4, "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    :cond_a
    const-wide/32 v18, 0x240c8400

    #@fe
    cmp-long v17, p6, v18

    #@100
    if-nez v17, :cond_b

    #@102
    .line 196
    const-wide/32 v18, 0x240c8400

    #@105
    div-long v18, v8, v18

    #@107
    move-wide/from16 v0, v18

    #@109
    long-to-int v5, v0

    #@10a
    .line 197
    .restart local v5    # "count":I
    sget-object v16, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@10c
    .restart local v16    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    goto/16 :goto_3

    #@10e
    .line 199
    .end local v5    # "count":I
    .end local v16    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    :cond_b
    move-object/from16 v0, p1

    #@110
    move-object/from16 v1, p0

    #@112
    move-wide/from16 v2, p2

    #@114
    invoke-static {v0, v1, v2, v3}, Llibcore/icu/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    #@117
    move-result-object v15

    #@118
    .line 208
    .local v15, "timeCalendar":Landroid/icu/util/Calendar;
    and-int/lit8 v17, p8, 0xc

    #@11a
    if-nez v17, :cond_c

    #@11c
    .line 209
    move-object/from16 v0, p1

    #@11e
    move-object/from16 v1, p0

    #@120
    move-wide/from16 v2, p4

    #@122
    invoke-static {v0, v1, v2, v3}, Llibcore/icu/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    #@125
    move-result-object v10

    #@126
    .line 211
    .local v10, "nowCalendar":Landroid/icu/util/Calendar;
    const/16 v17, 0x1

    #@128
    move/from16 v0, v17

    #@12a
    invoke-virtual {v15, v0}, Landroid/icu/util/Calendar;->get(I)I

    #@12d
    move-result v17

    #@12e
    const/16 v18, 0x1

    #@130
    move/from16 v0, v18

    #@132
    invoke-virtual {v10, v0}, Landroid/icu/util/Calendar;->get(I)I

    #@135
    move-result v18

    #@136
    move/from16 v0, v17

    #@138
    move/from16 v1, v18

    #@13a
    if-eq v0, v1, :cond_d

    #@13c
    .line 212
    or-int/lit8 p8, p8, 0x4

    #@13e
    .line 217
    .end local v10    # "nowCalendar":Landroid/icu/util/Calendar;
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    #@140
    move/from16 v1, p8

    #@142
    move-object/from16 v2, p9

    #@144
    invoke-static {v0, v15, v1, v2}, Llibcore/icu/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    #@147
    move-result-object v17

    #@148
    return-object v17

    #@149
    .line 214
    .restart local v10    # "nowCalendar":Landroid/icu/util/Calendar;
    :cond_d
    or-int/lit8 p8, p8, 0x8

    #@14b
    goto :goto_5

    #@14c
    .line 226
    .end local v4    # "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .end local v10    # "nowCalendar":Landroid/icu/util/Calendar;
    .end local v15    # "timeCalendar":Landroid/icu/util/Calendar;
    .restart local v5    # "count":I
    .restart local v7    # "formatter":Landroid/icu/text/RelativeDateTimeFormatter;
    .restart local v16    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    :cond_e
    :try_start_3
    invoke-virtual {v7, v6, v4}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@14f
    move-result-object v17

    #@150
    monitor-exit v18

    #@151
    return-object v17

    #@152
    .line 220
    .end local v7    # "formatter":Landroid/icu/text/RelativeDateTimeFormatter;
    :catchall_2
    move-exception v17

    #@153
    monitor-exit v18

    #@154
    throw v17
.end method

.method public static getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJI)Ljava/lang/String;
    .locals 10
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "time"    # J
    .param p4, "now"    # J
    .param p6, "minResolution"    # J
    .param p8, "flags"    # I

    #@0
    .prologue
    .line 95
    sget-object v9, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@2
    .local v9, "displayContext":Landroid/icu/text/DisplayContext;
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-wide v2, p2

    #@5
    move-wide v4, p4

    #@6
    move-wide/from16 v6, p6

    #@8
    move/from16 v8, p8

    #@a
    .line 96
    invoke-static/range {v0 .. v9}, Llibcore/icu/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;
    .locals 10
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "time"    # J
    .param p4, "now"    # J
    .param p6, "minResolution"    # J
    .param p8, "flags"    # I
    .param p9, "displayContext"    # Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    .line 101
    if-nez p0, :cond_0

    #@2
    .line 102
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "locale == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 104
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 105
    new-instance v2, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v3, "tz == null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 107
    :cond_1
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@19
    move-result-object v0

    #@1a
    .line 108
    .local v0, "icuLocale":Landroid/icu/util/ULocale;
    invoke-static {p1}, Llibcore/icu/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "icuTimeZone":Landroid/icu/util/TimeZone;
    move-wide v2, p2

    #@1f
    move-wide v4, p4

    #@20
    move-wide/from16 v6, p6

    #@22
    move/from16 v8, p8

    #@24
    move-object/from16 v9, p9

    #@26
    .line 109
    invoke-static/range {v0 .. v9}, Llibcore/icu/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    return-object v2
.end method

.method private static julianDay(Landroid/icu/util/TimeZone;J)I
    .locals 5
    .param p0, "icuTimeZone"    # Landroid/icu/util/TimeZone;
    .param p1, "time"    # J

    #@0
    .prologue
    .line 357
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    #@3
    move-result v2

    #@4
    int-to-long v2, v2

    #@5
    add-long v0, p1, v2

    #@7
    .line 358
    .local v0, "utcMs":J
    const-wide/32 v2, 0x5265c00

    #@a
    div-long v2, v0, v2

    #@c
    long-to-int v2, v2

    #@d
    const v3, 0x253d8c    # 3.419992E-39f

    #@10
    add-int/2addr v2, v3

    #@11
    return v2
.end method
