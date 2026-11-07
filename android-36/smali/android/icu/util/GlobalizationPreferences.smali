.class public Landroid/icu/util/GlobalizationPreferences;
.super Ljava/lang/Object;
.source "GlobalizationPreferences.java"

# interfaces
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/util/GlobalizationPreferences;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o BI_CHARACTER:I = 0x0

.field private static final greylist-max-o BI_LIMIT:I = 0x5

.field public static final greylist-max-o BI_LINE:I = 0x2

.field public static final greylist-max-o BI_SENTENCE:I = 0x3

.field public static final greylist-max-o BI_TITLE:I = 0x4

.field public static final greylist-max-o BI_WORD:I = 0x1

.field public static final greylist-max-o DF_FULL:I = 0x0

.field private static final greylist-max-o DF_LIMIT:I = 0x5

.field public static final greylist-max-o DF_LONG:I = 0x1

.field public static final greylist-max-o DF_MEDIUM:I = 0x2

.field public static final greylist-max-o DF_NONE:I = 0x4

.field public static final greylist-max-o DF_SHORT:I = 0x3

.field public static final greylist-max-o ID_CURRENCY:I = 0x7

.field public static final greylist-max-o ID_CURRENCY_SYMBOL:I = 0x8

.field public static final greylist-max-o ID_KEYWORD:I = 0x5

.field public static final greylist-max-o ID_KEYWORD_VALUE:I = 0x6

.field public static final greylist-max-o ID_LANGUAGE:I = 0x1

.field public static final greylist-max-o ID_LOCALE:I = 0x0

.field public static final greylist-max-o ID_SCRIPT:I = 0x2

.field public static final greylist-max-o ID_TERRITORY:I = 0x3

.field public static final greylist-max-o ID_TIMEZONE:I = 0x9

.field public static final greylist-max-o ID_VARIANT:I = 0x4

.field public static final greylist-max-o NF_CURRENCY:I = 0x1

.field public static final greylist-max-o NF_INTEGER:I = 0x4

.field private static final greylist-max-o NF_LIMIT:I = 0x5

.field public static final greylist-max-o NF_NUMBER:I = 0x0

.field public static final greylist-max-o NF_PERCENT:I = 0x2

.field public static final greylist-max-o NF_SCIENTIFIC:I = 0x3

.field private static final greylist-max-o TYPE_BREAKITERATOR:I = 0x5

.field private static final greylist-max-o TYPE_CALENDAR:I = 0x1

.field private static final greylist-max-o TYPE_COLLATOR:I = 0x4

.field private static final greylist-max-o TYPE_DATEFORMAT:I = 0x2

.field private static final greylist-max-o TYPE_GENERIC:I = 0x0

.field private static final greylist-max-o TYPE_LIMIT:I = 0x6

.field private static final greylist-max-o TYPE_NUMBERFORMAT:I = 0x3

