.class public Landroid/icu/text/DateIntervalFormat;
.super Landroid/icu/text/UFormat;
.source "DateIntervalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateIntervalFormat$FormatOutput;,
        Landroid/icu/text/DateIntervalFormat$SpanField;,
        Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;,
        Landroid/icu/text/DateIntervalFormat$BestMatchInfo;,
        Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    }
.end annotation


# static fields
.field private static greylist-max-o LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private blacklist fCapitalizationSetting:Landroid/icu/text/DisplayContext;

.field private greylist-max-o fDateFormat:Landroid/icu/text/SimpleDateFormat;

.field private greylist-max-o fDatePattern:Ljava/lang/String;

.field private greylist-max-o fDateTimeFormat:Ljava/lang/String;

.field private greylist-max-o fFromCalendar:Landroid/icu/util/Calendar;

.field private greylist-max-o fInfo:Landroid/icu/text/DateIntervalInfo;

.field private transient greylist-max-o fIntervalPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o fSkeleton:Ljava/lang/String;

.field private greylist-max-o fTimePattern:Ljava/lang/String;

.field private greylist-max-o fToCalendar:Landroid/icu/util/Calendar;

.field private greylist-max-o isDateIntervalInfoDefault:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 430
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    return-void
.end method

.method private constructor greylist-max-r <init>()V
    .registers 2

    .line 489
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 470
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    .line 475
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    .line 476
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    .line 477
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    .line 482
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fCapitalizationSetting:Landroid/icu/text/DisplayContext;

    .line 490
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/text/DateIntervalInfo;Landroid/icu/text/SimpleDateFormat;)V
    .registers 6
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "dtItvInfo"    # Landroid/icu/text/DateIntervalInfo;
    .param p3, "simpleDateFormat"    # Landroid/icu/text/SimpleDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 512
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 470
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    .line 475
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    .line 476
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    .line 477
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    .line 482
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fCapitalizationSetting:Landroid/icu/text/DisplayContext;

    .line 513
    iput-object p3, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    .line 515
    invoke-virtual {p2}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    .line 516
    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 517
    iput-object p2, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    .line 518
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    .line 519
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Calendar;

    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    .line 520
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Calendar;

    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    .line 521
    invoke-direct {p0, v0}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    .line 522
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/SimpleDateFormat;)V
    .registers 5
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "simpleDateFormat"    # Landroid/icu/text/SimpleDateFormat;

    .line 526
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 470
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    .line 475
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    .line 476
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    .line 477
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    .line 482
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fCapitalizationSetting:Landroid/icu/text/DisplayContext;

    .line 527
    iput-object p3, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    .line 528
    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 529
    new-instance v0, Landroid/icu/text/DateIntervalInfo;

    invoke-direct {v0, p2}, Landroid/icu/text/DateIntervalInfo;-><init>(Landroid/icu/util/ULocale;)V

    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    .line 531
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    .line 532
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    .line 533
    sget-object v0, Landroid/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    invoke-direct {p0, v0}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    .line 534
    return-void
.end method

