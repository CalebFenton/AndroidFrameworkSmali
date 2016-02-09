.class Landroid/text/format/TimeFormatter;
.super Ljava/lang/Object;
.source "TimeFormatter.java"


# static fields
.field private static final DAYSPERLYEAR:I = 0x16e

.field private static final DAYSPERNYEAR:I = 0x16d

.field private static final DAYSPERWEEK:I = 0x7

.field private static final FORCE_LOWER_CASE:I = -0x1

.field private static final HOURSPERDAY:I = 0x18

.field private static final MINSPERHOUR:I = 0x3c

.field private static final MONSPERYEAR:I = 0xc

.field private static final SECSPERMIN:I = 0x3c

.field private static sDateOnlyFormat:Ljava/lang/String;

.field private static sDateTimeFormat:Ljava/lang/String;

.field private static sLocale:Ljava/util/Locale;

.field private static sLocaleData:Llibcore/icu/LocaleData;

.field private static sTimeOnlyFormat:Ljava/lang/String;


# instance fields
.field private final dateOnlyFormat:Ljava/lang/String;

.field private final dateTimeFormat:Ljava/lang/String;

.field private final localeData:Llibcore/icu/LocaleData;

.field private numberFormatter:Ljava/util/Formatter;

.field private outputBuilder:Ljava/lang/StringBuilder;

.field private final timeOnlyFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    const-class v3, Landroid/text/format/TimeFormatter;

    #@5
    monitor-enter v3

    #@6
    .line 68
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@9
    move-result-object v0

    #@a
    .line 70
    .local v0, "locale":Ljava/util/Locale;
    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    #@c
    if-eqz v2, :cond_0

    #@e
    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    #@10
    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 80
    :goto_0
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    #@18
    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    #@1a
    .line 81
    sget-object v2, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    #@1c
    iput-object v2, p0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    #@1e
    .line 82
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    #@20
    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    #@22
    .line 83
    sget-object v2, Landroid/text/format/TimeFormatter;->sLocaleData:Llibcore/icu/LocaleData;

    #@24
    iput-object v2, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v3

    #@27
    .line 66
    return-void

    #@28
    .line 71
    :cond_0
    :try_start_1
    sput-object v0, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    #@2a
    .line 72
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@2d
    move-result-object v2

    #@2e
    sput-object v2, Landroid/text/format/TimeFormatter;->sLocaleData:Llibcore/icu/LocaleData;

    #@30
    .line 74
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@33
    move-result-object v1

    #@34
    .line 75
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x1040051

    #@37
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    sput-object v2, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    #@3d
    .line 76
    const v2, 0x1040050

    #@40
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    sput-object v2, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    #@46
    .line 77
    const v2, 0x1040052

    #@49
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    sput-object v2, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    goto :goto_0

    #@50
    .line 67
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "r":Landroid/content/res/Resources;
    :catchall_0
    move-exception v2

    #@51
    monitor-exit v3

    #@52
    throw v2
.end method

.method private static brokenIsLower(C)Z
    .locals 2
    .param p0, "toCheck"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 475
    const/16 v1, 0x61

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const/16 v1, 0x7a

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private static brokenIsUpper(C)Z
    .locals 2
    .param p0, "toCheck"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 467
    const/16 v1, 0x41

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const/16 v1, 0x5a

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private static brokenToLower(C)C
    .locals 1
    .param p0, "input"    # C

    #@0
    .prologue
    .line 483
    const/16 v0, 0x41

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x5a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 484
    add-int/lit8 v0, p0, -0x41

    #@a
    add-int/lit8 v0, v0, 0x61

    #@c
    int-to-char v0, v0

    #@d
    return v0

    #@e
    .line 486
    :cond_0
    return p0
.end method

.method private static brokenToUpper(C)C
    .locals 1
    .param p0, "input"    # C

    #@0
    .prologue
    .line 494
    const/16 v0, 0x61

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x7a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 495
    add-int/lit8 v0, p0, -0x61

    #@a
    add-int/lit8 v0, v0, 0x41

    #@c
    int-to-char v0, v0

    #@d
    return v0

    #@e
    .line 497
    :cond_0
    return p0
.end method

