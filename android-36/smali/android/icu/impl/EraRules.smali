.class public Landroid/icu/impl/EraRules;
.super Ljava/lang/Object;
.source "EraRules.java"


# static fields
.field private static final blacklist DAY_MASK:I = 0xff

.field private static final blacklist MAX_ENCODED_START_YEAR:I = 0x7fff

.field public static final blacklist MIN_ENCODED_START:I

.field private static final blacklist MIN_ENCODED_START_YEAR:I = -0x8000

.field private static final blacklist MONTH_MASK:I = 0xff00

.field private static final blacklist YEAR_MASK:I = -0x10000


# instance fields
.field private blacklist currentEra:I

.field private blacklist numEras:I

.field private blacklist startDates:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 24
    const/16 v0, -0x8000

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Landroid/icu/impl/EraRules;->encodeDate(III)I

    move-result v0

    sput v0, Landroid/icu/impl/EraRules;->MIN_ENCODED_START:I

    return-void
.end method

.method private constructor blacklist <init>([II)V
    .registers 3
    .param p1, "startDates"    # [I
    .param p2, "numEras"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/icu/impl/EraRules;->startDates:[I

    .line 36
    iput p2, p0, Landroid/icu/impl/EraRules;->numEras:I

    .line 37
    invoke-direct {p0}, Landroid/icu/impl/EraRules;->initCurrentEra()V

    .line 38
    return-void
.end method

.method private static blacklist compareEncodedDateWithYMD(IIII)I
    .registers 8
    .param p0, "encoded"    # I
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .line 295
    const/16 v0, -0x8000

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge p1, v0, :cond_17

    .line 296
    sget v0, Landroid/icu/impl/EraRules;->MIN_ENCODED_START:I

    if-ne p0, v0, :cond_16

    .line 297
    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_15

    if-gt p2, v3, :cond_15

    if-le p3, v3, :cond_14

    goto :goto_15

    .line 300
    :cond_14
    return v1

    .line 298
    :cond_15
    :goto_15
    return v2

    .line 302
    :cond_16
    return v3

    .line 304
    :cond_17
    const/16 v0, 0x7fff

    if-le p1, v0, :cond_1c

    .line 305
    return v2

    .line 307
    :cond_1c
    invoke-static {p1, p2, p3}, Landroid/icu/impl/EraRules;->encodeDate(III)I

    move-result v0

    .line 308
    .local v0, "tmp":I
    if-ge p0, v0, :cond_23

    .line 309
    return v2

    .line 310
    :cond_23
    if-ne p0, v0, :cond_26

    .line 311
    return v1

    .line 313
    :cond_26
    return v3
.end method

.method private static blacklist decodeDate(I[I)[I
    .registers 7
    .param p0, "encodedDate"    # I
    .param p1, "fillIn"    # [I

    .line 264
    sget v0, Landroid/icu/impl/EraRules;->MIN_ENCODED_START:I

    if-ne p0, v0, :cond_9

    .line 265
    const/high16 v0, -0x80000000

    .line 266
    .local v0, "year":I
    const/4 v1, 0x1

    .line 267
    .local v1, "month":I
    const/4 v2, 0x1

    .local v2, "day":I
    goto :goto_16

    .line 269
    .end local v0    # "year":I
    .end local v1    # "month":I
    .end local v2    # "day":I
    :cond_9
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    .line 270
    .restart local v0    # "year":I
    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    .line 271
    .restart local v1    # "month":I
    and-int/lit16 v2, p0, 0xff

    .line 274
    .restart local v2    # "day":I
    :goto_16
    if-eqz p1, :cond_26

    array-length v3, p1

    const/4 v4, 0x3

    if-lt v3, v4, :cond_26

    .line 275
    const/4 v3, 0x0

    aput v0, p1, v3

    .line 276
    const/4 v3, 0x1

    aput v1, p1, v3

    .line 277
    const/4 v3, 0x2

    aput v2, p1, v3

    .line 278
    return-object p1

    .line 281
    :cond_26
    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    .line 282
    .local v3, "result":[I
    return-object v3
.end method

.method private static blacklist encodeDate(III)I
    .registers 5
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 259
    shl-int/lit8 v0, p0, 0x10

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p2

    return v0
.end method

.method public static blacklist getInstance(Landroid/icu/impl/CalType;Z)Landroid/icu/impl/EraRules;
    .registers 26
    .param p0, "calType"    # Landroid/icu/impl/CalType;
    .param p1, "includeTentativeEra"    # Z

    .line 41
    const-string v1, " in era rule data for "

    const-string v0, "supplementalData"

    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v3, "android/icu/impl/data/icudata"

    invoke-static {v3, v0, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 43
    .local v2, "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    const-string v0, "calendarData"

    invoke-virtual {v2, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 44
    .local v3, "calendarDataRes":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 45
    .local v4, "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    const-string v0, "eras"

    invoke-virtual {v4, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    .line 47
    .local v5, "erasRes":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v6

    .line 48
    .local v6, "numEras":I
    const v0, 0x7fffffff

    .line 49
    .local v0, "firstTentativeIdx":I
    new-array v7, v6, [I

    .line 51
    .local v7, "startDates":[I
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v8

    move v9, v0

    .line 52
    .end local v0    # "firstTentativeIdx":I
    .local v8, "itr":Landroid/icu/util/UResourceBundleIterator;
    .local v9, "firstTentativeIdx":I
    :goto_2e
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_228

    .line 53
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v10

    .line 54
    .local v10, "eraRuleRes":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v10}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 55
    .local v11, "eraIdxStr":Ljava/lang/String;
    const/4 v12, -0x1

    .line 57
    .local v12, "eraIdx":I
    :try_start_3d
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_41} :catch_1fa

    .line 60
    .end local v12    # "eraIdx":I
    .local v0, "eraIdx":I
    nop

    .line 61
    if-ltz v0, :cond_1bb

    if-ge v0, v6, :cond_1bb

    .line 65
    aget v12, v7, v0

    invoke-static {v12}, Landroid/icu/impl/EraRules;->isSet(I)Z

    move-result v12

    if-nez v12, :cond_190

    .line 70
    const/4 v12, 0x1

    .line 71
    .local v12, "hasName":Z
    const/4 v13, 0x0

    .line 72
    .local v13, "hasEnd":Z
    invoke-virtual {v10}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v14

    .line 73
    .local v14, "ruleItr":Landroid/icu/util/UResourceBundleIterator;
    :goto_54
    invoke-virtual {v14}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f5

    .line 74
    invoke-virtual {v14}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v15

    .line 75
    .local v15, "res":Landroid/icu/util/UResourceBundle;
    move-object/from16 v16, v2

    .end local v2    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .local v16, "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v15}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "key":Ljava/lang/String;
    move-object/from16 v17, v3

    .end local v3    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .local v17, "calendarDataRes":Landroid/icu/util/UResourceBundle;
    const-string v3, "start"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 77
    invoke-virtual {v15}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v3

    .line 78
    .local v3, "fields":[I
    move-object/from16 v18, v4

    .end local v4    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .local v18, "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    array-length v4, v3

    move-object/from16 v19, v3

    .end local v3    # "fields":[I
    .local v19, "fields":[I
    const/4 v3, 0x3

    if-ne v4, v3, :cond_9c

    const/4 v3, 0x0

    aget v4, v19, v3

    const/16 v20, 0x1

    move/from16 v21, v3

    aget v3, v19, v20

    const/16 v22, 0x2

    move-object/from16 v23, v5

    .end local v5    # "erasRes":Landroid/icu/util/UResourceBundle;
    .local v23, "erasRes":Landroid/icu/util/UResourceBundle;
    aget v5, v19, v22

    invoke-static {v4, v3, v5}, Landroid/icu/impl/EraRules;->isValidRuleStartDate(III)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 83
    aget v3, v19, v21

    aget v4, v19, v20

    aget v5, v19, v22

    invoke-static {v3, v4, v5}, Landroid/icu/impl/EraRules;->encodeDate(III)I

    move-result v3

    aput v3, v7, v0

    .line 84
    .end local v19    # "fields":[I
    goto :goto_eb

    .line 78
    .end local v23    # "erasRes":Landroid/icu/util/UResourceBundle;
    .restart local v5    # "erasRes":Landroid/icu/util/UResourceBundle;
    .restart local v19    # "fields":[I
    :cond_9c
    move-object/from16 v23, v5

    .line 79
    .end local v5    # "erasRes":Landroid/icu/util/UResourceBundle;
    .restart local v23    # "erasRes":Landroid/icu/util/UResourceBundle;
    :cond_9e
    new-instance v3, Landroid/icu/util/ICUException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid era rule date data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 80
    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    .end local v18    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .end local v19    # "fields":[I
    .end local v23    # "erasRes":Landroid/icu/util/UResourceBundle;
    .restart local v4    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .restart local v5    # "erasRes":Landroid/icu/util/UResourceBundle;
    :cond_c7
    move-object/from16 v18, v4

    move-object/from16 v23, v5

    .end local v4    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .end local v5    # "erasRes":Landroid/icu/util/UResourceBundle;
    .restart local v18    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .restart local v23    # "erasRes":Landroid/icu/util/UResourceBundle;
    const-string v3, "named"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 85
    invoke-virtual {v15}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "val":Ljava/lang/String;
    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 87
    const/4 v12, 0x0

    .line 89
    .end local v3    # "val":Ljava/lang/String;
    :cond_e0
    goto :goto_eb

    :cond_e1
    const-string v3, "end"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 90
    const/4 v3, 0x1

    move v13, v3

    .line 92
    .end local v2    # "key":Ljava/lang/String;
    .end local v15    # "res":Landroid/icu/util/UResourceBundle;
    :goto_eb
    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v23

    goto/16 :goto_54

    .line 93
    .end local v16    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .end local v17    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .end local v18    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .end local v23    # "erasRes":Landroid/icu/util/UResourceBundle;
    .local v2, "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .local v3, "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v4    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .restart local v5    # "erasRes":Landroid/icu/util/UResourceBundle;
    :cond_f5
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v23, v5

    .end local v2    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .end local v3    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .end local v4    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .end local v5    # "erasRes":Landroid/icu/util/UResourceBundle;
    .restart local v16    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v17    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v18    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .restart local v23    # "erasRes":Landroid/icu/util/UResourceBundle;
    aget v2, v7, v0

    invoke-static {v2}, Landroid/icu/impl/EraRules;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_106

    .line 94
    goto :goto_10e

    .line 99
    :cond_106
    if-eqz v13, :cond_16b

    .line 100
    if-nez v0, :cond_140

    .line 107
    sget v2, Landroid/icu/impl/EraRules;->MIN_ENCODED_START:I

    aput v2, v7, v0

    .line 114
    :goto_10e
    if-eqz v12, :cond_132

    .line 115
    if-ge v0, v9, :cond_113

    goto :goto_136

    .line 116
    :cond_113
    new-instance v1, Landroid/icu/util/ICUException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-tentative era("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") must be placed before the first tentative era"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_132
    if-ge v0, v9, :cond_136

    .line 121
    move v2, v0

    move v9, v2

    .line 124
    .end local v0    # "eraIdx":I
    .end local v10    # "eraRuleRes":Landroid/icu/util/UResourceBundle;
    .end local v11    # "eraIdxStr":Ljava/lang/String;
    .end local v12    # "hasName":Z
    .end local v13    # "hasEnd":Z
    .end local v14    # "ruleItr":Landroid/icu/util/UResourceBundleIterator;
    :cond_136
    :goto_136
    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v23

    goto/16 :goto_2e

    .line 103
    .restart local v0    # "eraIdx":I
    .restart local v10    # "eraRuleRes":Landroid/icu/util/UResourceBundle;
    .restart local v11    # "eraIdxStr":Ljava/lang/String;
    .restart local v12    # "hasName":Z
    .restart local v13    # "hasEnd":Z
    .restart local v14    # "ruleItr":Landroid/icu/util/UResourceBundleIterator;
    :cond_140
    new-instance v2, Landroid/icu/util/ICUException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Era data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has only end rule."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_16b
    new-instance v2, Landroid/icu/util/ICUException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing era start/end rule date for key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    .end local v12    # "hasName":Z
    .end local v13    # "hasEnd":Z
    .end local v14    # "ruleItr":Landroid/icu/util/UResourceBundleIterator;
    .end local v16    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .end local v17    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .end local v18    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .end local v23    # "erasRes":Landroid/icu/util/UResourceBundle;
    .restart local v2    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v3    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v4    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .restart local v5    # "erasRes":Landroid/icu/util/UResourceBundle;
    :cond_190
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v2    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .end local v3    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .end local v4    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .restart local v16    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v17    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v18    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    new-instance v2, Landroid/icu/util/ICUException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicated era rule for rule key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    .end local v16    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .end local v17    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .end local v18    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .restart local v2    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v3    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v4    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    :cond_1bb
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v23, v5

    .line 62
    .end local v2    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .end local v3    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .end local v4    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .end local v5    # "erasRes":Landroid/icu/util/UResourceBundle;
    .restart local v16    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v17    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v18    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .restart local v23    # "erasRes":Landroid/icu/util/UResourceBundle;
    new-instance v2, Landroid/icu/util/ICUException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Era rule key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " must be in range [0, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v6, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    .end local v0    # "eraIdx":I
    .end local v16    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .end local v17    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .end local v18    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .end local v23    # "erasRes":Landroid/icu/util/UResourceBundle;
    .restart local v2    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v3    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v4    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .restart local v5    # "erasRes":Landroid/icu/util/UResourceBundle;
    .local v12, "eraIdx":I
    :catch_1fa
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v23, v5

    .line 59
    .end local v2    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .end local v3    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .end local v4    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .end local v5    # "erasRes":Landroid/icu/util/UResourceBundle;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v17    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v18    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .restart local v23    # "erasRes":Landroid/icu/util/UResourceBundle;
    new-instance v2, Landroid/icu/util/ICUException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid era rule key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "eraRuleRes":Landroid/icu/util/UResourceBundle;
    .end local v11    # "eraIdxStr":Ljava/lang/String;
    .end local v12    # "eraIdx":I
    .end local v16    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .end local v17    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .end local v18    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .end local v23    # "erasRes":Landroid/icu/util/UResourceBundle;
    .restart local v2    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v3    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v4    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .restart local v5    # "erasRes":Landroid/icu/util/UResourceBundle;
    :cond_228
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v23, v5

    .end local v2    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .end local v3    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .end local v4    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .end local v5    # "erasRes":Landroid/icu/util/UResourceBundle;
    .restart local v16    # "supplementalDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v17    # "calendarDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v18    # "calendarTypeRes":Landroid/icu/util/UResourceBundle;
    .restart local v23    # "erasRes":Landroid/icu/util/UResourceBundle;
    const v0, 0x7fffffff

    if-ge v9, v0, :cond_23d

    if-nez p1, :cond_23d

    .line 127
    new-instance v0, Landroid/icu/impl/EraRules;

    invoke-direct {v0, v7, v9}, Landroid/icu/impl/EraRules;-><init>([II)V

    return-object v0

    .line 130
    :cond_23d
    new-instance v0, Landroid/icu/impl/EraRules;

    invoke-direct {v0, v7, v6}, Landroid/icu/impl/EraRules;-><init>([II)V

    return-object v0
.end method

.method private blacklist initCurrentEra()V
    .registers 9

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 218
    .local v0, "localMillis":J
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v2

    .line 219
    .local v2, "zone":Landroid/icu/util/TimeZone;
    invoke-virtual {v2, v0, v1}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 221
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v3

    .line 222
    .local v3, "fields":[I
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/2addr v6, v5

    const/4 v7, 0x2

    aget v7, v3, v7

    invoke-static {v4, v6, v7}, Landroid/icu/impl/EraRules;->encodeDate(III)I

    move-result v4

    .line 223
    .local v4, "currentEncodedDate":I
    iget v6, p0, Landroid/icu/impl/EraRules;->numEras:I

    sub-int/2addr v6, v5

    .line 224
    .local v6, "eraIdx":I
    :goto_24
    if-lez v6, :cond_30

    .line 225
    iget-object v5, p0, Landroid/icu/impl/EraRules;->startDates:[I

    aget v5, v5, v6

    if-lt v4, v5, :cond_2d

    .line 226
    goto :goto_30

    .line 228
    :cond_2d
    add-int/lit8 v6, v6, -0x1

    goto :goto_24

    .line 232
    :cond_30
    :goto_30
    iput v6, p0, Landroid/icu/impl/EraRules;->currentEra:I

    .line 233
    return-void
.end method

.method private static blacklist isSet(I)Z
    .registers 2
    .param p0, "startDate"    # I

    .line 240
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static blacklist isValidRuleStartDate(III)Z
    .registers 5
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 244
    const/16 v0, -0x8000

    if-lt p0, v0, :cond_16

    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_16

    const/4 v0, 0x1

    if-lt p1, v0, :cond_16

    const/16 v1, 0xc

    if-gt p1, v1, :cond_16

    if-lt p2, v0, :cond_16

    const/16 v1, 0x1f

    if-gt p2, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method


# virtual methods
.method public blacklist getCurrentEraIndex()I
    .registers 2

    .line 213
    iget v0, p0, Landroid/icu/impl/EraRules;->currentEra:I

    return v0
.end method

.method public blacklist getEraIndex(III)I
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .line 179
    const/4 v0, 0x1

    if-lt p2, v0, :cond_3a

    const/16 v1, 0xc

    if-gt p2, v1, :cond_3a

    if-lt p3, v0, :cond_3a

    const/16 v0, 0x1f

    if-gt p3, v0, :cond_3a

    .line 182
    iget v0, p0, Landroid/icu/impl/EraRules;->numEras:I

    .line 187
    .local v0, "high":I
    iget-object v1, p0, Landroid/icu/impl/EraRules;->startDates:[I

    invoke-virtual {p0}, Landroid/icu/impl/EraRules;->getCurrentEraIndex()I

    move-result v2

    aget v1, v1, v2

    invoke-static {v1, p1, p2, p3}, Landroid/icu/impl/EraRules;->compareEncodedDateWithYMD(IIII)I

    move-result v1

    if-gtz v1, :cond_22

    .line 188
    invoke-virtual {p0}, Landroid/icu/impl/EraRules;->getCurrentEraIndex()I

    move-result v1

    .local v1, "low":I
    goto :goto_23

    .line 190
    .end local v1    # "low":I
    :cond_22
    const/4 v1, 0x0

    .line 194
    .restart local v1    # "low":I
    :goto_23
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_39

    .line 195
    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    .line 196
    .local v2, "i":I
    iget-object v3, p0, Landroid/icu/impl/EraRules;->startDates:[I

    aget v3, v3, v2

    invoke-static {v3, p1, p2, p3}, Landroid/icu/impl/EraRules;->compareEncodedDateWithYMD(IIII)I

    move-result v3

    if-gtz v3, :cond_37

    .line 197
    move v1, v2

    goto :goto_38

    .line 199
    :cond_37
    move v0, v2

    .line 201
    .end local v2    # "i":I
    :goto_38
    goto :goto_23

    .line 202
    :cond_39
    return v1

    .line 180
    .end local v0    # "high":I
    .end local v1    # "low":I
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal date - year:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "month:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "day:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getNumberOfEras()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/icu/impl/EraRules;->numEras:I

    return v0
.end method

.method public blacklist getStartDate(I[I)[I
    .registers 5
    .param p1, "eraIdx"    # I
    .param p2, "fillIn"    # [I

    .line 151
    if-ltz p1, :cond_f

    iget v0, p0, Landroid/icu/impl/EraRules;->numEras:I

    if-ge p1, v0, :cond_f

    .line 154
    iget-object v0, p0, Landroid/icu/impl/EraRules;->startDates:[I

    aget v0, v0, p1

    invoke-static {v0, p2}, Landroid/icu/impl/EraRules;->decodeDate(I[I)[I

    move-result-object v0

    return-object v0

    .line 152
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eraIdx is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getStartYear(I)I
    .registers 4
    .param p1, "eraIdx"    # I

    .line 164
    if-ltz p1, :cond_13

    iget v0, p0, Landroid/icu/impl/EraRules;->numEras:I

    if-ge p1, v0, :cond_13

    .line 167
    iget-object v0, p0, Landroid/icu/impl/EraRules;->startDates:[I

    aget v0, v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/impl/EraRules;->decodeDate(I[I)[I

    move-result-object v0

    .line 168
    .local v0, "fields":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 165
    .end local v0    # "fields":[I
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eraIdx is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