.method private static blacklist adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 23
    .param p0, "inputSkeleton"    # Ljava/lang/String;
    .param p1, "bestMatchSkeleton"    # Ljava/lang/String;
    .param p2, "bestMatchIntervalPattern"    # Ljava/lang/String;
    .param p3, "differenceInfo"    # I
    .param p4, "suppressDayPeriodField"    # Z

    .line 2125
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez v1, :cond_8

    .line 2126
    const/4 v2, 0x0

    return-object v2

    .line 2128
    :cond_8
    const/16 v2, 0x3a

    new-array v3, v2, [I

    .line 2129
    .local v3, "inputSkeletonFieldWidth":[I
    new-array v2, v2, [I

    .line 2145
    .local v2, "bestMatchSkeletonFieldWidth":[I
    const/16 v4, 0x41

    .line 2147
    .local v4, "PATTERN_CHAR_BASE":I
    invoke-static {v0, v3}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    .line 2148
    move-object/from16 v5, p1

    invoke-static {v5, v2}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    .line 2149
    const-string v6, "a"

    const/4 v7, -0x1

    if-eqz p4, :cond_70

    .line 2150
    const-string v8, " a"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const-string v10, ""

    if-eq v9, v7, :cond_2c

    .line 2151
    invoke-static {v1, v8, v10}, Landroid/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local p2    # "bestMatchIntervalPattern":Ljava/lang/String;
    .local v1, "bestMatchIntervalPattern":Ljava/lang/String;
    goto :goto_6c

    .line 2152
    .end local v1    # "bestMatchIntervalPattern":Ljava/lang/String;
    .restart local p2    # "bestMatchIntervalPattern":Ljava/lang/String;
    :cond_2c
    const-string v8, "\u00a0a"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v7, :cond_39

    .line 2153
    invoke-static {v1, v8, v10}, Landroid/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local p2    # "bestMatchIntervalPattern":Ljava/lang/String;
    .restart local v1    # "bestMatchIntervalPattern":Ljava/lang/String;
    goto :goto_6c

    .line 2154
    .end local v1    # "bestMatchIntervalPattern":Ljava/lang/String;
    .restart local p2    # "bestMatchIntervalPattern":Ljava/lang/String;
    :cond_39
    const-string v8, "\u202fa"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v7, :cond_46

    .line 2155
    invoke-static {v1, v8, v10}, Landroid/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local p2    # "bestMatchIntervalPattern":Ljava/lang/String;
    .restart local v1    # "bestMatchIntervalPattern":Ljava/lang/String;
    goto :goto_6c

    .line 2156
    .end local v1    # "bestMatchIntervalPattern":Ljava/lang/String;
    .restart local p2    # "bestMatchIntervalPattern":Ljava/lang/String;
    :cond_46
    const-string v8, "a "

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v7, :cond_53

    .line 2157
    invoke-static {v1, v8, v10}, Landroid/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local p2    # "bestMatchIntervalPattern":Ljava/lang/String;
    .restart local v1    # "bestMatchIntervalPattern":Ljava/lang/String;
    goto :goto_6c

    .line 2158
    .end local v1    # "bestMatchIntervalPattern":Ljava/lang/String;
    .restart local p2    # "bestMatchIntervalPattern":Ljava/lang/String;
    :cond_53
    const-string v8, "a\u00a0"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v7, :cond_60

    .line 2159
    invoke-static {v1, v8, v10}, Landroid/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local p2    # "bestMatchIntervalPattern":Ljava/lang/String;
    .restart local v1    # "bestMatchIntervalPattern":Ljava/lang/String;
    goto :goto_6c

    .line 2160
    .end local v1    # "bestMatchIntervalPattern":Ljava/lang/String;
    .restart local p2    # "bestMatchIntervalPattern":Ljava/lang/String;
    :cond_60
    const-string v8, "a\u202f"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v7, :cond_6c

    .line 2161
    invoke-static {v1, v8, v10}, Landroid/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2163
    .end local p2    # "bestMatchIntervalPattern":Ljava/lang/String;
    .restart local v1    # "bestMatchIntervalPattern":Ljava/lang/String;
    :cond_6c
    :goto_6c
    invoke-static {v1, v6, v10}, Landroid/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2165
    :cond_70
    const/4 v8, 0x2

    const/16 v9, 0x7a

    const/16 v10, 0x62

    move/from16 v11, p3

    if-ne v11, v8, :cond_b3

    .line 2166
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v7, :cond_87

    .line 2167
    const-string v8, "v"

    const-string v12, "z"

    invoke-static {v1, v8, v12}, Landroid/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2169
    :cond_87
    const/16 v8, 0x4b

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v7, :cond_97

    .line 2170
    const-string v8, "h"

    const-string v12, "K"

    invoke-static {v1, v8, v12}, Landroid/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2172
    :cond_97
    const/16 v8, 0x6b

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v7, :cond_a7

    .line 2173
    const-string v8, "H"

    const-string v12, "k"

    invoke-static {v1, v8, v12}, Landroid/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2175
    :cond_a7
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v7, :cond_b3

    .line 2176
    const-string v8, "b"

    invoke-static {v1, v6, v8}, Landroid/icu/text/DateIntervalFormat;->findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2179
    :cond_b3
    const/16 v6, 0x61

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v12, 0x1

    if-eq v8, v7, :cond_c6

    rsub-int/lit8 v8, v4, 0x61

    aget v8, v2, v8

    if-nez v8, :cond_c6

    .line 2180
    rsub-int/lit8 v8, v4, 0x61

    aput v12, v2, v8

    .line 2182
    :cond_c6
    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v7, :cond_d6

    rsub-int/lit8 v7, v4, 0x62

    aget v7, v2, v7

    if-nez v7, :cond_d6

    .line 2183
    rsub-int/lit8 v7, v4, 0x62

    aput v12, v2, v7

    .line 2186
    :cond_d6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2189
    .local v7, "adjustedPtn":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 2190
    .local v8, "inQuote":Z
    const/4 v10, 0x0

    .line 2191
    .local v10, "prevCh":C
    const/4 v13, 0x0

    .line 2194
    .local v13, "count":I
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    .line 2195
    .local v14, "adjustedPtnLength":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_e3
    move/from16 p2, v12

    const/16 v12, 0x4c

    if-ge v15, v14, :cond_167

    .line 2196
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    .line 2197
    .local v9, "ch":C
    if-eq v9, v10, :cond_119

    if-lez v13, :cond_119

    .line 2199
    move/from16 v16, v10

    .line 2200
    .local v16, "skeletonChar":C
    move/from16 v6, v16

    .end local v16    # "skeletonChar":C
    .local v6, "skeletonChar":C
    if-ne v6, v12, :cond_fa

    .line 2202
    const/16 v16, 0x4d

    .end local v6    # "skeletonChar":C
    .restart local v16    # "skeletonChar":C
    goto :goto_fc

    .line 2200
    .end local v16    # "skeletonChar":C
    .restart local v6    # "skeletonChar":C
    :cond_fa
    move/from16 v16, v6

    .line 2204
    .end local v6    # "skeletonChar":C
    .restart local v16    # "skeletonChar":C
    :goto_fc
    sub-int v6, v16, v4

    aget v6, v2, v6

    .line 2205
    .local v6, "fieldCount":I
    sub-int v12, v16, v4

    aget v12, v3, v12

    .line 2206
    .local v12, "inputFieldCount":I
    if-ne v6, v13, :cond_118

    if-le v12, v6, :cond_118

    .line 2207
    sub-int v13, v12, v6

    .line 2208
    const/16 v17, 0x0

    move/from16 v0, v17

    .local v0, "j":I
    :goto_10e
    if-ge v0, v13, :cond_116

    .line 2209
    invoke-virtual {v7, v15, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2208
    add-int/lit8 v0, v0, 0x1

    goto :goto_10e

    .line 2211
    .end local v0    # "j":I
    :cond_116
    add-int/2addr v15, v13

    .line 2212
    add-int/2addr v14, v13

    .line 2214
    :cond_118
    const/4 v13, 0x0

    .line 2216
    .end local v6    # "fieldCount":I
    .end local v12    # "inputFieldCount":I
    .end local v16    # "skeletonChar":C
    :cond_119
    const/16 v0, 0x27

    if-ne v9, v0, :cond_140

    .line 2219
    add-int/lit8 v6, v15, 0x1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-ge v6, v12, :cond_134

    add-int/lit8 v6, v15, 0x1

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v0, :cond_134

    .line 2220
    add-int/lit8 v15, v15, 0x1

    const/16 v0, 0x61

    const/16 v6, 0x7a

    goto :goto_15d

    .line 2222
    :cond_134
    if-nez v8, :cond_139

    move/from16 v0, p2

    goto :goto_13a

    :cond_139
    const/4 v0, 0x0

    :goto_13a
    move v8, v0

    const/16 v0, 0x61

    const/16 v6, 0x7a

    .end local v8    # "inQuote":Z
    .local v0, "inQuote":Z
    goto :goto_15d

    .line 2225
    .end local v0    # "inQuote":Z
    .restart local v8    # "inQuote":Z
    :cond_140
    if-nez v8, :cond_159

    const/16 v0, 0x61

    if-lt v9, v0, :cond_14b

    const/16 v6, 0x7a

    if-le v9, v6, :cond_155

    goto :goto_14d

    :cond_14b
    const/16 v6, 0x7a

    :goto_14d
    const/16 v12, 0x41

    if-lt v9, v12, :cond_15d

    const/16 v12, 0x5a

    if-gt v9, v12, :cond_15d

    .line 2228
    :cond_155
    move v10, v9

    .line 2229
    add-int/lit8 v13, v13, 0x1

    goto :goto_15d

    .line 2225
    :cond_159
    const/16 v0, 0x61

    const/16 v6, 0x7a

    .line 2195
    .end local v9    # "ch":C
    :cond_15d
    :goto_15d
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, p2

    move v9, v6

    move v6, v0

    move-object/from16 v0, p0

    goto/16 :goto_e3

    .line 2232
    .end local v15    # "i":I
    :cond_167
    if-lez v13, :cond_185

    .line 2235
    move v0, v10

    .line 2236
    .local v0, "skeletonChar":C
    if-ne v0, v12, :cond_16e

    .line 2238
    const/16 v0, 0x4d

    .line 2240
    :cond_16e
    sub-int v6, v0, v4

    aget v6, v2, v6

    .line 2241
    .restart local v6    # "fieldCount":I
    sub-int v9, v0, v4

    aget v9, v3, v9

    .line 2242
    .local v9, "inputFieldCount":I
    if-ne v6, v13, :cond_185

    if-le v9, v6, :cond_185

    .line 2243
    sub-int v13, v9, v6

    .line 2244
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_17d
    if-ge v12, v13, :cond_185

    .line 2245
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2244
    add-int/lit8 v12, v12, 0x1

    goto :goto_17d

    .line 2249
    .end local v0    # "skeletonChar":C
    .end local v6    # "fieldCount":I
    .end local v9    # "inputFieldCount":I
    .end local v12    # "j":I
    :cond_185
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .registers 10
    .param p1, "dtfmt"    # Ljava/lang/String;
    .param p2, "datePattern"    # Ljava/lang/String;
    .param p3, "field"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;)V"
        }
    .end annotation

    .line 2307
    .local p4, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    sget-object v0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v0, v0, p3

    .line 2308
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    .line 2309
    .local v0, "timeItvPtnInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    if-eqz v0, :cond_42

    .line 2310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2311
    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2312
    .local v1, "timeIntervalPattern":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p1, v2, v2, v3}, Landroid/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2314
    .local v2, "pattern":Ljava/lang/String;
    nop

    .line 2315
    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    move-result v3

    .line 2314
    invoke-static {v2, v3}, Landroid/icu/text/DateIntervalInfo;->genPatternInfo(Ljava/lang/String;Z)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v0

    .line 2316
    sget-object v3, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-interface {p4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2321
    .end local v1    # "timeIntervalPattern":Ljava/lang/String;
    .end local v2    # "pattern":Ljava/lang/String;
    :cond_42
    return-void
.end method

.method private final blacklist fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;Landroid/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;
    .registers 22
    .param p1, "fromCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "toCalendar"    # Landroid/icu/util/Calendar;
    .param p3, "fromToOnSameDay"    # Z
    .param p4, "appendTo"    # Ljava/lang/StringBuffer;
    .param p5, "pos"    # Ljava/text/FieldPosition;
    .param p6, "output"    # Landroid/icu/text/DateIntervalFormat$FormatOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/util/Calendar;",
            "Z",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Landroid/icu/text/DateIntervalFormat$FormatOutput;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 1117
    .local p7, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    move-object/from16 v3, p4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1118
    .local v4, "patternSB":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    if-eqz p3, :cond_14

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    move v0, v8

    :goto_15
    move v9, v0

    .line 1119
    .local v9, "formatDatePlusTimeRange":Z
    if-eqz v9, :cond_76

    .line 1120
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v4, v1, v1}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v10

    .line 1124
    .local v10, "compiledPattern":Ljava/lang/String;
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v11

    .line 1128
    .local v11, "fullPattern":Ljava/lang/String;
    const-wide/16 v0, 0x0

    move-object/from16 v5, p5

    .line 1130
    .end local p5    # "pos":Ljava/text/FieldPosition;
    .local v0, "state":J
    .local v5, "pos":Ljava/text/FieldPosition;
    :goto_29
    invoke-static {v0, v1, v10, v3}, Landroid/icu/impl/SimpleFormatterImpl$IterInternal;->step(JLjava/lang/CharSequence;Ljava/lang/Appendable;)J

    move-result-wide v12

    .line 1131
    .end local v0    # "state":J
    .local v12, "state":J
    const-wide/16 v0, -0x1

    cmp-long v0, v12, v0

    if-nez v0, :cond_3a

    .line 1132
    nop

    .line 1150
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0, v11}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 1151
    .end local v10    # "compiledPattern":Ljava/lang/String;
    .end local v11    # "fullPattern":Ljava/lang/String;
    .end local v12    # "state":J
    goto :goto_83

    .line 1134
    .restart local v10    # "compiledPattern":Ljava/lang/String;
    .restart local v11    # "fullPattern":Ljava/lang/String;
    .restart local v12    # "state":J
    :cond_3a
    invoke-static {v12, v13}, Landroid/icu/impl/SimpleFormatterImpl$IterInternal;->getArgIndex(J)I

    move-result v0

    if-nez v0, :cond_53

    .line 1135
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 1136
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/DateIntervalFormat;->fallbackFormatRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;Landroid/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)V

    goto :goto_61

    .line 1138
    :cond_53
    iget-object v2, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    iget-object v6, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 1139
    iget-object v2, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    move-object/from16 v7, p7

    invoke-virtual {v2, p1, v3, v5, v7}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 1142
    :goto_61
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    if-lez v2, :cond_6d

    .line 1143
    new-instance v2, Ljava/text/FieldPosition;

    invoke-direct {v2, v8}, Ljava/text/FieldPosition;-><init>(I)V

    move-object v5, v2

    .line 1146
    :cond_6d
    iget-object v2, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    sget-object v6, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v2, v6}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    move-wide v0, v12

    goto :goto_29

    .line 1152
    .end local v5    # "pos":Ljava/text/FieldPosition;
    .end local v10    # "compiledPattern":Ljava/lang/String;
    .end local v11    # "fullPattern":Ljava/lang/String;
    .end local v12    # "state":J
    .restart local p5    # "pos":Ljava/text/FieldPosition;
    :cond_76
    move-object/from16 v7, p7

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/DateIntervalFormat;->fallbackFormatRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;Landroid/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)V

    .line 1154
    .end local p5    # "pos":Ljava/text/FieldPosition;
    .restart local v5    # "pos":Ljava/text/FieldPosition;
    :goto_83
    return-object p4
.end method

.method private final blacklist fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;Landroid/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .registers 12
    .param p1, "fromCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "toCalendar"    # Landroid/icu/util/Calendar;
    .param p3, "fromToOnSameDay"    # Z
    .param p4, "appendTo"    # Ljava/lang/StringBuffer;
    .param p5, "pos"    # Ljava/text/FieldPosition;
    .param p6, "output"    # Landroid/icu/text/DateIntervalFormat$FormatOutput;
    .param p8, "fullPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/util/Calendar;",
            "Z",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Landroid/icu/text/DateIntervalFormat$FormatOutput;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 1183
    .local p7, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 1184
    .local v0, "originalPattern":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1, p8}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 1185
    invoke-direct/range {p0 .. p7}, Landroid/icu/text/DateIntervalFormat;->fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;Landroid/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 1186
    move-object v1, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "fromCalendar":Landroid/icu/util/Calendar;
    .local v1, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    .local p2, "fromCalendar":Landroid/icu/util/Calendar;
    .local p3, "toCalendar":Landroid/icu/util/Calendar;
    .local p4, "fromToOnSameDay":Z
    .local p5, "appendTo":Ljava/lang/StringBuffer;
    .local p6, "pos":Ljava/text/FieldPosition;
    .local p7, "output":Landroid/icu/text/DateIntervalFormat$FormatOutput;
    iget-object v2, p1, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 1187
    return-object p5
.end method