.method private formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "wallTime"    # Llibcore/util/ZoneInfo$WallTime;
    .param p3, "zoneInfo"    # Llibcore/util/ZoneInfo;

    #@0
    .prologue
    .line 132
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    #@3
    move-result-object v1

    #@4
    .line 133
    .local v1, "formatBuffer":Ljava/nio/CharBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    #@7
    move-result v3

    #@8
    if-lez v3, :cond_2

    #@a
    .line 134
    const/4 v2, 0x1

    #@b
    .line 135
    .local v2, "outputCurrentChar":Z
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    #@e
    move-result v3

    #@f
    invoke-virtual {v1, v3}, Ljava/nio/CharBuffer;->get(I)C

    #@12
    move-result v0

    #@13
    .line 136
    .local v0, "currentChar":C
    const/16 v3, 0x25

    #@15
    if-ne v0, v3, :cond_0

    #@17
    .line 137
    invoke-direct {p0, v1, p2, p3}, Landroid/text/format/TimeFormatter;->handleToken(Ljava/nio/CharBuffer;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Z

    #@1a
    move-result v2

    #@1b
    .line 139
    .end local v2    # "outputCurrentChar":Z
    :cond_0
    if-eqz v2, :cond_1

    #@1d
    .line 140
    iget-object v3, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    #@1f
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    #@22
    move-result v4

    #@23
    invoke-virtual {v1, v4}, Ljava/nio/CharBuffer;->get(I)C

    #@26
    move-result v4

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    .line 142
    :cond_1
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    #@2d
    move-result v3

    #@2e
    add-int/lit8 v3, v3, 0x1

    #@30
    invoke-virtual {v1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@33
    goto :goto_0

    #@34
    .line 131
    .end local v0    # "currentChar":C
    :cond_2
    return-void
.end method

.method private static getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "modifier"    # I
    .param p1, "normal"    # Ljava/lang/String;
    .param p2, "underscore"    # Ljava/lang/String;
    .param p3, "dash"    # Ljava/lang/String;
    .param p4, "zero"    # Ljava/lang/String;

    #@0
    .prologue
    .line 447
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 455
    return-object p1

    #@4
    .line 449
    :sswitch_0
    return-object p2

    #@5
    .line 451
    :sswitch_1
    return-object p3

    #@6
    .line 453
    :sswitch_2
    return-object p4

    #@7
    .line 447
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_1
        0x30 -> :sswitch_2
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private handleToken(Ljava/nio/CharBuffer;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Z
    .locals 27
    .param p1, "formatBuffer"    # Ljava/nio/CharBuffer;
    .param p2, "wallTime"    # Llibcore/util/ZoneInfo$WallTime;
    .param p3, "zoneInfo"    # Llibcore/util/ZoneInfo;

    #@0
    .prologue
    .line 150
    const/4 v11, 0x0

    #@1
    .line 151
    .local v11, "modifier":I
    :goto_0
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->remaining()I

    #@4
    move-result v22

    #@5
    const/16 v23, 0x1

    #@7
    move/from16 v0, v22

    #@9
    move/from16 v1, v23

    #@b
    if-le v0, v1, :cond_1c

    #@d
    .line 153
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    #@10
    move-result v22

    #@11
    add-int/lit8 v22, v22, 0x1

    #@13
    move-object/from16 v0, p1

    #@15
    move/from16 v1, v22

    #@17
    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@1a
    .line 154
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    #@1d
    move-result v22

    #@1e
    move-object/from16 v0, p1

    #@20
    move/from16 v1, v22

    #@22
    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->get(I)C

    #@25
    move-result v5

    #@26
    .line 155
    .local v5, "currentChar":C
    packed-switch v5, :pswitch_data_0

    #@29
    .line 383
    :pswitch_1
    const/16 v22, 0x1

    #@2b
    return v22

    #@2c
    .line 157
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    #@2f
    move-result v22

    #@30
    if-ltz v22, :cond_0

    #@32
    .line 158
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    #@35
    move-result v22

    #@36
    const/16 v23, 0x7

    #@38
    move/from16 v0, v22

    #@3a
    move/from16 v1, v23

    #@3c
    if-lt v0, v1, :cond_1

    #@3e
    .line 159
    :cond_0
    const-string/jumbo v22, "?"

    #@41
    .line 157
    :goto_1
    move-object/from16 v0, p0

    #@43
    move-object/from16 v1, v22

    #@45
    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    #@48
    .line 161
    const/16 v22, 0x0

    #@4a
    return v22

    #@4b
    .line 159
    :cond_1
    move-object/from16 v0, p0

    #@4d
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    #@4f
    move-object/from16 v22, v0

    #@51
    move-object/from16 v0, v22

    #@53
    iget-object v0, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    #@55
    move-object/from16 v22, v0

    #@57
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    #@5a
    move-result v23

    #@5b
    add-int/lit8 v23, v23, 0x1

    #@5d
    aget-object v22, v22, v23

    #@5f
    goto :goto_1

    #@60
    .line 163
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    #@63
    move-result v22

    #@64
    if-ltz v22, :cond_2

    #@66
    .line 164
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    #@69
    move-result v22

    #@6a
    const/16 v23, 0x7

    #@6c
    move/from16 v0, v22

    #@6e
    move/from16 v1, v23

    #@70
    if-lt v0, v1, :cond_3

    #@72
    .line 165
    :cond_2
    const-string/jumbo v22, "?"

    #@75
    .line 163
    :goto_2
    move-object/from16 v0, p0

    #@77
    move-object/from16 v1, v22

    #@79
    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    #@7c
    .line 167
    const/16 v22, 0x0

    #@7e
    return v22

    #@7f
    .line 165
    :cond_3
    move-object/from16 v0, p0

    #@81
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    #@83
    move-object/from16 v22, v0

    #@85
    move-object/from16 v0, v22

    #@87
    iget-object v0, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    #@89
    move-object/from16 v22, v0

    #@8b
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    #@8e
    move-result v23

    #@8f
    add-int/lit8 v23, v23, 0x1

    #@91
    aget-object v22, v22, v23

    #@93
    goto :goto_2

    #@94
    .line 169
    :pswitch_4
    const/16 v22, 0x2d

    #@96
    move/from16 v0, v22

    #@98
    if-ne v11, v0, :cond_6

    #@9a
    .line 170
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    #@9d
    move-result v22

    #@9e
    if-ltz v22, :cond_4

    #@a0
    .line 171
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    #@a3
    move-result v22

    #@a4
    const/16 v23, 0xc

    #@a6
    move/from16 v0, v22

    #@a8
    move/from16 v1, v23

    #@aa
    if-lt v0, v1, :cond_5

    #@ac
    .line 172
    :cond_4
    const-string/jumbo v22, "?"

    #@af
    .line 170
    :goto_3
    move-object/from16 v0, p0

    #@b1
    move-object/from16 v1, v22

    #@b3
    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    #@b6
    .line 181
    :goto_4
    const/16 v22, 0x0

    #@b8
    return v22

    #@b9
    .line 173
    :cond_5
    move-object/from16 v0, p0

    #@bb
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    #@bd
    move-object/from16 v22, v0

    #@bf
    move-object/from16 v0, v22

    #@c1
    iget-object v0, v0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    #@c3
    move-object/from16 v22, v0

    #@c5
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    #@c8
    move-result v23

    #@c9
    aget-object v22, v22, v23

    #@cb
    goto :goto_3

    #@cc
    .line 176
    :cond_6
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    #@cf
    move-result v22

    #@d0
    if-ltz v22, :cond_7

    #@d2
    .line 177
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    #@d5
    move-result v22

    #@d6
    const/16 v23, 0xc

    #@d8
    move/from16 v0, v22

    #@da
    move/from16 v1, v23

    #@dc
    if-lt v0, v1, :cond_8

    #@de
    .line 178
    :cond_7
    const-string/jumbo v22, "?"

    #@e1
    .line 176
    :goto_5
    move-object/from16 v0, p0

    #@e3
    move-object/from16 v1, v22

    #@e5
    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    #@e8
    goto :goto_4

    #@e9
    .line 178
    :cond_8
    move-object/from16 v0, p0

    #@eb
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    #@ed
    move-object/from16 v22, v0

    #@ef
    move-object/from16 v0, v22

    #@f1
    iget-object v0, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    #@f3
    move-object/from16 v22, v0

    #@f5
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    #@f8
    move-result v23

    #@f9
    aget-object v22, v22, v23

    #@fb
    goto :goto_5

    #@fc
    .line 184
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    #@ff
    move-result v22

    #@100
    if-ltz v22, :cond_9

    #@102
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    #@105
    move-result v22

    #@106
    const/16 v23, 0xc

    #@108
    move/from16 v0, v22

    #@10a
    move/from16 v1, v23

    #@10c
    if-lt v0, v1, :cond_a

    #@10e
    .line 185
    :cond_9
    const-string/jumbo v22, "?"

    #@111
    .line 184
    :goto_6
    move-object/from16 v0, p0

    #@113
    move-object/from16 v1, v22

    #@115
    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    #@118
    .line 187
    const/16 v22, 0x0

    #@11a
    return v22

    #@11b
    .line 185
    :cond_a
    move-object/from16 v0, p0

    #@11d
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    #@11f
    move-object/from16 v22, v0

    #@121
    move-object/from16 v0, v22

    #@123
    iget-object v0, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    #@125
    move-object/from16 v22, v0

    #@127
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    #@12a
    move-result v23

    #@12b
    aget-object v22, v22, v23

    #@12d
    goto :goto_6

    #@12e
    .line 189
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    #@131
    move-result v22

    #@132
    const/16 v23, 0x1

    #@134
    const/16 v24, 0x0

    #@136
    move-object/from16 v0, p0

    #@138
    move/from16 v1, v22

    #@13a
    move/from16 v2, v23

    #@13c
    move/from16 v3, v24

    #@13e
    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    #@141
    .line 190
    const/16 v22, 0x0

    #@143
    return v22

    #@144
    .line 192
    :pswitch_7
    move-object/from16 v0, p0

    #@146
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    #@148
    move-object/from16 v22, v0

    #@14a
    move-object/from16 v0, p0

    #@14c
    move-object/from16 v1, v22

    #@14e
    move-object/from16 v2, p2

    #@150
    move-object/from16 v3, p3

    #@152
    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    #@155
    .line 193
    const/16 v22, 0x0

    #@157
    return v22

    #@158
    .line 195
    :pswitch_8
    const-string/jumbo v22, "%m/%d/%y"

    #@15b
    move-object/from16 v0, p0

    #@15d
    move-object/from16 v1, v22

    #@15f
    move-object/from16 v2, p2

    #@161
    move-object/from16 v3, p3

    #@163
    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    #@166
    .line 196
    const/16 v22, 0x0

    #@168
    return v22

    #@169
    .line 198
    :pswitch_9
    move-object/from16 v0, p0

    #@16b
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@16d
    move-object/from16 v22, v0

    #@16f
    const-string/jumbo v23, "%02d"

    #@172
    const-string/jumbo v24, "%2d"

    #@175
    const-string/jumbo v25, "%d"

    #@178
    const-string/jumbo v26, "%02d"

    #@17b
    move-object/from16 v0, v23

    #@17d
    move-object/from16 v1, v24

    #@17f
    move-object/from16 v2, v25

    #@181
    move-object/from16 v3, v26

    #@183
    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@186
    move-result-object v23

    #@187
    const/16 v24, 0x1

    #@189
    move/from16 v0, v24

    #@18b
    new-array v0, v0, [Ljava/lang/Object;

    #@18d
    move-object/from16 v24, v0

    #@18f
    .line 199
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    #@192
    move-result v25

    #@193
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@196
    move-result-object v25

    #@197
    const/16 v26, 0x0

    #@199
    aput-object v25, v24, v26

    #@19b
    .line 198
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@19e
    .line 200
    const/16 v22, 0x0

    #@1a0
    return v22

    #@1a1
    .line 210
    :pswitch_a
    move v11, v5

    #@1a2
    .line 211
    goto/16 :goto_0

    #@1a4
    .line 213
    :pswitch_b
    move-object/from16 v0, p0

    #@1a6
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@1a8
    move-object/from16 v22, v0

    #@1aa
    const-string/jumbo v23, "%2d"

    #@1ad
    const-string/jumbo v24, "%2d"

    #@1b0
    const-string/jumbo v25, "%d"

    #@1b3
    const-string/jumbo v26, "%02d"

    #@1b6
    move-object/from16 v0, v23

    #@1b8
    move-object/from16 v1, v24

    #@1ba
    move-object/from16 v2, v25

    #@1bc
    move-object/from16 v3, v26

    #@1be
    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c1
    move-result-object v23

    #@1c2
    const/16 v24, 0x1

    #@1c4
    move/from16 v0, v24

    #@1c6
    new-array v0, v0, [Ljava/lang/Object;

    #@1c8
    move-object/from16 v24, v0

    #@1ca
    .line 214
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    #@1cd
    move-result v25

    #@1ce
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d1
    move-result-object v25

    #@1d2
    const/16 v26, 0x0

    #@1d4
    aput-object v25, v24, v26

    #@1d6
    .line 213
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@1d9
    .line 215
    const/16 v22, 0x0

    #@1db
    return v22

    #@1dc
    .line 217
    :pswitch_c
    const-string/jumbo v22, "%Y-%m-%d"

    #@1df
    move-object/from16 v0, p0

    #@1e1
    move-object/from16 v1, v22

    #@1e3
    move-object/from16 v2, p2

    #@1e5
    move-object/from16 v3, p3

    #@1e7
    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    #@1ea
    .line 218
    const/16 v22, 0x0

    #@1ec
    return v22

    #@1ed
    .line 220
    :pswitch_d
    move-object/from16 v0, p0

    #@1ef
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@1f1
    move-object/from16 v22, v0

    #@1f3
    const-string/jumbo v23, "%02d"

    #@1f6
    const-string/jumbo v24, "%2d"

    #@1f9
    const-string/jumbo v25, "%d"

    #@1fc
    const-string/jumbo v26, "%02d"

    #@1ff
    move-object/from16 v0, v23

    #@201
    move-object/from16 v1, v24

    #@203
    move-object/from16 v2, v25

    #@205
    move-object/from16 v3, v26

    #@207
    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@20a
    move-result-object v23

    #@20b
    const/16 v24, 0x1

    #@20d
    move/from16 v0, v24

    #@20f
    new-array v0, v0, [Ljava/lang/Object;

    #@211
    move-object/from16 v24, v0

    #@213
    .line 221
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    #@216
    move-result v25

    #@217
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21a
    move-result-object v25

    #@21b
    const/16 v26, 0x0

    #@21d
    aput-object v25, v24, v26

    #@21f
    .line 220
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@222
    .line 222
    const/16 v22, 0x0

    #@224
    return v22

    #@225
    .line 224
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    #@228
    move-result v22

    #@229
    rem-int/lit8 v22, v22, 0xc

    #@22b
    if-eqz v22, :cond_b

    #@22d
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    #@230
    move-result v22

    #@231
    rem-int/lit8 v8, v22, 0xc

    #@233
    .line 225
    .local v8, "hour":I
    :goto_7
    move-object/from16 v0, p0

    #@235
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@237
    move-object/from16 v22, v0

    #@239
    const-string/jumbo v23, "%02d"

    #@23c
    const-string/jumbo v24, "%2d"

    #@23f
    const-string/jumbo v25, "%d"

    #@242
    const-string/jumbo v26, "%02d"

    #@245
    move-object/from16 v0, v23

    #@247
    move-object/from16 v1, v24

    #@249
    move-object/from16 v2, v25

    #@24b
    move-object/from16 v3, v26

    #@24d
    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@250
    move-result-object v23

    #@251
    const/16 v24, 0x1

    #@253
    move/from16 v0, v24

    #@255
    new-array v0, v0, [Ljava/lang/Object;

    #@257
    move-object/from16 v24, v0

    #@259
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25c
    move-result-object v25

    #@25d
    const/16 v26, 0x0

    #@25f
    aput-object v25, v24, v26

    #@261
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@264
    .line 226
    const/16 v22, 0x0

    #@266
    return v22

    #@267
    .line 224
    .end local v8    # "hour":I
    :cond_b
    const/16 v8, 0xc

    #@269
    .restart local v8    # "hour":I
    goto :goto_7

    #@26a
    .line 228
    .end local v8    # "hour":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    #@26d
    move-result v22

    #@26e
    add-int/lit8 v21, v22, 0x1

    #@270
    .line 229
    .local v21, "yearDay":I
    move-object/from16 v0, p0

    #@272
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@274
    move-object/from16 v22, v0

    #@276
    const-string/jumbo v23, "%03d"

    #@279
    const-string/jumbo v24, "%3d"

    #@27c
    const-string/jumbo v25, "%d"

    #@27f
    const-string/jumbo v26, "%03d"

    #@282
    move-object/from16 v0, v23

    #@284
    move-object/from16 v1, v24

    #@286
    move-object/from16 v2, v25

    #@288
    move-object/from16 v3, v26

    #@28a
    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@28d
    move-result-object v23

    #@28e
    const/16 v24, 0x1

    #@290
    move/from16 v0, v24

    #@292
    new-array v0, v0, [Ljava/lang/Object;

    #@294
    move-object/from16 v24, v0

    #@296
    .line 230
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@299
    move-result-object v25

    #@29a
    const/16 v26, 0x0

    #@29c
    aput-object v25, v24, v26

    #@29e
    .line 229
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@2a1
    .line 231
    const/16 v22, 0x0

    #@2a3
    return v22

    #@2a4
    .line 233
    .end local v21    # "yearDay":I
    :pswitch_10
    move-object/from16 v0, p0

    #@2a6
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@2a8
    move-object/from16 v22, v0

    #@2aa
    const-string/jumbo v23, "%2d"

    #@2ad
    const-string/jumbo v24, "%2d"

    #@2b0
    const-string/jumbo v25, "%d"

    #@2b3
    const-string/jumbo v26, "%02d"

    #@2b6
    move-object/from16 v0, v23

    #@2b8
    move-object/from16 v1, v24

    #@2ba
    move-object/from16 v2, v25

    #@2bc
    move-object/from16 v3, v26

    #@2be
    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2c1
    move-result-object v23

    #@2c2
    const/16 v24, 0x1

    #@2c4
    move/from16 v0, v24

    #@2c6
    new-array v0, v0, [Ljava/lang/Object;

    #@2c8
    move-object/from16 v24, v0

    #@2ca
    .line 234
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    #@2cd
    move-result v25

    #@2ce
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d1
    move-result-object v25

    #@2d2
    const/16 v26, 0x0

    #@2d4
    aput-object v25, v24, v26

    #@2d6
    .line 233
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@2d9
    .line 235
    const/16 v22, 0x0

    #@2db
    return v22

    #@2dc
    .line 237
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    #@2df
    move-result v22

    #@2e0
    rem-int/lit8 v22, v22, 0xc

    #@2e2
    if-eqz v22, :cond_c

    #@2e4
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    #@2e7
    move-result v22

    #@2e8
    rem-int/lit8 v13, v22, 0xc

    #@2ea
    .line 238
    .local v13, "n2":I
    :goto_8
    move-object/from16 v0, p0

    #@2ec
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@2ee
    move-object/from16 v22, v0

    #@2f0
    const-string/jumbo v23, "%2d"

    #@2f3
    const-string/jumbo v24, "%2d"

    #@2f6
    const-string/jumbo v25, "%d"

    #@2f9
    const-string/jumbo v26, "%02d"

    #@2fc
    move-object/from16 v0, v23

    #@2fe
    move-object/from16 v1, v24

    #@300
    move-object/from16 v2, v25

    #@302
    move-object/from16 v3, v26

    #@304
    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@307
    move-result-object v23

    #@308
    const/16 v24, 0x1

    #@30a
    move/from16 v0, v24

    #@30c
    new-array v0, v0, [Ljava/lang/Object;

    #@30e
    move-object/from16 v24, v0

    #@310
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@313
    move-result-object v25

    #@314
    const/16 v26, 0x0

    #@316
    aput-object v25, v24, v26

    #@318
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@31b
    .line 239
    const/16 v22, 0x0

    #@31d
    return v22

    #@31e
    .line 237
    .end local v13    # "n2":I
    :cond_c
    const/16 v13, 0xc

    #@320
    .restart local v13    # "n2":I
    goto :goto_8

    #@321
    .line 241
    .end local v13    # "n2":I
    :pswitch_12
    move-object/from16 v0, p0

    #@323
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@325
    move-object/from16 v22, v0

    #@327
    const-string/jumbo v23, "%02d"

    #@32a
    const-string/jumbo v24, "%2d"

    #@32d
    const-string/jumbo v25, "%d"

    #@330
    const-string/jumbo v26, "%02d"

    #@333
    move-object/from16 v0, v23

    #@335
    move-object/from16 v1, v24

    #@337
    move-object/from16 v2, v25

    #@339
    move-object/from16 v3, v26

    #@33b
    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@33e
    move-result-object v23

    #@33f
    const/16 v24, 0x1

    #@341
    move/from16 v0, v24

    #@343
    new-array v0, v0, [Ljava/lang/Object;

    #@345
    move-object/from16 v24, v0

    #@347
    .line 242
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    #@34a
    move-result v25

    #@34b
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34e
    move-result-object v25

    #@34f
    const/16 v26, 0x0

    #@351
    aput-object v25, v24, v26

    #@353
    .line 241
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@356
    .line 243
    const/16 v22, 0x0

    #@358
    return v22

    #@359
    .line 245
    :pswitch_13
    move-object/from16 v0, p0

    #@35b
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@35d
    move-object/from16 v22, v0

    #@35f
    const-string/jumbo v23, "%02d"

    #@362
    const-string/jumbo v24, "%2d"

    #@365
    const-string/jumbo v25, "%d"

    #@368
    const-string/jumbo v26, "%02d"

    #@36b
    move-object/from16 v0, v23

    #@36d
    move-object/from16 v1, v24

    #@36f
    move-object/from16 v2, v25

    #@371
    move-object/from16 v3, v26

    #@373
    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@376
    move-result-object v23

    #@377
    const/16 v24, 0x1

    #@379
    move/from16 v0, v24

    #@37b
    new-array v0, v0, [Ljava/lang/Object;

    #@37d
    move-object/from16 v24, v0

    #@37f
    .line 246
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    #@382
    move-result v25

    #@383
    add-int/lit8 v25, v25, 0x1

    #@385
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@388
    move-result-object v25

    #@389
    const/16 v26, 0x0

    #@38b
    aput-object v25, v24, v26

    #@38d
    .line 245
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@390
    .line 247
    const/16 v22, 0x0

    #@392
    return v22

    #@393
    .line 249
    :pswitch_14
    move-object/from16 v0, p0

    #@395
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    #@397
    move-object/from16 v22, v0

    #@399
    const/16 v23, 0xa

    #@39b
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39e
    .line 250
    const/16 v22, 0x0

    #@3a0
    return v22

    #@3a1
    .line 252
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    #@3a4
    move-result v22

    #@3a5
    const/16 v23, 0xc

    #@3a7
    move/from16 v0, v22

    #@3a9
    move/from16 v1, v23

    #@3ab
    if-lt v0, v1, :cond_d

    #@3ad
    move-object/from16 v0, p0

    #@3af
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    #@3b1
    move-object/from16 v22, v0

    #@3b3
    move-object/from16 v0, v22

    #@3b5
    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    #@3b7
    move-object/from16 v22, v0

    #@3b9
    const/16 v23, 0x1

    #@3bb
    aget-object v22, v22, v23

    #@3bd
    :goto_9
    move-object/from16 v0, p0

    #@3bf
    move-object/from16 v1, v22

    #@3c1
    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    #@3c4
    .line 254
    const/16 v22, 0x0

    #@3c6
    return v22

    #@3c7
    .line 253
    :cond_d
    move-object/from16 v0, p0

    #@3c9
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    #@3cb
    move-object/from16 v22, v0

    #@3cd
    move-object/from16 v0, v22

    #@3cf
    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    #@3d1
    move-object/from16 v22, v0

    #@3d3
    const/16 v23, 0x0

    #@3d5
    aget-object v22, v22, v23

    #@3d7
    goto :goto_9

    #@3d8
    .line 256
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    #@3db
    move-result v22

    #@3dc
    const/16 v23, 0xc

    #@3de
    move/from16 v0, v22

    #@3e0
    move/from16 v1, v23

    #@3e2
    if-lt v0, v1, :cond_e

    #@3e4
    move-object/from16 v0, p0

    #@3e6
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    #@3e8
    move-object/from16 v22, v0

    #@3ea
    move-object/from16 v0, v22

    #@3ec
    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    #@3ee
    move-object/from16 v22, v0

    #@3f0
    const/16 v23, 0x1

    #@3f2
    aget-object v22, v22, v23

    #@3f4
    .line 257
    :goto_a
    const/16 v23, -0x1

    #@3f6
    .line 256
    move-object/from16 v0, p0

    #@3f8
    move-object/from16 v1, v22

    #@3fa
    move/from16 v2, v23

    #@3fc
    invoke-direct {v0, v1, v2}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    #@3ff
    .line 258
    const/16 v22, 0x0

    #@401
    return v22

    #@402
    .line 257
    :cond_e
    move-object/from16 v0, p0

    #@404
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    #@406
    move-object/from16 v22, v0

    #@408
    move-object/from16 v0, v22

    #@40a
    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    #@40c
    move-object/from16 v22, v0

    #@40e
    const/16 v23, 0x0

    #@410
    aget-object v22, v22, v23

    #@412
    goto :goto_a

    #@413
    .line 260
    :pswitch_17
    const-string/jumbo v22, "%H:%M"

    #@416
    move-object/from16 v0, p0

    #@418
    move-object/from16 v1, v22

    #@41a
    move-object/from16 v2, p2

    #@41c
    move-object/from16 v3, p3

    #@41e
    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    #@421
    .line 261
    const/16 v22, 0x0

    #@423
    return v22

    #@424
    .line 263
    :pswitch_18
    const-string/jumbo v22, "%I:%M:%S %p"

    #@427
    move-object/from16 v0, p0

    #@429
    move-object/from16 v1, v22

    #@42b
    move-object/from16 v2, p2

    #@42d
    move-object/from16 v3, p3

    #@42f
    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    #@432
    .line 264
    const/16 v22, 0x0

    #@434
    return v22

    #@435
    .line 266
    :pswitch_19
    move-object/from16 v0, p0

    #@437
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@439
    move-object/from16 v22, v0

    #@43b
    const-string/jumbo v23, "%02d"

    #@43e
    const-string/jumbo v24, "%2d"

    #@441
    const-string/jumbo v25, "%d"

    #@444
    const-string/jumbo v26, "%02d"

    #@447
    move-object/from16 v0, v23

    #@449
    move-object/from16 v1, v24

    #@44b
    move-object/from16 v2, v25

    #@44d
    move-object/from16 v3, v26

    #@44f
    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@452
    move-result-object v23

    #@453
    const/16 v24, 0x1

    #@455
    move/from16 v0, v24

    #@457
    new-array v0, v0, [Ljava/lang/Object;

    #@459
    move-object/from16 v24, v0

    #@45b
    .line 267
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    #@45e
    move-result v25

    #@45f
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@462
    move-result-object v25

    #@463
    const/16 v26, 0x0

    #@465
    aput-object v25, v24, v26

    #@467
    .line 266
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@46a
    .line 268
    const/16 v22, 0x0

    #@46c
    return v22

    #@46d
    .line 270
    :pswitch_1a
    invoke-virtual/range {p2 .. p3}, Llibcore/util/ZoneInfo$WallTime;->mktime(Llibcore/util/ZoneInfo;)I

    #@470
    move-result v15

    #@471
    .line 271
    .local v15, "timeInSeconds":I
    move-object/from16 v0, p0

    #@473
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    #@475
    move-object/from16 v22, v0

    #@477
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@47a
    move-result-object v23

    #@47b
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47e
    .line 272
    const/16 v22, 0x0

    #@480
    return v22

    #@481
    .line 274
    .end local v15    # "timeInSeconds":I
    :pswitch_1b
    const-string/jumbo v22, "%H:%M:%S"

    #@484
    move-object/from16 v0, p0

    #@486
    move-object/from16 v1, v22

    #@488
    move-object/from16 v2, p2

    #@48a
    move-object/from16 v3, p3

    #@48c
    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    #@48f
    .line 275
    const/16 v22, 0x0

    #@491
    return v22

    #@492
    .line 277
    :pswitch_1c
    move-object/from16 v0, p0

    #@494
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    #@496
    move-object/from16 v22, v0

    #@498
    const/16 v23, 0x9

    #@49a
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@49d
    .line 278
    const/16 v22, 0x0

    #@49f
    return v22

    #@4a0
    .line 280
    :pswitch_1d
    move-object/from16 v0, p0

    #@4a2
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@4a4
    move-object/from16 v22, v0

    #@4a6
    const-string/jumbo v23, "%02d"

    #@4a9
    const-string/jumbo v24, "%2d"

    #@4ac
    const-string/jumbo v25, "%d"

    #@4af
    const-string/jumbo v26, "%02d"

    #@4b2
    move-object/from16 v0, v23

    #@4b4
    move-object/from16 v1, v24

    #@4b6
    move-object/from16 v2, v25

    #@4b8
    move-object/from16 v3, v26

    #@4ba
    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4bd
    move-result-object v23

    #@4be
    const/16 v24, 0x1

    #@4c0
    move/from16 v0, v24

    #@4c2
    new-array v0, v0, [Ljava/lang/Object;

    #@4c4
    move-object/from16 v24, v0

    #@4c6
    .line 281
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    #@4c9
    move-result v25

    #@4ca
    add-int/lit8 v25, v25, 0x7

    #@4cc
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    #@4cf
    move-result v26

    #@4d0
    sub-int v25, v25, v26

    #@4d2
    div-int/lit8 v25, v25, 0x7

    #@4d4
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d7
    move-result-object v25

    #@4d8
    const/16 v26, 0x0

    #@4da
    aput-object v25, v24, v26

    #@4dc
    .line 280
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@4df
    .line 283
    const/16 v22, 0x0

    #@4e1
    return v22

    #@4e2
    .line 285
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    #@4e5
    move-result v22

    #@4e6
    if-nez v22, :cond_f

    #@4e8
    const/4 v6, 0x7

    #@4e9
    .line 286
    .local v6, "day":I
    :goto_b
    move-object/from16 v0, p0

    #@4eb
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@4ed
    move-object/from16 v22, v0

    #@4ef
    const-string/jumbo v23, "%d"

    #@4f2
    const/16 v24, 0x1

    #@4f4
    move/from16 v0, v24

    #@4f6
    new-array v0, v0, [Ljava/lang/Object;

    #@4f8
    move-object/from16 v24, v0

    #@4fa
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4fd
    move-result-object v25

    #@4fe
    const/16 v26, 0x0

    #@500
    aput-object v25, v24, v26

    #@502
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@505
    .line 287
    const/16 v22, 0x0

    #@507
    return v22

    #@508
    .line 285
    .end local v6    # "day":I
    :cond_f
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    #@50b
    move-result v6

    #@50c
    .restart local v6    # "day":I
    goto :goto_b

    #@50d
    .line 292
    .end local v6    # "day":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    #@510
    move-result v20

    #@511
    .line 293
    .local v20, "year":I
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    #@514
    move-result v19

    #@515
    .line 294
    .local v19, "yday":I
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    #@518
    move-result v18

    #@519
    .line 297
    .local v18, "wday":I
    :goto_c
    invoke-static/range {v20 .. v20}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    #@51c
    move-result v22

    #@51d
    if-eqz v22, :cond_11

    #@51f
    const/16 v10, 0x16e

    #@521
    .line 299
    .local v10, "len":I
    :goto_d
    add-int/lit8 v22, v19, 0xb

    #@523
    sub-int v22, v22, v18

    #@525
    rem-int/lit8 v22, v22, 0x7

    #@527
    add-int/lit8 v4, v22, -0x3

    #@529
    .line 301
    .local v4, "bot":I
    rem-int/lit8 v22, v10, 0x7

    #@52b
    sub-int v16, v4, v22

    #@52d
    .line 302
    .local v16, "top":I
    const/16 v22, -0x3

    #@52f
    move/from16 v0, v16

    #@531
    move/from16 v1, v22

    #@533
    if-ge v0, v1, :cond_10

    #@535
    .line 303
    add-int/lit8 v16, v16, 0x7

    #@537
    .line 305
    :cond_10
    add-int v16, v16, v10

    #@539
    .line 306
    move/from16 v0, v19

    #@53b
    move/from16 v1, v16

    #@53d
    if-lt v0, v1, :cond_12

    #@53f
    .line 307
    add-int/lit8 v20, v20, 0x1

    #@541
    .line 308
    const/16 v17, 0x1

    #@543
    .line 318
    .local v17, "w":I
    :goto_e
    const/16 v22, 0x56

    #@545
    move/from16 v0, v22

    #@547
    if-ne v5, v0, :cond_15

    #@549
    .line 319
    move-object/from16 v0, p0

    #@54b
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@54d
    move-object/from16 v22, v0

    #@54f
    const-string/jumbo v23, "%02d"

    #@552
    const-string/jumbo v24, "%2d"

    #@555
    const-string/jumbo v25, "%d"

    #@558
    const-string/jumbo v26, "%02d"

    #@55b
    move-object/from16 v0, v23

    #@55d
    move-object/from16 v1, v24

    #@55f
    move-object/from16 v2, v25

    #@561
    move-object/from16 v3, v26

    #@563
    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@566
    move-result-object v23

    #@567
    const/16 v24, 0x1

    #@569
    move/from16 v0, v24

    #@56b
    new-array v0, v0, [Ljava/lang/Object;

    #@56d
    move-object/from16 v24, v0

    #@56f
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@572
    move-result-object v25

    #@573
    const/16 v26, 0x0

    #@575
    aput-object v25, v24, v26

    #@577
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@57a
    .line 325
    :goto_f
    const/16 v22, 0x0

    #@57c
    return v22

    #@57d
    .line 297
    .end local v4    # "bot":I
    .end local v10    # "len":I
    .end local v16    # "top":I
    .end local v17    # "w":I
    :cond_11
    const/16 v10, 0x16d

    #@57f
    .restart local v10    # "len":I
    goto :goto_d

    #@580
    .line 311
    .restart local v4    # "bot":I
    .restart local v16    # "top":I
    :cond_12
    move/from16 v0, v19

    #@582
    if-lt v0, v4, :cond_13

    #@584
    .line 312
    sub-int v22, v19, v4

    #@586
    div-int/lit8 v22, v22, 0x7

    #@588
    add-int/lit8 v17, v22, 0x1

    #@58a
    .line 313
    .restart local v17    # "w":I
    goto :goto_e

    #@58b
    .line 315
    .end local v17    # "w":I
    :cond_13
    add-int/lit8 v20, v20, -0x1

    #@58d
    .line 316
    invoke-static/range {v20 .. v20}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    #@590
    move-result v22

    #@591
    if-eqz v22, :cond_14

    #@593
    const/16 v22, 0x16e

    #@595
    :goto_10
    add-int v19, v19, v22

    #@597
    goto :goto_c

    #@598
    :cond_14
    const/16 v22, 0x16d

    #@59a
    goto :goto_10

    #@59b
    .line 320
    .restart local v17    # "w":I
    :cond_15
    const/16 v22, 0x67

    #@59d
    move/from16 v0, v22

    #@59f
    if-ne v5, v0, :cond_16

    #@5a1
    .line 321
    const/16 v22, 0x0

    #@5a3
    const/16 v23, 0x1

    #@5a5
    move-object/from16 v0, p0

    #@5a7
    move/from16 v1, v20

    #@5a9
    move/from16 v2, v22

    #@5ab
    move/from16 v3, v23

    #@5ad
    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    #@5b0
    goto :goto_f

    #@5b1
    .line 323
    :cond_16
    const/16 v22, 0x1

    #@5b3
    const/16 v23, 0x1

    #@5b5
    move-object/from16 v0, p0

    #@5b7
    move/from16 v1, v20

    #@5b9
    move/from16 v2, v22

    #@5bb
    move/from16 v3, v23

    #@5bd
    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    #@5c0
    goto :goto_f

    #@5c1
    .line 328
    .end local v4    # "bot":I
    .end local v10    # "len":I
    .end local v16    # "top":I
    .end local v17    # "w":I
    .end local v18    # "wday":I
    .end local v19    # "yday":I
    .end local v20    # "year":I
    :pswitch_20
    const-string/jumbo v22, "%e-%b-%Y"

    #@5c4
    move-object/from16 v0, p0

    #@5c6
    move-object/from16 v1, v22

    #@5c8
    move-object/from16 v2, p2

    #@5ca
    move-object/from16 v3, p3

    #@5cc
    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    #@5cf
    .line 329
    const/16 v22, 0x0

    #@5d1
    return v22

    #@5d2
    .line 331
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    #@5d5
    move-result v22

    #@5d6
    add-int/lit8 v23, v22, 0x7

    #@5d8
    .line 332
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    #@5db
    move-result v22

    #@5dc
    if-eqz v22, :cond_17

    #@5de
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    #@5e1
    move-result v22

    #@5e2
    add-int/lit8 v22, v22, -0x1

    #@5e4
    .line 331
    :goto_11
    sub-int v22, v23, v22

    #@5e6
    div-int/lit8 v12, v22, 0x7

    #@5e8
    .line 334
    .local v12, "n":I
    move-object/from16 v0, p0

    #@5ea
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@5ec
    move-object/from16 v22, v0

    #@5ee
    const-string/jumbo v23, "%02d"

    #@5f1
    const-string/jumbo v24, "%2d"

    #@5f4
    const-string/jumbo v25, "%d"

    #@5f7
    const-string/jumbo v26, "%02d"

    #@5fa
    move-object/from16 v0, v23

    #@5fc
    move-object/from16 v1, v24

    #@5fe
    move-object/from16 v2, v25

    #@600
    move-object/from16 v3, v26

    #@602
    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@605
    move-result-object v23

    #@606
    const/16 v24, 0x1

    #@608
    move/from16 v0, v24

    #@60a
    new-array v0, v0, [Ljava/lang/Object;

    #@60c
    move-object/from16 v24, v0

    #@60e
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@611
    move-result-object v25

    #@612
    const/16 v26, 0x0

    #@614
    aput-object v25, v24, v26

    #@616
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@619
    .line 335
    const/16 v22, 0x0

    #@61b
    return v22

    #@61c
    .line 333
    .end local v12    # "n":I
    :cond_17
    const/16 v22, 0x6

    #@61e
    goto :goto_11

    #@61f
    .line 337
    :pswitch_22
    move-object/from16 v0, p0

    #@621
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@623
    move-object/from16 v22, v0

    #@625
    const-string/jumbo v23, "%d"

    #@628
    const/16 v24, 0x1

    #@62a
    move/from16 v0, v24

    #@62c
    new-array v0, v0, [Ljava/lang/Object;

    #@62e
    move-object/from16 v24, v0

    #@630
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    #@633
    move-result v25

    #@634
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@637
    move-result-object v25

    #@638
    const/16 v26, 0x0

    #@63a
    aput-object v25, v24, v26

    #@63c
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@63f
    .line 338
    const/16 v22, 0x0

    #@641
    return v22

    #@642
    .line 340
    :pswitch_23
    move-object/from16 v0, p0

    #@644
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    #@646
    move-object/from16 v22, v0

    #@648
    move-object/from16 v0, p0

    #@64a
    move-object/from16 v1, v22

    #@64c
    move-object/from16 v2, p2

    #@64e
    move-object/from16 v3, p3

    #@650
    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    #@653
    .line 341
    const/16 v22, 0x0

    #@655
    return v22

    #@656
    .line 343
    :pswitch_24
    move-object/from16 v0, p0

    #@658
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    #@65a
    move-object/from16 v22, v0

    #@65c
    move-object/from16 v0, p0

    #@65e
    move-object/from16 v1, v22

    #@660
    move-object/from16 v2, p2

    #@662
    move-object/from16 v3, p3

    #@664
    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    #@667
    .line 344
    const/16 v22, 0x0

    #@669
    return v22

    #@66a
    .line 346
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    #@66d
    move-result v22

    #@66e
    const/16 v23, 0x0

    #@670
    const/16 v24, 0x1

    #@672
    move-object/from16 v0, p0

    #@674
    move/from16 v1, v22

    #@676
    move/from16 v2, v23

    #@678
    move/from16 v3, v24

    #@67a
    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    #@67d
    .line 347
    const/16 v22, 0x0

    #@67f
    return v22

    #@680
    .line 349
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    #@683
    move-result v22

    #@684
    const/16 v23, 0x1

    #@686
    const/16 v24, 0x1

    #@688
    move-object/from16 v0, p0

    #@68a
    move/from16 v1, v22

    #@68c
    move/from16 v2, v23

    #@68e
    move/from16 v3, v24

    #@690
    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    #@693
    .line 350
    const/16 v22, 0x0

    #@695
    return v22

    #@696
    .line 352
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    #@699
    move-result v22

    #@69a
    if-gez v22, :cond_18

    #@69c
    .line 353
    const/16 v22, 0x0

    #@69e
    return v22

    #@69f
    .line 355
    :cond_18
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    #@6a2
    move-result v22

    #@6a3
    if-eqz v22, :cond_19

    #@6a5
    const/4 v9, 0x1

    #@6a6
    .line 356
    .local v9, "isDst":Z
    :goto_12
    const/16 v22, 0x0

    #@6a8
    move-object/from16 v0, p3

    #@6aa
    move/from16 v1, v22

    #@6ac
    invoke-virtual {v0, v9, v1}, Llibcore/util/ZoneInfo;->getDisplayName(ZI)Ljava/lang/String;

    #@6af
    move-result-object v22

    #@6b0
    move-object/from16 v0, p0

    #@6b2
    move-object/from16 v1, v22

    #@6b4
    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    #@6b7
    .line 357
    const/16 v22, 0x0

    #@6b9
    return v22

    #@6ba
    .line 355
    .end local v9    # "isDst":Z
    :cond_19
    const/4 v9, 0x0

    #@6bb
    .restart local v9    # "isDst":Z
    goto :goto_12

    #@6bc
    .line 359
    .end local v9    # "isDst":Z
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    #@6bf
    move-result v22

    #@6c0
    if-gez v22, :cond_1a

    #@6c2
    .line 360
    const/16 v22, 0x0

    #@6c4
    return v22

    #@6c5
    .line 362
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getGmtOffset()I

    #@6c8
    move-result v7

    #@6c9
    .line 364
    .local v7, "diff":I
    if-gez v7, :cond_1b

    #@6cb
    .line 365
    const/16 v14, 0x2d

    #@6cd
    .line 366
    .local v14, "sign":C
    neg-int v7, v7

    #@6ce
    .line 370
    :goto_13
    move-object/from16 v0, p0

    #@6d0
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    #@6d2
    move-object/from16 v22, v0

    #@6d4
    move-object/from16 v0, v22

    #@6d6
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6d9
    .line 371
    div-int/lit8 v7, v7, 0x3c

    #@6db
    .line 372
    div-int/lit8 v22, v7, 0x3c

    #@6dd
    mul-int/lit8 v22, v22, 0x64

    #@6df
    rem-int/lit8 v23, v7, 0x3c

    #@6e1
    add-int v7, v22, v23

    #@6e3
    .line 373
    move-object/from16 v0, p0

    #@6e5
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@6e7
    move-object/from16 v22, v0

    #@6e9
    const-string/jumbo v23, "%04d"

    #@6ec
    const-string/jumbo v24, "%4d"

    #@6ef
    const-string/jumbo v25, "%d"

    #@6f2
    const-string/jumbo v26, "%04d"

    #@6f5
    move-object/from16 v0, v23

    #@6f7
    move-object/from16 v1, v24

    #@6f9
    move-object/from16 v2, v25

    #@6fb
    move-object/from16 v3, v26

    #@6fd
    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@700
    move-result-object v23

    #@701
    const/16 v24, 0x1

    #@703
    move/from16 v0, v24

    #@705
    new-array v0, v0, [Ljava/lang/Object;

    #@707
    move-object/from16 v24, v0

    #@709
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@70c
    move-result-object v25

    #@70d
    const/16 v26, 0x0

    #@70f
    aput-object v25, v24, v26

    #@711
    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@714
    .line 374
    const/16 v22, 0x0

    #@716
    return v22

    #@717
    .line 368
    .end local v14    # "sign":C
    :cond_1b
    const/16 v14, 0x2b

    #@719
    .restart local v14    # "sign":C
    goto :goto_13

    #@71a
    .line 377
    .end local v7    # "diff":I
    .end local v14    # "sign":C
    :pswitch_29
    const-string/jumbo v22, "%a %b %e %H:%M:%S %Z %Y"

    #@71d
    move-object/from16 v0, p0

    #@71f
    move-object/from16 v1, v22

    #@721
    move-object/from16 v2, p2

    #@723
    move-object/from16 v3, p3

    #@725
    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    #@728
    .line 378
    const/16 v22, 0x0

    #@72a
    return v22

    #@72b
    .line 386
    .end local v5    # "currentChar":C
    :cond_1c
    const/16 v22, 0x1

    #@72d
    return v22

    #@72e
    .line 155
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_29
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_c
        :pswitch_1f
        :pswitch_d
        :pswitch_e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_12
        :pswitch_1
        :pswitch_0
        :pswitch_16
        :pswitch_1
        :pswitch_17
        :pswitch_19
        :pswitch_1b
        :pswitch_1d
        :pswitch_1f
        :pswitch_21
        :pswitch_23
        :pswitch_26
        :pswitch_27
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_a
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_1
        :pswitch_1f
        :pswitch_5
        :pswitch_1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_1
        :pswitch_15
        :pswitch_1
        :pswitch_18
        :pswitch_1a
        :pswitch_1c
        :pswitch_1e
        :pswitch_20
        :pswitch_22
        :pswitch_24
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method private static isLeap(I)Z
    .locals 3
    .param p0, "year"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 459
    rem-int/lit8 v2, p0, 0x4

    #@4
    if-nez v2, :cond_1

    #@6
    rem-int/lit8 v2, p0, 0x64

    #@8
    if-nez v2, :cond_0

    #@a
    rem-int/lit16 v2, p0, 0x190

    #@c
    if-nez v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    move v0, v1

    #@10
    goto :goto_0
.end method

.method private localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    .line 115
    .local v2, "length":I
    iget-object v5, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    #@6
    iget-char v5, v5, Llibcore/icu/LocaleData;->zeroDigit:C

    #@8
    add-int/lit8 v3, v5, -0x30

    #@a
    .line 116
    .local v3, "offsetToLocalizedDigits":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@f
    .line 117
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@12
    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    .line 119
    .local v0, "ch":C
    const/16 v5, 0x30

    #@18
    if-lt v0, v5, :cond_0

    #@1a
    const/16 v5, 0x39

    #@1c
    if-gt v0, v5, :cond_0

    #@1e
    .line 120
    add-int v5, v0, v3

    #@20
    int-to-char v0, v5

    #@21
    .line 122
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 117
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 124
    .end local v0    # "ch":C
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    return-object v5
.end method

.method private modifyAndAppend(Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "modifier"    # I

    #@0
    .prologue
    .line 390
    sparse-switch p2, :sswitch_data_0

    #@3
    .line 413
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    #@5
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@8
    .line 389
    :cond_0
    return-void

    #@9
    .line 392
    :sswitch_0
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@d
    move-result v2

    #@e
    if-ge v1, v2, :cond_0

    #@10
    .line 393
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    #@12
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@15
    move-result v3

    #@16
    invoke-static {v3}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    #@19
    move-result v3

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 392
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 397
    .end local v1    # "i":I
    :sswitch_1
    const/4 v1, 0x0

    #@21
    .restart local v1    # "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@24
    move-result v2

    #@25
    if-ge v1, v2, :cond_0

    #@27
    .line 398
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    #@29
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@2c
    move-result v3

    #@2d
    invoke-static {v3}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    #@30
    move-result v3

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    .line 397
    add-int/lit8 v1, v1, 0x1

    #@36
    goto :goto_1

    #@37
    .line 402
    .end local v1    # "i":I
    :sswitch_2
    const/4 v1, 0x0

    #@38
    .restart local v1    # "i":I
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3b
    move-result v2

    #@3c
    if-ge v1, v2, :cond_0

    #@3e
    .line 403
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@41
    move-result v0

    #@42
    .line 404
    .local v0, "c":C
    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenIsUpper(C)Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_2

    #@48
    .line 405
    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    #@4b
    move-result v0

    #@4c
    .line 409
    :cond_1
    :goto_3
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    #@4e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    .line 402
    add-int/lit8 v1, v1, 0x1

    #@53
    goto :goto_2

    #@54
    .line 406
    :cond_2
    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenIsLower(C)Z

    #@57
    move-result v2

    #@58
    if-eqz v2, :cond_1

    #@5a
    .line 407
    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    #@5d
    move-result v0

    #@5e
    goto :goto_3

    #@5f
    .line 390
    nop

    #@60
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x23 -> :sswitch_2
        0x5e -> :sswitch_1
    .end sparse-switch
.end method

.method private outputYear(IZZI)V
    .locals 11
    .param p1, "value"    # I
    .param p2, "outputTop"    # Z
    .param p3, "outputBottom"    # Z
    .param p4, "modifier"    # I

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 421
    const/16 v0, 0x64

    #@4
    .line 422
    .local v0, "DIVISOR":I
    rem-int/lit8 v3, p1, 0x64

    #@6
    .line 423
    .local v3, "trail":I
    div-int/lit8 v4, p1, 0x64

    #@8
    div-int/lit8 v5, v3, 0x64

    #@a
    add-int v1, v4, v5

    #@c
    .line 424
    .local v1, "lead":I
    rem-int/lit8 v3, v3, 0x64

    #@e
    .line 425
    if-gez v3, :cond_3

    #@10
    if-lez v1, :cond_3

    #@12
    .line 426
    add-int/lit8 v3, v3, 0x64

    #@14
    .line 427
    add-int/lit8 v1, v1, -0x1

    #@16
    .line 432
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    #@18
    .line 433
    if-nez v1, :cond_4

    #@1a
    if-gez v3, :cond_4

    #@1c
    .line 434
    iget-object v4, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    #@1e
    const-string/jumbo v5, "-0"

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 439
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    #@26
    .line 440
    if-gez v3, :cond_5

    #@28
    neg-int v2, v3

    #@29
    .line 441
    .local v2, "n":I
    :goto_2
    iget-object v4, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@2b
    const-string/jumbo v5, "%02d"

    #@2e
    const-string/jumbo v6, "%2d"

    #@31
    const-string/jumbo v7, "%d"

    #@34
    const-string/jumbo v8, "%02d"

    #@37
    invoke-static {p4, v5, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    new-array v6, v10, [Ljava/lang/Object;

    #@3d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v7

    #@41
    aput-object v7, v6, v9

    #@43
    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@46
    .line 417
    .end local v2    # "n":I
    :cond_2
    return-void

    #@47
    .line 428
    :cond_3
    if-gez v1, :cond_0

    #@49
    if-lez v3, :cond_0

    #@4b
    .line 429
    add-int/lit8 v3, v3, -0x64

    #@4d
    .line 430
    add-int/lit8 v1, v1, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 436
    :cond_4
    iget-object v4, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@52
    const-string/jumbo v5, "%02d"

    #@55
    const-string/jumbo v6, "%2d"

    #@58
    const-string/jumbo v7, "%d"

    #@5b
    const-string/jumbo v8, "%02d"

    #@5e
    invoke-static {p4, v5, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    new-array v6, v10, [Ljava/lang/Object;

    #@64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@67
    move-result-object v7

    #@68
    aput-object v7, v6, v9

    #@6a
    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@6d
    goto :goto_1

    #@6e
    .line 440
    :cond_5
    move v2, v3

    #@6f
    .restart local v2    # "n":I
    goto :goto_2
.end method


# virtual methods
.method public format(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "wallTime"    # Llibcore/util/ZoneInfo$WallTime;
    .param p3, "zoneInfo"    # Llibcore/util/ZoneInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 92
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 94
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    iput-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    #@8
    .line 97
    new-instance v2, Ljava/util/Formatter;

    #@a
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@c
    invoke-direct {v2, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #@f
    iput-object v2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@11
    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    #@14
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 103
    .local v0, "result":Ljava/lang/String;
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    #@1a
    iget-char v2, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    #@1c
    const/16 v3, 0x30

    #@1e
    if-eq v2, v3, :cond_0

    #@20
    .line 104
    invoke-direct {p0, v0}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v0

    #@24
    .line 108
    :cond_0
    iput-object v4, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    #@26
    .line 109
    iput-object v4, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@28
    .line 106
    return-object v0

    #@29
    .line 107
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    #@2a
    .line 108
    iput-object v4, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    #@2c
    .line 109
    iput-object v4, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    #@2e
    .line 107
    throw v2
.end method