.field private static final greylist-max-o available_locales:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o language_territory_hack:[[Ljava/lang/String;

.field private static final greylist-max-o language_territory_hack_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o territory_tzid_hack:[[Ljava/lang/String;

.field static final greylist-max-o territory_tzid_hack_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o breakIterators:[Landroid/icu/text/BreakIterator;

.field private greylist-max-o calendar:Landroid/icu/util/Calendar;

.field private greylist-max-o collator:Landroid/icu/text/Collator;

.field private greylist-max-o currency:Landroid/icu/util/Currency;

.field private greylist-max-o dateFormats:[[Landroid/icu/text/DateFormat;

.field private volatile greylist-max-o frozen:Z

.field private greylist-max-o implicitLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o locales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o numberFormats:[Landroid/icu/text/NumberFormat;

.field private greylist-max-o territory:Ljava/lang/String;

.field private greylist-max-o timezone:Landroid/icu/util/TimeZone;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 167

    .line 1165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    .line 1177
    invoke-static {}, Landroid/icu/util/ULocale;->getAvailableLocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    .line 1178
    .local v0, "allLocales":[Landroid/icu/util/ULocale;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-ge v1, v2, :cond_23

    .line 1179
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v4}, Ljava/util/BitSet;-><init>(I)V

    .line 1180
    .local v2, "bits":Ljava/util/BitSet;
    sget-object v4, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1178
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1184
    .end local v1    # "i":I
    .end local v2    # "bits":Ljava/util/BitSet;
    :cond_23
    invoke-static {}, Landroid/icu/util/Calendar;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v1

    .line 1185
    .local v1, "calLocales":[Landroid/icu/util/ULocale;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    array-length v5, v1

    const/4 v6, 0x1

    if-ge v2, v5, :cond_4b

    .line 1186
    sget-object v5, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v7, v1, v2

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    .line 1187
    .local v5, "bits":Ljava/util/BitSet;
    if-nez v5, :cond_45

    .line 1188
    new-instance v7, Ljava/util/BitSet;

    invoke-direct {v7, v4}, Ljava/util/BitSet;-><init>(I)V

    move-object v5, v7

    .line 1189
    sget-object v7, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v8, v0, v2

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    :cond_45
    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 1185
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1194
    .end local v2    # "i":I
    .end local v5    # "bits":Ljava/util/BitSet;
    :cond_4b
    invoke-static {}, Landroid/icu/text/DateFormat;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v2

    .line 1195
    .local v2, "dateLocales":[Landroid/icu/util/ULocale;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_50
    array-length v7, v2

    if-ge v5, v7, :cond_73

    .line 1196
    sget-object v7, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/BitSet;

    .line 1197
    .local v7, "bits":Ljava/util/BitSet;
    if-nez v7, :cond_6c

    .line 1198
    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8, v4}, Ljava/util/BitSet;-><init>(I)V

    move-object v7, v8

    .line 1199
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v9, v0, v5

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    :cond_6c
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 1195
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    .line 1204
    .end local v5    # "i":I
    .end local v7    # "bits":Ljava/util/BitSet;
    :cond_73
    invoke-static {}, Landroid/icu/text/NumberFormat;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v5

    .line 1205
    .local v5, "numLocales":[Landroid/icu/util/ULocale;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_78
    array-length v8, v5

    if-ge v7, v8, :cond_9b

    .line 1206
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v9, v5, v7

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/BitSet;

    .line 1207
    .local v8, "bits":Ljava/util/BitSet;
    if-nez v8, :cond_94

    .line 1208
    new-instance v9, Ljava/util/BitSet;

    invoke-direct {v9, v4}, Ljava/util/BitSet;-><init>(I)V

    move-object v8, v9

    .line 1209
    sget-object v9, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v10, v0, v7

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    :cond_94
    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 1205
    add-int/lit8 v7, v7, 0x1

    goto :goto_78

    .line 1214
    .end local v7    # "i":I
    .end local v8    # "bits":Ljava/util/BitSet;
    :cond_9b
    invoke-static {}, Landroid/icu/text/Collator;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v7

    .line 1215
    .local v7, "collLocales":[Landroid/icu/util/ULocale;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_a0
    array-length v9, v7

    if-ge v8, v9, :cond_c3

    .line 1216
    sget-object v9, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v10, v7, v8

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/BitSet;

    .line 1217
    .local v9, "bits":Ljava/util/BitSet;
    if-nez v9, :cond_bc

    .line 1218
    new-instance v10, Ljava/util/BitSet;

    invoke-direct {v10, v4}, Ljava/util/BitSet;-><init>(I)V

    move-object v9, v10

    .line 1219
    sget-object v10, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v11, v0, v8

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    :cond_bc
    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 1215
    add-int/lit8 v8, v8, 0x1

    goto :goto_a0

    .line 1224
    .end local v8    # "i":I
    .end local v9    # "bits":Ljava/util/BitSet;
    :cond_c3
    invoke-static {}, Landroid/icu/text/BreakIterator;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v4

    .line 1225
    .local v4, "brkLocales":[Landroid/icu/util/ULocale;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_c8
    array-length v9, v4

    if-ge v8, v9, :cond_dc

    .line 1226
    sget-object v9, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v10, v4, v8

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/BitSet;

    .line 1227
    .restart local v9    # "bits":Ljava/util/BitSet;
    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 1225
    add-int/lit8 v8, v8, 0x1

    goto :goto_c8

    .line 1234
    .end local v0    # "allLocales":[Landroid/icu/util/ULocale;
    .end local v1    # "calLocales":[Landroid/icu/util/ULocale;
    .end local v2    # "dateLocales":[Landroid/icu/util/ULocale;
    .end local v4    # "brkLocales":[Landroid/icu/util/ULocale;
    .end local v5    # "numLocales":[Landroid/icu/util/ULocale;
    .end local v7    # "collLocales":[Landroid/icu/util/ULocale;
    .end local v8    # "i":I
    .end local v9    # "bits":Ljava/util/BitSet;
    :cond_dc
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    .line 1235
    const-string v0, "af"

    const-string v1, "ZA"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "am"

    const-string v2, "ET"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "ar"

    const-string v4, "SA"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "as"

    const-string v4, "IN"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v10

    const-string v0, "ay"

    const-string v5, "PE"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v11

    const-string v0, "az"

    const-string v12, "AZ"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v12

    const-string v0, "bal"

    const-string v13, "PK"

    filled-new-array {v0, v13}, [Ljava/lang/String;

    move-result-object v0

    const-string v14, "be"

    const-string v15, "BY"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    const-string v15, "bg"

    move/from16 v161, v3

    const-string v3, "BG"

    filled-new-array {v15, v3}, [Ljava/lang/String;

    move-result-object v15

    const-string v3, "bn"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v16

    const-string v3, "bs"

    move/from16 v162, v6

    const-string v6, "BA"

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v17

    const-string v3, "ca"

    const-string v6, "ES"

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v18

    const-string v3, "ch"

    move-object/from16 v19, v0

    const-string v0, "MP"

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v3, "cpe"

    move-object/from16 v20, v0

    const-string v0, "SL"

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    const-string v3, "cs"

    move-object/from16 v22, v7

    const-string v7, "CZ"

    filled-new-array {v3, v7}, [Ljava/lang/String;

    move-result-object v3

    const-string v7, "cy"

    move-object/from16 v23, v3

    const-string v3, "GB"

    filled-new-array {v7, v3}, [Ljava/lang/String;

    move-result-object v7

    move-object/from16 v24, v7

    const-string v7, "da"

    move-object/from16 v25, v8

    const-string v8, "DK"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "de"

    move-object/from16 v26, v7

    const-string v7, "DE"

    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v8

    move-object/from16 v27, v8

    const-string v8, "dv"

    move-object/from16 v28, v9

    const-string v9, "MV"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "dz"

    move-object/from16 v29, v8

    const-string v8, "BT"

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "el"

    move-object/from16 v30, v8

    const-string v8, "GR"

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "en"

    move-object/from16 v31, v8

    const-string v8, "US"

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v9

    move-object/from16 v32, v9

    const-string v9, "es"

    filled-new-array {v9, v6}, [Ljava/lang/String;

    move-result-object v9

    move-object/from16 v33, v9

    const-string v9, "et"

    move-object/from16 v34, v10

    const-string v10, "EE"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "eu"

    filled-new-array {v10, v6}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v35, v9

    const-string v9, "fa"

    move-object/from16 v36, v10

    const-string v10, "IR"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "fi"

    move-object/from16 v37, v9

    const-string v9, "FI"

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "fil"

    move-object/from16 v38, v9

    const-string v9, "PH"

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v39, v10

    const-string v10, "fj"

    move-object/from16 v40, v11

    const-string v11, "FJ"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "fo"

    move-object/from16 v41, v10

    const-string v10, "FO"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "fr"

    move-object/from16 v42, v10

    const-string v10, "FR"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "ga"

    move-object/from16 v43, v10

    const-string v10, "IE"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "gd"

    filled-new-array {v11, v3}, [Ljava/lang/String;

    move-result-object v11

    move-object/from16 v44, v10

    const-string v10, "gl"

    filled-new-array {v10, v6}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v45, v10

    const-string v10, "gn"

    move-object/from16 v46, v11

    const-string v11, "PY"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "gu"

    filled-new-array {v11, v4}, [Ljava/lang/String;

    move-result-object v11

    move-object/from16 v47, v10

    const-string v10, "gv"

    filled-new-array {v10, v3}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v48, v10

    const-string v10, "ha"

    move-object/from16 v49, v11

    const-string v11, "NG"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "he"

    move-object/from16 v50, v10

    const-string v10, "IL"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "hi"

    filled-new-array {v11, v4}, [Ljava/lang/String;

    move-result-object v11

    move-object/from16 v51, v10

    const-string v10, "ho"

    move-object/from16 v52, v11

    const-string v11, "PG"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v53, v10

    const-string v10, "hr"

    move-object/from16 v54, v12

    const-string v12, "HR"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v55, v10

    const-string v10, "ht"

    move-object/from16 v56, v14

    const-string v14, "HT"

    filled-new-array {v10, v14}, [Ljava/lang/String;

    move-result-object v10

    const-string v14, "hu"

    move-object/from16 v57, v10

    const-string v10, "HU"

    filled-new-array {v14, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v14, "hy"

    move-object/from16 v58, v10

    const-string v10, "AM"

    filled-new-array {v14, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v14, "id"

    move-object/from16 v163, v6

    const-string v6, "ID"

    filled-new-array {v14, v6}, [Ljava/lang/String;

    move-result-object v14

    move-object/from16 v59, v10

    const-string v10, "is"

    move-object/from16 v60, v14

    const-string v14, "IS"

    filled-new-array {v10, v14}, [Ljava/lang/String;

    move-result-object v10

    const-string v14, "it"

    move-object/from16 v61, v10

    const-string v10, "IT"

    filled-new-array {v14, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v14, "ja"

    move-object/from16 v62, v10

    const-string v10, "JP"

    filled-new-array {v14, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v14, "ka"

    move-object/from16 v63, v10

    const-string v10, "GE"

    filled-new-array {v14, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v14, "kk"

    move-object/from16 v164, v6

    const-string v6, "KZ"

    filled-new-array {v14, v6}, [Ljava/lang/String;

    move-result-object v14

    move-object/from16 v64, v10

    const-string v10, "kl"

    move-object/from16 v165, v6

    const-string v6, "GL"

    filled-new-array {v10, v6}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v65, v10

    const-string v10, "km"

    move-object/from16 v66, v14

    const-string v14, "KH"

    filled-new-array {v10, v14}, [Ljava/lang/String;

    move-result-object v10

    const-string v14, "kn"

    filled-new-array {v14, v4}, [Ljava/lang/String;

    move-result-object v14

    move-object/from16 v67, v10

    const-string v10, "ko"

    move-object/from16 v68, v14

    const-string v14, "KR"

    filled-new-array {v10, v14}, [Ljava/lang/String;

    move-result-object v10

    const-string v14, "kok"

    filled-new-array {v14, v4}, [Ljava/lang/String;

    move-result-object v14

    move-object/from16 v69, v10

    const-string v10, "ks"

    filled-new-array {v10, v4}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v70, v10

    const-string v10, "ku"

    move-object/from16 v71, v14

    const-string v14, "TR"

    filled-new-array {v10, v14}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v72, v10

    const-string v10, "ky"

    move-object/from16 v73, v15

    const-string v15, "KG"

    filled-new-array {v10, v15}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "la"

    move-object/from16 v74, v10

    const-string v10, "VA"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "lb"

    move-object/from16 v75, v10

    const-string v10, "LU"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "ln"

    move-object/from16 v76, v10

    const-string v10, "CG"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "lo"

    move-object/from16 v77, v10

    const-string v10, "LA"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "lt"

    move-object/from16 v78, v10

    const-string v10, "LT"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "lv"

    move-object/from16 v79, v10

    const-string v10, "LV"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "mai"

    filled-new-array {v15, v4}, [Ljava/lang/String;

    move-result-object v15

    move-object/from16 v80, v10

    const-string v10, "men"

    move-object/from16 v81, v15

    const-string v15, "GN"

    filled-new-array {v10, v15}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "mg"

    move-object/from16 v82, v10

    const-string v10, "MG"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "mh"

    move-object/from16 v83, v10

    const-string v10, "MH"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "mk"

    move-object/from16 v84, v10

    const-string v10, "MK"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "ml"

    filled-new-array {v15, v4}, [Ljava/lang/String;

    move-result-object v15

    move-object/from16 v85, v10

    const-string v10, "mn"

    move-object/from16 v86, v15

    const-string v15, "MN"

    filled-new-array {v10, v15}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "mni"

    filled-new-array {v15, v4}, [Ljava/lang/String;

    move-result-object v15

    move-object/from16 v87, v10

    const-string v10, "mo"

    move-object/from16 v88, v15

    const-string v15, "MD"

    filled-new-array {v10, v15}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "mr"

    filled-new-array {v15, v4}, [Ljava/lang/String;

    move-result-object v15

    move-object/from16 v89, v10

    const-string v10, "ms"

    move-object/from16 v90, v15

    const-string v15, "MY"

    filled-new-array {v10, v15}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "mt"

    move-object/from16 v91, v10

    const-string v10, "MT"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "my"

    move-object/from16 v92, v10

    const-string v10, "MM"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "na"

    move-object/from16 v93, v10

    const-string v10, "NR"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "nb"

    move-object/from16 v94, v10

    const-string v10, "NO"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v15

    move-object/from16 v95, v15

    const-string v15, "nd"

    filled-new-array {v15, v1}, [Ljava/lang/String;

    move-result-object v15

    move-object/from16 v96, v15

    const-string v15, "ne"

    move-object/from16 v166, v6

    const-string v6, "NP"

    filled-new-array {v15, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v15, "niu"

    move-object/from16 v97, v6

    const-string v6, "NU"

    filled-new-array {v15, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v15, "nl"

    move-object/from16 v98, v6

    const-string v6, "NL"

    filled-new-array {v15, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v15, "nn"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v15

    move-object/from16 v99, v6

    const-string v6, "no"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "nr"

    filled-new-array {v10, v1}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v100, v6

    const-string v6, "nso"

    filled-new-array {v6, v1}, [Ljava/lang/String;

    move-result-object v6

    move-object/from16 v101, v6

    const-string v6, "ny"

    move-object/from16 v102, v10

    const-string v10, "MW"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "om"

    move-object/from16 v103, v6

    const-string v6, "KE"

    filled-new-array {v10, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "or"

    filled-new-array {v10, v4}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v104, v6

    const-string v6, "pa"

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v6

    move-object/from16 v105, v6

    const-string v6, "pau"

    move-object/from16 v106, v10

    const-string v10, "PW"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "pl"

    move-object/from16 v107, v6

    const-string v6, "PL"

    filled-new-array {v10, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "ps"

    filled-new-array {v10, v13}, [Ljava/lang/String;

    move-result-object v10

    const-string v13, "pt"

    move-object/from16 v108, v6

    const-string v6, "BR"

    filled-new-array {v13, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v13, "qu"

    filled-new-array {v13, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v13, "rn"

    move-object/from16 v109, v5

    const-string v5, "BI"

    filled-new-array {v13, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v13, "ro"

    move-object/from16 v110, v5

    const-string v5, "RO"

    filled-new-array {v13, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v13, "ru"

    move-object/from16 v111, v5

    const-string v5, "RU"

    filled-new-array {v13, v5}, [Ljava/lang/String;

    move-result-object v13

    move-object/from16 v112, v6

    const-string v6, "rw"

    move-object/from16 v113, v10

    const-string v10, "RW"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "sd"

    filled-new-array {v10, v4}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v114, v6

    const-string v6, "sg"

    move-object/from16 v115, v10

    const-string v10, "CF"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "si"

    move-object/from16 v116, v6

    const-string v6, "LK"

    filled-new-array {v10, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "sk"

    move-object/from16 v117, v6

    const-string v6, "SK"

    filled-new-array {v10, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "sl"

    move-object/from16 v118, v6

    const-string v6, "SI"

    filled-new-array {v10, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "sm"

    move-object/from16 v119, v6

    const-string v6, "WS"

    filled-new-array {v10, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "so"

    move-object/from16 v120, v6

    const-string v6, "DJ"

    filled-new-array {v10, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "sq"

    move-object/from16 v121, v6

    const-string v6, "CS"

    filled-new-array {v10, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "sr"

    move-object/from16 v122, v6

    const-string v6, "CS"

    filled-new-array {v10, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "ss"

    filled-new-array {v10, v1}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v123, v6

    const-string v6, "st"

    filled-new-array {v6, v1}, [Ljava/lang/String;

    move-result-object v6

    move-object/from16 v124, v6

    const-string v6, "sv"

    move-object/from16 v125, v10

    const-string v10, "SE"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "sw"

    move-object/from16 v126, v6

    const-string v6, "KE"

    filled-new-array {v10, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "ta"

    filled-new-array {v10, v4}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v127, v6

    const-string v6, "te"

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v6

    move-object/from16 v128, v6

    const-string v6, "tem"

    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v6, "tet"

    move-object/from16 v129, v0

    const-string v0, "TL"

    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v6, "th"

    move-object/from16 v130, v0

    const-string v0, "TH"

    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v6, "ti"

    filled-new-array {v6, v2}, [Ljava/lang/String;

    move-result-object v6

    move-object/from16 v131, v0

    const-string v0, "tg"

    move-object/from16 v132, v6

    const-string v6, "TJ"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v0

    const-string v6, "tk"

    move-object/from16 v133, v0

    const-string v0, "TM"

    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v6, "tkl"

    move-object/from16 v134, v0

    const-string v0, "TK"

    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v6, "tvl"

    move-object/from16 v135, v0

    const-string v0, "TV"

    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v6, "tl"

    filled-new-array {v6, v9}, [Ljava/lang/String;

    move-result-object v6

    const-string v9, "tn"

    filled-new-array {v9, v1}, [Ljava/lang/String;

    move-result-object v9

    move-object/from16 v136, v0

    const-string v0, "to"

    move-object/from16 v137, v6

    const-string v6, "TO"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v0

    const-string v6, "tpi"

    filled-new-array {v6, v11}, [Ljava/lang/String;

    move-result-object v6

    const-string v11, "tr"

    filled-new-array {v11, v14}, [Ljava/lang/String;

    move-result-object v11

    const-string v14, "ts"

    filled-new-array {v14, v1}, [Ljava/lang/String;

    move-result-object v14

    move-object/from16 v138, v0

    const-string v0, "uk"

    move-object/from16 v139, v6

    const-string v6, "UA"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v0

    const-string v6, "ur"

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v6

    move-object/from16 v140, v0

    const-string v0, "uz"

    move-object/from16 v141, v6

    const-string v6, "UZ"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v0

    const-string v6, "ve"

    filled-new-array {v6, v1}, [Ljava/lang/String;

    move-result-object v6

    move-object/from16 v142, v0

    const-string v0, "vi"

    move-object/from16 v143, v6

    const-string v6, "VN"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v0

    const-string v6, "wo"

    move-object/from16 v144, v0

    const-string v0, "SN"

    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v6, "xh"

    filled-new-array {v6, v1}, [Ljava/lang/String;

    move-result-object v6

    move-object/from16 v145, v0

    const-string v0, "zh"

    move-object/from16 v146, v6

    const-string v6, "CN"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v0

    const-string v6, "zh_Hant"

    move-object/from16 v147, v0

    const-string v0, "TW"

    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v6, "zu"

    filled-new-array {v6, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v6, "aa"

    filled-new-array {v6, v2}, [Ljava/lang/String;

    move-result-object v6

    move-object/from16 v148, v0

    const-string v0, "byn"

    move-object/from16 v149, v1

    const-string v1, "ER"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "eo"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const-string v7, "gez"

    filled-new-array {v7, v2}, [Ljava/lang/String;

    move-result-object v150

    const-string v7, "haw"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v151

    const-string v7, "iu"

    move-object/from16 v152, v0

    const-string v0, "CA"

    filled-new-array {v7, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v7, "kw"

    filled-new-array {v7, v3}, [Ljava/lang/String;

    move-result-object v153

    const-string v7, "sa"

    filled-new-array {v7, v4}, [Ljava/lang/String;

    move-result-object v154

    const-string v4, "sh"

    filled-new-array {v4, v12}, [Ljava/lang/String;

    move-result-object v155

    const-string v4, "sid"

    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v156

    const-string v4, "syr"

    const-string v7, "SY"

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v157

    const-string v4, "tig"

    const-string v7, "ER"

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v158

    const-string v4, "tt"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v159

    const-string v4, "wal"

    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v160

    move-object/from16 v7, v152

    move-object/from16 v152, v0

    move-object v0, v8

    move-object/from16 v8, v25

    move-object/from16 v25, v29

    move-object/from16 v29, v33

    move-object/from16 v33, v38

    move-object/from16 v38, v44

    move-object/from16 v44, v50

    move-object/from16 v50, v58

    move-object/from16 v58, v65

    move-object/from16 v65, v74

    move-object/from16 v74, v83

    move-object/from16 v83, v92

    move-object/from16 v92, v100

    move-object/from16 v100, v108

    move-object/from16 v108, v115

    move-object/from16 v115, v122

    move-object/from16 v122, v128

    move-object/from16 v128, v134

    move-object/from16 v134, v139

    move-object/from16 v139, v142

    move-object/from16 v142, v145

    move-object/from16 v145, v148

    move-object/from16 v148, v7

    move-object/from16 v7, v91

    move-object/from16 v91, v15

    move-object/from16 v15, v73

    move-object/from16 v73, v82

    move-object/from16 v82, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v27

    move-object/from16 v27, v31

    move-object/from16 v31, v36

    move-object/from16 v36, v42

    move-object/from16 v42, v49

    move-object/from16 v12, v54

    move-object/from16 v49, v57

    move-object/from16 v54, v62

    move-object/from16 v57, v66

    move-object/from16 v62, v71

    move-object/from16 v66, v75

    move-object/from16 v71, v80

    move-object/from16 v75, v84

    move-object/from16 v80, v89

    move-object/from16 v84, v93

    move-object/from16 v89, v98

    move-object/from16 v93, v102

    move-object/from16 v98, v105

    move-object/from16 v105, v111

    move-object/from16 v102, v112

    move-object/from16 v111, v118

    move-object/from16 v112, v119

    move-object/from16 v118, v124

    move-object/from16 v119, v126

    move-object/from16 v124, v130

    move-object/from16 v126, v132

    move-object/from16 v130, v136

    move-object/from16 v132, v9

    move-object/from16 v136, v14

    move-object/from16 v9, v28

    move-object/from16 v28, v32

    move-object/from16 v32, v37

    move-object/from16 v37, v43

    move-object/from16 v43, v48

    move-object/from16 v48, v55

    move-object/from16 v14, v56

    move-object/from16 v55, v63

    move-object/from16 v56, v64

    move-object/from16 v63, v70

    move-object/from16 v64, v72

    move-object/from16 v70, v79

    move-object/from16 v72, v81

    move-object/from16 v79, v88

    move-object/from16 v81, v90

    move-object/from16 v88, v97

    move-object/from16 v90, v99

    move-object/from16 v97, v106

    move-object/from16 v99, v107

    move-object/from16 v107, v114

    move-object/from16 v114, v121

    move-object/from16 v121, v10

    move-object/from16 v106, v13

    move-object/from16 v13, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v26

    move-object/from16 v26, v30

    move-object/from16 v10, v34

    move-object/from16 v30, v35

    move-object/from16 v34, v39

    move-object/from16 v35, v41

    move-object/from16 v39, v46

    move-object/from16 v41, v47

    move-object/from16 v46, v52

    move-object/from16 v47, v53

    move-object/from16 v52, v60

    move-object/from16 v53, v61

    move-object/from16 v60, v68

    move-object/from16 v61, v69

    move-object/from16 v68, v77

    move-object/from16 v69, v78

    move-object/from16 v77, v86

    move-object/from16 v78, v87

    move-object/from16 v86, v95

    move-object/from16 v87, v96

    move-object/from16 v95, v103

    move-object/from16 v96, v104

    move-object/from16 v103, v109

    move-object/from16 v104, v110

    move-object/from16 v109, v116

    move-object/from16 v110, v117

    move-object/from16 v116, v123

    move-object/from16 v117, v125

    move-object/from16 v123, v129

    move-object/from16 v125, v131

    move-object/from16 v129, v135

    move-object/from16 v131, v137

    move-object/from16 v137, v140

    move-object/from16 v140, v143

    move-object/from16 v143, v146

    move-object/from16 v146, v149

    move-object/from16 v149, v1

    move-object/from16 v135, v11

    move-object/from16 v11, v40

    move-object/from16 v40, v45

    move-object/from16 v45, v51

    move-object/from16 v51, v59

    move-object/from16 v59, v67

    move-object/from16 v67, v76

    move-object/from16 v76, v85

    move-object/from16 v85, v94

    move-object/from16 v94, v101

    move-object/from16 v101, v113

    move-object/from16 v113, v120

    move-object/from16 v120, v127

    move-object/from16 v127, v133

    move-object/from16 v133, v138

    move-object/from16 v138, v141

    move-object/from16 v141, v144

    move-object/from16 v144, v147

    move-object/from16 v147, v6

    filled-new-array/range {v7 .. v160}, [[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;

    .line 1391
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_789
    sget-object v2, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_7a2

    .line 1392
    sget-object v2, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    sget-object v4, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v4, v4, v161

    sget-object v6, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;

    aget-object v6, v6, v1

    aget-object v6, v6, v162

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    add-int/lit8 v1, v1, 0x1

    goto :goto_789

    .line 1396
    .end local v1    # "i":I
    :cond_7a2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;

    .line 1397
    const-string v1, "AQ"

    const-string v2, "Antarctica/McMurdo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v6

    const-string v1, "AR"

    const-string v2, "America/Buenos_Aires"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v7

    const-string v1, "AU"

    const-string v2, "Australia/Sydney"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v8

    const-string v1, "BR"

    const-string v2, "America/Sao_Paulo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v9

    const-string v1, "CA"

    const-string v2, "America/Toronto"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v10

    const-string v1, "CD"

    const-string v2, "Africa/Kinshasa"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v11

    const-string v1, "CL"

    const-string v2, "America/Santiago"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v12

    const-string v1, "CN"

    const-string v2, "Asia/Shanghai"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v13

    const-string v1, "EC"

    const-string v2, "America/Guayaquil"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v14

    const-string v1, "Europe/Madrid"

    move-object/from16 v2, v163

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v1, "Europe/London"

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v16

    const-string v1, "America/Godthab"

    move-object/from16 v2, v166

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v17

    const-string v1, "Asia/Jakarta"

    move-object/from16 v2, v164

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v18

    const-string v1, "ML"

    const-string v2, "Africa/Bamako"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v19

    const-string v1, "MX"

    const-string v2, "America/Mexico_City"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v20

    const-string v1, "MY"

    const-string v2, "Asia/Kuala_Lumpur"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v21

    const-string v1, "NZ"

    const-string v2, "Pacific/Auckland"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v22

    const-string v1, "PT"

    const-string v2, "Europe/Lisbon"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v23

    const-string v1, "Europe/Moscow"

    filled-new-array {v5, v1}, [Ljava/lang/String;

    move-result-object v24

    const-string v1, "UA"

    const-string v2, "Europe/Kiev"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v25

    const-string v1, "America/New_York"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v26

    const-string v0, "UZ"

    const-string v1, "Asia/Tashkent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v27

    const-string v0, "PF"

    const-string v1, "Pacific/Tahiti"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v28

    const-string v0, "FM"

    const-string v1, "Pacific/Kosrae"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v29

    const-string v0, "KI"

    const-string v1, "Pacific/Tarawa"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v30

    const-string v0, "Asia/Almaty"

    move-object/from16 v1, v165

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v31

    const-string v0, "MH"

    const-string v1, "Pacific/Majuro"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v32

    const-string v0, "MN"

    const-string v1, "Asia/Ulaanbaatar"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v33

    const-string v0, "SJ"

    const-string v1, "Arctic/Longyearbyen"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v34

    const-string v0, "UM"

    const-string v1, "Pacific/Midway"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v35

    filled-new-array/range {v6 .. v35}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;

    .line 1430
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_89a
    sget-object v1, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_8b3

    .line 1431
    sget-object v1, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;

    sget-object v2, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v161

    sget-object v3, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v162

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    add-int/lit8 v0, v0, 0x1

    goto :goto_89a

    .line 1433
    .end local v0    # "i":I
    :cond_8b3
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1137
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->reset()Landroid/icu/util/GlobalizationPreferences;

    .line 95
    return-void
.end method

.method private greylist-max-o getAvailableLocale(I)Landroid/icu/util/ULocale;
    .registers 7
    .param p1, "type"    # I

    .line 1142
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    move-result-object v0

    .line 1143
    .local v0, "locs":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/ULocale;>;"
    const/4 v1, 0x0

    .line 1144
    .local v1, "result":Landroid/icu/util/ULocale;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 1145
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/ULocale;

    .line 1146
    .local v3, "l":Landroid/icu/util/ULocale;
    invoke-direct {p0, v3, p1}, Landroid/icu/util/GlobalizationPreferences;->isAvailableLocale(Landroid/icu/util/ULocale;I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1147
    move-object v1, v3

    .line 1148
    goto :goto_1d

    .line 1144
    .end local v3    # "l":Landroid/icu/util/ULocale;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1151
    .end local v2    # "i":I
    :cond_1d
    :goto_1d
    return-object v1
.end method

.method private greylist-max-o isAvailableLocale(Landroid/icu/util/ULocale;I)Z
    .registers 5
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "type"    # I

    .line 1155
    sget-object v0, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 1156
    .local v0, "bits":Ljava/util/BitSet;
    if-eqz v0, :cond_12

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1157
    const/4 v1, 0x1

    return v1

    .line 1159
    :cond_12
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public blacklist cloneAsThawed()Landroid/icu/util/GlobalizationPreferences;
    .registers 3

    .line 1462
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/GlobalizationPreferences;

    .line 1463
    .local v0, "result":Landroid/icu/util/GlobalizationPreferences;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/util/GlobalizationPreferences;->frozen:Z
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1464
    return-object v0

    .line 1465
    .end local v0    # "result":Landroid/icu/util/GlobalizationPreferences;
    :catch_a
    move-exception v0

    .line 1467
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 89
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->cloneAsThawed()Landroid/icu/util/GlobalizationPreferences;

    move-result-object v0

    return-object v0
.end method

.method public blacklist freeze()Landroid/icu/util/GlobalizationPreferences;
    .registers 2

    .line 1452
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/GlobalizationPreferences;->frozen:Z

    .line 1453
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 89
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->freeze()Landroid/icu/util/GlobalizationPreferences;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBreakIterator(I)Landroid/icu/text/BreakIterator;
    .registers 4
    .param p1, "type"    # I

    .line 493
    if-ltz p1, :cond_20

    const/4 v0, 0x5

    if-ge p1, v0, :cond_20

    .line 496
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    aget-object v0, v0, p1

    if-nez v0, :cond_10

    goto :goto_1b

    .line 499
    :cond_10
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/BreakIterator;

    return-object v0

    .line 497
    :cond_1b
    :goto_1b
    invoke-virtual {p0, p1}, Landroid/icu/util/GlobalizationPreferences;->guessBreakIterator(I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0

    .line 494
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal break iterator type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getCalendar()Landroid/icu/util/Calendar;
    .registers 4

    .line 411
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->calendar:Landroid/icu/util/Calendar;

    if-nez v0, :cond_9

    .line 412
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessCalendar()Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0

    .line 414
    :cond_9
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    .line 415
    .local v0, "temp":Landroid/icu/util/Calendar;
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 417
    return-object v0
.end method

.method public greylist-max-o getCollator()Landroid/icu/text/Collator;
    .registers 4

    .line 456
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->collator:Landroid/icu/text/Collator;

    if-nez v0, :cond_9

    .line 457
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessCollator()Landroid/icu/text/Collator;

    move-result-object v0

    return-object v0

    .line 460
    :cond_9
    :try_start_9
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->collator:Landroid/icu/text/Collator;

    invoke-virtual {v0}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/Collator;
    :try_end_11
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_9 .. :try_end_11} :catch_12

    return-object v0

    .line 461
    :catch_12
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    const-string v2, "Error in cloning collator"

    invoke-direct {v1, v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o getCurrency()Landroid/icu/util/Currency;
    .registers 2

    .line 383
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->currency:Landroid/icu/util/Currency;

    if-nez v0, :cond_9

    .line 384
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessCurrency()Landroid/icu/util/Currency;

    move-result-object v0

    return-object v0

    .line 386
    :cond_9
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->currency:Landroid/icu/util/Currency;

    return-object v0
.end method

.method public greylist-max-o getDateFormat(II)Landroid/icu/text/DateFormat;
    .registers 5
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I

    .line 659
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    if-eq p2, v0, :cond_2f

    :cond_5
    if-ltz p1, :cond_2f

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2f

    if-ltz p2, :cond_2f

    if-ge p2, v0, :cond_2f

    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, "result":Landroid/icu/text/DateFormat;
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    if-eqz v1, :cond_19

    .line 666
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    aget-object v1, v1, p1

    aget-object v0, v1, p2

    .line 668
    :cond_19
    if-eqz v0, :cond_2a

    .line 669
    invoke-virtual {v0}, Landroid/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/icu/text/DateFormat;

    .line 671
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    goto :goto_2e

    .line 673
    :cond_2a
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/GlobalizationPreferences;->guessDateFormat(II)Landroid/icu/text/DateFormat;

    move-result-object v0

    .line 675
    :goto_2e
    return-object v0

    .line 662
    .end local v0    # "result":Landroid/icu/text/DateFormat;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal date format style arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getDisplayName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 15
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 533
    move-object v0, p1

    .line 534
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    .line 535
    .local v2, "locale":Landroid/icu/util/ULocale;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/icu/util/GlobalizationPreferences;->isAvailableLocale(Landroid/icu/util/ULocale;I)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 536
    goto :goto_9

    .line 538
    :cond_1d
    const-string v4, "und-"

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch p2, :pswitch_data_12c

    .line 611
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 580
    :pswitch_3d
    new-instance v3, Landroid/icu/text/SimpleDateFormat;

    const-string v4, "vvvv"

    invoke-direct {v3, v4, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 581
    .local v3, "dtf":Landroid/icu/text/SimpleDateFormat;
    invoke-static {p1}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/text/SimpleDateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 582
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 587
    const/4 v4, 0x0

    .line 590
    .local v4, "isBadStr":Z
    move-object v6, v0

    .line 591
    .local v6, "teststr":Ljava/lang/String;
    const/16 v7, 0x28

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 592
    .local v7, "sidx":I
    const/16 v8, 0x29

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 593
    .local v8, "eidx":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_72

    if-eq v8, v9, :cond_72

    sub-int v9, v8, v7

    const/4 v10, 0x3

    if-ne v9, v10, :cond_72

    .line 594
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 596
    :cond_72
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v5, :cond_8e

    .line 597
    const/4 v4, 0x1

    .line 598
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7a
    if-ge v9, v5, :cond_8e

    .line 599
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 600
    .local v10, "c":C
    const/16 v11, 0x41

    if-lt v10, v11, :cond_8c

    const/16 v11, 0x5a

    if-ge v11, v10, :cond_89

    goto :goto_8c

    .line 598
    .end local v10    # "c":C
    :cond_89
    add-int/lit8 v9, v9, 0x1

    goto :goto_7a

    .line 601
    .restart local v10    # "c":C
    :cond_8c
    :goto_8c
    const/4 v4, 0x0

    .line 602
    nop

    .line 606
    .end local v9    # "i":I
    .end local v10    # "c":C
    :cond_8e
    if-eqz v4, :cond_122

    .line 607
    goto/16 :goto_9

    .line 569
    .end local v3    # "dtf":Landroid/icu/text/SimpleDateFormat;
    .end local v4    # "isBadStr":Z
    .end local v6    # "teststr":Ljava/lang/String;
    .end local v7    # "sidx":I
    .end local v8    # "eidx":I
    :pswitch_92
    new-instance v4, Landroid/icu/util/Currency;

    invoke-direct {v4, p1}, Landroid/icu/util/Currency;-><init>(Ljava/lang/String;)V

    .line 570
    .local v4, "temp":Landroid/icu/util/Currency;
    const/4 v5, 0x7

    if-ne p2, v5, :cond_9c

    .line 571
    move v3, v6

    goto :goto_9d

    .line 572
    :cond_9c
    nop

    :goto_9d
    nop

    .line 570
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v0

    .line 578
    goto/16 :goto_122

    .line 559
    .end local v4    # "temp":Landroid/icu/util/Currency;
    :pswitch_a5
    new-array v4, v5, [Ljava/lang/String;

    .line 560
    .local v4, "parts":[Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-static {p1, v5, v4}, Landroid/icu/impl/Utility;->split(Ljava/lang/String;C[Ljava/lang/String;)V

    .line 561
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "und@"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v3, v4, v3

    invoke-static {v5, v3, v2}, Landroid/icu/util/ULocale;->getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    .line 563
    aget-object v3, v4, v6

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_122

    .line 564
    goto/16 :goto_9

    .line 556
    .end local v4    # "parts":[Ljava/lang/String;
    :pswitch_cf
    invoke-static {p1, v2}, Landroid/icu/util/ULocale;->getDisplayKeyword(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    .line 557
    goto :goto_122

    .line 553
    :pswitch_d4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "und-QQ-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/icu/util/ULocale;->getDisplayVariant(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    .line 554
    goto :goto_122

    .line 549
    :pswitch_ec
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/icu/util/ULocale;->getDisplayCountry(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    .line 550
    goto :goto_122

    .line 546
    :pswitch_102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/icu/util/ULocale;->getDisplayScript(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    .line 547
    goto :goto_122

    .line 543
    :pswitch_118
    invoke-static {p1, v2}, Landroid/icu/util/ULocale;->getDisplayLanguage(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    .line 544
    goto :goto_122

    .line 540
    :pswitch_11d
    invoke-static {p1, v2}, Landroid/icu/util/ULocale;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    .line 541
    nop

    .line 616
    :cond_122
    :goto_122
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_129

    .line 617
    return-object v0

    .line 619
    .end local v2    # "locale":Landroid/icu/util/ULocale;
    :cond_129
    goto/16 :goto_9

    .line 620
    :cond_12b
    return-object v0

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_11d
        :pswitch_118
        :pswitch_102
        :pswitch_ec
        :pswitch_d4
        :pswitch_cf
        :pswitch_a5
        :pswitch_92
        :pswitch_92
        :pswitch_3d
    .end packed-switch
.end method

.method public greylist-max-o getLocale(I)Landroid/icu/util/ULocale;
    .registers 4
    .param p1, "index"    # I

    .line 197
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    .line 198
    .local v0, "lcls":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/ULocale;>;"
    if-nez v0, :cond_8

    .line 199
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessLocales()Ljava/util/List;

    move-result-object v0

    .line 201
    :cond_8
    if-ltz p1, :cond_17

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_17

    .line 202
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    return-object v1

    .line 204
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o getLocales()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    if-nez v0, :cond_9

    .line 182
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessLocales()Ljava/util/List;

    move-result-object v0

    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/ULocale;>;"
    goto :goto_13

    .line 184
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/ULocale;>;"
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/ULocale;>;"
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    :goto_13
    return-object v0
.end method

.method public greylist-max-o getNumberFormat(I)Landroid/icu/text/NumberFormat;
    .registers 4
    .param p1, "style"    # I

    .line 688
    if-ltz p1, :cond_1d

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1d

    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, "result":Landroid/icu/text/NumberFormat;
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    if-eqz v1, :cond_e

    .line 693
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    aget-object v0, v1, p1

    .line 695
    :cond_e
    if-eqz v0, :cond_18

    .line 696
    invoke-virtual {v0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/icu/text/NumberFormat;

    goto :goto_1c

    .line 698
    :cond_18
    invoke-virtual {p0, p1}, Landroid/icu/util/GlobalizationPreferences;->guessNumberFormat(I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    .line 700
    :goto_1c
    return-object v0

    .line 689
    .end local v0    # "result":Landroid/icu/text/NumberFormat;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal number format type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .registers 3
    .param p1, "baseName"    # Ljava/lang/String;

    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/GlobalizationPreferences;->getResourceBundle(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getResourceBundle(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .registers 10
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "urb":Landroid/icu/util/UResourceBundle;
    const/4 v1, 0x0

    .line 288
    .local v1, "candidate":Landroid/icu/util/UResourceBundle;
    const/4 v2, 0x0

    .line 289
    .local v2, "actualLocaleName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    move-result-object v3

    .line 290
    .local v3, "fallbacks":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/ULocale;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4c

    .line 291
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/util/ULocale;

    invoke-virtual {v5}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, "localeName":Ljava/lang/String;
    if-eqz v2, :cond_22

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 295
    move-object v0, v1

    .line 296
    goto :goto_4c

    .line 299
    :cond_22
    if-nez p2, :cond_2a

    .line 300
    :try_start_24
    invoke-static {p1, v5}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "candidate":Landroid/icu/util/UResourceBundle;
    .local v6, "candidate":Landroid/icu/util/UResourceBundle;
    goto :goto_2f

    .line 303
    .end local v6    # "candidate":Landroid/icu/util/UResourceBundle;
    .restart local v1    # "candidate":Landroid/icu/util/UResourceBundle;
    :cond_2a
    invoke-static {p1, v5, p2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    move-object v1, v6

    .line 305
    :goto_2f
    if-eqz v1, :cond_45

    .line 306
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 307
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_3e
    .catch Ljava/util/MissingResourceException; {:try_start_24 .. :try_end_3e} :catch_46

    if-eqz v6, :cond_42

    .line 308
    move-object v0, v1

    .line 309
    goto :goto_4c

    .line 311
    :cond_42
    if-nez v0, :cond_45

    .line 313
    move-object v0, v1

    .line 319
    :cond_45
    goto :goto_49

    .line 316
    :catch_46
    move-exception v6

    .line 317
    .local v6, "mre":Ljava/util/MissingResourceException;
    const/4 v2, 0x0

    .line 318
    nop

    .line 290
    .end local v5    # "localeName":Ljava/lang/String;
    .end local v6    # "mre":Ljava/util/MissingResourceException;
    :goto_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 321
    .end local v4    # "i":I
    :cond_4c
    :goto_4c
    if-eqz v0, :cond_4f

    .line 325
    return-object v0

    .line 322
    :cond_4f
    new-instance v4, Ljava/util/MissingResourceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find bundle for base name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v4, v5, p1, v6}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public greylist-max-o getTerritory()Ljava/lang/String;
    .registers 2

    .line 355
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 356
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessTerritory()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 358
    :cond_9
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getTimeZone()Landroid/icu/util/TimeZone;
    .registers 2

    .line 443
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->timezone:Landroid/icu/util/TimeZone;

    if-nez v0, :cond_9

    .line 444
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    .line 446
    :cond_9
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->timezone:Landroid/icu/util/TimeZone;

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o guessBreakIterator(I)Landroid/icu/text/BreakIterator;
    .registers 6
    .param p1, "type"    # I

    .line 1048
    const/4 v0, 0x0

    .line 1049
    .local v0, "bitr":Landroid/icu/text/BreakIterator;
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 1050
    .local v1, "brkLocale":Landroid/icu/util/ULocale;
    if-nez v1, :cond_a

    .line 1051
    sget-object v1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    .line 1053
    :cond_a
    packed-switch p1, :pswitch_data_30

    .line 1070
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown break iterator type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1058
    :pswitch_15
    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getTitleInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    .line 1059
    goto :goto_2e

    .line 1067
    :pswitch_1a
    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    .line 1068
    goto :goto_2e

    .line 1064
    :pswitch_1f
    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getLineInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    .line 1065
    goto :goto_2e

    .line 1061
    :pswitch_24
    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    .line 1062
    goto :goto_2e

    .line 1055
    :pswitch_29
    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    .line 1056
    nop

    .line 1072
    :goto_2e
    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method protected greylist-max-o guessCalendar()Landroid/icu/util/Calendar;
    .registers 3

    .line 1116
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 1117
    .local v0, "calLocale":Landroid/icu/util/ULocale;
    if-nez v0, :cond_9

    .line 1118
    sget-object v0, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    .line 1120
    :cond_9
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v1

    return-object v1
.end method

.method protected greylist-max-o guessCollator()Landroid/icu/text/Collator;
    .registers 3

    .line 1032
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 1033
    .local v0, "collLocale":Landroid/icu/util/ULocale;
    if-nez v0, :cond_9

    .line 1034
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    .line 1036
    :cond_9
    invoke-static {v0}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v1

    return-object v1
.end method

.method protected greylist-max-o guessCurrency()Landroid/icu/util/Currency;
    .registers 4

    .line 1005
    new-instance v0, Landroid/icu/util/ULocale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "und-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o guessDateFormat(II)Landroid/icu/text/DateFormat;
    .registers 5
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I

    .line 914
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 915
    .local v0, "dfLocale":Landroid/icu/util/ULocale;
    if-nez v0, :cond_9

    .line 916
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    .line 918
    :cond_9
    const/4 v1, 0x4

    if-ne p2, v1, :cond_15

    .line 919
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/icu/text/DateFormat;->getDateInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    .local v1, "result":Landroid/icu/text/DateFormat;
    goto :goto_28

    .line 920
    .end local v1    # "result":Landroid/icu/text/DateFormat;
    :cond_15
    if-ne p1, v1, :cond_20

    .line 921
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/icu/text/DateFormat;->getTimeInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    .restart local v1    # "result":Landroid/icu/text/DateFormat;
    goto :goto_28

    .line 923
    .end local v1    # "result":Landroid/icu/text/DateFormat;
    :cond_20
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-static {v1, p1, p2, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    .line 925
    .restart local v1    # "result":Landroid/icu/text/DateFormat;
    :goto_28
    return-object v1
.end method

.method protected greylist-max-o guessLocales()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 1016
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    if-nez v0, :cond_17

    .line 1017
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1018
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/ULocale;>;"
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    invoke-virtual {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->processLocales(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    .line 1021
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/ULocale;>;"
    :cond_17
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    return-object v0
.end method

.method protected greylist-max-o guessNumberFormat(I)Landroid/icu/text/NumberFormat;
    .registers 5
    .param p1, "style"    # I

    .line 938
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 939
    .local v0, "nfLocale":Landroid/icu/util/ULocale;
    if-nez v0, :cond_9

    .line 940
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    .line 942
    :cond_9
    packed-switch p1, :pswitch_data_36

    .line 960
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown number format style"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 950
    :pswitch_14
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getIntegerInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    .line 951
    .local v1, "result":Landroid/icu/text/NumberFormat;
    goto :goto_34

    .line 947
    .end local v1    # "result":Landroid/icu/text/NumberFormat;
    :pswitch_19
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getScientificInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    .line 948
    .restart local v1    # "result":Landroid/icu/text/NumberFormat;
    goto :goto_34

    .line 953
    .end local v1    # "result":Landroid/icu/text/NumberFormat;
    :pswitch_1e
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getPercentInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    .line 954
    .restart local v1    # "result":Landroid/icu/text/NumberFormat;
    goto :goto_34

    .line 956
    .end local v1    # "result":Landroid/icu/text/NumberFormat;
    :pswitch_23
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getCurrencyInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    .line 957
    .restart local v1    # "result":Landroid/icu/text/NumberFormat;
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    .line 958
    goto :goto_34

    .line 944
    .end local v1    # "result":Landroid/icu/text/NumberFormat;
    :pswitch_2f
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    .line 945
    .restart local v1    # "result":Landroid/icu/text/NumberFormat;
    nop

    .line 962
    :goto_34
    return-object v1

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_14
    .end packed-switch
.end method

.method protected greylist-max-o guessTerritory()Ljava/lang/String;
    .registers 8

    .line 973
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    .line 974
    .local v1, "locale":Landroid/icu/util/ULocale;
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 975
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1f

    .line 976
    return-object v2

    .line 978
    .end local v1    # "locale":Landroid/icu/util/ULocale;
    :cond_1f
    goto :goto_8

    .line 983
    .end local v2    # "result":Ljava/lang/String;
    :cond_20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->getLocale(I)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 984
    .local v0, "firstLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 985
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 986
    .local v2, "script":Ljava/lang/String;
    const/4 v3, 0x0

    .line 987
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_54

    .line 988
    sget-object v4, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    .line 990
    :cond_54
    if-nez v3, :cond_5f

    .line 991
    sget-object v4, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    .line 993
    :cond_5f
    if-nez v3, :cond_63

    .line 994
    const-string v3, "US"

    .line 996
    :cond_63
    return-object v3
.end method

.method protected greylist-max-o guessTimeZone()Landroid/icu/util/TimeZone;
    .registers 6

    .line 1090
    sget-object v0, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1091
    .local v0, "timezoneString":Ljava/lang/String;
    if-nez v0, :cond_34

    .line 1092
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/TimeZone;->getAvailableIDs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1093
    .local v1, "attempt":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_1c

    .line 1094
    const-string v0, "Etc/GMT"

    goto :goto_34

    .line 1098
    :cond_1c
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    array-length v3, v1

    if-ge v2, v3, :cond_2e

    .line 1099
    aget-object v3, v1, v2

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2b

    goto :goto_2e

    .line 1098
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1101
    :cond_2e
    :goto_2e
    array-length v3, v1

    if-le v2, v3, :cond_32

    const/4 v2, 0x0

    .line 1102
    :cond_32
    aget-object v0, v1, v2

    .line 1105
    .end local v1    # "attempt":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_34
    :goto_34
    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 1444
    iget-boolean v0, p0, Landroid/icu/util/GlobalizationPreferences;->frozen:Z

    return v0
.end method

.method protected greylist-max-o processLocales(Ljava/util/List;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 786
    .local p1, "inputLocales":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/ULocale;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 795
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/ULocale;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    .line 796
    .local v2, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 797
    .local v3, "language":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v4

    .line 798
    .local v4, "script":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 799
    .local v5, "country":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v6

    .line 801
    .local v6, "variant":Ljava/lang/String;
    const/4 v7, 0x0

    .line 802
    .local v7, "bInserted":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_bc

    .line 806
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/util/ULocale;

    .line 807
    .local v9, "u":Landroid/icu/util/ULocale;
    invoke-virtual {v9}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3f

    .line 808
    goto/16 :goto_b8

    .line 810
    :cond_3f
    invoke-virtual {v9}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v10

    .line 811
    .local v10, "s":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v11

    .line 812
    .local v11, "c":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v12

    .line 813
    .local v12, "v":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_90

    .line 814
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_68

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_68

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_68

    .line 815
    invoke-interface {v0, v8, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 816
    const/4 v7, 0x1

    .line 817
    goto :goto_bc

    .line 818
    :cond_68
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_79

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_79

    .line 820
    invoke-interface {v0, v8, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 821
    const/4 v7, 0x1

    .line 822
    goto :goto_bc

    .line 823
    :cond_79
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_b8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_b8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_b8

    .line 825
    invoke-interface {v0, v8, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 826
    const/4 v7, 0x1

    .line 827
    goto :goto_bc

    .line 831
    :cond_90
    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a7

    .line 832
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_a7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_a7

    .line 833
    invoke-interface {v0, v8, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 834
    const/4 v7, 0x1

    .line 835
    goto :goto_bc

    .line 838
    :cond_a7
    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_b8

    .line 839
    invoke-interface {v0, v8, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 840
    const/4 v7, 0x1

    .line 841
    goto :goto_bc

    .line 802
    .end local v9    # "u":Landroid/icu/util/ULocale;
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "c":Ljava/lang/String;
    .end local v12    # "v":Ljava/lang/String;
    :cond_b8
    :goto_b8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_27

    .line 844
    .end local v8    # "j":I
    :cond_bc
    :goto_bc
    if-nez v7, :cond_c1

    .line 846
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    .end local v2    # "uloc":Landroid/icu/util/ULocale;
    .end local v3    # "language":Ljava/lang/String;
    .end local v4    # "script":Ljava/lang/String;
    .end local v5    # "country":Ljava/lang/String;
    .end local v6    # "variant":Ljava/lang/String;
    .end local v7    # "bInserted":Z
    :cond_c1
    goto/16 :goto_9

    .line 861
    :cond_c3
    const/4 v1, 0x0

    .line 862
    .local v1, "index":I
    :goto_c4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_ec

    .line 863
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    .line 864
    .restart local v2    # "uloc":Landroid/icu/util/ULocale;
    :goto_d0
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getFallback()Landroid/icu/util/ULocale;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_e8

    .line 865
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e2

    .line 866
    goto :goto_e8

    .line 868
    :cond_e2
    add-int/lit8 v1, v1, 0x1

    .line 869
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_d0

    .line 871
    :cond_e8
    :goto_e8
    nop

    .end local v2    # "uloc":Landroid/icu/util/ULocale;
    add-int/lit8 v1, v1, 0x1

    .line 872
    goto :goto_c4

    .line 883
    :cond_ec
    const/4 v1, 0x0

    .line 884
    :goto_ed
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_11b

    .line 885
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    .line 886
    .restart local v2    # "uloc":Landroid/icu/util/ULocale;
    const/4 v3, 0x0

    .line 887
    .local v3, "bRemoved":Z
    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    :goto_fe
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_116

    .line 888
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_113

    .line 890
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 891
    const/4 v3, 0x1

    .line 892
    goto :goto_116

    .line 887
    :cond_113
    add-int/lit8 v4, v4, 0x1

    goto :goto_fe

    .line 895
    .end local v4    # "i":I
    :cond_116
    :goto_116
    if-nez v3, :cond_11a

    .line 896
    add-int/lit8 v1, v1, 0x1

    .line 898
    .end local v2    # "uloc":Landroid/icu/util/ULocale;
    .end local v3    # "bRemoved":Z
    :cond_11a
    goto :goto_ed

    .line 899
    :cond_11b
    return-object v0
.end method

.method public greylist-max-o reset()Landroid/icu/util/GlobalizationPreferences;
    .registers 3

    .line 729
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    .line 733
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    .line 734
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->calendar:Landroid/icu/util/Calendar;

    .line 735
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->collator:Landroid/icu/text/Collator;

    .line 736
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    .line 737
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->timezone:Landroid/icu/util/TimeZone;

    .line 738
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->currency:Landroid/icu/util/Currency;

    .line 739
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    .line 740
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    .line 741
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    .line 742
    return-object p0

    .line 730
    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setBreakIterator(ILandroid/icu/text/BreakIterator;)Landroid/icu/util/GlobalizationPreferences;
    .registers 5
    .param p1, "type"    # I
    .param p2, "iterator"    # Landroid/icu/text/BreakIterator;

    .line 511
    if-ltz p1, :cond_26

    const/4 v0, 0x5

    if-ge p1, v0, :cond_26

    .line 514
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 517
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    if-nez v1, :cond_13

    .line 518
    new-array v0, v0, [Landroid/icu/text/BreakIterator;

    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    .line 519
    :cond_13
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    invoke-virtual {p2}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/BreakIterator;

    aput-object v1, v0, p1

    .line 520
    return-object p0

    .line 515
    :cond_1e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal break iterator type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setCalendar(Landroid/icu/util/Calendar;)Landroid/icu/util/GlobalizationPreferences;
    .registers 4
    .param p1, "calendar"    # Landroid/icu/util/Calendar;

    .line 397
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 400
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->calendar:Landroid/icu/util/Calendar;

    .line 401
    return-object p0

    .line 398
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setCollator(Landroid/icu/text/Collator;)Landroid/icu/util/GlobalizationPreferences;
    .registers 5
    .param p1, "collator"    # Landroid/icu/text/Collator;

    .line 473
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_19

    .line 477
    :try_start_6
    invoke-virtual {p1}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/Collator;

    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->collator:Landroid/icu/text/Collator;
    :try_end_e
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_6 .. :try_end_e} :catch_10

    .line 480
    nop

    .line 481
    return-object p0

    .line 478
    :catch_10
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    const-string v2, "Error in cloning collator"

    invoke-direct {v1, v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 474
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setCurrency(Landroid/icu/util/Currency;)Landroid/icu/util/GlobalizationPreferences;
    .registers 4
    .param p1, "currency"    # Landroid/icu/util/Currency;

    .line 369
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_9

    .line 372
    iput-object p1, p0, Landroid/icu/util/GlobalizationPreferences;->currency:Landroid/icu/util/Currency;

    .line 373
    return-object p0

    .line 370
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setDateFormat(IILandroid/icu/text/DateFormat;)Landroid/icu/util/GlobalizationPreferences;
    .registers 7
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I
    .param p3, "format"    # Landroid/icu/text/DateFormat;

    .line 636
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 639
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    if-nez v0, :cond_1e

    .line 640
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    const-class v1, Landroid/icu/text/DateFormat;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/icu/text/DateFormat;

    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    .line 642
    :cond_1e
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    aget-object v0, v0, p1

    invoke-virtual {p3}, Landroid/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateFormat;

    aput-object v1, v0, p2

    .line 643
    return-object p0

    .line 637
    :cond_2b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/GlobalizationPreferences;
    .registers 4
    .param p1, "uLocale"    # Landroid/icu/util/ULocale;

    .line 233
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 236
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/icu/util/ULocale;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->setLocales([Landroid/icu/util/ULocale;)Landroid/icu/util/GlobalizationPreferences;

    move-result-object v0

    return-object v0

    .line 234
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setLocales(Ljava/lang/String;)Landroid/icu/util/GlobalizationPreferences;
    .registers 4
    .param p1, "acceptLanguageString"    # Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 252
    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/LocalePriorityList$Builder;->build()Landroid/icu/util/LocalePriorityList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/LocalePriorityList;->getULocales()Ljava/util/Set;

    move-result-object v0

    .line 254
    .local v0, "acceptSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/ULocale;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1}, Landroid/icu/util/GlobalizationPreferences;->processLocales(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    .line 255
    return-object p0

    .line 250
    .end local v0    # "acceptSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/ULocale;>;"
    :cond_1e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setLocales(Ljava/util/List;)Landroid/icu/util/GlobalizationPreferences;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/util/GlobalizationPreferences;"
        }
    .end annotation

    .line 166
    .local p1, "inputLocales":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/ULocale;>;"
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_d

    .line 169
    invoke-virtual {p0, p1}, Landroid/icu/util/GlobalizationPreferences;->processLocales(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    .line 170
    return-object p0

    .line 167
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setLocales([Landroid/icu/util/ULocale;)Landroid/icu/util/GlobalizationPreferences;
    .registers 4
    .param p1, "uLocales"    # [Landroid/icu/util/ULocale;

    .line 217
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 220
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->setLocales(Ljava/util/List;)Landroid/icu/util/GlobalizationPreferences;

    move-result-object v0

    return-object v0

    .line 218
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setNumberFormat(ILandroid/icu/text/NumberFormat;)Landroid/icu/util/GlobalizationPreferences;
    .registers 5
    .param p1, "style"    # I
    .param p2, "format"    # Landroid/icu/text/NumberFormat;

    .line 712
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 715
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    if-nez v0, :cond_f

    .line 716
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/icu/text/NumberFormat;

    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    .line 718
    :cond_f
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    invoke-virtual {p2}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/NumberFormat;

    aput-object v1, v0, p1

    .line 719
    return-object p0

    .line 713
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setTerritory(Ljava/lang/String;)Landroid/icu/util/GlobalizationPreferences;
    .registers 4
    .param p1, "territory"    # Ljava/lang/String;

    .line 340
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_9

    .line 343
    iput-object p1, p0, Landroid/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    .line 344
    return-object p0

    .line 341
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setTimeZone(Landroid/icu/util/TimeZone;)Landroid/icu/util/GlobalizationPreferences;
    .registers 4
    .param p1, "timezone"    # Landroid/icu/util/TimeZone;

    .line 428
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 431
    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZone;

    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->timezone:Landroid/icu/util/TimeZone;

    .line 432
    return-object p0

    .line 429
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