.method private final blacklist fallbackFormatRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;Landroid/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)V
    .registers 13
    .param p1, "fromCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "toCalendar"    # Landroid/icu/util/Calendar;
    .param p3, "appendTo"    # Ljava/lang/StringBuffer;
    .param p4, "patternSB"    # Ljava/lang/StringBuilder;
    .param p5, "pos"    # Ljava/text/FieldPosition;
    .param p6, "output"    # Landroid/icu/text/DateIntervalFormat$FormatOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/util/Calendar;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/StringBuilder;",
            "Ljava/text/FieldPosition;",
            "Landroid/icu/text/DateIntervalFormat$FormatOutput;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)V"
        }
    .end annotation

    .line 1066
    .local p7, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    .line 1067
    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo;->getFallbackIntervalPattern()Ljava/lang/String;

    move-result-object v0

    .line 1066
    const/4 v1, 0x2

    invoke-static {v0, p4, v1, v1}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, "compiledPattern":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 1070
    .local v1, "state":J
    :goto_d
    invoke-static {v1, v2, v0, p3}, Landroid/icu/impl/SimpleFormatterImpl$IterInternal;->step(JLjava/lang/CharSequence;Ljava/lang/Appendable;)J

    move-result-wide v1

    .line 1071
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_19

    .line 1072
    nop

    .line 1092
    return-void

    .line 1074
    :cond_19
    invoke-static {v1, v2}, Landroid/icu/impl/SimpleFormatterImpl$IterInternal;->getArgIndex(J)I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2b

    .line 1075
    if-eqz p6, :cond_25

    .line 1076
    invoke-virtual {p6, v4}, Landroid/icu/text/DateIntervalFormat$FormatOutput;->register(I)V

    .line 1078
    :cond_25
    iget-object v3, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v3, p1, p3, p5, p7}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    goto :goto_36

    .line 1080
    :cond_2b
    if-eqz p6, :cond_31

    .line 1081
    const/4 v3, 0x1

    invoke-virtual {p6, v3}, Landroid/icu/text/DateIntervalFormat$FormatOutput;->register(I)V

    .line 1083
    :cond_31
    iget-object v3, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v3, p2, p3, p5, p7}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 1086
    :goto_36
    invoke-virtual {p5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v3

    if-lez v3, :cond_42

    .line 1087
    new-instance v3, Ljava/text/FieldPosition;

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    move-object p5, v3

    .line 1090
    :cond_42
    iget-object v3, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    sget-object v4, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v3, v4}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    goto :goto_d
.end method

.method private static greylist-max-o fieldExistsInSkeleton(ILjava/lang/String;)Z
    .registers 5
    .param p0, "field"    # I
    .param p1, "skeleton"    # Ljava/lang/String;

    .line 2332
    sget-object v0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 2333
    .local v0, "fieldChar":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2334
    .local v1, "result":Z
    if-nez v1, :cond_46

    .line 2335
    const-string v2, "M"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2337
    const-string v2, "L"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_46

    .line 2338
    :cond_19
    const-string v2, "y"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2340
    const-string v2, "U"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "Y"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "u"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "r"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    goto :goto_44

    :cond_42
    const/4 v2, 0x0

    goto :goto_45

    :cond_44
    :goto_44
    const/4 v2, 0x1

    :goto_45
    move v1, v2

    .line 2343
    :cond_46
    :goto_46
    return v1
.end method

.method private static blacklist findReplaceInPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "targetString"    # Ljava/lang/String;
    .param p1, "strToReplace"    # Ljava/lang/String;
    .param p2, "strToReplaceWith"    # Ljava/lang/String;

    .line 2262
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2263
    .local v1, "firstQuoteIndex":I
    if-gez v1, :cond_d

    .line 2264
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2266
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2267
    .local v2, "result":Ljava/lang/StringBuilder;
    move-object v3, p0

    .line 2269
    .local v3, "source":Ljava/lang/String;
    :goto_13
    if-ltz v1, :cond_43

    .line 2270
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 2271
    .local v4, "secondQuoteIndex":I
    if-gez v4, :cond_23

    .line 2272
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 2275
    :cond_23
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2276
    .local v5, "unquotedText":Ljava/lang/String;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2278
    .local v6, "quotedText":Ljava/lang/String;
    invoke-virtual {v5, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2279
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2281
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2282
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2283
    .end local v4    # "secondQuoteIndex":I
    .end local v5    # "unquotedText":Ljava/lang/String;
    .end local v6    # "quotedText":Ljava/lang/String;
    goto :goto_13

    .line 2284
    :cond_43
    invoke-virtual {v3, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2285
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized blacklist formatImpl(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Landroid/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;
    .registers 23
    .param p1, "fromCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "toCalendar"    # Landroid/icu/util/Calendar;
    .param p3, "appendTo"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;
    .param p5, "output"    # Landroid/icu/text/DateIntervalFormat$FormatOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/util/Calendar;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Landroid/icu/text/DateIntervalFormat$FormatOutput;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .local p6, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    monitor-enter p0

    .line 954
    :try_start_d
    invoke-virtual/range {p1 .. p2}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 960
    iget-object v0, v1, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    iget-object v4, v1, Landroid/icu/text/DateIntervalFormat;->fCapitalizationSetting:Landroid/icu/text/DisplayContext;

    invoke-virtual {v0, v4}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 963
    const/4 v0, -0x1

    .line 965
    .local v0, "field":I
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v9

    const/16 v10, 0xe

    const/16 v11, 0xd

    const/16 v12, 0xc

    const/16 v13, 0xa

    const/16 v14, 0x9

    const/4 v15, 0x1

    if-eq v7, v9, :cond_33

    .line 966
    const/4 v0, 0x0

    goto :goto_99

    .line 967
    :cond_33
    invoke-virtual {v2, v15}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    .line 968
    invoke-virtual {v3, v15}, Landroid/icu/util/Calendar;->get(I)I

    move-result v9

    if-eq v7, v9, :cond_3f

    .line 969
    const/4 v0, 0x1

    goto :goto_99

    .line 970
    :cond_3f
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v9

    .line 971
    invoke-virtual {v3, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    if-eq v9, v7, :cond_4c

    .line 972
    const/4 v0, 0x2

    goto :goto_99

    .line 973
    :cond_4c
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v9

    .line 974
    invoke-virtual {v3, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    if-eq v9, v7, :cond_59

    .line 975
    const/4 v0, 0x5

    goto :goto_99

    .line 976
    :cond_59
    invoke-virtual {v2, v14}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    .line 977
    invoke-virtual {v3, v14}, Landroid/icu/util/Calendar;->get(I)I

    move-result v9

    if-eq v7, v9, :cond_66

    .line 978
    const/16 v0, 0x9

    goto :goto_99

    .line 979
    :cond_66
    invoke-virtual {v2, v13}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    .line 980
    invoke-virtual {v3, v13}, Landroid/icu/util/Calendar;->get(I)I

    move-result v9

    if-eq v7, v9, :cond_73

    .line 981
    const/16 v0, 0xa

    goto :goto_99

    .line 982
    :cond_73
    invoke-virtual {v2, v12}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    .line 983
    invoke-virtual {v3, v12}, Landroid/icu/util/Calendar;->get(I)I

    move-result v9

    if-eq v7, v9, :cond_80

    .line 984
    const/16 v0, 0xc

    goto :goto_99

    .line 985
    :cond_80
    invoke-virtual {v2, v11}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    .line 986
    invoke-virtual {v3, v11}, Landroid/icu/util/Calendar;->get(I)I

    move-result v9

    if-eq v7, v9, :cond_8d

    .line 987
    const/16 v0, 0xd

    goto :goto_99

    .line 988
    :cond_8d
    invoke-virtual {v2, v10}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    .line 989
    invoke-virtual {v3, v10}, Landroid/icu/util/Calendar;->get(I)I

    move-result v9

    if-eq v7, v9, :cond_15e

    .line 990
    const/16 v0, 0xe

    .line 997
    :goto_99
    if-eq v0, v14, :cond_a6

    if-eq v0, v13, :cond_a6

    if-eq v0, v12, :cond_a6

    if-eq v0, v11, :cond_a6

    if-ne v0, v10, :cond_a4

    goto :goto_a6

    :cond_a4
    move v7, v4

    goto :goto_a7

    :cond_a6
    :goto_a6
    move v7, v15

    .line 1000
    .local v7, "fromToOnSameDay":Z
    :goto_a7
    iget-object v9, v1, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    sget-object v10, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :try_end_b3
    .catchall {:try_start_d .. :try_end_b3} :catchall_172

    move-object v10, v9

    .line 1003
    .local v10, "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    if-nez v10, :cond_d0

    .line 1004
    :try_start_b6
    iget-object v4, v1, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v4, v0}, Landroid/icu/text/SimpleDateFormat;->isFieldUnitIgnored(I)Z

    move-result v4
    :try_end_bc
    .catchall {:try_start_b6 .. :try_end_bc} :catchall_15a

    if-eqz v4, :cond_c6

    .line 1009
    :try_start_be
    iget-object v4, v1, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v4, v2, v5, v6, v8}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v4
    :try_end_c4
    .catchall {:try_start_be .. :try_end_c4} :catchall_172

    monitor-exit p0

    return-object v4

    .line 1012
    .end local p0    # "this":Landroid/icu/text/DateIntervalFormat;
    :cond_c6
    move v4, v7

    move-object/from16 v7, p5

    .end local v7    # "fromToOnSameDay":Z
    .local v4, "fromToOnSameDay":Z
    .restart local p0    # "this":Landroid/icu/text/DateIntervalFormat;
    :try_start_c9
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/DateIntervalFormat;->fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;Landroid/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v9
    :try_end_cd
    .catchall {:try_start_c9 .. :try_end_cd} :catchall_15a

    move v7, v4

    .end local v4    # "fromToOnSameDay":Z
    .restart local v7    # "fromToOnSameDay":Z
    monitor-exit p0

    return-object v9

    .line 1019
    .end local p0    # "this":Landroid/icu/text/DateIntervalFormat;
    :cond_d0
    :try_start_d0
    invoke-virtual {v10}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f1

    .line 1021
    nop

    .line 1022
    invoke-virtual {v10}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v9
    :try_end_db
    .catchall {:try_start_d0 .. :try_end_db} :catchall_15a

    .line 1021
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    move v4, v7

    move-object/from16 v7, p5

    .end local v7    # "fromToOnSameDay":Z
    .restart local v4    # "fromToOnSameDay":Z
    .restart local p0    # "this":Landroid/icu/text/DateIntervalFormat;
    :try_start_ea
    invoke-direct/range {v1 .. v9}, Landroid/icu/text/DateIntervalFormat;->fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;Landroid/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9
    :try_end_ee
    .catchall {:try_start_ea .. :try_end_ee} :catchall_172

    move v3, v4

    .end local v4    # "fromToOnSameDay":Z
    .local v3, "fromToOnSameDay":Z
    monitor-exit p0

    return-object v9

    .line 1026
    .end local v3    # "fromToOnSameDay":Z
    .end local p0    # "this":Landroid/icu/text/DateIntervalFormat;
    .restart local v7    # "fromToOnSameDay":Z
    :cond_f1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    move v3, v7

    move-object/from16 v7, p5

    .end local v7    # "fromToOnSameDay":Z
    .restart local v3    # "fromToOnSameDay":Z
    :try_start_fe
    invoke-virtual {v10}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    move-result v9

    if-eqz v9, :cond_10e

    .line 1027
    if-eqz v7, :cond_109

    .line 1028
    invoke-virtual {v7, v15}, Landroid/icu/text/DateIntervalFormat$FormatOutput;->register(I)V

    .line 1030
    :cond_109
    move-object/from16 v9, p2

    .line 1031
    .local v9, "firstCal":Landroid/icu/util/Calendar;
    move-object/from16 v11, p1

    .local v11, "secondCal":Landroid/icu/util/Calendar;
    goto :goto_117

    .line 1033
    .end local v9    # "firstCal":Landroid/icu/util/Calendar;
    .end local v11    # "secondCal":Landroid/icu/util/Calendar;
    :cond_10e
    if-eqz v7, :cond_113

    .line 1034
    invoke-virtual {v7, v4}, Landroid/icu/text/DateIntervalFormat$FormatOutput;->register(I)V

    .line 1036
    :cond_113
    move-object/from16 v9, p1

    .line 1037
    .restart local v9    # "firstCal":Landroid/icu/util/Calendar;
    move-object/from16 v11, p2

    .line 1041
    .restart local v11    # "secondCal":Landroid/icu/util/Calendar;
    :goto_117
    iget-object v12, v1, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v12}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v12

    .line 1042
    .local v12, "originalPattern":Ljava/lang/String;
    iget-object v13, v1, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v10}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 1043
    iget-object v13, v1, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v13, v9, v5, v6, v8}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 1045
    invoke-virtual {v6}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v13

    if-lez v13, :cond_137

    .line 1046
    new-instance v13, Ljava/text/FieldPosition;

    invoke-direct {v13, v4}, Ljava/text/FieldPosition;-><init>(I)V

    .end local p4    # "pos":Ljava/text/FieldPosition;
    .local v13, "pos":Ljava/text/FieldPosition;
    goto :goto_138

    .line 1045
    .end local v13    # "pos":Ljava/text/FieldPosition;
    .restart local p4    # "pos":Ljava/text/FieldPosition;
    :cond_137
    move-object v13, v6

    .line 1048
    .end local p4    # "pos":Ljava/text/FieldPosition;
    .restart local v13    # "pos":Ljava/text/FieldPosition;
    :goto_138
    invoke-virtual {v10}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_153

    .line 1049
    iget-object v4, v1, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v10}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 1051
    iget-object v4, v1, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    sget-object v6, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v4, v6}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 1052
    iget-object v4, v1, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v4, v11, v5, v13, v8}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 1054
    :cond_153
    iget-object v4, v1, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v4, v12}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V
    :try_end_158
    .catchall {:try_start_fe .. :try_end_158} :catchall_172

    .line 1055
    monitor-exit p0

    return-object v5

    .line 953
    .end local v0    # "field":I
    .end local v3    # "fromToOnSameDay":Z
    .end local v9    # "firstCal":Landroid/icu/util/Calendar;
    .end local v10    # "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .end local v11    # "secondCal":Landroid/icu/util/Calendar;
    .end local v12    # "originalPattern":Ljava/lang/String;
    .end local v13    # "pos":Ljava/text/FieldPosition;
    .end local p1    # "fromCalendar":Landroid/icu/util/Calendar;
    .end local p2    # "toCalendar":Landroid/icu/util/Calendar;
    .end local p3    # "appendTo":Ljava/lang/StringBuffer;
    .end local p5    # "output":Landroid/icu/text/DateIntervalFormat$FormatOutput;
    .end local p6    # "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    :catchall_15a
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_173

    .line 995
    .restart local v0    # "field":I
    .restart local p1    # "fromCalendar":Landroid/icu/util/Calendar;
    .restart local p2    # "toCalendar":Landroid/icu/util/Calendar;
    .restart local p3    # "appendTo":Ljava/lang/StringBuffer;
    .restart local p4    # "pos":Ljava/text/FieldPosition;
    .restart local p5    # "output":Landroid/icu/text/DateIntervalFormat$FormatOutput;
    .restart local p6    # "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    :cond_15e
    move-object/from16 v7, p5

    :try_start_160
    iget-object v3, v1, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v3, v2, v5, v6, v8}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v3
    :try_end_166
    .catchall {:try_start_160 .. :try_end_166} :catchall_172

    monitor-exit p0

    return-object v3

    .line 955
    .end local v0    # "field":I
    :cond_168
    move-object/from16 v7, p5

    :try_start_16a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "can not format on two different calendars"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    .end local p1    # "fromCalendar":Landroid/icu/util/Calendar;
    .end local p2    # "toCalendar":Landroid/icu/util/Calendar;
    .end local p3    # "appendTo":Ljava/lang/StringBuffer;
    .end local p4    # "pos":Ljava/text/FieldPosition;
    .end local p5    # "output":Landroid/icu/text/DateIntervalFormat$FormatOutput;
    .end local p6    # "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    :catchall_172
    move-exception v0

    :goto_173
    monitor-exit p0
    :try_end_174
    .catchall {:try_start_16a .. :try_end_174} :catchall_172

    throw v0
.end method

.method private declared-synchronized blacklist formatIntervalImpl(Landroid/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Landroid/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;
    .registers 16
    .param p1, "dtInterval"    # Landroid/icu/util/DateInterval;
    .param p2, "appendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;
    .param p4, "output"    # Landroid/icu/text/DateIntervalFormat$FormatOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/DateInterval;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Landroid/icu/text/DateIntervalFormat$FormatOutput;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .local p5, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    monitor-enter p0

    .line 799
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/DateInterval;->getFromDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 800
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/DateInterval;->getToDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 801
    iget-object v4, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    iget-object v5, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_22

    move-object v3, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    .end local p2    # "appendTo":Ljava/lang/StringBuffer;
    .end local p3    # "pos":Ljava/text/FieldPosition;
    .end local p4    # "output":Landroid/icu/text/DateIntervalFormat$FormatOutput;
    .end local p5    # "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    .local v6, "appendTo":Ljava/lang/StringBuffer;
    .local v7, "pos":Ljava/text/FieldPosition;
    .local v8, "output":Landroid/icu/text/DateIntervalFormat$FormatOutput;
    .local v9, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    :try_start_1c
    invoke-direct/range {v3 .. v9}, Landroid/icu/text/DateIntervalFormat;->formatImpl(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Landroid/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object p2
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_27

    monitor-exit p0

    return-object p2

    .line 798
    .end local v6    # "appendTo":Ljava/lang/StringBuffer;
    .end local v7    # "pos":Ljava/text/FieldPosition;
    .end local v8    # "output":Landroid/icu/text/DateIntervalFormat$FormatOutput;
    .end local v9    # "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    .end local p0    # "this":Landroid/icu/text/DateIntervalFormat;
    .end local p1    # "dtInterval":Landroid/icu/util/DateInterval;
    :catchall_22
    move-exception v0

    move-object v3, p0

    :goto_24
    move-object p1, v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_27

    throw p1

    :catchall_27
    move-exception v0

    goto :goto_24
.end method

.method private greylist-max-o genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V
    .registers 9
    .param p1, "field"    # I
    .param p2, "skeleton"    # Ljava/lang/String;
    .param p4, "dtpng"    # Landroid/icu/text/DateTimePatternGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;",
            "Landroid/icu/text/DateTimePatternGenerator;",
            ")V"
        }
    .end annotation

    .line 1608
    .local p3, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    invoke-virtual {p4, p2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1613
    .local v0, "pattern":Ljava/lang/String;
    new-instance v1, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    iget-object v2, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    .line 1614
    invoke-virtual {v2}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0, v2}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1615
    .local v1, "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    sget-object v2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    return-void
.end method

.method private greylist-max-o genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    .registers 16
    .param p1, "field"    # I
    .param p2, "skeleton"    # Ljava/lang/String;
    .param p3, "bestSkeleton"    # Ljava/lang/String;
    .param p4, "differenceInfo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;)",
            "Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;"
        }
    .end annotation

    .line 2005
    .local p5, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    const/4 v0, 0x0

    .line 2006
    .local v0, "retValue":Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v1, p3, p1}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v1

    .line 2008
    .local v1, "pattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x4a

    const/4 v5, -0x1

    if-nez v1, :cond_bb

    .line 2010
    invoke-static {p3, p1}, Landroid/icu/text/SimpleDateFormat;->isFieldUnitIgnored(Ljava/lang/String;I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2e

    .line 2011
    new-instance v2, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    iget-object v3, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    .line 2012
    invoke-virtual {v3}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    .line 2014
    invoke-virtual {v4}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result v4

    invoke-direct {v2, v3, v7, v4}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2015
    .local v2, "ptnInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    sget-object v3, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-interface {p5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2017
    return-object v7

    .line 2024
    .end local v2    # "ptnInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_2e
    const/16 v6, 0x9

    if-ne p1, v6, :cond_6a

    .line 2025
    iget-object v6, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    const/16 v8, 0xa

    invoke-virtual {v6, p3, v8}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v1

    .line 2027
    if-eqz v1, :cond_69

    .line 2028
    iget-object v6, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v5, :cond_45

    goto :goto_46

    :cond_45
    move v2, v3

    .line 2029
    .local v2, "suppressDayPeriodField":Z
    :goto_46
    nop

    .line 2030
    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v3

    .line 2029
    invoke-static {p2, p3, v3, p4, v2}, Landroid/icu/text/DateIntervalFormat;->adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    .line 2031
    .local v3, "part1":Ljava/lang/String;
    nop

    .line 2032
    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v4

    .line 2031
    invoke-static {p2, p3, v4, p4, v2}, Landroid/icu/text/DateIntervalFormat;->adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    .line 2033
    .local v4, "part2":Ljava/lang/String;
    new-instance v5, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    .line 2034
    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    move-result v6

    invoke-direct {v5, v3, v4, v6}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v5

    .line 2037
    sget-object v5, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-interface {p5, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    .end local v2    # "suppressDayPeriodField":Z
    .end local v3    # "part1":Ljava/lang/String;
    .end local v4    # "part2":Ljava/lang/String;
    :cond_69
    return-object v7

    .line 2049
    :cond_6a
    sget-object v6, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v6, v6, p1

    .line 2051
    .local v6, "fieldLetter":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2052
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2055
    iget-object v7, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v7, p3, p1}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v1

    .line 2056
    if-nez v1, :cond_b3

    if-nez p4, :cond_b3

    .line 2059
    iget-object v7, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v7, p2}, Landroid/icu/text/DateIntervalInfo;->getBestSkeleton(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat$BestMatchInfo;

    move-result-object v7

    .line 2060
    .local v7, "tmpRetValue":Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    iget-object v8, v7, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchSkeleton:Ljava/lang/String;

    .line 2061
    .local v8, "tmpBestSkeleton":Ljava/lang/String;
    iget p4, v7, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchDistanceInfo:I

    .line 2062
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_b3

    if-eq p4, v5, :cond_b3

    .line 2063
    iget-object v9, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v9, v8, p1}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v1

    .line 2064
    move-object p3, v8

    .line 2067
    .end local v7    # "tmpRetValue":Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    .end local v8    # "tmpBestSkeleton":Ljava/lang/String;
    :cond_b3
    if-eqz v1, :cond_bb

    .line 2068
    new-instance v7, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    invoke-direct {v7, p2, p3}, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .line 2071
    .end local v6    # "fieldLetter":Ljava/lang/String;
    :cond_bb
    if-eqz v1, :cond_ec

    .line 2072
    if-eqz p4, :cond_e5

    .line 2073
    iget-object v6, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v5, :cond_c8

    goto :goto_c9

    :cond_c8
    move v2, v3

    .line 2074
    .restart local v2    # "suppressDayPeriodField":Z
    :goto_c9
    nop

    .line 2075
    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v3

    .line 2074
    invoke-static {p2, p3, v3, p4, v2}, Landroid/icu/text/DateIntervalFormat;->adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    .line 2076
    .restart local v3    # "part1":Ljava/lang/String;
    nop

    .line 2077
    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v4

    .line 2076
    invoke-static {p2, p3, v4, p4, v2}, Landroid/icu/text/DateIntervalFormat;->adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    .line 2078
    .restart local v4    # "part2":Ljava/lang/String;
    new-instance v5, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    .line 2079
    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    move-result v6

    invoke-direct {v5, v3, v4, v6}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v5

    .line 2084
    .end local v2    # "suppressDayPeriodField":Z
    .end local v3    # "part1":Ljava/lang/String;
    .end local v4    # "part2":Ljava/lang/String;
    :cond_e5
    sget-object v2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {p5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    :cond_ec
    return-object v0
.end method

.method private greylist-max-o genSeparateDateTimePtn(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)Z
    .registers 16
    .param p1, "dateSkeleton"    # Ljava/lang/String;
    .param p2, "timeSkeleton"    # Ljava/lang/String;
    .param p4, "dtpng"    # Landroid/icu/text/DateTimePatternGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;",
            "Landroid/icu/text/DateTimePatternGenerator;",
            ")Z"
        }
    .end annotation

    .line 1917
    .local p3, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 1918
    move-object v0, p2

    move-object v3, v0

    .local v0, "skeleton":Ljava/lang/String;
    goto :goto_b

    .line 1920
    .end local v0    # "skeleton":Ljava/lang/String;
    :cond_9
    move-object v0, p1

    move-object v3, v0

    .line 1932
    .local v3, "skeleton":Ljava/lang/String;
    :goto_b
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v0, v3}, Landroid/icu/text/DateIntervalInfo;->getBestSkeleton(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat$BestMatchInfo;

    move-result-object v0

    .line 1933
    .local v0, "retValue":Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    iget-object v4, v0, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchSkeleton:Ljava/lang/String;

    .line 1934
    .local v4, "bestSkeleton":Ljava/lang/String;
    iget v5, v0, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchDistanceInfo:I

    .line 1938
    .local v5, "differenceInfo":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_21

    .line 1939
    invoke-virtual {p4, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    .line 1941
    :cond_21
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2d

    .line 1942
    invoke-virtual {p4, p2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    .line 1952
    :cond_2d
    const/4 v1, -0x1

    if-ne v5, v1, :cond_32

    .line 1954
    const/4 v1, 0x0

    return v1

    .line 1957
    :cond_32
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_61

    .line 1959
    const/4 v2, 0x5

    move-object v1, p0

    move-object v6, p3

    .end local p3    # "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    .local v6, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    .line 1960
    const/4 v2, 0x2

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    move-result-object p3

    .line 1964
    .local p3, "skeletons":Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    if-eqz p3, :cond_4c

    .line 1965
    iget-object v4, p3, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;->skeleton:Ljava/lang/String;

    .line 1966
    iget-object v3, p3, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;->bestMatchSkeleton:Ljava/lang/String;

    move-object v7, v3

    move-object v8, v4

    goto :goto_4e

    .line 1964
    :cond_4c
    move-object v7, v3

    move-object v8, v4

    .line 1968
    .end local v3    # "skeleton":Ljava/lang/String;
    .end local v4    # "bestSkeleton":Ljava/lang/String;
    .local v7, "skeleton":Ljava/lang/String;
    .local v8, "bestSkeleton":Ljava/lang/String;
    :goto_4e
    move-object v10, v6

    .end local v6    # "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    .local v10, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    const/4 v6, 0x1

    move v9, v5

    move-object v5, p0

    .end local v5    # "differenceInfo":I
    .local v9, "differenceInfo":I
    invoke-direct/range {v5 .. v10}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    .line 1969
    move v5, v9

    move-object v6, v10

    .end local v9    # "differenceInfo":I
    .restart local v5    # "differenceInfo":I
    const/4 v6, 0x0

    move-object v5, p0

    .end local v5    # "differenceInfo":I
    .restart local v9    # "differenceInfo":I
    invoke-direct/range {v5 .. v10}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    .line 1970
    move v5, v9

    move-object v6, v10

    .end local v9    # "differenceInfo":I
    .end local v10    # "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    .end local p3    # "skeletons":Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    .restart local v5    # "differenceInfo":I
    .restart local v6    # "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    move-object v3, v7

    move-object v4, v8

    goto :goto_72

    .line 1971
    .end local v6    # "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    .end local v7    # "skeleton":Ljava/lang/String;
    .end local v8    # "bestSkeleton":Ljava/lang/String;
    .restart local v3    # "skeleton":Ljava/lang/String;
    .restart local v4    # "bestSkeleton":Ljava/lang/String;
    .local p3, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    :cond_61
    move-object v6, p3

    .end local p3    # "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    .restart local v6    # "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    const/16 v2, 0xc

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    .line 1972
    const/16 v2, 0xa

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    .line 1973
    const/16 v2, 0x9

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    .line 1975
    :goto_72
    const/4 p3, 0x1

    return p3
.end method

.method private greylist-max-o getConcatenationPattern(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 1587
    const-string v0, "android/icu/impl/data/icudata"

    invoke-static {v0, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 1588
    .local v0, "rb":Landroid/icu/impl/ICUResourceBundle;
    const-string v1, "calendar/gregorian/DateTimePatterns"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 1589
    .local v1, "dtPatternsRb":Landroid/icu/impl/ICUResourceBundle;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    .line 1590
    .local v2, "concatenationPatternRb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v3

    if-nez v3, :cond_21

    .line 1591
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1593
    :cond_21
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static greylist-max-o getDateTimeSkeleton(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .registers 21
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "dateSkeleton"    # Ljava/lang/StringBuilder;
    .param p2, "normalizedDateSkeleton"    # Ljava/lang/StringBuilder;
    .param p3, "timeSkeleton"    # Ljava/lang/StringBuilder;
    .param p4, "normalizedTimeSkeleton"    # Ljava/lang/StringBuilder;

    .line 1756
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    .line 1757
    .local v4, "ECount":I
    const/4 v5, 0x0

    .line 1758
    .local v5, "dCount":I
    const/4 v6, 0x0

    .line 1759
    .local v6, "MCount":I
    const/4 v7, 0x0

    .line 1760
    .local v7, "yCount":I
    const/4 v8, 0x0

    .line 1761
    .local v8, "mCount":I
    const/4 v9, 0x0

    .line 1762
    .local v9, "vCount":I
    const/4 v10, 0x0

    .line 1763
    .local v10, "zCount":I
    const/4 v11, 0x0

    .line 1765
    .local v11, "hourChar":C
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_62

    .line 1766
    move-object/from16 v13, p0

    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 1767
    .local v14, "ch":C
    packed-switch v14, :pswitch_data_c2

    :pswitch_20
    goto :goto_5f

    .line 1817
    :pswitch_21
    add-int/lit8 v10, v10, 0x1

    .line 1818
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1819
    goto :goto_5f

    .line 1781
    :pswitch_27
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1782
    add-int/lit8 v7, v7, 0x1

    .line 1783
    goto :goto_5f

    .line 1821
    :pswitch_2d
    add-int/lit8 v9, v9, 0x1

    .line 1822
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1823
    goto :goto_5f

    .line 1813
    :pswitch_33
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1814
    add-int/lit8 v8, v8, 0x1

    .line 1815
    goto :goto_5f

    .line 1773
    :pswitch_39
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1774
    add-int/lit8 v5, v5, 0x1

    .line 1775
    goto :goto_5f

    .line 1777
    :pswitch_3f
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1778
    add-int/lit8 v6, v6, 0x1

    .line 1779
    goto :goto_5f

    .line 1807
    :pswitch_45
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1808
    if-nez v11, :cond_5f

    .line 1809
    move v11, v14

    goto :goto_5f

    .line 1769
    :pswitch_4c
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1770
    add-int/lit8 v4, v4, 0x1

    .line 1771
    goto :goto_5f

    .line 1800
    :pswitch_52
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1801
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1802
    goto :goto_5f

    .line 1833
    :pswitch_59
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1834
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1765
    .end local v14    # "ch":C
    :cond_5f
    :goto_5f
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 1840
    :cond_62
    move-object/from16 v13, p0

    if-eqz v7, :cond_71

    .line 1841
    const/4 v12, 0x0

    :goto_67
    if-ge v12, v7, :cond_71

    .line 1842
    const/16 v14, 0x79

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1841
    add-int/lit8 v12, v12, 0x1

    goto :goto_67

    .line 1845
    :cond_71
    const/4 v15, 0x3

    if-eqz v6, :cond_89

    .line 1846
    const/16 v14, 0x4d

    if-ge v6, v15, :cond_7c

    .line 1847
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_89

    .line 1849
    :cond_7c
    const/4 v12, 0x0

    :goto_7d
    if-ge v12, v6, :cond_89

    const/4 v15, 0x5

    if-ge v12, v15, :cond_89

    .line 1850
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1849
    add-int/lit8 v12, v12, 0x1

    const/4 v15, 0x3

    goto :goto_7d

    .line 1854
    :cond_89
    :goto_89
    if-eqz v4, :cond_a0

    .line 1855
    const/16 v14, 0x45

    const/4 v15, 0x3

    if-gt v4, v15, :cond_94

    .line 1856
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a0

    .line 1858
    :cond_94
    const/4 v12, 0x0

    :goto_95
    if-ge v12, v4, :cond_a0

    const/4 v15, 0x5

    if-ge v12, v15, :cond_a0

    .line 1859
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1858
    add-int/lit8 v12, v12, 0x1

    goto :goto_95

    .line 1863
    :cond_a0
    :goto_a0
    if-eqz v5, :cond_a7

    .line 1864
    const/16 v14, 0x64

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1868
    :cond_a7
    if-eqz v11, :cond_ac

    .line 1869
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1871
    :cond_ac
    if-eqz v8, :cond_b3

    .line 1872
    const/16 v14, 0x6d

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1874
    :cond_b3
    if-eqz v10, :cond_ba

    .line 1875
    const/16 v14, 0x7a

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1877
    :cond_ba
    if-eqz v9, :cond_c1

    .line 1878
    const/16 v14, 0x76

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1880
    :cond_c1
    return-void

    :pswitch_data_c2
    .packed-switch 0x41
        :pswitch_59
        :pswitch_59
        :pswitch_20
        :pswitch_52
        :pswitch_4c
        :pswitch_52
        :pswitch_52
        :pswitch_45
        :pswitch_20
        :pswitch_20
        :pswitch_45
        :pswitch_52
        :pswitch_3f
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_52
        :pswitch_20
        :pswitch_59
        :pswitch_20
        :pswitch_52
        :pswitch_59
        :pswitch_52
        :pswitch_20
        :pswitch_52
        :pswitch_59
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_59
        :pswitch_59
        :pswitch_52
        :pswitch_39
        :pswitch_52
        :pswitch_20
        :pswitch_52
        :pswitch_45
        :pswitch_20
        :pswitch_59
        :pswitch_45
        :pswitch_52
        :pswitch_33
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_52
        :pswitch_52
        :pswitch_59
        :pswitch_20
        :pswitch_52
        :pswitch_2d
        :pswitch_52
        :pswitch_20
        :pswitch_27
        :pswitch_21
    .end packed-switch
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat;
    .registers 2
    .param p0, "skeleton"    # Ljava/lang/String;

    .line 552
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;
    .registers 3
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "dtitvinf"    # Landroid/icu/text/DateIntervalInfo;

    .line 627
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;
    .registers 6
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 605
    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 606
    .local v0, "generator":Landroid/icu/text/DateTimePatternGenerator;
    new-instance v1, Landroid/icu/text/DateIntervalFormat;

    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    invoke-direct {v1, p0, p1, v2}, Landroid/icu/text/DateIntervalFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/SimpleDateFormat;)V

    return-object v1
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;
    .registers 7
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "dtitvinf"    # Landroid/icu/text/DateIntervalInfo;

    .line 695
    invoke-virtual {p2}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, Landroid/icu/text/DateIntervalInfo;

    .line 696
    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 697
    .local v0, "generator":Landroid/icu/text/DateTimePatternGenerator;
    new-instance v1, Landroid/icu/text/DateIntervalFormat;

    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    invoke-direct {v1, p0, p2, v2}, Landroid/icu/text/DateIntervalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateIntervalInfo;Landroid/icu/text/SimpleDateFormat;)V

    return-object v1
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateIntervalFormat;
    .registers 3
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 570
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/util/Locale;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;
    .registers 4
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "dtitvinf"    # Landroid/icu/text/DateIntervalInfo;

    .line 649
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o initializeIntervalPattern(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/util/Map;
    .registers 25
    .param p1, "fullPattern"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/util/ULocale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;"
        }
    .end annotation

    .line 1398
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v1}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v2

    .line 1399
    .local v2, "dtpng":Landroid/icu/text/DateTimePatternGenerator;
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    if-nez v3, :cond_15

    .line 1402
    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/icu/text/DateTimePatternGenerator;->getSkeleton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    goto :goto_17

    .line 1399
    :cond_15
    move-object/from16 v3, p1

    .line 1404
    :goto_17
    iget-object v4, v0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Landroid/icu/text/DateIntervalFormat;->normalizeHourMetacharacters(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v4

    .line 1406
    .local v4, "skeleton":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1411
    .local v5, "intervalPatterns":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1412
    .local v6, "date":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1413
    .local v7, "normalizedDate":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1414
    .local v8, "time":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1427
    .local v9, "normalizedTime":Ljava/lang/StringBuilder;
    invoke-static {v4, v6, v7, v8, v9}, Landroid/icu/text/DateIntervalFormat;->getDateTimeSkeleton(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 1430
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1431
    .local v10, "dateSkeleton":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1432
    .local v11, "timeSkeleton":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1433
    .local v12, "normalizedDateSkeleton":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1436
    .local v13, "normalizedTimeSkeleton":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-eqz v14, :cond_6b

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-eqz v14, :cond_6b

    .line 1441
    invoke-direct {v0, v1}, Landroid/icu/text/DateIntervalFormat;->getConcatenationPattern(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    .line 1444
    :cond_6b
    invoke-direct {v0, v12, v13, v5, v2}, Landroid/icu/text/DateIntervalFormat;->genSeparateDateTimePtn(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)Z

    move-result v14

    .line 1449
    .local v14, "found":Z
    const-string v15, "G"

    const-string v1, "yMd"

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    if-nez v14, :cond_f6

    .line 1453
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-eqz v19, :cond_f1

    .line 1457
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-nez v19, :cond_ec

    .line 1459
    const/16 v19, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1460
    invoke-virtual {v2, v11}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1465
    .local v1, "pattern":Ljava/lang/String;
    new-instance v3, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-object/from16 v20, v6

    .end local v6    # "date":Ljava/lang/StringBuilder;
    .local v20, "date":Ljava/lang/StringBuilder;
    iget-object v6, v0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    .line 1466
    invoke-virtual {v6}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result v6

    move-object/from16 v21, v7

    const/4 v7, 0x0

    .end local v7    # "normalizedDate":Ljava/lang/StringBuilder;
    .local v21, "normalizedDate":Ljava/lang/StringBuilder;
    invoke-direct {v3, v7, v1, v6}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1467
    .local v3, "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    sget-object v6, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v6, v6, v19

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    sget-object v6, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v6, v6, v18

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    sget-object v6, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v6, v6, v17

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1477
    new-instance v6, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    iget-object v7, v0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v7}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result v7

    const/4 v15, 0x0

    invoke-direct {v6, v15, v1, v7}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1479
    .end local v3    # "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .local v6, "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    sget-object v3, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v3, v3, v16

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f5

    .line 1457
    .end local v1    # "pattern":Ljava/lang/String;
    .end local v20    # "date":Ljava/lang/StringBuilder;
    .end local v21    # "normalizedDate":Ljava/lang/StringBuilder;
    .local v6, "date":Ljava/lang/StringBuilder;
    .restart local v7    # "normalizedDate":Ljava/lang/StringBuilder;
    :cond_ec
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .end local v6    # "date":Ljava/lang/StringBuilder;
    .end local v7    # "normalizedDate":Ljava/lang/StringBuilder;
    .restart local v20    # "date":Ljava/lang/StringBuilder;
    .restart local v21    # "normalizedDate":Ljava/lang/StringBuilder;
    goto :goto_f5

    .line 1453
    .end local v20    # "date":Ljava/lang/StringBuilder;
    .end local v21    # "normalizedDate":Ljava/lang/StringBuilder;
    .restart local v6    # "date":Ljava/lang/StringBuilder;
    .restart local v7    # "normalizedDate":Ljava/lang/StringBuilder;
    :cond_f1
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 1491
    .end local v6    # "date":Ljava/lang/StringBuilder;
    .end local v7    # "normalizedDate":Ljava/lang/StringBuilder;
    .restart local v20    # "date":Ljava/lang/StringBuilder;
    .restart local v21    # "normalizedDate":Ljava/lang/StringBuilder;
    :goto_f5
    return-object v5

    .line 1494
    .end local v20    # "date":Ljava/lang/StringBuilder;
    .end local v21    # "normalizedDate":Ljava/lang/StringBuilder;
    .restart local v6    # "date":Ljava/lang/StringBuilder;
    .restart local v7    # "normalizedDate":Ljava/lang/StringBuilder;
    :cond_f6
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    const/16 v19, 0x5

    .end local v6    # "date":Ljava/lang/StringBuilder;
    .end local v7    # "normalizedDate":Ljava/lang/StringBuilder;
    .restart local v20    # "date":Ljava/lang/StringBuilder;
    .restart local v21    # "normalizedDate":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_104

    goto/16 :goto_20c

    .line 1496
    :cond_104
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_16a

    .line 1509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1510
    invoke-virtual {v2, v11}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1515
    .restart local v1    # "pattern":Ljava/lang/String;
    new-instance v3, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    iget-object v6, v0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    .line 1516
    invoke-virtual {v6}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v3, v7, v1, v6}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1517
    .restart local v3    # "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    sget-object v6, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v6, v6, v19

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    sget-object v6, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v6, v6, v18

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    sget-object v6, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v6, v6, v17

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1525
    new-instance v6, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    iget-object v7, v0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v7}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result v7

    const/4 v15, 0x0

    invoke-direct {v6, v15, v1, v7}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1526
    .end local v3    # "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .local v6, "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    sget-object v3, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v3, v3, v16

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    .end local v1    # "pattern":Ljava/lang/String;
    .end local v6    # "ptn":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    goto/16 :goto_20c

    .line 1540
    :cond_16a
    move/from16 v1, v19

    invoke-static {v1, v10}, Landroid/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18a

    .line 1542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1544
    invoke-direct {v0, v1, v4, v5, v2}, Landroid/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V

    .line 1546
    :cond_18a
    move/from16 v1, v18

    invoke-static {v1, v10}, Landroid/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1aa

    .line 1548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1550
    invoke-direct {v0, v1, v4, v5, v2}, Landroid/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V

    .line 1552
    :cond_1aa
    move/from16 v1, v17

    invoke-static {v1, v10}, Landroid/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ca

    .line 1554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1556
    invoke-direct {v0, v1, v4, v5, v2}, Landroid/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V

    .line 1558
    :cond_1ca
    move/from16 v1, v16

    invoke-static {v1, v10}, Landroid/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1eb

    .line 1560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1562
    .end local v4    # "skeleton":Ljava/lang/String;
    .local v3, "skeleton":Ljava/lang/String;
    invoke-direct {v0, v1, v3, v5, v2}, Landroid/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V

    move-object v4, v3

    .line 1569
    .end local v3    # "skeleton":Ljava/lang/String;
    .restart local v4    # "skeleton":Ljava/lang/String;
    :cond_1eb
    iget-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    if-nez v1, :cond_1f3

    .line 1570
    const-string v1, "{1} {0}"

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    .line 1572
    :cond_1f3
    invoke-virtual {v2, v10}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1573
    .local v1, "datePattern":Ljava/lang/String;
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    const/16 v6, 0x9

    invoke-direct {v0, v3, v1, v6, v5}, Landroid/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 1574
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    const/16 v6, 0xa

    invoke-direct {v0, v3, v1, v6, v5}, Landroid/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 1575
    iget-object v3, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    const/16 v6, 0xc

    invoke-direct {v0, v3, v1, v6, v5}, Landroid/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 1578
    .end local v1    # "datePattern":Ljava/lang/String;
    :goto_20c
    return-object v5
.end method

.method private greylist-max-o initializePattern(Landroid/icu/impl/ICUCache;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1337
    .local p1, "cache":Landroid/icu/impl/ICUCache;, "Landroid/icu/impl/ICUCache<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 1338
    .local v0, "fullPattern":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1}, Landroid/icu/text/SimpleDateFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    .line 1339
    .local v1, "locale":Landroid/icu/util/ULocale;
    const/4 v2, 0x0

    .line 1340
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1341
    .local v3, "patterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    if-eqz p1, :cond_5a

    .line 1342
    iget-object v4, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    const-string v5, "+"

    if-eqz v4, :cond_3a

    .line 1343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_53

    .line 1345
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1347
    :goto_53
    invoke-interface {p1, v2}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/util/Map;

    .line 1349
    :cond_5a
    if-nez v3, :cond_69

    .line 1350
    invoke-direct {p0, v0, v1}, Landroid/icu/text/DateIntervalFormat;->initializeIntervalPattern(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/util/Map;

    move-result-object v4

    .line 1351
    .local v4, "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 1352
    if-eqz p1, :cond_69

    .line 1353
    invoke-interface {p1, v2, v3}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1356
    .end local v4    # "intervalPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    :cond_69
    iput-object v3, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    .line 1357
    return-void
.end method

.method private blacklist normalizeHourMetacharacters(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 20
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1640
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1641
    .local v2, "hourMetachar":C
    const/4 v3, 0x0

    .line 1642
    .local v3, "dayPeriodChar":C
    const/4 v4, 0x0

    .line 1643
    .local v4, "hourFieldStart":I
    const/4 v5, 0x0

    .line 1644
    .local v5, "hourFieldLength":I
    const/4 v6, 0x0

    .line 1645
    .local v6, "dayPeriodStart":I
    const/4 v7, 0x0

    .line 1646
    .local v7, "dayPeriodLength":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const/16 v11, 0x62

    const/16 v12, 0x48

    const/16 v13, 0x4b

    const/16 v14, 0x68

    const/16 v15, 0x6b

    if-ge v8, v9, :cond_57

    .line 1647
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    .line 1648
    .local v9, "c":C
    const/16 v10, 0x6a

    if-eq v9, v10, :cond_4e

    const/16 v10, 0x4a

    if-eq v9, v10, :cond_4e

    const/16 v10, 0x43

    if-eq v9, v10, :cond_4e

    if-eq v9, v14, :cond_4e

    if-eq v9, v12, :cond_4e

    if-eq v9, v15, :cond_4e

    if-ne v9, v13, :cond_37

    goto :goto_4e

    .line 1654
    :cond_37
    const/16 v10, 0x61

    if-eq v9, v10, :cond_47

    if-eq v9, v11, :cond_47

    const/16 v10, 0x42

    if-ne v9, v10, :cond_42

    goto :goto_47

    .line 1661
    :cond_42
    if-eqz v2, :cond_54

    if-eqz v3, :cond_54

    .line 1662
    goto :goto_57

    .line 1655
    :cond_47
    :goto_47
    if-nez v3, :cond_4b

    .line 1656
    move v3, v9

    .line 1657
    move v6, v8

    .line 1659
    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    .line 1649
    :cond_4e
    :goto_4e
    if-nez v2, :cond_52

    .line 1650
    move v2, v9

    .line 1651
    move v4, v8

    .line 1653
    :cond_52
    add-int/lit8 v5, v5, 0x1

    .line 1646
    .end local v9    # "c":C
    :cond_54
    :goto_54
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 1667
    .end local v8    # "i":I
    :cond_57
    :goto_57
    if-eqz v2, :cond_11e

    .line 1668
    const/16 v8, 0x48

    .line 1670
    .local v8, "hourChar":C
    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v9

    .line 1671
    .local v9, "dtptng":Landroid/icu/text/DateTimePatternGenerator;
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1676
    .local v10, "convertedPattern":Ljava/lang/String;
    :goto_67
    const/16 v12, 0x27

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    move/from16 v16, v11

    .local v16, "firstQuotePos":I
    const/4 v15, -0x1

    if-eq v11, v15, :cond_a3

    .line 1677
    add-int/lit8 v11, v16, 0x1

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 1678
    .local v11, "secondQuotePos":I
    if-ne v11, v15, :cond_7c

    .line 1679
    move/from16 v11, v16

    .line 1681
    :cond_7c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    move/from16 v13, v16

    .end local v16    # "firstQuotePos":I
    .local v13, "firstQuotePos":I
    invoke-virtual {v10, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v15, v11, 0x1

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1682
    .end local v11    # "secondQuotePos":I
    const/16 v11, 0x62

    const/16 v12, 0x48

    const/16 v13, 0x4b

    const/16 v15, 0x6b

    goto :goto_67

    .line 1684
    .end local v13    # "firstQuotePos":I
    .restart local v16    # "firstQuotePos":I
    :cond_a3
    move/from16 v13, v16

    .end local v16    # "firstQuotePos":I
    .restart local v13    # "firstQuotePos":I
    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v15, :cond_ae

    .line 1685
    const/16 v8, 0x68

    goto :goto_c3

    .line 1686
    :cond_ae
    const/16 v11, 0x4b

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v15, :cond_b9

    .line 1687
    const/16 v8, 0x4b

    goto :goto_c3

    .line 1688
    :cond_b9
    const/16 v11, 0x6b

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eq v12, v15, :cond_c3

    .line 1689
    const/16 v8, 0x6b

    .line 1692
    :cond_c3
    :goto_c3
    const/16 v11, 0x62

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v15, :cond_ce

    .line 1693
    const/16 v3, 0x62

    goto :goto_dd

    .line 1694
    :cond_ce
    const/16 v11, 0x42

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v15, :cond_d9

    .line 1695
    const/16 v3, 0x42

    goto :goto_dd

    .line 1696
    :cond_d9
    if-nez v3, :cond_dd

    .line 1697
    const/16 v3, 0x61

    .line 1700
    :cond_dd
    :goto_dd
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1701
    .local v11, "hourAndDayPeriod":Ljava/lang/StringBuilder;
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1702
    const/16 v12, 0x48

    if-eq v8, v12, :cond_108

    const/16 v12, 0x6b

    if-eq v8, v12, :cond_108

    .line 1703
    const/4 v12, 0x0

    .line 1704
    .local v12, "newDayPeriodLength":I
    const/4 v14, 0x5

    if-ge v7, v14, :cond_fe

    if-lt v5, v14, :cond_f4

    goto :goto_fe

    .line 1706
    :cond_f4
    const/4 v14, 0x3

    if-ge v7, v14, :cond_fc

    if-lt v5, v14, :cond_fa

    goto :goto_fc

    .line 1709
    :cond_fa
    const/4 v12, 0x1

    goto :goto_ff

    .line 1707
    :cond_fc
    :goto_fc
    const/4 v12, 0x3

    goto :goto_ff

    .line 1705
    :cond_fe
    :goto_fe
    const/4 v12, 0x5

    .line 1711
    :goto_ff
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_100
    if-ge v14, v12, :cond_108

    .line 1712
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1711
    add-int/lit8 v14, v14, 0x1

    goto :goto_100

    .line 1715
    .end local v12    # "newDayPeriodLength":I
    .end local v14    # "i":I
    :cond_108
    add-int v12, v4, v5

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v4, v12, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    if-le v6, v4, :cond_119

    .line 1717
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    sub-int/2addr v12, v5

    add-int/2addr v6, v12

    .line 1719
    :cond_119
    add-int v12, v6, v7

    invoke-virtual {v0, v6, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1721
    .end local v8    # "hourChar":C
    .end local v9    # "dtptng":Landroid/icu/text/DateTimePatternGenerator;
    .end local v10    # "convertedPattern":Ljava/lang/String;
    .end local v11    # "hourAndDayPeriod":Ljava/lang/StringBuilder;
    .end local v13    # "firstQuotePos":I
    :cond_11e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2352
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2353
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    if-eqz v0, :cond_a

    sget-object v0, Landroid/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-direct {p0, v0}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    .line 2355
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fCapitalizationSetting:Landroid/icu/text/DisplayContext;

    if-nez v0, :cond_16

    .line 2356
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fCapitalizationSetting:Landroid/icu/text/DisplayContext;

    .line 2358
    :cond_16
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    monitor-enter p0

    .line 708
    :try_start_1
    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateIntervalFormat;

    .line 709
    .local v0, "other":Landroid/icu/text/DateIntervalFormat;
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1}, Landroid/icu/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/SimpleDateFormat;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    .line 710
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateIntervalInfo;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    .line 711
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Calendar;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    .line 712
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Calendar;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    .line 713
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    .line 714
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    .line 715
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    .line 716
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fCapitalizationSetting:Landroid/icu/text/DisplayContext;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fCapitalizationSetting:Landroid/icu/text/DisplayContext;
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    .line 717
    monitor-exit p0

    return-object v0

    .line 707
    .end local v0    # "other":Landroid/icu/text/DateIntervalFormat;
    .end local p0    # "this":Landroid/icu/text/DateIntervalFormat;
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public final whitelist test-api format(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 12
    .param p1, "fromCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "toCalendar"    # Landroid/icu/util/Calendar;
    .param p3, "appendTo"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;

    .line 871
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "fromCalendar":Landroid/icu/util/Calendar;
    .end local p2    # "toCalendar":Landroid/icu/util/Calendar;
    .end local p3    # "appendTo":Ljava/lang/StringBuffer;
    .end local p4    # "pos":Ljava/text/FieldPosition;
    .local v1, "fromCalendar":Landroid/icu/util/Calendar;
    .local v2, "toCalendar":Landroid/icu/util/Calendar;
    .local v3, "appendTo":Ljava/lang/StringBuffer;
    .local v4, "pos":Ljava/text/FieldPosition;
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/DateIntervalFormat;->formatImpl(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Landroid/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist test-api format(Landroid/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 10
    .param p1, "dtInterval"    # Landroid/icu/util/DateInterval;
    .param p2, "appendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 768
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "dtInterval":Landroid/icu/util/DateInterval;
    .end local p2    # "appendTo":Ljava/lang/StringBuffer;
    .end local p3    # "fieldPosition":Ljava/text/FieldPosition;
    .local v1, "dtInterval":Landroid/icu/util/DateInterval;
    .local v2, "appendTo":Ljava/lang/StringBuffer;
    .local v3, "fieldPosition":Ljava/text/FieldPosition;
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->formatIntervalImpl(Landroid/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Landroid/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "appendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 744
    instance-of v0, p1, Landroid/icu/util/DateInterval;

    if-eqz v0, :cond_c

    .line 745
    move-object v0, p1

    check-cast v0, Landroid/icu/util/DateInterval;

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/DateIntervalFormat;->format(Landroid/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 748
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot format given Object ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") as a DateInterval"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist format(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 12
    .param p1, "fromTemporal"    # Ljava/time/temporal/Temporal;
    .param p2, "toTemporal"    # Ljava/time/temporal/Temporal;
    .param p3, "appendTo"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;

    .line 897
    invoke-static {p1}, Landroid/icu/impl/JavaTimeConverters;->temporalToCalendar(Ljava/time/temporal/Temporal;)Landroid/icu/util/Calendar;

    move-result-object v1

    .line 898
    .local v1, "fromCalendar":Landroid/icu/util/Calendar;
    invoke-static {p2}, Landroid/icu/impl/JavaTimeConverters;->temporalToCalendar(Ljava/time/temporal/Temporal;)Landroid/icu/util/Calendar;

    move-result-object v2

    .line 899
    .local v2, "toCalendar":Landroid/icu/util/Calendar;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    .end local p3    # "appendTo":Ljava/lang/StringBuffer;
    .end local p4    # "pos":Ljava/text/FieldPosition;
    .local v3, "appendTo":Ljava/lang/StringBuffer;
    .local v4, "pos":Ljava/text/FieldPosition;
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/DateIntervalFormat;->formatImpl(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Landroid/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object p3

    return-object p3
.end method

.method public whitelist test-api formatToValue(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;
    .registers 11
    .param p1, "fromCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "toCalendar"    # Landroid/icu/util/Calendar;

    .line 914
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v0

    .line 915
    .local v4, "sb":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/text/FieldPosition;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/text/FieldPosition;-><init>(I)V

    .line 916
    .local v5, "ignore":Ljava/text/FieldPosition;
    new-instance v6, Landroid/icu/text/DateIntervalFormat$FormatOutput;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Landroid/icu/text/DateIntervalFormat$FormatOutput;-><init>(Landroid/icu/text/DateIntervalFormat-IA;)V

    .line 917
    .local v6, "output":Landroid/icu/text/DateIntervalFormat$FormatOutput;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .local v7, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "fromCalendar":Landroid/icu/util/Calendar;
    .end local p2    # "toCalendar":Landroid/icu/util/Calendar;
    .local v2, "fromCalendar":Landroid/icu/util/Calendar;
    .local v3, "toCalendar":Landroid/icu/util/Calendar;
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/DateIntervalFormat;->formatImpl(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Landroid/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 919
    iget p1, v6, Landroid/icu/text/DateIntervalFormat$FormatOutput;->firstIndex:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2c

    .line 920
    sget-object p1, Landroid/icu/text/DateIntervalFormat$SpanField;->DATE_INTERVAL_SPAN:Landroid/icu/text/DateIntervalFormat$SpanField;

    iget p2, v6, Landroid/icu/text/DateIntervalFormat$FormatOutput;->firstIndex:I

    invoke-static {v7, p1, p2}, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl;->addOverlapSpans(Ljava/util/List;Ljava/text/Format$Field;I)V

    .line 922
    invoke-static {v7}, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl;->sort(Ljava/util/List;)V

    .line 924
    :cond_2c
    new-instance p1, Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;

    invoke-direct {p1, v4, v7}, Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    return-object p1
.end method

.method public whitelist test-api formatToValue(Landroid/icu/util/DateInterval;)Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;
    .registers 9
    .param p1, "dtInterval"    # Landroid/icu/util/DateInterval;

    .line 780
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v0

    .line 781
    .local v3, "sb":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/text/FieldPosition;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Ljava/text/FieldPosition;-><init>(I)V

    .line 782
    .local v4, "ignore":Ljava/text/FieldPosition;
    new-instance v5, Landroid/icu/text/DateIntervalFormat$FormatOutput;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Landroid/icu/text/DateIntervalFormat$FormatOutput;-><init>(Landroid/icu/text/DateIntervalFormat-IA;)V

    .line 783
    .local v5, "output":Landroid/icu/text/DateIntervalFormat$FormatOutput;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .local v6, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    move-object v1, p0

    move-object v2, p1

    .end local p1    # "dtInterval":Landroid/icu/util/DateInterval;
    .local v2, "dtInterval":Landroid/icu/util/DateInterval;
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DateIntervalFormat;->formatIntervalImpl(Landroid/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Landroid/icu/text/DateIntervalFormat$FormatOutput;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 785
    iget p1, v5, Landroid/icu/text/DateIntervalFormat$FormatOutput;->firstIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2b

    .line 786
    sget-object p1, Landroid/icu/text/DateIntervalFormat$SpanField;->DATE_INTERVAL_SPAN:Landroid/icu/text/DateIntervalFormat$SpanField;

    iget v0, v5, Landroid/icu/text/DateIntervalFormat$FormatOutput;->firstIndex:I

    invoke-static {v6, p1, v0}, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl;->addOverlapSpans(Ljava/util/List;Ljava/text/Format$Field;I)V

    .line 788
    invoke-static {v6}, Landroid/icu/impl/FormattedValueFieldPositionIteratorImpl;->sort(Ljava/util/List;)V

    .line 790
    :cond_2b
    new-instance p1, Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;

    invoke-direct {p1, v3, v6}, Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    return-object p1
.end method

.method public blacklist formatToValue(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;
    .registers 6
    .param p1, "fromTemporal"    # Ljava/time/temporal/Temporal;
    .param p2, "toTemporal"    # Ljava/time/temporal/Temporal;

    .line 941
    invoke-static {p1}, Landroid/icu/impl/JavaTimeConverters;->temporalToCalendar(Ljava/time/temporal/Temporal;)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 942
    .local v0, "fromCalendar":Landroid/icu/util/Calendar;
    invoke-static {p2}, Landroid/icu/impl/JavaTimeConverters;->temporalToCalendar(Ljava/time/temporal/Temporal;)Landroid/icu/util/Calendar;

    move-result-object v1

    .line 943
    .local v1, "toCalendar":Landroid/icu/util/Calendar;
    invoke-virtual {p0, v0, v1}, Landroid/icu/text/DateIntervalFormat;->formatToValue(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Landroid/icu/text/DateIntervalFormat$FormattedDateInterval;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
    .registers 3
    .param p1, "type"    # Landroid/icu/text/DisplayContext$Type;

    .line 1314
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fCapitalizationSetting:Landroid/icu/text/DisplayContext;

    if-eqz v0, :cond_b

    .line 1315
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fCapitalizationSetting:Landroid/icu/text/DisplayContext;

    goto :goto_d

    :cond_b
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    .line 1314
    :goto_d
    return-object v0
.end method

.method public declared-synchronized whitelist test-api getDateFormat()Landroid/icu/text/DateFormat;
    .registers 2

    monitor-enter p0

    .line 1325
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormat;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 1325
    .end local p0    # "this":Landroid/icu/text/DateIntervalFormat;
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public whitelist test-api getDateIntervalInfo()Landroid/icu/text/DateIntervalInfo;
    .registers 2

    .line 1231
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateIntervalInfo;

    return-object v0
.end method

.method public greylist-max-o getPatterns(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Landroid/icu/util/Output;)Ljava/lang/String;
    .registers 7
    .param p1, "fromCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "toCalendar"    # Landroid/icu/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/util/Output<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 815
    .local p3, "part2":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-eq v1, v0, :cond_e

    .line 816
    const/4 v0, 0x0

    .local v0, "field":I
    goto/16 :goto_7f

    .line 817
    .end local v0    # "field":I
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 818
    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-eq v1, v0, :cond_1b

    .line 819
    const/4 v0, 0x1

    .restart local v0    # "field":I
    goto :goto_7f

    .line 820
    .end local v0    # "field":I
    :cond_1b
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 821
    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-eq v1, v0, :cond_28

    .line 822
    const/4 v0, 0x2

    .restart local v0    # "field":I
    goto :goto_7f

    .line 823
    .end local v0    # "field":I
    :cond_28
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 824
    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-eq v1, v0, :cond_35

    .line 825
    const/4 v0, 0x5

    .restart local v0    # "field":I
    goto :goto_7f

    .line 826
    .end local v0    # "field":I
    :cond_35
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 827
    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-eq v1, v0, :cond_44

    .line 828
    const/16 v0, 0x9

    .restart local v0    # "field":I
    goto :goto_7f

    .line 829
    .end local v0    # "field":I
    :cond_44
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 830
    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-eq v1, v0, :cond_53

    .line 831
    const/16 v0, 0xa

    .restart local v0    # "field":I
    goto :goto_7f

    .line 832
    .end local v0    # "field":I
    :cond_53
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 833
    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-eq v1, v0, :cond_62

    .line 834
    const/16 v0, 0xc

    .restart local v0    # "field":I
    goto :goto_7f

    .line 835
    .end local v0    # "field":I
    :cond_62
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 836
    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-eq v1, v0, :cond_71

    .line 837
    const/16 v0, 0xd

    .restart local v0    # "field":I
    goto :goto_7f

    .line 838
    .end local v0    # "field":I
    :cond_71
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 839
    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-eq v1, v0, :cond_96

    .line 840
    const/16 v0, 0xe

    .line 844
    .restart local v0    # "field":I
    :goto_7f
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    sget-object v2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    .line 846
    .local v1, "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 847
    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 842
    .end local v0    # "field":I
    .end local v1    # "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_96
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getRawPatterns()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2369
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist test-api getTimeZone()Landroid/icu/util/TimeZone;
    .registers 2

    .line 1257
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    if-eqz v0, :cond_11

    .line 1261
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZone;

    return-object v0

    .line 1264
    :cond_11
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 5
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "parse_pos"    # Ljava/text/ParsePosition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1220
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "parsing is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setContext(Landroid/icu/text/DisplayContext;)V
    .registers 4
    .param p1, "context"    # Landroid/icu/text/DisplayContext;

    .line 1300
    invoke-virtual {p1}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v0

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    if-ne v0, v1, :cond_a

    .line 1301
    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fCapitalizationSetting:Landroid/icu/text/DisplayContext;

    .line 1303
    :cond_a
    return-void
.end method

.method public whitelist test-api setDateIntervalInfo(Landroid/icu/text/DateIntervalInfo;)V
    .registers 3
    .param p1, "newItvPattern"    # Landroid/icu/text/DateIntervalInfo;

    .line 1243
    invoke-virtual {p1}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateIntervalInfo;

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    .line 1244
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    .line 1245
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    .line 1246
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    if-eqz v0, :cond_18

    .line 1247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    .line 1249
    :cond_18
    return-void
.end method

.method public whitelist test-api setTimeZone(Landroid/icu/util/TimeZone;)V
    .registers 4
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    .line 1275
    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZone;

    .line 1276
    .local v0, "zoneToSet":Landroid/icu/util/TimeZone;
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    if-eqz v1, :cond_f

    .line 1277
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Landroid/icu/text/SimpleDateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 1281
    :cond_f
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    if-eqz v1, :cond_18

    .line 1282
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 1284
    :cond_18
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    if-eqz v1, :cond_21

    .line 1285
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 1287
    :cond_21
    return-void
.end method
